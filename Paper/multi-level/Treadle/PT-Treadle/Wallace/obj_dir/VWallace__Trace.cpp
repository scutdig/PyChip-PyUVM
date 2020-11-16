// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VWallace__Syms.h"


//======================

void VWallace::traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VWallace* t = (VWallace*)userthis;
    VWallace__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (vlSymsp->getClearActivity()) {
        t->traceChgThis(vlSymsp, vcdp, code);
    }
}

//======================


void VWallace::traceChgThis(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    if (false && vcdp) {}  // Prevent unused
    // Body
    {
        if (VL_UNLIKELY((1U & (vlTOPp->__Vm_traceActivity 
                               | (vlTOPp->__Vm_traceActivity 
                                  >> 1U))))) {
            vlTOPp->traceChgThis__2(vlSymsp, vcdp, code);
        }
        vlTOPp->traceChgThis__3(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VWallace::traceChgThis__2(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+1);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(oldp+0,((((IData)(vlTOPp->Wallace__DOT___T_44_io_a) 
                               ^ (IData)(vlTOPp->Wallace__DOT___T_44_io_b)) 
                              ^ (IData)(vlTOPp->Wallace__DOT___T_19_io_cout))));
        vcdp->chgBit(oldp+1,((((IData)(vlTOPp->Wallace__DOT___T_40_io_a) 
                               ^ (IData)(vlTOPp->Wallace__DOT___T_19_io_s)) 
                              ^ (IData)(vlTOPp->Wallace__DOT___T_12_io_cout))));
        vcdp->chgBit(oldp+2,((((IData)(vlTOPp->Wallace__DOT___T_33_io_a) 
                               ^ (IData)(vlTOPp->Wallace__DOT___T_33_io_b)) 
                              ^ (IData)(vlTOPp->Wallace__DOT___T_12_io_s))));
        vcdp->chgBit(oldp+3,((((IData)(vlTOPp->Wallace__DOT___T_40_io_a) 
                               & ((IData)(vlTOPp->Wallace__DOT___T_19_io_s) 
                                  | (IData)(vlTOPp->Wallace__DOT___T_12_io_cout))) 
                              | ((IData)(vlTOPp->Wallace__DOT___T_19_io_s) 
                                 & (IData)(vlTOPp->Wallace__DOT___T_12_io_cout)))));
        vcdp->chgBit(oldp+4,((((IData)(vlTOPp->Wallace__DOT___T_33_io_a) 
                               & ((IData)(vlTOPp->Wallace__DOT___T_33_io_b) 
                                  | (IData)(vlTOPp->Wallace__DOT___T_12_io_s))) 
                              | ((IData)(vlTOPp->Wallace__DOT___T_33_io_b) 
                                 & (IData)(vlTOPp->Wallace__DOT___T_12_io_s)))));
        vcdp->chgBit(oldp+5,((((IData)(vlTOPp->Wallace__DOT___T_44_io_a) 
                               & ((IData)(vlTOPp->Wallace__DOT___T_44_io_b) 
                                  | (IData)(vlTOPp->Wallace__DOT___T_19_io_cout))) 
                              | ((IData)(vlTOPp->Wallace__DOT___T_44_io_b) 
                                 & (IData)(vlTOPp->Wallace__DOT___T_19_io_cout)))));
        vcdp->chgBit(oldp+6,(((IData)(vlTOPp->Wallace__DOT___T_26_io_a) 
                              & (IData)(vlTOPp->Wallace__DOT___T_26_io_b))));
        vcdp->chgBit(oldp+7,(((IData)(vlTOPp->Wallace__DOT___T_26_io_a) 
                              ^ (IData)(vlTOPp->Wallace__DOT___T_26_io_b))));
        vcdp->chgBit(oldp+8,((1U & (IData)(vlTOPp->Wallace__DOT___T_66_io_s))));
        vcdp->chgBit(oldp+9,((1U & ((IData)(vlTOPp->Wallace__DOT___T_66_io_s) 
                                    >> 1U))));
        vcdp->chgBit(oldp+10,((1U & ((IData)(vlTOPp->Wallace__DOT___T_66_io_s) 
                                     >> 2U))));
        vcdp->chgBit(oldp+11,((1U & ((IData)(vlTOPp->Wallace__DOT___T_66_io_s) 
                                     >> 3U))));
        vcdp->chgBit(oldp+12,((1U & ((IData)(vlTOPp->Wallace__DOT___T_66_io_s) 
                                     >> 4U))));
        vcdp->chgBit(oldp+13,((1U & ((IData)(vlTOPp->Wallace__DOT___T_66_io_s) 
                                     >> 5U))));
        vcdp->chgBit(oldp+14,((1U & ((IData)(vlTOPp->Wallace__DOT___T_66_io_s) 
                                     >> 6U))));
        vcdp->chgBit(oldp+15,((1U & (((((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                                        & (IData)(vlTOPp->Wallace__DOT___T_66_io_b)) 
                                       >> 6U) | (((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                                                  >> 6U) 
                                                 & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_15_io_cout))) 
                                     | (((IData)(vlTOPp->Wallace__DOT___T_66_io_b) 
                                         >> 6U) & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_15_io_cout))))));
    }
}

void VWallace::traceChgThis__3(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+17);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(oldp+0,(vlTOPp->clock));
        vcdp->chgBit(oldp+1,(vlTOPp->reset));
        vcdp->chgCData(oldp+2,(vlTOPp->io_x),4);
        vcdp->chgCData(oldp+3,(vlTOPp->io_y),4);
        vcdp->chgCData(oldp+4,(vlTOPp->io_c),8);
        vcdp->chgBit(oldp+5,((1U & (((IData)(vlTOPp->io_x) 
                                     & (IData)(vlTOPp->io_y)) 
                                    >> 3U))));
        vcdp->chgBit(oldp+6,((1U & (((IData)(vlTOPp->io_x) 
                                     >> 2U) & (IData)(vlTOPp->io_y)))));
        vcdp->chgBit(oldp+7,((1U & (((IData)(vlTOPp->io_x) 
                                     >> 1U) & (IData)(vlTOPp->io_y)))));
        vcdp->chgBit(oldp+8,((1U & ((IData)(vlTOPp->io_x) 
                                    & (IData)(vlTOPp->io_y)))));
        vcdp->chgBit(oldp+9,((1U & ((IData)(vlTOPp->io_x) 
                                    & ((IData)(vlTOPp->io_y) 
                                       >> 1U)))));
    }
}
