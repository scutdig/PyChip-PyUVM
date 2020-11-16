# Mirror from /cocotb, background combine PT
import cocotb
from cocotb.triggers import Timer
from cocotb.clock import Clock

CLOCK_PERIOD = 2

def setup_dut(dut):
    cocotb.fork(Clock(dut.clock, CLOCK_PERIOD, units="ns").start())

@cocotb.test()
def axi_stream_test(dut):
    dut.reset <= 1
    setup_dut(dut)
    yield Timer(2, 'ns')
    dut.reset <= 0

    yield Timer(200000, 'ns')
    