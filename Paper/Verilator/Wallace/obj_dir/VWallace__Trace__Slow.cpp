// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VWallace__Syms.h"


//======================

void VWallace::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback(&VWallace::traceInit, &VWallace::traceFull, &VWallace::traceChg, this);
}
void VWallace::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    VWallace* t = (VWallace*)userthis;
    VWallace__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
                        "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vcdp->scopeEscape(' ');
    t->traceInitThis(vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void VWallace::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VWallace* t = (VWallace*)userthis;
    VWallace__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    t->traceFullThis(vlSymsp, vcdp, code);
}

//======================


void VWallace::traceInitThis(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    if (false && vcdp) {}  // Prevent unused
    vcdp->module(vlSymsp->name());  // Setup signal names
    // Body
    {
        vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void VWallace::traceFullThis(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    if (false && vcdp) {}  // Prevent unused
    // Body
    {
        vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VWallace::traceInitThis__1(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c = code;
    if (false && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->declBit(c+17,"clock", false,-1);
        vcdp->declBit(c+18,"reset", false,-1);
        vcdp->declBus(c+19,"io_x", false,-1, 3,0);
        vcdp->declBus(c+20,"io_y", false,-1, 3,0);
        vcdp->declBus(c+21,"io_c", false,-1, 7,0);
        vcdp->declBit(c+17,"Wallace clock", false,-1);
        vcdp->declBit(c+18,"Wallace reset", false,-1);
        vcdp->declBus(c+19,"Wallace io_x", false,-1, 3,0);
        vcdp->declBus(c+20,"Wallace io_y", false,-1, 3,0);
        vcdp->declBus(c+21,"Wallace io_c", false,-1, 7,0);
        vcdp->declBit(c+22,"Wallace s1_6", false,-1);
        vcdp->declBit(c+23,"Wallace s1_2", false,-1);
        vcdp->declBit(c+24,"Wallace s1_1", false,-1);
        vcdp->declBit(c+25,"Wallace s1_0", false,-1);
        vcdp->declBit(c+26,"Wallace s2_1", false,-1);
        vcdp->declBit(c+1,"Wallace s1_5", false,-1);
        vcdp->declBit(c+2,"Wallace s1_4", false,-1);
        vcdp->declBit(c+3,"Wallace s1_3", false,-1);
        vcdp->declBit(c+4,"Wallace s2_5", false,-1);
        vcdp->declBit(c+5,"Wallace s2_4", false,-1);
        vcdp->declBit(c+6,"Wallace s2_6", false,-1);
        vcdp->declBit(c+7,"Wallace s2_3", false,-1);
        vcdp->declBit(c+8,"Wallace s2_2", false,-1);
        vcdp->declBit(c+9,"Wallace WWW_0", false,-1);
        vcdp->declBit(c+10,"Wallace WWW_1", false,-1);
        vcdp->declBit(c+11,"Wallace WWW_2", false,-1);
        vcdp->declBit(c+12,"Wallace WWW_3", false,-1);
        vcdp->declBit(c+13,"Wallace WWW_4", false,-1);
        vcdp->declBit(c+14,"Wallace WWW_5", false,-1);
        vcdp->declBit(c+15,"Wallace WWW_6", false,-1);
        vcdp->declBit(c+16,"Wallace WWW_7", false,-1);
    }
}

void VWallace::traceFullThis__1(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+1);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->fullBit(oldp+0,((((IData)(vlTOPp->Wallace__DOT___T_44_io_a) 
                                ^ (IData)(vlTOPp->Wallace__DOT___T_44_io_b)) 
                               ^ (IData)(vlTOPp->Wallace__DOT___T_19_io_cout))));
        vcdp->fullBit(oldp+1,((((IData)(vlTOPp->Wallace__DOT___T_40_io_a) 
                                ^ (IData)(vlTOPp->Wallace__DOT___T_19_io_s)) 
                               ^ (IData)(vlTOPp->Wallace__DOT___T_12_io_cout))));
        vcdp->fullBit(oldp+2,((((IData)(vlTOPp->Wallace__DOT___T_33_io_a) 
                                ^ (IData)(vlTOPp->Wallace__DOT___T_33_io_b)) 
                               ^ (IData)(vlTOPp->Wallace__DOT___T_12_io_s))));
        vcdp->fullBit(oldp+3,((((IData)(vlTOPp->Wallace__DOT___T_40_io_a) 
                                & ((IData)(vlTOPp->Wallace__DOT___T_19_io_s) 
                                   | (IData)(vlTOPp->Wallace__DOT___T_12_io_cout))) 
                               | ((IData)(vlTOPp->Wallace__DOT___T_19_io_s) 
                                  & (IData)(vlTOPp->Wallace__DOT___T_12_io_cout)))));
        vcdp->fullBit(oldp+4,((((IData)(vlTOPp->Wallace__DOT___T_33_io_a) 
                                & ((IData)(vlTOPp->Wallace__DOT___T_33_io_b) 
                                   | (IData)(vlTOPp->Wallace__DOT___T_12_io_s))) 
                               | ((IData)(vlTOPp->Wallace__DOT___T_33_io_b) 
                                  & (IData)(vlTOPp->Wallace__DOT___T_12_io_s)))));
        vcdp->fullBit(oldp+5,((((IData)(vlTOPp->Wallace__DOT___T_44_io_a) 
                                & ((IData)(vlTOPp->Wallace__DOT___T_44_io_b) 
                                   | (IData)(vlTOPp->Wallace__DOT___T_19_io_cout))) 
                               | ((IData)(vlTOPp->Wallace__DOT___T_44_io_b) 
                                  & (IData)(vlTOPp->Wallace__DOT___T_19_io_cout)))));
        vcdp->fullBit(oldp+6,(((IData)(vlTOPp->Wallace__DOT___T_26_io_a) 
                               & (IData)(vlTOPp->Wallace__DOT___T_26_io_b))));
        vcdp->fullBit(oldp+7,(((IData)(vlTOPp->Wallace__DOT___T_26_io_a) 
                               ^ (IData)(vlTOPp->Wallace__DOT___T_26_io_b))));
        vcdp->fullBit(oldp+8,((1U & (IData)(vlTOPp->Wallace__DOT___T_66_io_s))));
        vcdp->fullBit(oldp+9,((1U & ((IData)(vlTOPp->Wallace__DOT___T_66_io_s) 
                                     >> 1U))));
        vcdp->fullBit(oldp+10,((1U & ((IData)(vlTOPp->Wallace__DOT___T_66_io_s) 
                                      >> 2U))));
        vcdp->fullBit(oldp+11,((1U & ((IData)(vlTOPp->Wallace__DOT___T_66_io_s) 
                                      >> 3U))));
        vcdp->fullBit(oldp+12,((1U & ((IData)(vlTOPp->Wallace__DOT___T_66_io_s) 
                                      >> 4U))));
        vcdp->fullBit(oldp+13,((1U & ((IData)(vlTOPp->Wallace__DOT___T_66_io_s) 
                                      >> 5U))));
        vcdp->fullBit(oldp+14,((1U & ((IData)(vlTOPp->Wallace__DOT___T_66_io_s) 
                                      >> 6U))));
        vcdp->fullBit(oldp+15,((1U & (((((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                                         & (IData)(vlTOPp->Wallace__DOT___T_66_io_b)) 
                                        >> 6U) | (((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                                                   >> 6U) 
                                                  & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_15_io_cout))) 
                                      | (((IData)(vlTOPp->Wallace__DOT___T_66_io_b) 
                                          >> 6U) & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_15_io_cout))))));
        vcdp->fullBit(oldp+16,(vlTOPp->clock));
        vcdp->fullBit(oldp+17,(vlTOPp->reset));
        vcdp->fullCData(oldp+18,(vlTOPp->io_x),4);
        vcdp->fullCData(oldp+19,(vlTOPp->io_y),4);
        vcdp->fullCData(oldp+20,(vlTOPp->io_c),8);
        vcdp->fullBit(oldp+21,((1U & (((IData)(vlTOPp->io_x) 
                                       & (IData)(vlTOPp->io_y)) 
                                      >> 3U))));
        vcdp->fullBit(oldp+22,((1U & (((IData)(vlTOPp->io_x) 
                                       >> 2U) & (IData)(vlTOPp->io_y)))));
        vcdp->fullBit(oldp+23,((1U & (((IData)(vlTOPp->io_x) 
                                       >> 1U) & (IData)(vlTOPp->io_y)))));
        vcdp->fullBit(oldp+24,((1U & ((IData)(vlTOPp->io_x) 
                                      & (IData)(vlTOPp->io_y)))));
        vcdp->fullBit(oldp+25,((1U & ((IData)(vlTOPp->io_x) 
                                      & ((IData)(vlTOPp->io_y) 
                                         >> 1U)))));
    }
}
