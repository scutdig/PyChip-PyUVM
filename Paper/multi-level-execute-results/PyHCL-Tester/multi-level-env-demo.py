from pyhcl import *
from cocotb import *
from typing import List
from math import *
import os

# Approach setting
PT = 1
COCOTB = 2
TREADLE = 3

CLOCK_PERIOD = 2

# DUT setting
# configs
dut = []

# class Demo:
#     dataBits = ShellKey().memParams.dataBits
#     data = U.w(dataBits)
from pyhcl.core._meta_pub import Pub
from pyhcl.core._repr import CType


def ispow2(n):
    return (n & (n-1)) == 0


class Counter:
    def __init__(self, n):
        assert n >= 0

        self.n = n
        self.value = RegInit(U.w(int(ceil(log(n, 2))))(0)) if n > 1 else U(0)

    def inc(self):
        if self.n > 1:
            wrap = self.value == S(self.n - 1)
            self.value <<= self.value + U(1)

            # is n the power of 2?
            if ispow2(self.n) != 0:
                with when(wrap):
                    self.value <<= U(0)

            return wrap
        else:
            return Bool(True)


def queue(gentype, entries):
    class Queue_IO(Bundle_Helper):
        def __init__(self):
            self.count = Output(U.w(int(ceil(log(entries, 2)))))
            self.enq = flipped(decoupled(gentype))
            self.deq = decoupled(gentype)

    cio = Queue_IO()

    class Queue(Module):
        io = mapper(Queue_IO())

        # class Demo:
        #     pass
        #
        # io = Demo()
        # io.count = tio._count
        # io.enq = Demo()
        # io.enq.__dict__["valid"] = tio.__getattribute__("enq_valid")
        # io.enq.ready = tio.enq_ready
        # io.enq.bits = tio.enq_bits
        # io.deq = Demo()
        # io.deq.valid = tio.deq_valid
        # io.deq.ready = tio.deq_ready
        # io.deq.bits = tio.deq_bits
        # # io = mapper(Queue_IO())

        # Module Logic
        ram = Mem(entries, gentype)
        enq_ptr = Counter(entries)
        deq_ptr = Counter(entries)
        maybe_full = RegInit(Bool(False))

        ptr_match = enq_ptr.value == deq_ptr.value
        empty = ptr_match & (~maybe_full)
        full = ptr_match & maybe_full
        do_enq = io.enq_valid & io.enq_ready
        do_deq = io.deq_valid & io.deq_ready

        with when(do_enq):
            ram[enq_ptr.value] <<= io.enq_bits
            enq_ptr.inc()

        with when(do_deq):
            deq_ptr.inc()

        with when(do_enq != do_deq):
            maybe_full <<= do_enq

        io.deq_valid <<= ~empty
        io.enq_ready <<= ~full
        io.deq_bits <<= ram[deq_ptr.value]

        ptr_diff = enq_ptr.value - deq_ptr.value
        if ispow2(entries):
            io.count <<= Mux(maybe_full & ptr_match, U(entries), U(0)) | ptr_diff
        else:
            io.count <<= Mux(ptr_match,
                             Mux(maybe_full, U(entries), U(0)),
                             Mux(deq_ptr.value > enq_ptr.value,
                                 U(entries) + ptr_diff, ptr_diff))

        # # debug
        # rio.enq_cvalue <<= enq_ptr.value
        # rio.deq_cvalud <<= deq_ptr.value

    return Queue()


class BaseType:
    pass


# Enhance current io functions
class Bundle_Helper:
    pass


def mapper_helper(bundle, dic=None, prefix=""):
    tdic = {} if dic is None else dic

    for k in bundle.__dict__:
        v = bundle.__dict__[k]
        if isinstance(v, Pub):
            if prefix == "":
                tdic[k] = v
            else:
                tdic[prefix+"_"+k] = v
        elif isinstance(v, Bundle_Helper):
            if prefix == "":
                mapper_helper(v, tdic, k)
            else:
                mapper_helper(v, tdic, prefix+"_"+k)
        elif isinstance(v, List):
            for i in range(len(v)):
                if isinstance(v[i], Pub):
                    if prefix == "":
                        tdic[k+"_"+str(i)] = v[i]
                    else:
                        tdic[prefix+"_"+k+"_"+str(i)] = v[i]
                elif isinstance(v[i], Bundle_Helper):
                    if prefix == "":
                        mapper_helper(v[i], tdic, k+"_"+str(i))
                    else:
                        mapper_helper(v[i], tdic, prefix+"_"+k+"_"+str(i))

    return tdic


def mapper(bundle):
    dct = mapper_helper(bundle)
    io = IO(**dct)

    return io


def decoupled(basetype):
    coupled = Bundle_Helper()
    coupled.valid = Output(Bool)
    coupled.ready = Input(Bool)

    if isinstance(basetype, CType) or isinstance(basetype, type):
        coupled.bits = Output(basetype)
    elif isinstance(basetype, BaseType):
        coupled.bits = Bundle_Helper()
        dic = basetype.__dict__
        for keys in dic:
            if isinstance(dic[keys], CType) or isinstance(dic[keys], type):
                coupled.bits.__dict__[keys] = Output(dic[keys])

    return coupled


def valid(basetype):
    coupled = Bundle_Helper()
    coupled.valid = Output(Bool)

    if isinstance(basetype, CType) or isinstance(basetype, type):
        coupled.bits = Output(basetype)
    elif isinstance(basetype, Vec):
        coupled.bits = Output(basetype)
    elif isinstance(basetype, BaseType):
        coupled.bits = Bundle_Helper()
        dic = basetype.__dict__
        for keys in dic:
            if isinstance(dic[keys], CType) or isinstance(dic[keys], type):
                coupled.bits.__dict__[keys] = Output(dic[keys])

    return coupled


def base_flipped(obj):
    return Output(obj.typ) if isinstance(obj.value, Input) else Input(obj.typ)


def flipped(bundle):
    dic = bundle.__dict__
    for keys in dic:
        if isinstance(dic[keys], Pub):
            dic[keys] = base_flipped(dic[keys])
        elif isinstance(dic[keys], Bundle_Helper):
            flipped(dic[keys])

    return bundle


def log2ceil(v):
    return ceil(log(v, 2))


def Mem_maskwrite(m, data, mask, length):
    for i in range(length):
        with when(~(mask[i])):
            data[i] <<= U(0)
    m <<= data


@cocotb.coroutine
def cocotb_poke(dut, signals, value):
    dut.signals = value
    yield Timer(CLOCK_PERIOD, 'ns')


@cocotb.coroutine
def cocotb_peek(dut, signals):
    return dut.signals


# General manipulate functions for cocotb, PT, and Treadle
def poke(signals, value, ap):
    if ap == PT:
        return simulator.poke(signals, value)
    elif ap == COCOTB:
        return cocotb_poke(dut, signals, value)
    else:
        # switch to treadle insert assertions
        os.system("treadle.sh")


def peek(signals, ap):
    if ap == PT:
        return simulator.peek(signals)
    elif ap == COCOTB:
        return cocotb_peek(dut, signals)
    else:
        # switch to treadle insert assertions
        os.system("treadle.sh")


lass AXIParams:
    def __init__(self,
         coherent: bool = False,
         idBits: int = 1,
         addrBits: int = 32,
         dataBits: int = 64,
         lenBits: int = 8,
         userBits: int = 1
    ):
        assert addrBits > 0
        assert dataBits >= 8 and dataBits % 2 == 0

        self.coherent = coherent
        self.idBits = idBits
        self.addrBits = addrBits
        self.dataBits = dataBits
        self.lenBits = lenBits          # Max burst length = 256, lenBits = 8
        self.userBits = userBits

        self.strbBits: int = int(dataBits / 8)
        self.sizeBits: int = 3
        self.burstBits: int = 2
        self.lockBits: int = 2
        self.cacheBits: int = 4
        self.protBits: int = 3
        self.qosBits: int = 4
        self.regionBits: int = 4
        self.respBits: int = 2
        self.sizeConst: int = int(ceil(log(int(dataBits / 8), 2)))
        self.idConst: int = 0
        self.userConst: int = 1 if coherent else 0
        self.burstConst: int = 1
        self.lockConst: int = 0
        self.cacheConst: int = 15 if coherent else 3
        self.protConst: int = 4 if coherent else 0
        self.qosConst: int = 0
        self.regionConst: int = 0

class VMEParams:
    '''
        VME parameters.
        These parameters are used on VME interfaces and modules.
    '''
    nReadClients: int = 5
    nWriteClients: int = 1


class VCRParams:
    nCtrl = 1
    nECnt = 1
    nVals = 1
    nPtrs = 6
    regBits = 32


# Shell parameters
class ShellParams:
    hostParams = AXIParams()
    memParams = AXIParams()
    vcrParams = VCRParams()
    vmeParams = VMEParams()


class ShellKey(ShellParams):
    pass


class CoreParams:
    batch: int = 1
    blockOut: int = 16
    blockIn: int = 16
    inpBits: int = 8
    wgtBits: int = 8
    uopBits: int = 32
    accBits: int = 32
    outBits: int = 8
    uopMemDepth: int = 512
    inpMemDepth: int = 512
    wgtMemDepth: int = 512
    accMemDepth: int = 512
    outMemDepth: int = 512
    instQueueEntries: int = 32


class CoreKey(CoreParams):
    pass
