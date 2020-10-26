// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VAXI_Stream__Syms.h"


//======================

void VAXI_Stream::traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VAXI_Stream* t = (VAXI_Stream*)userthis;
    VAXI_Stream__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (vlSymsp->getClearActivity()) {
        t->traceChgThis(vlSymsp, vcdp, code);
    }
}

//======================


void VAXI_Stream::traceChgThis(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        if (VL_UNLIKELY((1U & (vlTOPp->__Vm_traceActivity 
                               | (vlTOPp->__Vm_traceActivity 
                                  >> 1U))))) {
            vlTOPp->traceChgThis__2(vlSymsp, vcdp, code);
        }
        if (VL_UNLIKELY((2U & vlTOPp->__Vm_traceActivity))) {
            vlTOPp->traceChgThis__3(vlSymsp, vcdp, code);
        }
        vlTOPp->traceChgThis__4(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VAXI_Stream::traceChgThis__2(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(c+1,(vlTOPp->AXI_Stream__DOT__slave__DOT__fifo_wren));
        vcdp->chgBit(c+2,(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid));
        vcdp->chgBit(c+3,(vlTOPp->AXI_Stream__DOT__master__DOT__tx_en));
    }
}

void VAXI_Stream::traceChgThis__3(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(c+4,(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid_delay));
        vcdp->chgBit(c+5,(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tlast_delay));
        vcdp->chgBit(c+6,(((1U == (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state)) 
                           & (8U >= (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer)))));
        vcdp->chgBus(c+7,(vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state),2);
        vcdp->chgBus(c+8,(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer),5);
        vcdp->chgBit(c+9,(vlTOPp->AXI_Stream__DOT__slave__DOT__writes_done));
        vcdp->chgBus(c+10,(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state),2);
        vcdp->chgBus(c+11,(vlTOPp->AXI_Stream__DOT__master__DOT__count),6);
        vcdp->chgBit(c+12,(vlTOPp->AXI_Stream__DOT__master__DOT__tx_done));
        vcdp->chgBus(c+13,(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer),5);
        vcdp->chgBit(c+14,((7U == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer))));
    }
}

void VAXI_Stream::traceChgThis__4(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(c+15,(vlTOPp->clock));
        vcdp->chgBit(c+16,(vlTOPp->reset));
        vcdp->chgBit(c+17,(vlTOPp->io_AXIS_TVALID));
    }
}
