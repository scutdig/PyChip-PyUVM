// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vfetch__Syms.h"


//======================

void Vfetch::traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    Vfetch* t = (Vfetch*)userthis;
    Vfetch__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (vlSymsp->getClearActivity()) {
        t->traceChgThis(vlSymsp, vcdp, code);
    }
}

//======================


void Vfetch::traceChgThis(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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

void Vfetch::traceChgThis__2(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+1);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgCData(oldp+0,((0x7fU & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T_14))),7);
        vcdp->chgBit(oldp+1,((1U & (~ ((IData)(vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match) 
                                       & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT__maybe_full))))));
        vcdp->chgBit(oldp+2,((1U & (~ (IData)(vlTOPp->Fetch__DOT__inst_q__DOT__empty)))));
        vcdp->chgWData(oldp+3,(vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data),128);
        vcdp->chgBit(oldp+7,(vlTOPp->Fetch__DOT__dec_io_isLoad));
        vcdp->chgBit(oldp+8,(vlTOPp->Fetch__DOT__dec_io_isCompute));
        vcdp->chgBit(oldp+9,(vlTOPp->Fetch__DOT__dec_io_isStore));
        vcdp->chgCData(oldp+10,(vlTOPp->Fetch__DOT___T_42),3);
        vcdp->chgBit(oldp+11,(vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match));
        vcdp->chgBit(oldp+12,(vlTOPp->Fetch__DOT__inst_q__DOT__empty));
        vcdp->chgBit(oldp+13,(((IData)(vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match) 
                               & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT__maybe_full))));
        vcdp->chgBit(oldp+14,(vlTOPp->Fetch__DOT__dec__DOT__cs_val_inst));
        vcdp->chgCData(oldp+15,(vlTOPp->Fetch__DOT__dec__DOT__cs_op_type),3);
    }
}

void Vfetch::traceChgThis__3(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+17);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(oldp+0,(vlTOPp->Fetch__DOT__pulse));
    }
}

void Vfetch::traceChgThis__4(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+18);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(oldp+0,(vlTOPp->Fetch__DOT__s1_launch));
        vcdp->chgBit(oldp+1,(vlTOPp->Fetch__DOT__state));
        vcdp->chgCData(oldp+2,(vlTOPp->Fetch__DOT__rlen),8);
        vcdp->chgIData(oldp+3,(vlTOPp->Fetch__DOT__xrem),32);
        vcdp->chgIData(oldp+4,(vlTOPp->Fetch__DOT__raddr),32);
        vcdp->chgCData(oldp+5,(vlTOPp->Fetch__DOT__inst_q__DOT___T_4),7);
        vcdp->chgCData(oldp+6,(vlTOPp->Fetch__DOT__inst_q__DOT___T),7);
        vcdp->chgBit(oldp+7,(vlTOPp->Fetch__DOT__inst_q__DOT__maybe_full));
        vcdp->chgCData(oldp+8,((0xffU & ((IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T) 
                                         - (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T_4)))),8);
    }
}

void Vfetch::traceChgThis__5(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+27);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Variables
    WData/*127:0*/ __Vtemp136[4];
    // Body
    {
        vcdp->chgBit(oldp+0,(vlTOPp->clock));
        vcdp->chgBit(oldp+1,(vlTOPp->reset));
        vcdp->chgBit(oldp+2,(vlTOPp->io_launch));
        vcdp->chgIData(oldp+3,(vlTOPp->io_ins_baddr),32);
        vcdp->chgIData(oldp+4,(vlTOPp->io_ins_count),32);
        vcdp->chgBit(oldp+5,(vlTOPp->io_vme_rd_cmd_valid));
        vcdp->chgBit(oldp+6,(vlTOPp->io_vme_rd_cmd_ready));
        vcdp->chgIData(oldp+7,(vlTOPp->io_vme_rd_cmd_bits_addr),32);
        vcdp->chgCData(oldp+8,(vlTOPp->io_vme_rd_cmd_bits_len),8);
        vcdp->chgBit(oldp+9,(vlTOPp->io_vme_rd_data_valid));
        vcdp->chgBit(oldp+10,(vlTOPp->io_vme_rd_data_ready));
        vcdp->chgQData(oldp+11,(vlTOPp->io_vme_rd_data_bits),64);
        vcdp->chgBit(oldp+13,(vlTOPp->io_inst_ld_valid));
        vcdp->chgBit(oldp+14,(vlTOPp->io_inst_ld_ready));
        vcdp->chgWData(oldp+15,(vlTOPp->io_inst_ld_bits),128);
        vcdp->chgBit(oldp+19,(vlTOPp->io_inst_co_valid));
        vcdp->chgBit(oldp+20,(vlTOPp->io_inst_co_ready));
        vcdp->chgWData(oldp+21,(vlTOPp->io_inst_co_bits),128);
        vcdp->chgBit(oldp+25,(vlTOPp->io_inst_st_valid));
        vcdp->chgBit(oldp+26,(vlTOPp->io_inst_st_ready));
        vcdp->chgWData(oldp+27,(vlTOPp->io_inst_st_bits),128);
        __Vtemp136[0U] = (IData)(vlTOPp->Fetch__DOT__lsb);
        __Vtemp136[1U] = (IData)((vlTOPp->Fetch__DOT__lsb 
                                  >> 0x20U));
        __Vtemp136[2U] = (IData)(vlTOPp->io_vme_rd_data_bits);
        __Vtemp136[3U] = (IData)((vlTOPp->io_vme_rd_data_bits 
                                  >> 0x20U));
        vcdp->chgWData(oldp+31,(__Vtemp136),128);
        vcdp->chgQData(oldp+35,((VL_ULL(0x3ffffffff) 
                                 & (((QData)((IData)(vlTOPp->io_ins_count)) 
                                     << 1U) - VL_ULL(1)))),34);
        vcdp->chgBit(oldp+37,(((1U == (IData)(vlTOPp->Fetch__DOT___T_42))
                                ? (IData)(vlTOPp->io_inst_ld_ready)
                                : ((2U == (IData)(vlTOPp->Fetch__DOT___T_42))
                                    ? (IData)(vlTOPp->io_inst_st_ready)
                                    : ((4U == (IData)(vlTOPp->Fetch__DOT___T_42)) 
                                       & (IData)(vlTOPp->io_inst_co_ready))))));
    }
}
