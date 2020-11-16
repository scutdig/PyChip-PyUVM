from tester.src.pc import PC
from tester.src.instcache import InstCache
from tester.src.datapath import Datapath
from tester.src.if_id_register import IfIdRegister
from tester.src.regfile import RegFile
from tester.src.immgen import ImmGen
from tester.src.control import Control
from tester.src.id_ex_register import IdExRegister
from tester.src.hazard_detection import HazardDetection
from tester.src.alu import ALU
from tester.src.branch_predictor import BranchPredictor
from tester.src.datacache import DataCache
from tester.src.ex_mem_register import ExMemRegister
from tester.src.forward import Forward
from tester.src.mem_wb_register import MemWbRegister
from tester.src.csr import CSR
from tester.src.biu_inf import *
from tester.src.e203_biu import *


class Tile(Module):
    io = IO(
        if_pc_out=Output(U.w(WLEN)),
        if_next_pc=Output(U.w(WLEN)),
        id_rs1=Output(U.w(RLEN)),
        id_rs2=Output(U.w(RLEN)),
        id_rs1_out=Output(U.w(WLEN)),
        id_rs2_out=Output(U.w(WLEN)),
        ex_rs1_out=Output(U.w(WLEN)),
        ex_rs2_out=Output(U.w(WLEN)),
        ex_alu_sum=Output(U.w(WLEN)),
        ex_alu_conflag=Output(U.w(CONFLAG_SIG_LEN)),
        ex_rd=Output(U.w(RLEN)),
        mem_rd=Output(U.w(RLEN)),
        mem_alu_sum=Output(U.w(WLEN)),
        mem_writedata=Output(U.w(WLEN)),
        mem_dataout=Output(U.w(WLEN)),
        wb_rd=Output(U.w(RLEN)),
        wb_registerwrite=Output(U.w(WLEN)),
        Forward_A=Output(U.w(FORWARD_A_SIG_LEN)),
        Forward_B=Output(U.w(FORWARD_B_SIG_LEN)),
        MemWrite_Src=Output(U.w(MEMWRITE_SRC_SIG_LEN)),

        # BIU inf monitor
        mo_biu_addr=Output(U.w(WLEN)),
        mo_biu_write_data=Output(U.w(WLEN)),
        mo_biu_cmd_valid=Output(U.w(1)),
        mo_biu_cmd_read=Output(U.w(1)),
        mo_biu_cmd_wmask=Output(U.w(WMASK_SIZE)),
        mo_biu_cmd_burst=Output(U.w(2)),
        mo_biu_cmd_beat=Output(U.w(2)),
        mo_biu_cmd_lock=Output(U.w(2)),
        mo_biu_cmd_excl=Output(U.w(1)),
        mo_biu_cmd_size=Output(U.w(2)),
        mo_biu_rsp_ready=Output(U.w(1)),

        # BIU monitor
        mo_lsu2biu_icb_cmd_ready=Output(U.w(1)),
        mo_lsu2biu_icb_rsp_valid=Output(U.w(1)),
        mo_lsu2biu_icb_rsp_err=Output(U.w(1)),
        mo_lsu2biu_icb_rsp_excl_ok=Output(U.w(1)),
        mo_lsu2biu_icb_rsp_rdata=Output(U.w(E203_XLEN))
    )

    # ---------------------------------------------------------------------------- #
    # Generate submodule
    # ---------------------------------------------------------------------------- #
    pc = PC()
    instcache = InstCache()
    if_id_register = IfIdRegister()
    regfile = RegFile()
    immgen = ImmGen()
    control = Control()
    id_ex_register = IdExRegister()
    alu = ALU()
    datapath = Datapath()
    ex_mem_register = ExMemRegister()
    datacache = DataCache()
    mem_wb_register = MemWbRegister()
    forward = Forward()
    hazard_detection = HazardDetection()
    branch_predictor = BranchPredictor()
    # csr add start
    csr = CSR()
    # csr add end
    biuinf = biu_inf()
    e203biu = E203Biu()

    # ---------------------------------------------------------------------------- #
    # Datapath - IF stage
    # ---------------------------------------------------------------------------- #
    # generate next PC address
    datapath.io.if_pc <<= pc.io.pc_out
    datapath.io.new_addr <<= branch_predictor.io.new_addr
    datapath.io.PC_Sel <<= branch_predictor.io.PC_Sel
    datapath.io.pc_recover <<= branch_predictor.io.pc_recover
    # csr add start
    datapath.io.is_Exception <<= csr.io.is_Exception
    datapath.io.mepc <<= csr.io.mepc_out
    datapath.io.mtvec <<= csr.io.mtvec_out
    # csr add end

    # ---------------------------------------------------------------------------- #
    # PC
    # ---------------------------------------------------------------------------- #
    pc.io.next_pc <<= datapath.io.if_new_pc
    pc.io.PC_Write <<= hazard_detection.io.PC_Write.to_bool()

    # ---------------------------------------------------------------------------- #
    # InstCache
    # ---------------------------------------------------------------------------- #
    instcache.io.addr <<= pc.io.pc_out

    # // monitor
    # ********************** #
    io.if_pc_out <<= pc.io.pc_out
    io.if_next_pc <<= datapath.io.if_new_pc
    # ********************** #
    # // monitor

    # ---------------------------------------------------------------------------- #
    # IF/ID pipeline register
    # ---------------------------------------------------------------------------- #
    if_id_register.io.if_pc <<= pc.io.pc_out
    if_id_register.io.if_pc_4 <<= datapath.io.if_pc_4
    if_id_register.io.if_inst <<= instcache.io.inst
    # csr change start
    if_id_register.io.IF_ID_Write <<= hazard_detection.io.IF_ID_Write.to_bool()
    if_id_register.io.IF_ID_Flush <<= branch_predictor.io.IF_ID_Flush | csr.io.IF_ID_Flush
    # csr change end

    # ---------------------------------------------------------------------------- #
    # Register File
    # ---------------------------------------------------------------------------- #
    regfile.io.rs1 <<= if_id_register.io.id_rs1
    regfile.io.rs2 <<= if_id_register.io.id_rs2
    regfile.io.rd <<= mem_wb_register.io.wb_rd
    regfile.io.wdata <<= datapath.io.wb_reg_writedata
    regfile.io.Reg_Write <<= mem_wb_register.io.wb_Reg_Write

    # ---------------------------------------------------------------------------- #
    # Immediate generator
    # ---------------------------------------------------------------------------- #
    immgen.io.inst <<= if_id_register.io.id_inst
    immgen.io.Imm_Sel <<= control.io.Imm_Sel

    # // monitor
    # ********************** #
    io.id_rs1 <<= if_id_register.io.id_rs1
    io.id_rs2 <<= if_id_register.io.id_rs2
    io.id_rs1_out <<= regfile.io.rs1_out
    io.id_rs2_out <<= regfile.io.rs2_out
    # ********************** #
    # // monitor

    # ---------------------------------------------------------------------------- #
    # Main control unit
    # ---------------------------------------------------------------------------- #
    control.io.inst <<= if_id_register.io.id_inst

    # ---------------------------------------------------------------------------- #
    # Hazard detection unit
    # ---------------------------------------------------------------------------- #
    hazard_detection.io.rs1 <<= if_id_register.io.id_rs1
    hazard_detection.io.rs2 <<= if_id_register.io.id_rs2
    hazard_detection.io.ex_rd <<= id_ex_register.io.ex_rd
    hazard_detection.io.Imm_Sel <<= control.io.Imm_Sel
    hazard_detection.io.ex_Mem_Read <<= id_ex_register.io.ex_Mem_Read

    # ---------------------------------------------------------------------------- #
    # Datapath - ID stage
    # ---------------------------------------------------------------------------- #

    # # Connect main control units output to the datapath ID stage
    # ctrlsignal_list = filter(lambda x: not x.startswith("_") and not x.startswith("__"),
    #                          list([k for k in datapath.io.ctrl_in.__dict__]))
    # for k in ctrlsignal_list:
    #     datapath.io.ctrl_in.__dict__[k] <<= control.io.ctrl.__dict__[k]
    # datapath.io.Bubble <<= hazard_detection.io.Bubble
    # ---------------------------------------------------------------------------- #
    # Bubble unit
    # ---------------------------------------------------------------------------- #
    datapath.io.Bubble        <<= hazard_detection.io.Bubble
    datapath.io.Reg_Write     <<= control.io.Reg_Write
    datapath.io.ALU_Src       <<= control.io.ALU_Src
    datapath.io.ALUOp         <<= control.io.ALUOp
    datapath.io.Branch        <<= control.io.Branch
    datapath.io.Branch_Src    <<= control.io.Branch_Src
    datapath.io.Mem_Read      <<= control.io.Mem_Read
    datapath.io.Mem_Write     <<= control.io.Mem_Write
    datapath.io.Data_Size     <<= control.io.Data_Size
    datapath.io.Load_Type     <<= control.io.Load_Type
    datapath.io.Mem_to_Reg    <<= control.io.Mem_to_Reg
    datapath.io.Jump_Type     <<= control.io.Jump_Type
    datapath.io.Imm_Sel       <<= control.io.Imm_Sel
    # csr add start
    datapath.io.CSR_src       <<= control.io.CSR_src
    datapath.io.Write_CSR     <<= control.io.Write_CSR
    datapath.io.is_Illegal    <<= control.io.is_Illegal
    # csr add end

    # ---------------------------------------------------------------------------- #
    # ID/EX pipeline register
    # ---------------------------------------------------------------------------- #
    # csr change start
    # // control signals
    id_ex_register.io.ID_EX_Flush <<= branch_predictor.io.ID_EX_Flush | csr.io.ID_EX_Flush
    id_ex_register.io.ALU_Src     <<= datapath.io.id_ALU_Src
    id_ex_register.io.ALUOp       <<= datapath.io.id_ALUOp
    id_ex_register.io.Branch      <<= datapath.io.id_Branch
    id_ex_register.io.Branch_Src  <<= datapath.io.id_Branch_Src
    id_ex_register.io.Jump_Type   <<= datapath.io.id_Jump_Type
    id_ex_register.io.Mem_Read    <<= datapath.io.id_Mem_Read
    id_ex_register.io.Mem_Write   <<= datapath.io.id_Mem_Write
    id_ex_register.io.Data_Size   <<= datapath.io.id_Data_Size
    id_ex_register.io.Load_Type   <<= datapath.io.id_Load_Type
    id_ex_register.io.Reg_Write   <<= datapath.io.id_Reg_Write
    id_ex_register.io.Mem_to_Reg  <<= datapath.io.id_Mem_to_Reg
    id_ex_register.io.Imm_Sel     <<= datapath.io.id_Imm_Sel
    id_ex_register.io.CSR_src     <<= datapath.io.id_CSR_src
    id_ex_register.io.Write_CSR   <<= datapath.io.id_Write_CSR
    id_ex_register.io.is_Illegal  <<= datapath.io.id_is_Illegal

    # // data
    id_ex_register.io.id_pc <<= if_id_register.io.id_pc
    id_ex_register.io.id_pc_4 <<= if_id_register.io.id_pc_4
    id_ex_register.io.id_rs1_out <<= regfile.io.rs1_out
    id_ex_register.io.id_rs2_out <<= regfile.io.rs2_out
    id_ex_register.io.id_imm <<= immgen.io.imm
    id_ex_register.io.id_inst <<= if_id_register.io.id_inst
    id_ex_register.io.id_rs1 <<= if_id_register.io.id_rs1
    id_ex_register.io.id_rs2 <<= if_id_register.io.id_rs2
    # csr change end


    # ctrlsignal_list = filter(lambda x: not x.startswith("_") and not x.startswith("__"),
    #                          list([k for k in datapath.io.ctrl_out.__dict__]))
    # for k in ctrlsignal_list:
    #     id_ex_register.io.id_ctrl_in.__dict__[k] <<= datapath.io.ctrl_out.__dict__[k]

    # ---------------------------------------------------------------------------- #
    # Datapath - EX stage
    # ---------------------------------------------------------------------------- #
    # // Adder of branch address
    datapath.io.ex_pc <<= id_ex_register.io.ex_pc
    datapath.io.ex_imm <<= id_ex_register.io.ex_imm
    datapath.io.ex_rs1_out <<= id_ex_register.io.ex_rs1_out
    datapath.io.ex_Branch_Src <<= id_ex_register.io.ex_Branch_Src

    # // branch units
    datapath.io.ex_Branch <<= id_ex_register.io.ex_Branch
    datapath.io.ex_alu_conflag <<= alu.io.conflag
    datapath.io.ex_Jump_Type <<= id_ex_register.io.ex_Jump_Type
    datapath.io.ex_Imm_Sel <<= id_ex_register.io.ex_Imm_Sel

    # // Forward
    datapath.io.mem_alu_sum <<= ex_mem_register.io.mem_alu_sum
    datapath.io.mem_pc_4 <<= ex_mem_register.io.mem_pc_4
    datapath.io.mem_imm <<= ex_mem_register.io.mem_imm
    datapath.io.mem_aui_pc <<= ex_mem_register.io.mem_aui_pc
    # csr change start
    # datapath.io.mem_Mem_to_Reg <<= ex_mem_register.io.mem_Mem_to_Reg
    datapath.io.mem_Mem_to_Reg_In <<= ex_mem_register.io.mem_Mem_to_Reg
    # csr change start

    datapath.io.Forward_A <<= forward.io.Forward_A
    datapath.io.Forward_B <<= forward.io.Forward_B

    # // ALU oprand B select
    datapath.io.ex_rs2_out <<= id_ex_register.io.ex_rs2_out
    datapath.io.ex_ALU_Src <<= id_ex_register.io.ex_ALU_Src

    # ---------------------------------------------------------------------------- #
    # ALU
    # ---------------------------------------------------------------------------- #
    alu.io.src_a <<= datapath.io.alu_a_src
    alu.io.src_b <<= datapath.io.alu_b_src
    alu.io.ALUOp <<= id_ex_register.io.ex_ALUOp

    # ---------------------------------------------------------------------------- #
    # CSR
    # ---------------------------------------------------------------------------- #
    datapath.io.ex_CSR_src  <<= id_ex_register.io.ex_CSR_src
    csr.io.ex_Mem_Read    <<= id_ex_register.io.ex_Mem_Read
    csr.io.ex_Mem_Write   <<= id_ex_register.io.ex_Mem_Write
    csr.io.ex_branch_addr <<= datapath.io.branch_addr
    csr.io.ex_addr        <<= alu.io.sum
    csr.io.ex_inst        <<= id_ex_register.io.ex_inst
    csr.io.csr_data_in    <<= datapath.io.csr_data_in
    csr.io.ex_pc_4        <<= id_ex_register.io.ex_pc_4
    csr.io.ex_Write_CSR   <<= id_ex_register.io.ex_Write_CSR
    csr.io.ex_is_Illegal  <<= id_ex_register.io.ex_is_Illegal
    csr.io.ex_Branch      <<= id_ex_register.io.ex_Branch
    csr.io.PC_Sel         <<= branch_predictor.io.PC_Sel
    csr.io.new_addr       <<= branch_predictor.io.new_addr
    csr.io.pc_recover     <<= branch_predictor.io.pc_recover
    csr.io.Bubble         <<= hazard_detection.io.Bubble
    csr.io.if_inst        <<= instcache.io.inst
    csr.io.is_Waiting_Resolved <<= branch_predictor.io.is_Waiting_Resolved

    csr.io.rsp_valid <<= e203biu.io.lsu2biu_icb_rsp_valid
    csr.io.rsp_rdata <<= e203biu.io.lsu2biu_icb_rsp_rdata

    # // Exception Flush
    datapath.io.ex_Reg_Write    <<= id_ex_register.io.ex_Reg_Write
    datapath.io.ex_Mem_to_Reg   <<= id_ex_register.io.ex_Mem_to_Reg
    datapath.io.ex_Mem_Write    <<= id_ex_register.io.ex_Mem_Write
    datapath.io.ex_Mem_Read     <<= id_ex_register.io.ex_Mem_Read
    datapath.io.ex_Load_Type    <<= id_ex_register.io.ex_Load_Type
    datapath.io.ex_Data_Size    <<= id_ex_register.io.ex_Data_Size
    datapath.io.Exception_Flush <<= csr.io.Exception_Flush

    # ---------------------------------------------------------------------------- #
    # E203biu
    # ---------------------------------------------------------------------------- #
    e203biu.io.lsu2biu_icb_cmd_valid <<= biuinf.io.biu_cmd_valid
    e203biu.io.lsu2biu_icb_cmd_addr <<= biuinf.io.biu_addr
    e203biu.io.lsu2biu_icb_cmd_read <<= biuinf.io.biu_cmd_read
    e203biu.io.lsu2biu_icb_cmd_wdata <<= biuinf.io.biu_write_data
    e203biu.io.lsu2biu_icb_cmd_wmask <<= biuinf.io.biu_cmd_wmask
    e203biu.io.lsu2biu_icb_cmd_burst <<= biuinf.io.biu_cmd_burst
    e203biu.io.lsu2biu_icb_cmd_beat <<= biuinf.io.biu_cmd_beat
    e203biu.io.lsu2biu_icb_cmd_lock <<= biuinf.io.biu_cmd_lock
    e203biu.io.lsu2biu_icb_cmd_excl <<= biuinf.io.biu_cmd_excl
    e203biu.io.lsu2biu_icb_cmd_size <<= biuinf.io.biu_cmd_size
    e203biu.io.lsu2biu_icb_rsp_ready <<= biuinf.io.biu_rsp_ready

    e203biu.io.ifu2biu_icb_cmd_valid <<= U(0)
    e203biu.io.ifu2biu_icb_cmd_addr <<= U(0)
    e203biu.io.ifu2biu_icb_cmd_read <<= U(0)
    e203biu.io.ifu2biu_icb_cmd_wdata <<= U(0)
    e203biu.io.ifu2biu_icb_cmd_wmask <<= U(0)
    e203biu.io.ifu2biu_icb_cmd_burst <<= U(0)
    e203biu.io.ifu2biu_icb_cmd_beat <<= U(0)
    e203biu.io.ifu2biu_icb_cmd_lock <<= U(0)
    e203biu.io.ifu2biu_icb_cmd_excl <<= U(0)
    e203biu.io.ifu2biu_icb_cmd_size <<= U(0)
    e203biu.io.ifu2biu_icb_rsp_ready <<= U(0)

    e203biu.io.ppi_region_indic <<= U(0)
    e203biu.io.ppi_icb_enable <<= U(1)
    e203biu.io.ppi_icb_cmd_ready <<= biuinf.io.ppi_cmd_ready
    e203biu.io.ppi_icb_rsp_valid <<= biuinf.io.ppi_rsp_valid
    e203biu.io.ppi_icb_rsp_err <<= biuinf.io.ppi_rsp_err
    e203biu.io.ppi_icb_rsp_excl_ok <<= biuinf.io.ppi_rsp_excl_ok
    e203biu.io.ppi_icb_rsp_rdata <<= biuinf.io.ppi_rsp_rdata

    e203biu.io.clint_region_indic <<= U(0)
    e203biu.io.clint_icb_enable <<= U(0)
    e203biu.io.clint_icb_cmd_ready <<= U(0)
    e203biu.io.clint_icb_rsp_valid <<= U(0)
    e203biu.io.clint_icb_rsp_err <<= U(0)
    e203biu.io.clint_icb_rsp_excl_ok <<= U(0)
    e203biu.io.clint_icb_rsp_rdata <<= U(0)

    e203biu.io.plic_region_indic <<= U(0)
    e203biu.io.plic_icb_enable <<= U(0)
    e203biu.io.plic_icb_cmd_ready <<= U(0)
    e203biu.io.plic_icb_rsp_valid <<= U(0)
    e203biu.io.plic_icb_rsp_err <<= U(0)
    e203biu.io.plic_icb_rsp_excl_ok <<= U(0)
    e203biu.io.plic_icb_rsp_rdata <<= U(0)

    e203biu.io.fio_region_indic <<= U(0)
    e203biu.io.fio_icb_enable <<= U(0)
    e203biu.io.fio_icb_cmd_ready <<= U(0)
    e203biu.io.fio_icb_rsp_valid <<= U(0)
    e203biu.io.fio_icb_rsp_err <<= U(0)
    e203biu.io.fio_icb_rsp_excl_ok <<= U(0)
    e203biu.io.fio_icb_rsp_rdata <<= U(0)

    e203biu.io.mem_icb_enable <<= U(0)
    e203biu.io.mem_icb_cmd_ready <<= U(0)
    e203biu.io.mem_icb_rsp_valid <<= U(0)
    e203biu.io.mem_icb_rsp_err <<= U(0)
    e203biu.io.mem_icb_rsp_excl_ok <<= U(0)
    e203biu.io.mem_icb_rsp_rdata <<= U(0)

    # // monitor
    # ********************** #
    io.ex_rs1_out <<= id_ex_register.io.ex_rs1_out
    io.ex_rs2_out <<= id_ex_register.io.ex_rs2_out
    io.ex_alu_sum <<= alu.io.sum
    io.ex_alu_conflag <<= alu.io.conflag
    io.ex_rd <<= id_ex_register.io.ex_rd

    io.mo_lsu2biu_icb_cmd_ready <<= e203biu.io.lsu2biu_icb_cmd_ready
    io.mo_lsu2biu_icb_rsp_valid <<= e203biu.io.lsu2biu_icb_rsp_valid
    io.mo_lsu2biu_icb_rsp_err <<= e203biu.io.lsu2biu_icb_rsp_err
    io.mo_lsu2biu_icb_rsp_excl_ok <<= e203biu.io.lsu2biu_icb_rsp_excl_ok
    io.mo_lsu2biu_icb_rsp_rdata <<= e203biu.io.lsu2biu_icb_rsp_rdata
    # ********************** #
    # // monitor

    # ---------------------------------------------------------------------------- #
    # EX/MEM pipeline register
    # ---------------------------------------------------------------------------- #
    ex_mem_register.io.ex_alu_sum <<= alu.io.sum
    ex_mem_register.io.ex_rs2_out <<= datapath.io.forward_rs2_out
    ex_mem_register.io.ex_rd <<= id_ex_register.io.ex_rd
    ex_mem_register.io.ex_pc_4 <<= id_ex_register.io.ex_pc_4
    ex_mem_register.io.ex_imm <<= id_ex_register.io.ex_imm
    ex_mem_register.io.ex_aui_pc <<= datapath.io.ex_aui_pc
    ex_mem_register.io.ex_rs2 <<= id_ex_register.io.ex_rs2
    # csr change start
    ex_mem_register.io.ex_inst <<= id_ex_register.io.ex_inst
    ex_mem_register.io.ex_Mem_Read <<= datapath.io.mem_Mem_Read
    ex_mem_register.io.ex_Mem_Write <<= datapath.io.mem_Mem_Write
    ex_mem_register.io.ex_Data_Size <<= datapath.io.mem_Data_Size
    ex_mem_register.io.ex_Load_Type <<= datapath.io.mem_Load_Type
    ex_mem_register.io.ex_Reg_Write <<= datapath.io.mem_Reg_Write
    # ex_mem_register.io.ex_Mem_to_Reg <<= datapath.io.ex_datapathio.mem_Mem_to_Reg
    ex_mem_register.io.ex_Mem_to_Reg <<= datapath.io.mem_Mem_to_Reg_Out
    ex_mem_register.io.ex_csr_data_out <<= csr.io.csr_data_out
    # csr change end

    # ---------------------------------------------------------------------------- #
    # Datapath - MEM stage
    # ---------------------------------------------------------------------------- #
    # // Memory forward
    datapath.io.mem_rs2_out <<= ex_mem_register.io.mem_rs2_out
    datapath.io.MemWrite_Src <<= forward.io.MemWrite_Src

    # ---------------------------------------------------------------------------- #
    # BIU interface
    # ---------------------------------------------------------------------------- #
    biuinf.io.Mem_Write <<= ex_mem_register.io.mem_Mem_Write
    biuinf.io.addr <<= ex_mem_register.io.mem_alu_sum
    biuinf.io.write_data <<= datapath.io.mem_writedata

    # ---------------------------------------------------------------------------- #
    # Data cache
    # ---------------------------------------------------------------------------- #
    datacache.io.addr <<= biuinf.io.DC_addr
    datacache.io.write_data <<= biuinf.io.biu_write_data
    datacache.io.Mem_Read <<= ex_mem_register.io.mem_Mem_Read
    datacache.io.Mem_Write <<= biuinf.io.DC_Mem_Write
    datacache.io.Data_Size <<= ex_mem_register.io.mem_Data_Size
    datacache.io.Load_Type <<= ex_mem_register.io.mem_Load_Type

    # // monitor
    # ********************** #
    io.mem_rd <<= ex_mem_register.io.mem_rd
    io.mem_alu_sum <<= ex_mem_register.io.mem_alu_sum
    # csr change start
    # io.mem_writedata <<= datapath.io.mem_writedata
    io.mem_writedata <<= ex_mem_register.io.mem_rs2_out
    # csr change start
    io.mem_dataout <<= datacache.io.data_out
    # To BIU
    io.mo_biu_addr <<= biuinf.io.biu_addr
    io.mo_biu_write_data <<= biuinf.io.biu_write_data
    io.mo_biu_cmd_valid <<= biuinf.io.biu_cmd_valid
    io.mo_biu_cmd_read <<= biuinf.io.biu_cmd_read
    io.mo_biu_cmd_wmask <<= biuinf.io.biu_cmd_wmask
    io.mo_biu_cmd_burst <<= biuinf.io.biu_cmd_burst
    io.mo_biu_cmd_beat <<= biuinf.io.biu_cmd_beat
    io.mo_biu_cmd_lock <<= biuinf.io.biu_cmd_lock
    io.mo_biu_cmd_excl <<= biuinf.io.biu_cmd_excl
    io.mo_biu_cmd_size <<= biuinf.io.biu_cmd_size
    io.mo_biu_rsp_ready <<= biuinf.io.biu_rsp_ready
    # ********************** #
    # // monitor

    # ---------------------------------------------------------------------------- #
    # MEM/WB pipeline register
    # ---------------------------------------------------------------------------- #
    mem_wb_register.io.mem_Reg_Write  <<= ex_mem_register.io.mem_Reg_Write
    mem_wb_register.io.mem_Mem_to_Reg <<= ex_mem_register.io.mem_Mem_to_Reg
    mem_wb_register.io.mem_dataout    <<= datacache.io.data_out
    mem_wb_register.io.mem_alu_sum    <<= ex_mem_register.io.mem_alu_sum
    mem_wb_register.io.mem_rd         <<= ex_mem_register.io.mem_rd
    mem_wb_register.io.mem_pc_4       <<= ex_mem_register.io.mem_pc_4
    mem_wb_register.io.mem_imm        <<= ex_mem_register.io.mem_imm
    mem_wb_register.io.mem_aui_pc     <<= ex_mem_register.io.mem_aui_pc
    # csr add start
    mem_wb_register.io.mem_csr_data_out <<= ex_mem_register.io.mem_csr_data_out
    # csr add end

    # ---------------------------------------------------------------------------- #
    # Datapath - WB stage
    # ---------------------------------------------------------------------------- #
    datapath.io.wb_alu_sum <<= mem_wb_register.io.wb_alu_sum
    datapath.io.wb_dataout <<= mem_wb_register.io.wb_dataout
    datapath.io.wb_pc_4 <<= mem_wb_register.io.wb_pc_4
    datapath.io.wb_imm <<= mem_wb_register.io.wb_imm
    datapath.io.wb_aui_pc <<= mem_wb_register.io.wb_aui_pc
    datapath.io.wb_Mem_to_Reg <<= mem_wb_register.io.wb_Mem_to_Reg
    # csr add start
    datapath.io.wb_csr_data_out <<= mem_wb_register.io.wb_csr_data_out
    # csr add end

    # // monitor
    # ********************** #
    io.wb_rd <<= mem_wb_register.io.wb_rd
    io.wb_registerwrite <<= datapath.io.wb_reg_writedata
    # ********************** #
    # // monitor

    # ---------------------------------------------------------------------------- #
    # Forward unit
    # ---------------------------------------------------------------------------- #
    forward.io.ex_mem_Reg_Write <<= ex_mem_register.io.mem_Reg_Write
    forward.io.ex_mem_rd <<= ex_mem_register.io.mem_rd
    forward.io.mem_wb_Reg_Write <<= mem_wb_register.io.wb_Reg_Write
    forward.io.mem_wb_rd <<= mem_wb_register.io.wb_rd
    forward.io.id_ex_rs1 <<= id_ex_register.io.ex_rs1
    forward.io.id_ex_rs2 <<= id_ex_register.io.ex_rs2
    forward.io.ex_mem_rs2 <<= ex_mem_register.io.mem_rs2
    forward.io.ex_mem_Mem_Write <<= ex_mem_register.io.mem_Mem_Write

    # ---------------------------------------------------------------------------- #
    # Branch predictor
    # ---------------------------------------------------------------------------- #
    branch_predictor.io.inst <<= instcache.io.inst
    branch_predictor.io.branch_addr <<= datapath.io.branch_addr
    branch_predictor.io.PC_Src <<= datapath.io.PC_Src
    branch_predictor.io.pc <<= pc.io.pc_out
    branch_predictor.io.ex_Branch <<= id_ex_register.io.ex_Branch
    branch_predictor.io.ex_Jump_Type <<= id_ex_register.io.ex_Jump_Type
    # csr add start
    branch_predictor.io.is_Exception <<= csr.io.is_Exception
    # csr add end

    # // output test
    # ********************** #
    io.Forward_A <<= forward.io.Forward_A
    io.Forward_B <<= forward.io.Forward_B
    io.MemWrite_Src <<= forward.io.MemWrite_Src
    # ********************** #


# if __name__ == '__main__':
#     # builder.emit(builder.elaborate(Tile().gen()), "./firrtl/Tile.fir")
#     # builder.dumpverilog("./firrtl/Tile.fir", "./verilog/Tile.v")
#     tile = Tile().gen()
#     sim = Simulator(tile)
#
#     # Simulate begin
#     sim.start()
#
#     for i in range(0, 1000):
#         sim.step()
#
#     sim.term()
#     # Simulate end
if __name__ == '__main__':
    f = Emitter.dump(Emitter.emit(Tile()), "Tile.fir")
    Emitter.dumpVerilog(f)
