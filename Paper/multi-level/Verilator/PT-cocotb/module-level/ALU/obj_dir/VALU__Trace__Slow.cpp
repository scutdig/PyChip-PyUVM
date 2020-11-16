// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VALU__Syms.h"


//======================

void VALU::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback(&VALU::traceInit, &VALU::traceFull, &VALU::traceChg, this);
}
void VALU::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    VALU* t = (VALU*)userthis;
    VALU__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
                        "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vcdp->scopeEscape(' ');
    t->traceInitThis(vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void VALU::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VALU* t = (VALU*)userthis;
    VALU__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    t->traceFullThis(vlSymsp, vcdp, code);
}

//======================


void VALU::traceInitThis(VALU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    if (false && vcdp) {}  // Prevent unused
    vcdp->module(vlSymsp->name());  // Setup signal names
    // Body
    {
        vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void VALU::traceFullThis(VALU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    if (false && vcdp) {}  // Prevent unused
    // Body
    {
        vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VALU::traceInitThis__1(VALU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c = code;
    if (false && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->declBit(c+1,"clock", false,-1);
        vcdp->declBit(c+2,"reset", false,-1);
        vcdp->declBus(c+3,"io_src_a", false,-1, 31,0);
        vcdp->declBus(c+4,"io_src_b", false,-1, 31,0);
        vcdp->declBus(c+5,"io_ALUOp", false,-1, 4,0);
        vcdp->declBus(c+6,"io_sum", false,-1, 31,0);
        vcdp->declBit(c+7,"io_conflag", false,-1);
        vcdp->declBit(c+1,"ALU clock", false,-1);
        vcdp->declBit(c+2,"ALU reset", false,-1);
        vcdp->declBus(c+3,"ALU io_src_a", false,-1, 31,0);
        vcdp->declBus(c+4,"ALU io_src_b", false,-1, 31,0);
        vcdp->declBus(c+5,"ALU io_ALUOp", false,-1, 4,0);
        vcdp->declBus(c+6,"ALU io_sum", false,-1, 31,0);
        vcdp->declBit(c+7,"ALU io_conflag", false,-1);
        vcdp->declBus(c+8,"ALU shamt", false,-1, 5,0);
    }
}

void VALU::traceFullThis__1(VALU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+1);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->fullBit(oldp+0,(vlTOPp->clock));
        vcdp->fullBit(oldp+1,(vlTOPp->reset));
        vcdp->fullIData(oldp+2,(vlTOPp->io_src_a),32);
        vcdp->fullIData(oldp+3,(vlTOPp->io_src_b),32);
        vcdp->fullCData(oldp+4,(vlTOPp->io_ALUOp),5);
        vcdp->fullIData(oldp+5,(vlTOPp->io_sum),32);
        vcdp->fullBit(oldp+6,(vlTOPp->io_conflag));
        vcdp->fullCData(oldp+7,((0x3fU & vlTOPp->io_src_b)),6);
    }
}
