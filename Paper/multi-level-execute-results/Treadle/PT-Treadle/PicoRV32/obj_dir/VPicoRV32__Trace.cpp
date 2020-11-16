// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VPicoRV32__Syms.h"


//======================

void VPicoRV32::traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VPicoRV32* t = (VPicoRV32*)userthis;
    VPicoRV32__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (vlSymsp->getClearActivity()) {
        t->traceChgThis(vlSymsp, vcdp, code);
    }
}

//======================


void VPicoRV32::traceChgThis(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    if (false && vcdp) {}  // Prevent unused
    // Body
    {
        if (VL_UNLIKELY((1U & (vlTOPp->__Vm_traceActivity 
                               | (vlTOPp->__Vm_traceActivity 
                                  >> 1U))))) {
            vlTOPp->traceChgThis__2(vlSymsp, vcdp, code);
        }
        if (VL_UNLIKELY((1U & (vlTOPp->__Vm_traceActivity 
                               | (vlTOPp->__Vm_traceActivity 
                                  >> 2U))))) {
            vlTOPp->traceChgThis__3(vlSymsp, vcdp, code);
        }
        if (VL_UNLIKELY((2U & vlTOPp->__Vm_traceActivity))) {
            vlTOPp->traceChgThis__4(vlSymsp, vcdp, code);
        }
        vlTOPp->traceChgThis__5(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VPicoRV32::traceChgThis__2(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+1);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(oldp+0,(((IData)(vlTOPp->PicoRV32__DOT___T_48) 
                              | (IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata))));
        vcdp->chgQData(oldp+1,(vlTOPp->PicoRV32__DOT__all_instr),47);
        vcdp->chgBit(oldp+3,((VL_ULL(0) == vlTOPp->PicoRV32__DOT__all_instr)));
        vcdp->chgBit(oldp+4,(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh));
    }
}

void VPicoRV32::traceChgThis__3(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+6);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(oldp+0,(vlTOPp->PicoRV32__DOT__mem_xfer));
        vcdp->chgBit(oldp+1,(vlTOPp->PicoRV32__DOT__mem_done));
        vcdp->chgIData(oldp+2,(vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle),32);
        vcdp->chgIData(oldp+3,(((0xfe000000U & ((- (IData)(
                                                           (1U 
                                                            & (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                                               >> 0x1fU)))) 
                                                << 0x19U)) 
                                | ((0x1e00000U & ((- (IData)(
                                                             (1U 
                                                              & (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                                                 >> 0x1fU)))) 
                                                  << 0x15U)) 
                                   | (0x1ffffeU & (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                                   >> 0xbU))))),32);
    }
}

void VPicoRV32::traceChgThis__4(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+10);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(oldp+0,(vlTOPp->PicoRV32__DOT__trap));
        vcdp->chgBit(oldp+1,(vlTOPp->PicoRV32__DOT__mem_valid));
        vcdp->chgBit(oldp+2,(vlTOPp->PicoRV32__DOT__mem_instr));
        vcdp->chgIData(oldp+3,(vlTOPp->PicoRV32__DOT__mem_addr),32);
        vcdp->chgIData(oldp+4,(vlTOPp->PicoRV32__DOT__mem_wdata),32);
        vcdp->chgCData(oldp+5,(vlTOPp->PicoRV32__DOT__mem_wstrb),4);
        vcdp->chgIData(oldp+6,(vlTOPp->PicoRV32__DOT__mem_la_wdata),32);
        vcdp->chgCData(oldp+7,(vlTOPp->PicoRV32__DOT__mem_la_wstrb),4);
        vcdp->chgIData(oldp+8,(vlTOPp->PicoRV32__DOT__reg_op1),32);
        vcdp->chgIData(oldp+9,(vlTOPp->PicoRV32__DOT__reg_op2),32);
        vcdp->chgBit(oldp+10,(vlTOPp->PicoRV32__DOT__mem_do_rinst));
        vcdp->chgBit(oldp+11,(vlTOPp->PicoRV32__DOT__latched_store));
        vcdp->chgBit(oldp+12,(vlTOPp->PicoRV32__DOT__latched_branch));
        vcdp->chgIData(oldp+13,(vlTOPp->PicoRV32__DOT__reg_out),32);
        vcdp->chgIData(oldp+14,(vlTOPp->PicoRV32__DOT__reg_next_pc),32);
        vcdp->chgIData(oldp+15,((((IData)(vlTOPp->PicoRV32__DOT__latched_store) 
                                  & (IData)(vlTOPp->PicoRV32__DOT__latched_branch))
                                  ? (0xfffffffeU & vlTOPp->PicoRV32__DOT__reg_out)
                                  : vlTOPp->PicoRV32__DOT__reg_next_pc)),32);
        vcdp->chgBit(oldp+16,(vlTOPp->PicoRV32__DOT__mem_do_rdata));
        vcdp->chgBit(oldp+17,(vlTOPp->PicoRV32__DOT__mem_do_wdata));
        vcdp->chgCData(oldp+18,(vlTOPp->PicoRV32__DOT__mem_state),2);
        vcdp->chgIData(oldp+19,(vlTOPp->PicoRV32__DOT__mem_rdata_q),32);
        vcdp->chgCData(oldp+20,(vlTOPp->PicoRV32__DOT__mem_wordsize),2);
        vcdp->chgIData(oldp+21,(vlTOPp->PicoRV32__DOT__mem_rdata_word),32);
        vcdp->chgBit(oldp+22,(vlTOPp->PicoRV32__DOT__instr_lui));
        vcdp->chgBit(oldp+23,(vlTOPp->PicoRV32__DOT__instr_auipc));
        vcdp->chgBit(oldp+24,(vlTOPp->PicoRV32__DOT__instr_jal));
        vcdp->chgBit(oldp+25,(vlTOPp->PicoRV32__DOT__instr_jalr));
        vcdp->chgBit(oldp+26,(vlTOPp->PicoRV32__DOT__instr_beq));
        vcdp->chgBit(oldp+27,(vlTOPp->PicoRV32__DOT__instr_bne));
        vcdp->chgBit(oldp+28,(vlTOPp->PicoRV32__DOT__instr_blt));
        vcdp->chgBit(oldp+29,(vlTOPp->PicoRV32__DOT__instr_bge));
        vcdp->chgBit(oldp+30,(vlTOPp->PicoRV32__DOT__instr_bltu));
        vcdp->chgBit(oldp+31,(vlTOPp->PicoRV32__DOT__instr_bgeu));
        vcdp->chgBit(oldp+32,(vlTOPp->PicoRV32__DOT__instr_lb));
        vcdp->chgBit(oldp+33,(vlTOPp->PicoRV32__DOT__instr_lh));
        vcdp->chgBit(oldp+34,(vlTOPp->PicoRV32__DOT__instr_lw));
        vcdp->chgBit(oldp+35,(vlTOPp->PicoRV32__DOT__instr_lbu));
        vcdp->chgBit(oldp+36,(vlTOPp->PicoRV32__DOT__instr_lhu));
        vcdp->chgBit(oldp+37,(vlTOPp->PicoRV32__DOT__instr_sb));
        vcdp->chgBit(oldp+38,(vlTOPp->PicoRV32__DOT__instr_sh));
        vcdp->chgBit(oldp+39,(vlTOPp->PicoRV32__DOT__instr_sw));
        vcdp->chgBit(oldp+40,(vlTOPp->PicoRV32__DOT__instr_addi));
        vcdp->chgBit(oldp+41,(vlTOPp->PicoRV32__DOT__instr_slti));
        vcdp->chgBit(oldp+42,(vlTOPp->PicoRV32__DOT__instr_sltiu));
        vcdp->chgBit(oldp+43,(vlTOPp->PicoRV32__DOT__instr_xori));
        vcdp->chgBit(oldp+44,(vlTOPp->PicoRV32__DOT__instr_ori));
        vcdp->chgBit(oldp+45,(vlTOPp->PicoRV32__DOT__instr_andi));
        vcdp->chgBit(oldp+46,(vlTOPp->PicoRV32__DOT__instr_slli));
        vcdp->chgBit(oldp+47,(vlTOPp->PicoRV32__DOT__instr_srli));
        vcdp->chgBit(oldp+48,(vlTOPp->PicoRV32__DOT__instr_srai));
        vcdp->chgBit(oldp+49,(vlTOPp->PicoRV32__DOT__instr_add));
        vcdp->chgBit(oldp+50,(vlTOPp->PicoRV32__DOT__instr_sub));
        vcdp->chgBit(oldp+51,(vlTOPp->PicoRV32__DOT__instr_sll));
        vcdp->chgBit(oldp+52,(vlTOPp->PicoRV32__DOT__instr_slt));
        vcdp->chgBit(oldp+53,(vlTOPp->PicoRV32__DOT__instr_sltu));
        vcdp->chgBit(oldp+54,(vlTOPp->PicoRV32__DOT__instr_xor));
        vcdp->chgBit(oldp+55,(vlTOPp->PicoRV32__DOT__instr_srl));
        vcdp->chgBit(oldp+56,(vlTOPp->PicoRV32__DOT__instr_sra));
        vcdp->chgBit(oldp+57,(vlTOPp->PicoRV32__DOT__instr_or));
        vcdp->chgBit(oldp+58,(vlTOPp->PicoRV32__DOT__instr_and));
        vcdp->chgBit(oldp+59,(vlTOPp->PicoRV32__DOT__instr_rdcycle));
        vcdp->chgBit(oldp+60,(vlTOPp->PicoRV32__DOT__instr_rdcycleh));
        vcdp->chgBit(oldp+61,(vlTOPp->PicoRV32__DOT__instr_rdinstr));
        vcdp->chgBit(oldp+62,(vlTOPp->PicoRV32__DOT__instr_rdinstrh));
        vcdp->chgBit(oldp+63,(vlTOPp->PicoRV32__DOT__is_lui_auipc_jal));
        vcdp->chgBit(oldp+64,(vlTOPp->PicoRV32__DOT__is_lbu_lhu_lw));
        vcdp->chgBit(oldp+65,(vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu));
        vcdp->chgBit(oldp+66,(vlTOPp->PicoRV32__DOT__is_lb_lh_lw_lbu_lhu));
        vcdp->chgBit(oldp+67,(vlTOPp->PicoRV32__DOT__is_sb_sh_sw));
        vcdp->chgBit(oldp+68,(vlTOPp->PicoRV32__DOT__is_alu_reg_imm));
        vcdp->chgBit(oldp+69,(vlTOPp->PicoRV32__DOT__is_alu_reg_reg));
        vcdp->chgIData(oldp+70,(vlTOPp->PicoRV32__DOT__decoded_imm_j),32);
        vcdp->chgCData(oldp+71,(vlTOPp->PicoRV32__DOT__decoded_rs1),5);
        vcdp->chgCData(oldp+72,(vlTOPp->PicoRV32__DOT__decoded_rs2),5);
        vcdp->chgBit(oldp+73,(vlTOPp->PicoRV32__DOT__decoder_trigger));
        vcdp->chgBit(oldp+74,(vlTOPp->PicoRV32__DOT__decoder_pseudo_trigger));
        vcdp->chgBit(oldp+75,(vlTOPp->PicoRV32__DOT__is_slli_srli_srai));
        vcdp->chgBit(oldp+76,(vlTOPp->PicoRV32__DOT__is_jalr_addi_slti_sltiu_xori_ori_andi));
        vcdp->chgBit(oldp+77,(vlTOPp->PicoRV32__DOT__is_sll_srl_sra));
        vcdp->chgIData(oldp+78,(vlTOPp->PicoRV32__DOT__decoded_imm),32);
        vcdp->chgBit(oldp+79,(vlTOPp->PicoRV32__DOT__alu_out_0));
        vcdp->chgBit(oldp+80,(vlTOPp->PicoRV32__DOT__cpuregs_write));
        vcdp->chgIData(oldp+81,(vlTOPp->PicoRV32__DOT__cpuregs_wrdata),32);
        vcdp->chgCData(oldp+82,(vlTOPp->PicoRV32__DOT__cpu_state),8);
        vcdp->chgCData(oldp+83,(vlTOPp->PicoRV32__DOT__latched_rd),5);
        vcdp->chgIData(oldp+84,(vlTOPp->PicoRV32__DOT__cpuregs_rs1),32);
        vcdp->chgIData(oldp+85,(vlTOPp->PicoRV32__DOT__cpuregs_rs2),32);
        vcdp->chgCData(oldp+86,(vlTOPp->PicoRV32__DOT__reg_sh),5);
        vcdp->chgBit(oldp+87,(vlTOPp->PicoRV32__DOT__set_mem_do_rinst));
        vcdp->chgBit(oldp+88,(vlTOPp->PicoRV32__DOT__set_mem_do_rdata));
        vcdp->chgBit(oldp+89,(vlTOPp->PicoRV32__DOT__set_mem_do_wdata));
        vcdp->chgQData(oldp+90,(vlTOPp->PicoRV32__DOT__count_cycle),64);
        vcdp->chgQData(oldp+92,(vlTOPp->PicoRV32__DOT__count_instr),64);
        vcdp->chgBit(oldp+94,(vlTOPp->PicoRV32__DOT__latched_is_lu));
        vcdp->chgBit(oldp+95,(vlTOPp->PicoRV32__DOT__latched_is_lh));
        vcdp->chgBit(oldp+96,(vlTOPp->PicoRV32__DOT__latched_is_lb));
    }
}

void VPicoRV32::traceChgThis__5(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+107);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(oldp+0,(vlTOPp->clock));
        vcdp->chgBit(oldp+1,(vlTOPp->reset));
        vcdp->chgBit(oldp+2,(vlTOPp->io_trap));
        vcdp->chgBit(oldp+3,(vlTOPp->io_mem_valid));
        vcdp->chgBit(oldp+4,(vlTOPp->io_mem_instr));
        vcdp->chgBit(oldp+5,(vlTOPp->io_mem_ready));
        vcdp->chgIData(oldp+6,(vlTOPp->io_mem_addr),32);
        vcdp->chgIData(oldp+7,(vlTOPp->io_mem_wdata),32);
        vcdp->chgCData(oldp+8,(vlTOPp->io_mem_wstrb),4);
        vcdp->chgIData(oldp+9,(vlTOPp->io_mem_rdata),32);
        vcdp->chgBit(oldp+10,(vlTOPp->io_mem_la_read));
        vcdp->chgBit(oldp+11,(vlTOPp->io_mem_la_write));
        vcdp->chgIData(oldp+12,(vlTOPp->io_mem_la_addr),32);
        vcdp->chgIData(oldp+13,(vlTOPp->io_mem_la_wdata),32);
        vcdp->chgCData(oldp+14,(vlTOPp->io_mem_la_wstrb),4);
        vcdp->chgBit(oldp+15,(vlTOPp->io_pcpi_valid));
        vcdp->chgIData(oldp+16,(vlTOPp->io_pcpi_insn),32);
        vcdp->chgIData(oldp+17,(vlTOPp->io_pcpi_rs1),32);
        vcdp->chgIData(oldp+18,(vlTOPp->io_pcpi_rs2),32);
        vcdp->chgBit(oldp+19,(vlTOPp->io_pcpi_wr));
        vcdp->chgIData(oldp+20,(vlTOPp->io_pcpi_rd),32);
        vcdp->chgBit(oldp+21,(vlTOPp->io_pcpi_wait));
        vcdp->chgBit(oldp+22,(vlTOPp->io_pcpi_ready));
        vcdp->chgIData(oldp+23,(vlTOPp->io_irq),32);
        vcdp->chgIData(oldp+24,(vlTOPp->io_eoi),32);
        vcdp->chgBit(oldp+25,(vlTOPp->io_trace_valid));
        vcdp->chgQData(oldp+26,(vlTOPp->io_trace_data),36);
    }
}
