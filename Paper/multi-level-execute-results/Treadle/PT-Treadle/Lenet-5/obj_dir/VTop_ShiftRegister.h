// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VTop.h for the primary calling header

#ifndef _VTOP_SHIFTREGISTER_H_
#define _VTOP_SHIFTREGISTER_H_  // guard

#include "verilated.h"

//==========

class VTop__Syms;
class VTop_VerilatedVcd;


//----------

VL_MODULE(VTop_ShiftRegister) {
  public:
    
    // PORTS
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_en,0,0);
    VL_IN16(io_d_in,15,0);
    VL_OUTW(io_d_out,399,0,13);
    
    // LOCAL SIGNALS
    SData/*15:0*/ __PVT___T;
    SData/*15:0*/ __PVT___T_1;
    SData/*15:0*/ __PVT___T_2;
    SData/*15:0*/ __PVT___T_3;
    SData/*15:0*/ __PVT___T_4;
    SData/*15:0*/ __PVT___T_5;
    SData/*15:0*/ __PVT___T_6;
    SData/*15:0*/ __PVT___T_7;
    SData/*15:0*/ __PVT___T_8;
    SData/*15:0*/ __PVT___T_9;
    SData/*15:0*/ __PVT___T_10;
    SData/*15:0*/ __PVT___T_11;
    SData/*15:0*/ __PVT___T_12;
    SData/*15:0*/ __PVT___T_13;
    SData/*15:0*/ __PVT___T_14;
    SData/*15:0*/ __PVT___T_15;
    SData/*15:0*/ __PVT___T_16;
    SData/*15:0*/ __PVT___T_17;
    SData/*15:0*/ __PVT___T_18;
    SData/*15:0*/ __PVT___T_19;
    SData/*15:0*/ __PVT___T_20;
    SData/*15:0*/ __PVT___T_21;
    SData/*15:0*/ __PVT___T_22;
    SData/*15:0*/ __PVT___T_23;
    SData/*15:0*/ __PVT___T_24;
    
    // INTERNAL VARIABLES
  private:
    VTop__Syms* __VlSymsp;  // Symbol table
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VTop_ShiftRegister);  ///< Copying not allowed
  public:
    VTop_ShiftRegister(const char* name = "TOP");
    ~VTop_ShiftRegister();
    
    // INTERNAL METHODS
    void __Vconfigure(VTop__Syms* symsp, bool first);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    void _sequent__TOP__Top__DOT__f1__DOT___T_11__8(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_12__9(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_16__10(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_17__11(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_19__12(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_1__2(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_20__13(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_23__14(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_24__15(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_26__16(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_27__17(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_2__3(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_4__4(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_5__5(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_8__6(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__f1__DOT___T_9__7(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_10__22(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_2__18(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_4__19(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_6__20(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T_8__21(VTop__Syms* __restrict vlSymsp);
    void _sequent__TOP__Top__DOT__t2__DOT___T__1(VTop__Syms* __restrict vlSymsp);
    void _settle__TOP__Top__DOT__t2__DOT___T__23(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
