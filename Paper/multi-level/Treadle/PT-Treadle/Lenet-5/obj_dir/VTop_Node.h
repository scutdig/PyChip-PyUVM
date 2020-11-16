// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VTop.h for the primary calling header

#ifndef _VTOP_NODE_H_
#define _VTOP_NODE_H_  // guard

#include "verilated.h"

//==========

class VTop__Syms;
class VTop_VerilatedVcd;


//----------

VL_MODULE(VTop_Node) {
  public:
    
    // PORTS
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_rdy,0,0);
    VL_OUT8(io_v,0,0);
    VL_IN16(io_bias,15,0);
    VL_OUT16(io_d_out,15,0);
    VL_INW(io_d_in,399,0,13);
    VL_INW(io_w,399,0,13);
    
    // LOCAL SIGNALS
    CData/*0:0*/ __PVT__muladdc_io_v;
    CData/*4:0*/ __PVT__muladdc__DOT__i;
    CData/*5:0*/ __PVT__muladdc__DOT___GEN_57;
    SData/*15:0*/ __PVT__muladdc__DOT___GEN_13;
    SData/*15:0*/ __PVT__muladdc__DOT___GEN_38;
    SData/*15:0*/ __PVT__muladdc__DOT___GEN_45;
    IData/*31:0*/ __PVT__muladdc_io_q;
    IData/*31:0*/ __PVT__muladdc__DOT__sum;
    IData/*31:0*/ __PVT__muladdc__DOT___T_50;
    IData/*16:0*/ __PVT__act__DOT___T_2;
    QData/*32:0*/ __PVT__muladdc__DOT___T_51;
    QData/*32:0*/ __PVT__muladdc__DOT___GEN_56;
    
    // INTERNAL VARIABLES
  private:
    VTop__Syms* __VlSymsp;  // Symbol table
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VTop_Node);  ///< Copying not allowed
  public:
    VTop_Node(const char* name = "TOP");
    ~VTop_Node();
    
    // INTERNAL METHODS
    void __Vconfigure(VTop__Syms* symsp, bool first);
    void _combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_1__200(VTop__Syms* __restrict vlSymsp);
    void _combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_2__201(VTop__Syms* __restrict vlSymsp);
    void _combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_3__202(VTop__Syms* __restrict vlSymsp);
    void _combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_4__203(VTop__Syms* __restrict vlSymsp);
    void _combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_5__204(VTop__Syms* __restrict vlSymsp);
    void _combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T__199(VTop__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    void _sequent__TOP__Top__DOT__t1__DOT__convc1__DOT___T__97(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_11___T__167(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_11___T__81(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_1___T__1(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_1___T__183(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_3___T__103(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_3___T__17(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_5___T__119(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_5___T__33(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_7___T__135(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_7___T__49(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_9___T__151(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_9___T__65(VTop__Syms* __restrict vlSymsp);
    void _settle__TOP__Top__DOT__t2__DOT___T_11___T__291(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    void _settle__TOP__Top__DOT__t2__DOT___T_11___T__371(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    void _settle__TOP__Top__DOT__t2__DOT___T_3___T__227(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    void _settle__TOP__Top__DOT__t2__DOT___T_3___T__307(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    void _settle__TOP__Top__DOT__t2__DOT___T_5___T__243(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    void _settle__TOP__Top__DOT__t2__DOT___T_5___T__323(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    void _settle__TOP__Top__DOT__t2__DOT___T_7___T__259(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    void _settle__TOP__Top__DOT__t2__DOT___T_7___T__339(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    void _settle__TOP__Top__DOT__t2__DOT___T_9___T__275(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    void _settle__TOP__Top__DOT__t2__DOT___T_9___T__355(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
