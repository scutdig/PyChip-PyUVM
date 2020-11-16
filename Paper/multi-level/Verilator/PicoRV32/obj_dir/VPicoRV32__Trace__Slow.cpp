// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VPicoRV32__Syms.h"


//======================

void VPicoRV32::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback(&VPicoRV32::traceInit, &VPicoRV32::traceFull, &VPicoRV32::traceChg, this);
}
void VPicoRV32::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    VPicoRV32* t = (VPicoRV32*)userthis;
    VPicoRV32__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
                        "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vcdp->scopeEscape(' ');
    t->traceInitThis(vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void VPicoRV32::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VPicoRV32* t = (VPicoRV32*)userthis;
    VPicoRV32__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    t->traceFullThis(vlSymsp, vcdp, code);
}

//======================


void VPicoRV32::traceInitThis(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    if (false && vcdp) {}  // Prevent unused
    vcdp->module(vlSymsp->name());  // Setup signal names
    // Body
    {
        vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void VPicoRV32::traceFullThis(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    if (false && vcdp) {}  // Prevent unused
    // Body
    {
        vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VPicoRV32::traceInitThis__1(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c = code;
    if (false && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->declBit(c+107,"clock", false,-1);
        vcdp->declBit(c+108,"reset", false,-1);
        vcdp->declBit(c+109,"io_trap", false,-1);
        vcdp->declBit(c+110,"io_mem_valid", false,-1);
        vcdp->declBit(c+111,"io_mem_instr", false,-1);
        vcdp->declBit(c+112,"io_mem_ready", false,-1);
        vcdp->declBus(c+113,"io_mem_addr", false,-1, 31,0);
        vcdp->declBus(c+114,"io_mem_wdata", false,-1, 31,0);
        vcdp->declBus(c+115,"io_mem_wstrb", false,-1, 3,0);
        vcdp->declBus(c+116,"io_mem_rdata", false,-1, 31,0);
        vcdp->declBit(c+117,"io_mem_la_read", false,-1);
        vcdp->declBit(c+118,"io_mem_la_write", false,-1);
        vcdp->declBus(c+119,"io_mem_la_addr", false,-1, 31,0);
        vcdp->declBus(c+120,"io_mem_la_wdata", false,-1, 31,0);
        vcdp->declBus(c+121,"io_mem_la_wstrb", false,-1, 3,0);
        vcdp->declBit(c+122,"io_pcpi_valid", false,-1);
        vcdp->declBus(c+123,"io_pcpi_insn", false,-1, 31,0);
        vcdp->declBus(c+124,"io_pcpi_rs1", false,-1, 31,0);
        vcdp->declBus(c+125,"io_pcpi_rs2", false,-1, 31,0);
        vcdp->declBit(c+126,"io_pcpi_wr", false,-1);
        vcdp->declBus(c+127,"io_pcpi_rd", false,-1, 31,0);
        vcdp->declBit(c+128,"io_pcpi_wait", false,-1);
        vcdp->declBit(c+129,"io_pcpi_ready", false,-1);
        vcdp->declBus(c+130,"io_irq", false,-1, 31,0);
        vcdp->declBus(c+131,"io_eoi", false,-1, 31,0);
        vcdp->declBit(c+132,"io_trace_valid", false,-1);
        vcdp->declQuad(c+133,"io_trace_data", false,-1, 35,0);
        vcdp->declBit(c+107,"PicoRV32 clock", false,-1);
        vcdp->declBit(c+108,"PicoRV32 reset", false,-1);
        vcdp->declBit(c+109,"PicoRV32 io_trap", false,-1);
        vcdp->declBit(c+110,"PicoRV32 io_mem_valid", false,-1);
        vcdp->declBit(c+111,"PicoRV32 io_mem_instr", false,-1);
        vcdp->declBit(c+112,"PicoRV32 io_mem_ready", false,-1);
        vcdp->declBus(c+113,"PicoRV32 io_mem_addr", false,-1, 31,0);
        vcdp->declBus(c+114,"PicoRV32 io_mem_wdata", false,-1, 31,0);
        vcdp->declBus(c+115,"PicoRV32 io_mem_wstrb", false,-1, 3,0);
        vcdp->declBus(c+116,"PicoRV32 io_mem_rdata", false,-1, 31,0);
        vcdp->declBit(c+117,"PicoRV32 io_mem_la_read", false,-1);
        vcdp->declBit(c+118,"PicoRV32 io_mem_la_write", false,-1);
        vcdp->declBus(c+119,"PicoRV32 io_mem_la_addr", false,-1, 31,0);
        vcdp->declBus(c+120,"PicoRV32 io_mem_la_wdata", false,-1, 31,0);
        vcdp->declBus(c+121,"PicoRV32 io_mem_la_wstrb", false,-1, 3,0);
        vcdp->declBit(c+122,"PicoRV32 io_pcpi_valid", false,-1);
        vcdp->declBus(c+123,"PicoRV32 io_pcpi_insn", false,-1, 31,0);
        vcdp->declBus(c+124,"PicoRV32 io_pcpi_rs1", false,-1, 31,0);
        vcdp->declBus(c+125,"PicoRV32 io_pcpi_rs2", false,-1, 31,0);
        vcdp->declBit(c+126,"PicoRV32 io_pcpi_wr", false,-1);
        vcdp->declBus(c+127,"PicoRV32 io_pcpi_rd", false,-1, 31,0);
        vcdp->declBit(c+128,"PicoRV32 io_pcpi_wait", false,-1);
        vcdp->declBit(c+129,"PicoRV32 io_pcpi_ready", false,-1);
        vcdp->declBus(c+130,"PicoRV32 io_irq", false,-1, 31,0);
        vcdp->declBus(c+131,"PicoRV32 io_eoi", false,-1, 31,0);
        vcdp->declBit(c+132,"PicoRV32 io_trace_valid", false,-1);
        vcdp->declQuad(c+133,"PicoRV32 io_trace_data", false,-1, 35,0);
        vcdp->declBit(c+10,"PicoRV32 trap", false,-1);
        vcdp->declBit(c+11,"PicoRV32 mem_valid", false,-1);
        vcdp->declBit(c+12,"PicoRV32 mem_instr", false,-1);
        vcdp->declBus(c+13,"PicoRV32 mem_addr", false,-1, 31,0);
        vcdp->declBus(c+14,"PicoRV32 mem_wdata", false,-1, 31,0);
        vcdp->declBus(c+15,"PicoRV32 mem_wstrb", false,-1, 3,0);
        vcdp->declBus(c+16,"PicoRV32 mem_la_wdata", false,-1, 31,0);
        vcdp->declBus(c+17,"PicoRV32 mem_la_wstrb", false,-1, 3,0);
        vcdp->declBus(c+18,"PicoRV32 reg_op1", false,-1, 31,0);
        vcdp->declBus(c+19,"PicoRV32 reg_op2", false,-1, 31,0);
        vcdp->declBit(c+20,"PicoRV32 mem_do_rinst", false,-1);
        vcdp->declBit(c+21,"PicoRV32 latched_store", false,-1);
        vcdp->declBit(c+22,"PicoRV32 latched_branch", false,-1);
        vcdp->declBus(c+23,"PicoRV32 reg_out", false,-1, 31,0);
        vcdp->declBus(c+24,"PicoRV32 reg_next_pc", false,-1, 31,0);
        vcdp->declBus(c+25,"PicoRV32 next_pc", false,-1, 31,0);
        vcdp->declBit(c+6,"PicoRV32 mem_xfer", false,-1);
        vcdp->declBit(c+26,"PicoRV32 mem_do_rdata", false,-1);
        vcdp->declBit(c+27,"PicoRV32 mem_do_wdata", false,-1);
        vcdp->declBit(c+1,"PicoRV32 mem_busy", false,-1);
        vcdp->declBus(c+28,"PicoRV32 mem_state", false,-1, 1,0);
        vcdp->declBit(c+7,"PicoRV32 mem_done", false,-1);
        vcdp->declBus(c+29,"PicoRV32 mem_rdata_q", false,-1, 31,0);
        vcdp->declBus(c+8,"PicoRV32 mem_rdata_latched_noshuffle", false,-1, 31,0);
        vcdp->declBus(c+30,"PicoRV32 mem_wordsize", false,-1, 1,0);
        vcdp->declBus(c+31,"PicoRV32 mem_rdata_word", false,-1, 31,0);
        vcdp->declBit(c+32,"PicoRV32 instr_lui", false,-1);
        vcdp->declBit(c+33,"PicoRV32 instr_auipc", false,-1);
        vcdp->declBit(c+34,"PicoRV32 instr_jal", false,-1);
        vcdp->declBit(c+35,"PicoRV32 instr_jalr", false,-1);
        vcdp->declBit(c+36,"PicoRV32 instr_beq", false,-1);
        vcdp->declBit(c+37,"PicoRV32 instr_bne", false,-1);
        vcdp->declBit(c+38,"PicoRV32 instr_blt", false,-1);
        vcdp->declBit(c+39,"PicoRV32 instr_bge", false,-1);
        vcdp->declBit(c+40,"PicoRV32 instr_bltu", false,-1);
        vcdp->declBit(c+41,"PicoRV32 instr_bgeu", false,-1);
        vcdp->declBit(c+42,"PicoRV32 instr_lb", false,-1);
        vcdp->declBit(c+43,"PicoRV32 instr_lh", false,-1);
        vcdp->declBit(c+44,"PicoRV32 instr_lw", false,-1);
        vcdp->declBit(c+45,"PicoRV32 instr_lbu", false,-1);
        vcdp->declBit(c+46,"PicoRV32 instr_lhu", false,-1);
        vcdp->declBit(c+47,"PicoRV32 instr_sb", false,-1);
        vcdp->declBit(c+48,"PicoRV32 instr_sh", false,-1);
        vcdp->declBit(c+49,"PicoRV32 instr_sw", false,-1);
        vcdp->declBit(c+50,"PicoRV32 instr_addi", false,-1);
        vcdp->declBit(c+51,"PicoRV32 instr_slti", false,-1);
        vcdp->declBit(c+52,"PicoRV32 instr_sltiu", false,-1);
        vcdp->declBit(c+53,"PicoRV32 instr_xori", false,-1);
        vcdp->declBit(c+54,"PicoRV32 instr_ori", false,-1);
        vcdp->declBit(c+55,"PicoRV32 instr_andi", false,-1);
        vcdp->declBit(c+56,"PicoRV32 instr_slli", false,-1);
        vcdp->declBit(c+57,"PicoRV32 instr_srli", false,-1);
        vcdp->declBit(c+58,"PicoRV32 instr_srai", false,-1);
        vcdp->declBit(c+59,"PicoRV32 instr_add", false,-1);
        vcdp->declBit(c+60,"PicoRV32 instr_sub", false,-1);
        vcdp->declBit(c+61,"PicoRV32 instr_sll", false,-1);
        vcdp->declBit(c+62,"PicoRV32 instr_slt", false,-1);
        vcdp->declBit(c+63,"PicoRV32 instr_sltu", false,-1);
        vcdp->declBit(c+64,"PicoRV32 instr_xor", false,-1);
        vcdp->declBit(c+65,"PicoRV32 instr_srl", false,-1);
        vcdp->declBit(c+66,"PicoRV32 instr_sra", false,-1);
        vcdp->declBit(c+67,"PicoRV32 instr_or", false,-1);
        vcdp->declBit(c+68,"PicoRV32 instr_and", false,-1);
        vcdp->declBit(c+69,"PicoRV32 instr_rdcycle", false,-1);
        vcdp->declBit(c+70,"PicoRV32 instr_rdcycleh", false,-1);
        vcdp->declBit(c+71,"PicoRV32 instr_rdinstr", false,-1);
        vcdp->declBit(c+72,"PicoRV32 instr_rdinstrh", false,-1);
        vcdp->declQuad(c+2,"PicoRV32 all_instr", false,-1, 46,0);
        vcdp->declBit(c+4,"PicoRV32 instr_trap", false,-1);
        vcdp->declBit(c+5,"PicoRV32 is_rdcycle_rdcycleh_rdinstr_rdinstrh", false,-1);
        vcdp->declBit(c+73,"PicoRV32 is_lui_auipc_jal", false,-1);
        vcdp->declBit(c+74,"PicoRV32 is_lbu_lhu_lw", false,-1);
        vcdp->declBit(c+75,"PicoRV32 is_beq_bne_blt_bge_bltu_bgeu", false,-1);
        vcdp->declBit(c+76,"PicoRV32 is_lb_lh_lw_lbu_lhu", false,-1);
        vcdp->declBit(c+77,"PicoRV32 is_sb_sh_sw", false,-1);
        vcdp->declBit(c+78,"PicoRV32 is_alu_reg_imm", false,-1);
        vcdp->declBit(c+79,"PicoRV32 is_alu_reg_reg", false,-1);
        vcdp->declBus(c+80,"PicoRV32 decoded_imm_j", false,-1, 31,0);
        vcdp->declBus(c+81,"PicoRV32 decoded_rs1", false,-1, 4,0);
        vcdp->declBus(c+82,"PicoRV32 decoded_rs2", false,-1, 4,0);
        vcdp->declBus(c+9,"PicoRV32 decoder_imm_j_signed", false,-1, 31,0);
        vcdp->declBit(c+83,"PicoRV32 decoder_trigger", false,-1);
        vcdp->declBit(c+84,"PicoRV32 decoder_pseudo_trigger", false,-1);
        vcdp->declBit(c+85,"PicoRV32 is_slli_srli_srai", false,-1);
        vcdp->declBit(c+86,"PicoRV32 is_jalr_addi_slti_sltiu_xori_ori_andi", false,-1);
        vcdp->declBit(c+87,"PicoRV32 is_sll_srl_sra", false,-1);
        vcdp->declBus(c+88,"PicoRV32 decoded_imm", false,-1, 31,0);
        vcdp->declBit(c+89,"PicoRV32 alu_out_0", false,-1);
        vcdp->declBit(c+90,"PicoRV32 cpuregs_write", false,-1);
        vcdp->declBus(c+91,"PicoRV32 cpuregs_wrdata", false,-1, 31,0);
        vcdp->declBus(c+92,"PicoRV32 cpu_state", false,-1, 7,0);
        vcdp->declBus(c+93,"PicoRV32 latched_rd", false,-1, 4,0);
        vcdp->declBus(c+94,"PicoRV32 cpuregs_rs1", false,-1, 31,0);
        vcdp->declBus(c+95,"PicoRV32 cpuregs_rs2", false,-1, 31,0);
        vcdp->declBus(c+96,"PicoRV32 reg_sh", false,-1, 4,0);
        vcdp->declBit(c+97,"PicoRV32 set_mem_do_rinst", false,-1);
        vcdp->declBit(c+98,"PicoRV32 set_mem_do_rdata", false,-1);
        vcdp->declBit(c+99,"PicoRV32 set_mem_do_wdata", false,-1);
        vcdp->declQuad(c+100,"PicoRV32 count_cycle", false,-1, 63,0);
        vcdp->declQuad(c+102,"PicoRV32 count_instr", false,-1, 63,0);
        vcdp->declBit(c+104,"PicoRV32 latched_is_lu", false,-1);
        vcdp->declBit(c+105,"PicoRV32 latched_is_lh", false,-1);
        vcdp->declBit(c+106,"PicoRV32 latched_is_lb", false,-1);
    }
}

void VPicoRV32::traceFullThis__1(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+1);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->fullBit(oldp+0,(((IData)(vlTOPp->PicoRV32__DOT___T_48) 
                               | (IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata))));
        vcdp->fullQData(oldp+1,(vlTOPp->PicoRV32__DOT__all_instr),47);
        vcdp->fullBit(oldp+3,((VL_ULL(0) == vlTOPp->PicoRV32__DOT__all_instr)));
        vcdp->fullBit(oldp+4,(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh));
        vcdp->fullBit(oldp+5,(vlTOPp->PicoRV32__DOT__mem_xfer));
        vcdp->fullBit(oldp+6,(vlTOPp->PicoRV32__DOT__mem_done));
        vcdp->fullIData(oldp+7,(vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle),32);
        vcdp->fullIData(oldp+8,(((0xfe000000U & ((- (IData)(
                                                            (1U 
                                                             & (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                                                >> 0x1fU)))) 
                                                 << 0x19U)) 
                                 | ((0x1e00000U & (
                                                   (- (IData)(
                                                              (1U 
                                                               & (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                                                  >> 0x1fU)))) 
                                                   << 0x15U)) 
                                    | (0x1ffffeU & 
                                       (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                        >> 0xbU))))),32);
        vcdp->fullBit(oldp+9,(vlTOPp->PicoRV32__DOT__trap));
        vcdp->fullBit(oldp+10,(vlTOPp->PicoRV32__DOT__mem_valid));
        vcdp->fullBit(oldp+11,(vlTOPp->PicoRV32__DOT__mem_instr));
        vcdp->fullIData(oldp+12,(vlTOPp->PicoRV32__DOT__mem_addr),32);
        vcdp->fullIData(oldp+13,(vlTOPp->PicoRV32__DOT__mem_wdata),32);
        vcdp->fullCData(oldp+14,(vlTOPp->PicoRV32__DOT__mem_wstrb),4);
        vcdp->fullIData(oldp+15,(vlTOPp->PicoRV32__DOT__mem_la_wdata),32);
        vcdp->fullCData(oldp+16,(vlTOPp->PicoRV32__DOT__mem_la_wstrb),4);
        vcdp->fullIData(oldp+17,(vlTOPp->PicoRV32__DOT__reg_op1),32);
        vcdp->fullIData(oldp+18,(vlTOPp->PicoRV32__DOT__reg_op2),32);
        vcdp->fullBit(oldp+19,(vlTOPp->PicoRV32__DOT__mem_do_rinst));
        vcdp->fullBit(oldp+20,(vlTOPp->PicoRV32__DOT__latched_store));
        vcdp->fullBit(oldp+21,(vlTOPp->PicoRV32__DOT__latched_branch));
        vcdp->fullIData(oldp+22,(vlTOPp->PicoRV32__DOT__reg_out),32);
        vcdp->fullIData(oldp+23,(vlTOPp->PicoRV32__DOT__reg_next_pc),32);
        vcdp->fullIData(oldp+24,((((IData)(vlTOPp->PicoRV32__DOT__latched_store) 
                                   & (IData)(vlTOPp->PicoRV32__DOT__latched_branch))
                                   ? (0xfffffffeU & vlTOPp->PicoRV32__DOT__reg_out)
                                   : vlTOPp->PicoRV32__DOT__reg_next_pc)),32);
        vcdp->fullBit(oldp+25,(vlTOPp->PicoRV32__DOT__mem_do_rdata));
        vcdp->fullBit(oldp+26,(vlTOPp->PicoRV32__DOT__mem_do_wdata));
        vcdp->fullCData(oldp+27,(vlTOPp->PicoRV32__DOT__mem_state),2);
        vcdp->fullIData(oldp+28,(vlTOPp->PicoRV32__DOT__mem_rdata_q),32);
        vcdp->fullCData(oldp+29,(vlTOPp->PicoRV32__DOT__mem_wordsize),2);
        vcdp->fullIData(oldp+30,(vlTOPp->PicoRV32__DOT__mem_rdata_word),32);
        vcdp->fullBit(oldp+31,(vlTOPp->PicoRV32__DOT__instr_lui));
        vcdp->fullBit(oldp+32,(vlTOPp->PicoRV32__DOT__instr_auipc));
        vcdp->fullBit(oldp+33,(vlTOPp->PicoRV32__DOT__instr_jal));
        vcdp->fullBit(oldp+34,(vlTOPp->PicoRV32__DOT__instr_jalr));
        vcdp->fullBit(oldp+35,(vlTOPp->PicoRV32__DOT__instr_beq));
        vcdp->fullBit(oldp+36,(vlTOPp->PicoRV32__DOT__instr_bne));
        vcdp->fullBit(oldp+37,(vlTOPp->PicoRV32__DOT__instr_blt));
        vcdp->fullBit(oldp+38,(vlTOPp->PicoRV32__DOT__instr_bge));
        vcdp->fullBit(oldp+39,(vlTOPp->PicoRV32__DOT__instr_bltu));
        vcdp->fullBit(oldp+40,(vlTOPp->PicoRV32__DOT__instr_bgeu));
        vcdp->fullBit(oldp+41,(vlTOPp->PicoRV32__DOT__instr_lb));
        vcdp->fullBit(oldp+42,(vlTOPp->PicoRV32__DOT__instr_lh));
        vcdp->fullBit(oldp+43,(vlTOPp->PicoRV32__DOT__instr_lw));
        vcdp->fullBit(oldp+44,(vlTOPp->PicoRV32__DOT__instr_lbu));
        vcdp->fullBit(oldp+45,(vlTOPp->PicoRV32__DOT__instr_lhu));
        vcdp->fullBit(oldp+46,(vlTOPp->PicoRV32__DOT__instr_sb));
        vcdp->fullBit(oldp+47,(vlTOPp->PicoRV32__DOT__instr_sh));
        vcdp->fullBit(oldp+48,(vlTOPp->PicoRV32__DOT__instr_sw));
        vcdp->fullBit(oldp+49,(vlTOPp->PicoRV32__DOT__instr_addi));
        vcdp->fullBit(oldp+50,(vlTOPp->PicoRV32__DOT__instr_slti));
        vcdp->fullBit(oldp+51,(vlTOPp->PicoRV32__DOT__instr_sltiu));
        vcdp->fullBit(oldp+52,(vlTOPp->PicoRV32__DOT__instr_xori));
        vcdp->fullBit(oldp+53,(vlTOPp->PicoRV32__DOT__instr_ori));
        vcdp->fullBit(oldp+54,(vlTOPp->PicoRV32__DOT__instr_andi));
        vcdp->fullBit(oldp+55,(vlTOPp->PicoRV32__DOT__instr_slli));
        vcdp->fullBit(oldp+56,(vlTOPp->PicoRV32__DOT__instr_srli));
        vcdp->fullBit(oldp+57,(vlTOPp->PicoRV32__DOT__instr_srai));
        vcdp->fullBit(oldp+58,(vlTOPp->PicoRV32__DOT__instr_add));
        vcdp->fullBit(oldp+59,(vlTOPp->PicoRV32__DOT__instr_sub));
        vcdp->fullBit(oldp+60,(vlTOPp->PicoRV32__DOT__instr_sll));
        vcdp->fullBit(oldp+61,(vlTOPp->PicoRV32__DOT__instr_slt));
        vcdp->fullBit(oldp+62,(vlTOPp->PicoRV32__DOT__instr_sltu));
        vcdp->fullBit(oldp+63,(vlTOPp->PicoRV32__DOT__instr_xor));
        vcdp->fullBit(oldp+64,(vlTOPp->PicoRV32__DOT__instr_srl));
        vcdp->fullBit(oldp+65,(vlTOPp->PicoRV32__DOT__instr_sra));
        vcdp->fullBit(oldp+66,(vlTOPp->PicoRV32__DOT__instr_or));
        vcdp->fullBit(oldp+67,(vlTOPp->PicoRV32__DOT__instr_and));
        vcdp->fullBit(oldp+68,(vlTOPp->PicoRV32__DOT__instr_rdcycle));
        vcdp->fullBit(oldp+69,(vlTOPp->PicoRV32__DOT__instr_rdcycleh));
        vcdp->fullBit(oldp+70,(vlTOPp->PicoRV32__DOT__instr_rdinstr));
        vcdp->fullBit(oldp+71,(vlTOPp->PicoRV32__DOT__instr_rdinstrh));
        vcdp->fullBit(oldp+72,(vlTOPp->PicoRV32__DOT__is_lui_auipc_jal));
        vcdp->fullBit(oldp+73,(vlTOPp->PicoRV32__DOT__is_lbu_lhu_lw));
        vcdp->fullBit(oldp+74,(vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu));
        vcdp->fullBit(oldp+75,(vlTOPp->PicoRV32__DOT__is_lb_lh_lw_lbu_lhu));
        vcdp->fullBit(oldp+76,(vlTOPp->PicoRV32__DOT__is_sb_sh_sw));
        vcdp->fullBit(oldp+77,(vlTOPp->PicoRV32__DOT__is_alu_reg_imm));
        vcdp->fullBit(oldp+78,(vlTOPp->PicoRV32__DOT__is_alu_reg_reg));
        vcdp->fullIData(oldp+79,(vlTOPp->PicoRV32__DOT__decoded_imm_j),32);
        vcdp->fullCData(oldp+80,(vlTOPp->PicoRV32__DOT__decoded_rs1),5);
        vcdp->fullCData(oldp+81,(vlTOPp->PicoRV32__DOT__decoded_rs2),5);
        vcdp->fullBit(oldp+82,(vlTOPp->PicoRV32__DOT__decoder_trigger));
        vcdp->fullBit(oldp+83,(vlTOPp->PicoRV32__DOT__decoder_pseudo_trigger));
        vcdp->fullBit(oldp+84,(vlTOPp->PicoRV32__DOT__is_slli_srli_srai));
        vcdp->fullBit(oldp+85,(vlTOPp->PicoRV32__DOT__is_jalr_addi_slti_sltiu_xori_ori_andi));
        vcdp->fullBit(oldp+86,(vlTOPp->PicoRV32__DOT__is_sll_srl_sra));
        vcdp->fullIData(oldp+87,(vlTOPp->PicoRV32__DOT__decoded_imm),32);
        vcdp->fullBit(oldp+88,(vlTOPp->PicoRV32__DOT__alu_out_0));
        vcdp->fullBit(oldp+89,(vlTOPp->PicoRV32__DOT__cpuregs_write));
        vcdp->fullIData(oldp+90,(vlTOPp->PicoRV32__DOT__cpuregs_wrdata),32);
        vcdp->fullCData(oldp+91,(vlTOPp->PicoRV32__DOT__cpu_state),8);
        vcdp->fullCData(oldp+92,(vlTOPp->PicoRV32__DOT__latched_rd),5);
        vcdp->fullIData(oldp+93,(vlTOPp->PicoRV32__DOT__cpuregs_rs1),32);
        vcdp->fullIData(oldp+94,(vlTOPp->PicoRV32__DOT__cpuregs_rs2),32);
        vcdp->fullCData(oldp+95,(vlTOPp->PicoRV32__DOT__reg_sh),5);
        vcdp->fullBit(oldp+96,(vlTOPp->PicoRV32__DOT__set_mem_do_rinst));
        vcdp->fullBit(oldp+97,(vlTOPp->PicoRV32__DOT__set_mem_do_rdata));
        vcdp->fullBit(oldp+98,(vlTOPp->PicoRV32__DOT__set_mem_do_wdata));
        vcdp->fullQData(oldp+99,(vlTOPp->PicoRV32__DOT__count_cycle),64);
        vcdp->fullQData(oldp+101,(vlTOPp->PicoRV32__DOT__count_instr),64);
        vcdp->fullBit(oldp+103,(vlTOPp->PicoRV32__DOT__latched_is_lu));
        vcdp->fullBit(oldp+104,(vlTOPp->PicoRV32__DOT__latched_is_lh));
        vcdp->fullBit(oldp+105,(vlTOPp->PicoRV32__DOT__latched_is_lb));
        vcdp->fullBit(oldp+106,(vlTOPp->clock));
        vcdp->fullBit(oldp+107,(vlTOPp->reset));
        vcdp->fullBit(oldp+108,(vlTOPp->io_trap));
        vcdp->fullBit(oldp+109,(vlTOPp->io_mem_valid));
        vcdp->fullBit(oldp+110,(vlTOPp->io_mem_instr));
        vcdp->fullBit(oldp+111,(vlTOPp->io_mem_ready));
        vcdp->fullIData(oldp+112,(vlTOPp->io_mem_addr),32);
        vcdp->fullIData(oldp+113,(vlTOPp->io_mem_wdata),32);
        vcdp->fullCData(oldp+114,(vlTOPp->io_mem_wstrb),4);
        vcdp->fullIData(oldp+115,(vlTOPp->io_mem_rdata),32);
        vcdp->fullBit(oldp+116,(vlTOPp->io_mem_la_read));
        vcdp->fullBit(oldp+117,(vlTOPp->io_mem_la_write));
        vcdp->fullIData(oldp+118,(vlTOPp->io_mem_la_addr),32);
        vcdp->fullIData(oldp+119,(vlTOPp->io_mem_la_wdata),32);
        vcdp->fullCData(oldp+120,(vlTOPp->io_mem_la_wstrb),4);
        vcdp->fullBit(oldp+121,(vlTOPp->io_pcpi_valid));
        vcdp->fullIData(oldp+122,(vlTOPp->io_pcpi_insn),32);
        vcdp->fullIData(oldp+123,(vlTOPp->io_pcpi_rs1),32);
        vcdp->fullIData(oldp+124,(vlTOPp->io_pcpi_rs2),32);
        vcdp->fullBit(oldp+125,(vlTOPp->io_pcpi_wr));
        vcdp->fullIData(oldp+126,(vlTOPp->io_pcpi_rd),32);
        vcdp->fullBit(oldp+127,(vlTOPp->io_pcpi_wait));
        vcdp->fullBit(oldp+128,(vlTOPp->io_pcpi_ready));
        vcdp->fullIData(oldp+129,(vlTOPp->io_irq),32);
        vcdp->fullIData(oldp+130,(vlTOPp->io_eoi),32);
        vcdp->fullBit(oldp+131,(vlTOPp->io_trace_valid));
        vcdp->fullQData(oldp+132,(vlTOPp->io_trace_data),36);
    }
}
