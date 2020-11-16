// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VCSR__Syms.h"


//======================

void VCSR::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback(&VCSR::traceInit, &VCSR::traceFull, &VCSR::traceChg, this);
}
void VCSR::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    VCSR* t = (VCSR*)userthis;
    VCSR__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
                        "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vcdp->scopeEscape(' ');
    t->traceInitThis(vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void VCSR::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VCSR* t = (VCSR*)userthis;
    VCSR__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    t->traceFullThis(vlSymsp, vcdp, code);
}

//======================


void VCSR::traceInitThis(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    if (false && vcdp) {}  // Prevent unused
    vcdp->module(vlSymsp->name());  // Setup signal names
    // Body
    {
        vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void VCSR::traceFullThis(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    if (false && vcdp) {}  // Prevent unused
    // Body
    {
        vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VCSR::traceInitThis__1(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c = code;
    if (false && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->declBit(c+47,"clock", false,-1);
        vcdp->declBit(c+48,"reset", false,-1);
        vcdp->declBit(c+49,"io_ex_Mem_Read", false,-1);
        vcdp->declBit(c+50,"io_ex_Mem_Write", false,-1);
        vcdp->declBus(c+51,"io_ex_branch_addr", false,-1, 31,0);
        vcdp->declBus(c+52,"io_ex_addr", false,-1, 31,0);
        vcdp->declBus(c+53,"io_ex_inst", false,-1, 31,0);
        vcdp->declBus(c+54,"io_csr_data_in", false,-1, 31,0);
        vcdp->declBus(c+55,"io_ex_pc_4", false,-1, 31,0);
        vcdp->declBus(c+56,"io_ex_Write_CSR", false,-1, 2,0);
        vcdp->declBit(c+57,"io_ex_is_Illegal", false,-1);
        vcdp->declBit(c+58,"io_ex_Branch", false,-1);
        vcdp->declBus(c+59,"io_PC_Sel", false,-1, 1,0);
        vcdp->declBus(c+60,"io_new_addr", false,-1, 31,0);
        vcdp->declBus(c+61,"io_pc_recover", false,-1, 31,0);
        vcdp->declBit(c+62,"io_Bubble", false,-1);
        vcdp->declBus(c+63,"io_if_inst", false,-1, 31,0);
        vcdp->declBit(c+64,"io_is_Waiting_Resolved", false,-1);
        vcdp->declBus(c+65,"io_mepc_out", false,-1, 31,0);
        vcdp->declBus(c+66,"io_mtvec_out", false,-1, 31,0);
        vcdp->declBus(c+67,"io_csr_data_out", false,-1, 31,0);
        vcdp->declBit(c+68,"io_IF_ID_Flush", false,-1);
        vcdp->declBit(c+69,"io_ID_EX_Flush", false,-1);
        vcdp->declBus(c+70,"io_is_Exception", false,-1, 1,0);
        vcdp->declBit(c+71,"io_Exception_Flush", false,-1);
        vcdp->declBit(c+47,"CSR clock", false,-1);
        vcdp->declBit(c+48,"CSR reset", false,-1);
        vcdp->declBit(c+49,"CSR io_ex_Mem_Read", false,-1);
        vcdp->declBit(c+50,"CSR io_ex_Mem_Write", false,-1);
        vcdp->declBus(c+51,"CSR io_ex_branch_addr", false,-1, 31,0);
        vcdp->declBus(c+52,"CSR io_ex_addr", false,-1, 31,0);
        vcdp->declBus(c+53,"CSR io_ex_inst", false,-1, 31,0);
        vcdp->declBus(c+54,"CSR io_csr_data_in", false,-1, 31,0);
        vcdp->declBus(c+55,"CSR io_ex_pc_4", false,-1, 31,0);
        vcdp->declBus(c+56,"CSR io_ex_Write_CSR", false,-1, 2,0);
        vcdp->declBit(c+57,"CSR io_ex_is_Illegal", false,-1);
        vcdp->declBit(c+58,"CSR io_ex_Branch", false,-1);
        vcdp->declBus(c+59,"CSR io_PC_Sel", false,-1, 1,0);
        vcdp->declBus(c+60,"CSR io_new_addr", false,-1, 31,0);
        vcdp->declBus(c+61,"CSR io_pc_recover", false,-1, 31,0);
        vcdp->declBit(c+62,"CSR io_Bubble", false,-1);
        vcdp->declBus(c+63,"CSR io_if_inst", false,-1, 31,0);
        vcdp->declBit(c+64,"CSR io_is_Waiting_Resolved", false,-1);
        vcdp->declBus(c+65,"CSR io_mepc_out", false,-1, 31,0);
        vcdp->declBus(c+66,"CSR io_mtvec_out", false,-1, 31,0);
        vcdp->declBus(c+67,"CSR io_csr_data_out", false,-1, 31,0);
        vcdp->declBit(c+68,"CSR io_IF_ID_Flush", false,-1);
        vcdp->declBit(c+69,"CSR io_ID_EX_Flush", false,-1);
        vcdp->declBus(c+70,"CSR io_is_Exception", false,-1, 1,0);
        vcdp->declBit(c+71,"CSR io_Exception_Flush", false,-1);
        vcdp->declBit(c+1,"CSR is_CSR_Instruction", false,-1);
        vcdp->declBus(c+72,"CSR csr_addr", false,-1, 11,0);
        vcdp->declBus(c+18,"CSR MPP", false,-1, 1,0);
        vcdp->declBit(c+19,"CSR MPIE", false,-1);
        vcdp->declBit(c+20,"CSR MIE", false,-1);
        vcdp->declBus(c+21,"CSR mstatus", false,-1, 31,0);
        vcdp->declBus(c+22,"CSR mepc", false,-1, 31,0);
        vcdp->declBus(c+23,"CSR mtval", false,-1, 31,0);
        vcdp->declBit(c+24,"CSR MEIE", false,-1);
        vcdp->declBit(c+25,"CSR MTIE", false,-1);
        vcdp->declBit(c+26,"CSR MSIE", false,-1);
        vcdp->declBus(c+27,"CSR mie", false,-1, 31,0);
        vcdp->declBit(c+28,"CSR MEIP", false,-1);
        vcdp->declBit(c+29,"CSR MTIP", false,-1);
        vcdp->declBit(c+30,"CSR MSIP", false,-1);
        vcdp->declBus(c+31,"CSR mip", false,-1, 31,0);
        vcdp->declBus(c+32,"CSR mcause", false,-1, 31,0);
        vcdp->declBus(c+33,"CSR mcycle", false,-1, 31,0);
        vcdp->declBus(c+34,"CSR mcycleh", false,-1, 31,0);
        vcdp->declBus(c+35,"CSR mtime", false,-1, 31,0);
        vcdp->declBus(c+36,"CSR mtimeh", false,-1, 31,0);
        vcdp->declBus(c+37,"CSR minstret", false,-1, 31,0);
        vcdp->declBus(c+38,"CSR minstreth", false,-1, 31,0);
        vcdp->declBus(c+39,"CSR mtimecmp", false,-1, 31,0);
        vcdp->declBus(c+40,"CSR mtimecmph", false,-1, 31,0);
        vcdp->declBit(c+41,"CSR mcycle_overflow", false,-1);
        vcdp->declBit(c+42,"CSR mcycleh_overflow", false,-1);
        vcdp->declBit(c+43,"CSR mtime_overflow", false,-1);
        vcdp->declBit(c+44,"CSR mtimeh_overflow", false,-1);
        vcdp->declQuad(c+13,"CSR time_", false,-1, 63,0);
        vcdp->declQuad(c+15,"CSR timecmp", false,-1, 63,0);
        vcdp->declBit(c+2,"CSR InstructionAddressMisaligned_con", false,-1);
        vcdp->declBit(c+3,"CSR LoadAddressMisaligned_con", false,-1);
        vcdp->declBit(c+4,"CSR StoreAddressMisaligned_con", false,-1);
        vcdp->declBit(c+5,"CSR is_a_exception", false,-1);
        vcdp->declBit(c+17,"CSR is_a_interrupt", false,-1);
        vcdp->declBit(c+6,"CSR enable_exception", false,-1);
        vcdp->declBit(c+45,"CSR minstret_overflow", false,-1);
        vcdp->declBit(c+46,"CSR minstreth_overflow", false,-1);
        vcdp->declBit(c+12,"CSR exception_raise", false,-1);
        vcdp->declQuad(c+73,"CSR normal_pc", false,-1, 32,0);
        vcdp->declBus(c+75,"CSR imm_data", false,-1, 31,0);
        vcdp->declBus(c+7,"CSR s_val", false,-1, 31,0);
        vcdp->declBus(c+8,"CSR si_val", false,-1, 31,0);
        vcdp->declBus(c+9,"CSR c_val", false,-1, 31,0);
        vcdp->declBus(c+10,"CSR ci_val", false,-1, 31,0);
        vcdp->declBus(c+11,"CSR csr_write_data", false,-1, 31,0);
    }
}

void VCSR::traceFullThis__1(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+1);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->fullBit(oldp+0,(vlTOPp->CSR__DOT__is_CSR_Instruction));
        vcdp->fullBit(oldp+1,(vlTOPp->CSR__DOT__InstructionAddressMisaligned_con));
        vcdp->fullBit(oldp+2,(vlTOPp->CSR__DOT__LoadAddressMisaligned_con));
        vcdp->fullBit(oldp+3,(vlTOPp->CSR__DOT__StoreAddressMisaligned_con));
        vcdp->fullBit(oldp+4,(vlTOPp->CSR__DOT__is_a_exception));
        vcdp->fullBit(oldp+5,(vlTOPp->CSR__DOT__enable_exception));
        vcdp->fullIData(oldp+6,(vlTOPp->CSR__DOT__s_val),32);
        vcdp->fullIData(oldp+7,(vlTOPp->CSR__DOT__si_val),32);
        vcdp->fullIData(oldp+8,(vlTOPp->CSR__DOT__c_val),32);
        vcdp->fullIData(oldp+9,(vlTOPp->CSR__DOT__ci_val),32);
        vcdp->fullIData(oldp+10,(vlTOPp->CSR__DOT__csr_write_data),32);
        vcdp->fullBit(oldp+11,(((IData)(vlTOPp->CSR__DOT__is_a_exception) 
                                | (IData)(vlTOPp->CSR__DOT__is_a_interrupt))));
        vcdp->fullQData(oldp+12,(vlTOPp->CSR__DOT___T_61),64);
        vcdp->fullQData(oldp+14,(vlTOPp->CSR__DOT___T_62),64);
        vcdp->fullBit(oldp+16,(vlTOPp->CSR__DOT__is_a_interrupt));
        vcdp->fullCData(oldp+17,(vlTOPp->CSR__DOT__MPP),2);
        vcdp->fullBit(oldp+18,(vlTOPp->CSR__DOT__MPIE));
        vcdp->fullBit(oldp+19,(vlTOPp->CSR__DOT__MIE));
        vcdp->fullIData(oldp+20,((((IData)(vlTOPp->CSR__DOT__MPP) 
                                   << 0xbU) | (((IData)(vlTOPp->CSR__DOT__MPIE) 
                                                << 7U) 
                                               | ((IData)(vlTOPp->CSR__DOT__MIE) 
                                                  << 3U)))),32);
        vcdp->fullIData(oldp+21,(vlTOPp->CSR__DOT__mepc),32);
        vcdp->fullIData(oldp+22,(vlTOPp->CSR__DOT__mtval),32);
        vcdp->fullBit(oldp+23,(vlTOPp->CSR__DOT__MEIE));
        vcdp->fullBit(oldp+24,(vlTOPp->CSR__DOT__MTIE));
        vcdp->fullBit(oldp+25,(vlTOPp->CSR__DOT__MSIE));
        vcdp->fullIData(oldp+26,((((IData)(vlTOPp->CSR__DOT__MEIE) 
                                   << 0xbU) | (((IData)(vlTOPp->CSR__DOT__MTIE) 
                                                << 7U) 
                                               | ((IData)(vlTOPp->CSR__DOT__MSIE) 
                                                  << 3U)))),32);
        vcdp->fullBit(oldp+27,(vlTOPp->CSR__DOT__MEIP));
        vcdp->fullBit(oldp+28,(vlTOPp->CSR__DOT__MTIP));
        vcdp->fullBit(oldp+29,(vlTOPp->CSR__DOT__MSIP));
        vcdp->fullIData(oldp+30,((((IData)(vlTOPp->CSR__DOT__MEIP) 
                                   << 0xbU) | (((IData)(vlTOPp->CSR__DOT__MTIP) 
                                                << 7U) 
                                               | ((IData)(vlTOPp->CSR__DOT__MSIP) 
                                                  << 3U)))),32);
        vcdp->fullIData(oldp+31,(vlTOPp->CSR__DOT__mcause),32);
        vcdp->fullIData(oldp+32,(vlTOPp->CSR__DOT__mcycle),32);
        vcdp->fullIData(oldp+33,(vlTOPp->CSR__DOT__mcycleh),32);
        vcdp->fullIData(oldp+34,(vlTOPp->CSR__DOT__mtime),32);
        vcdp->fullIData(oldp+35,(vlTOPp->CSR__DOT__mtimeh),32);
        vcdp->fullIData(oldp+36,(vlTOPp->CSR__DOT__minstret),32);
        vcdp->fullIData(oldp+37,(vlTOPp->CSR__DOT__minstreth),32);
        vcdp->fullIData(oldp+38,(vlTOPp->CSR__DOT__mtimecmp),32);
        vcdp->fullIData(oldp+39,(vlTOPp->CSR__DOT__mtimecmph),32);
        vcdp->fullBit(oldp+40,((0xffffffffU == vlTOPp->CSR__DOT__mcycle)));
        vcdp->fullBit(oldp+41,((0xffffffffU == vlTOPp->CSR__DOT__mcycleh)));
        vcdp->fullBit(oldp+42,((0xffffffffU == vlTOPp->CSR__DOT__mtime)));
        vcdp->fullBit(oldp+43,((0xffffffffU == vlTOPp->CSR__DOT__mtimeh)));
        vcdp->fullBit(oldp+44,((0xffffffffU == vlTOPp->CSR__DOT__minstret)));
        vcdp->fullBit(oldp+45,((0xffffffffU == vlTOPp->CSR__DOT__minstreth)));
        vcdp->fullBit(oldp+46,(vlTOPp->clock));
        vcdp->fullBit(oldp+47,(vlTOPp->reset));
        vcdp->fullBit(oldp+48,(vlTOPp->io_ex_Mem_Read));
        vcdp->fullBit(oldp+49,(vlTOPp->io_ex_Mem_Write));
        vcdp->fullIData(oldp+50,(vlTOPp->io_ex_branch_addr),32);
        vcdp->fullIData(oldp+51,(vlTOPp->io_ex_addr),32);
        vcdp->fullIData(oldp+52,(vlTOPp->io_ex_inst),32);
        vcdp->fullIData(oldp+53,(vlTOPp->io_csr_data_in),32);
        vcdp->fullIData(oldp+54,(vlTOPp->io_ex_pc_4),32);
        vcdp->fullCData(oldp+55,(vlTOPp->io_ex_Write_CSR),3);
        vcdp->fullBit(oldp+56,(vlTOPp->io_ex_is_Illegal));
        vcdp->fullBit(oldp+57,(vlTOPp->io_ex_Branch));
        vcdp->fullCData(oldp+58,(vlTOPp->io_PC_Sel),2);
        vcdp->fullIData(oldp+59,(vlTOPp->io_new_addr),32);
        vcdp->fullIData(oldp+60,(vlTOPp->io_pc_recover),32);
        vcdp->fullBit(oldp+61,(vlTOPp->io_Bubble));
        vcdp->fullIData(oldp+62,(vlTOPp->io_if_inst),32);
        vcdp->fullBit(oldp+63,(vlTOPp->io_is_Waiting_Resolved));
        vcdp->fullIData(oldp+64,(vlTOPp->io_mepc_out),32);
        vcdp->fullIData(oldp+65,(vlTOPp->io_mtvec_out),32);
        vcdp->fullIData(oldp+66,(vlTOPp->io_csr_data_out),32);
        vcdp->fullBit(oldp+67,(vlTOPp->io_IF_ID_Flush));
        vcdp->fullBit(oldp+68,(vlTOPp->io_ID_EX_Flush));
        vcdp->fullCData(oldp+69,(vlTOPp->io_is_Exception),2);
        vcdp->fullBit(oldp+70,(vlTOPp->io_Exception_Flush));
        vcdp->fullSData(oldp+71,((0xfffU & (vlTOPp->io_ex_inst 
                                            >> 0x14U))),12);
        vcdp->fullQData(oldp+72,((VL_ULL(0x1ffffffff) 
                                  & ((IData)(vlTOPp->CSR__DOT__is_a_exception)
                                      ? ((QData)((IData)(vlTOPp->io_ex_pc_4)) 
                                         - VL_ULL(4))
                                      : (QData)((IData)(vlTOPp->io_ex_pc_4))))),33);
        vcdp->fullIData(oldp+74,((0x1fU & (vlTOPp->io_ex_inst 
                                           >> 0xfU))),32);
    }
}
