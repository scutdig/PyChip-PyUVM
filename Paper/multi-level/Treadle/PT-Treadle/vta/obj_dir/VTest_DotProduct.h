// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VTest.h for the primary calling header

#ifndef _VTEST_DOTPRODUCT_H_
#define _VTEST_DOTPRODUCT_H_  // guard

#include "verilated.h"
#include "VTest__Dpi.h"

//==========

class VTest__Syms;
class VTest_VerilatedVcd;


//----------

VL_MODULE(VTest_DotProduct) {
  public:
    
    // PORTS
    VL_IN8(clock,0,0);
    VL_IN8(io_a_0,7,0);
    VL_IN8(io_a_1,7,0);
    VL_IN8(io_a_2,7,0);
    VL_IN8(io_a_3,7,0);
    VL_IN8(io_a_4,7,0);
    VL_IN8(io_a_5,7,0);
    VL_IN8(io_a_6,7,0);
    VL_IN8(io_a_7,7,0);
    VL_IN8(io_a_8,7,0);
    VL_IN8(io_a_9,7,0);
    VL_IN8(io_a_10,7,0);
    VL_IN8(io_a_11,7,0);
    VL_IN8(io_a_12,7,0);
    VL_IN8(io_a_13,7,0);
    VL_IN8(io_a_14,7,0);
    VL_IN8(io_a_15,7,0);
    VL_IN8(io_b_0,7,0);
    VL_IN8(io_b_1,7,0);
    VL_IN8(io_b_2,7,0);
    VL_IN8(io_b_3,7,0);
    VL_IN8(io_b_4,7,0);
    VL_IN8(io_b_5,7,0);
    VL_IN8(io_b_6,7,0);
    VL_IN8(io_b_7,7,0);
    VL_IN8(io_b_8,7,0);
    VL_IN8(io_b_9,7,0);
    VL_IN8(io_b_10,7,0);
    VL_IN8(io_b_11,7,0);
    VL_IN8(io_b_12,7,0);
    VL_IN8(io_b_13,7,0);
    VL_IN8(io_b_14,7,0);
    VL_IN8(io_b_15,7,0);
    VL_OUT(io_y,20,0);
    
    // LOCAL SIGNALS
    CData/*7:0*/ __PVT__m_0__DOT__rA;
    CData/*7:0*/ __PVT__m_0__DOT__rB;
    CData/*0:0*/ __PVT__m_0__DOT__rC;
    CData/*7:0*/ __PVT__m_1__DOT__rA;
    CData/*7:0*/ __PVT__m_1__DOT__rB;
    CData/*0:0*/ __PVT__m_1__DOT__rC;
    CData/*7:0*/ __PVT__m_2__DOT__rA;
    CData/*7:0*/ __PVT__m_2__DOT__rB;
    CData/*0:0*/ __PVT__m_2__DOT__rC;
    CData/*7:0*/ __PVT__m_3__DOT__rA;
    CData/*7:0*/ __PVT__m_3__DOT__rB;
    CData/*0:0*/ __PVT__m_3__DOT__rC;
    CData/*7:0*/ __PVT__m_4__DOT__rA;
    CData/*7:0*/ __PVT__m_4__DOT__rB;
    CData/*0:0*/ __PVT__m_4__DOT__rC;
    CData/*7:0*/ __PVT__m_5__DOT__rA;
    CData/*7:0*/ __PVT__m_5__DOT__rB;
    CData/*0:0*/ __PVT__m_5__DOT__rC;
    CData/*7:0*/ __PVT__m_6__DOT__rA;
    CData/*7:0*/ __PVT__m_6__DOT__rB;
    CData/*0:0*/ __PVT__m_6__DOT__rC;
    CData/*7:0*/ __PVT__m_7__DOT__rA;
    CData/*7:0*/ __PVT__m_7__DOT__rB;
    CData/*0:0*/ __PVT__m_7__DOT__rC;
    CData/*7:0*/ __PVT__m_8__DOT__rA;
    CData/*7:0*/ __PVT__m_8__DOT__rB;
    CData/*0:0*/ __PVT__m_8__DOT__rC;
    CData/*7:0*/ __PVT__m_9__DOT__rA;
    CData/*7:0*/ __PVT__m_9__DOT__rB;
    CData/*0:0*/ __PVT__m_9__DOT__rC;
    CData/*7:0*/ __PVT__m_10__DOT__rA;
    CData/*7:0*/ __PVT__m_10__DOT__rB;
    CData/*0:0*/ __PVT__m_10__DOT__rC;
    CData/*7:0*/ __PVT__m_11__DOT__rA;
    CData/*7:0*/ __PVT__m_11__DOT__rB;
    CData/*0:0*/ __PVT__m_11__DOT__rC;
    CData/*7:0*/ __PVT__m_12__DOT__rA;
    CData/*7:0*/ __PVT__m_12__DOT__rB;
    CData/*0:0*/ __PVT__m_12__DOT__rC;
    CData/*7:0*/ __PVT__m_13__DOT__rA;
    CData/*7:0*/ __PVT__m_13__DOT__rB;
    CData/*0:0*/ __PVT__m_13__DOT__rC;
    CData/*7:0*/ __PVT__m_14__DOT__rA;
    CData/*7:0*/ __PVT__m_14__DOT__rB;
    CData/*0:0*/ __PVT__m_14__DOT__rC;
    CData/*7:0*/ __PVT__m_15__DOT__rA;
    CData/*7:0*/ __PVT__m_15__DOT__rB;
    CData/*0:0*/ __PVT__m_15__DOT__rC;
    IData/*16:0*/ __PVT__a_0_0__DOT__rA;
    IData/*16:0*/ __PVT__a_0_0__DOT__rB;
    IData/*16:0*/ __PVT__a_0_1__DOT__rA;
    IData/*16:0*/ __PVT__a_0_1__DOT__rB;
    IData/*16:0*/ __PVT__a_0_2__DOT__rA;
    IData/*16:0*/ __PVT__a_0_2__DOT__rB;
    IData/*16:0*/ __PVT__a_0_3__DOT__rA;
    IData/*16:0*/ __PVT__a_0_3__DOT__rB;
    IData/*16:0*/ __PVT__a_0_4__DOT__rA;
    IData/*16:0*/ __PVT__a_0_4__DOT__rB;
    IData/*16:0*/ __PVT__a_0_5__DOT__rA;
    IData/*16:0*/ __PVT__a_0_5__DOT__rB;
    IData/*16:0*/ __PVT__a_0_6__DOT__rA;
    IData/*16:0*/ __PVT__a_0_6__DOT__rB;
    IData/*16:0*/ __PVT__a_0_7__DOT__rA;
    IData/*16:0*/ __PVT__a_0_7__DOT__rB;
    
    // INTERNAL VARIABLES
  private:
    VTest__Syms* __VlSymsp;  // Symbol table
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VTest_DotProduct);  ///< Copying not allowed
  public:
    VTest_DotProduct(const char* name = "TOP");
    ~VTest_DotProduct();
    
    // INTERNAL METHODS
    void __Vconfigure(VTest__Syms* symsp, bool first);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_0__1(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_10__11(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_11__12(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_12__13(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_13__14(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_14__15(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_15__16(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_1__2(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_2__3(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_3__4(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_4__5(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_5__6(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_6__7(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_7__8(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_8__9(VTest__Syms* __restrict vlSymsp);
    void _sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_9__10(VTest__Syms* __restrict vlSymsp);
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
