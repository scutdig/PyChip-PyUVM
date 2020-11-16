// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VTest.h for the primary calling header

#include "VTest_DotProduct.h"
#include "VTest__Syms.h"

#include "verilated_dpi.h"

//==========

VL_CTOR_IMP(VTest_DotProduct) {
    // Reset internal values
    // Reset structure values
    _ctor_var_reset();
}

void VTest_DotProduct::__Vconfigure(VTest__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
}

VTest_DotProduct::~VTest_DotProduct() {
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_0__1(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_0__1\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6482[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_1__2(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_1__2\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6624[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_2__3(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_2__3\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6766[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_3__4(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_3__4\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_6908[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_4__5(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_4__5\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7050[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_5__6(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_5__6\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7192[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_6__7(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_6__7\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7334[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_7__8(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_7__8\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7476[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_8__9(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_8__9\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7618[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_9__10(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_9__10\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7760[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_10__11(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_10__11\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_7902[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_11__12(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_11__12\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8044[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_12__13(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_12__13\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8186[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_13__14(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_13__14\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8328[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_14__15(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_14__15\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8470[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

VL_INLINE_OPT void VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_15__16(VTest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_sequent__TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_15__16\n"); );
    VTest* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__a_0_0__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_1__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_1__DOT__rB))))))));
    this->__PVT__a_0_0__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_0__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_0__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_3__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_3__DOT__rB))))))));
    this->__PVT__a_0_1__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_2__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_2__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_5__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_5__DOT__rB))))))));
    this->__PVT__a_0_2__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_4__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_4__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_7__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_7__DOT__rB))))))));
    this->__PVT__a_0_3__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_6__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_6__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_9__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_9__DOT__rB))))))));
    this->__PVT__a_0_4__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_8__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_8__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_11__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_11__DOT__rB))))))));
    this->__PVT__a_0_5__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_10__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_10__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_13__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_13__DOT__rB))))))));
    this->__PVT__a_0_6__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_12__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_12__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rB = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_15__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_15__DOT__rB))))))));
    this->__PVT__a_0_7__DOT__rA = (0x1ffffU & (VL_EXTENDS_II(17,16, 
                                                             (0xffffU 
                                                              & (- (IData)((IData)(this->__PVT__m_14__DOT__rC))))) 
                                               + VL_EXTENDS_II(17,16, 
                                                               (0xffffU 
                                                                & VL_MULS_III(16,16,16, 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rA))), 
                                                                              (0xffffU 
                                                                               & VL_EXTENDS_II(16,8, (IData)(this->__PVT__m_14__DOT__rB))))))));
    this->__PVT__m_1__DOT__rC = 0U;
    this->__PVT__m_1__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[0U] 
                                             >> 8U)));
    this->__PVT__m_1__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 8U)));
    this->__PVT__m_0__DOT__rC = 0U;
    this->__PVT__m_0__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[0U]);
    this->__PVT__m_0__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U]);
    this->__PVT__m_3__DOT__rC = 0U;
    this->__PVT__m_3__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[0U] 
                                           >> 0x18U)));
    this->__PVT__m_3__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                           >> 0x18U)));
    this->__PVT__m_2__DOT__rC = 0U;
    this->__PVT__m_2__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[0U] 
                                             >> 0x10U)));
    this->__PVT__m_2__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[0U] 
                                             >> 0x10U)));
    this->__PVT__m_5__DOT__rC = 0U;
    this->__PVT__m_5__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[1U] 
                                             >> 8U)));
    this->__PVT__m_5__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 8U)));
    this->__PVT__m_4__DOT__rC = 0U;
    this->__PVT__m_4__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[1U]);
    this->__PVT__m_4__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U]);
    this->__PVT__m_7__DOT__rC = 0U;
    this->__PVT__m_7__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[1U] 
                                           >> 0x18U)));
    this->__PVT__m_7__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 8U) | 
                                          (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                           >> 0x18U)));
    this->__PVT__m_6__DOT__rC = 0U;
    this->__PVT__m_6__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[1U] 
                                             >> 0x10U)));
    this->__PVT__m_6__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                           << 0x10U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[1U] 
                                             >> 0x10U)));
    this->__PVT__m_9__DOT__rC = 0U;
    this->__PVT__m_9__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[2U] 
                                             >> 8U)));
    this->__PVT__m_9__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           << 0x18U) 
                                          | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                             >> 8U)));
    this->__PVT__m_8__DOT__rC = 0U;
    this->__PVT__m_8__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[2U]);
    this->__PVT__m_8__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U]);
    this->__PVT__m_11__DOT__rC = 0U;
    this->__PVT__m_11__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[2U] 
                                              >> 0x18U)));
    this->__PVT__m_11__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 8U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x18U)));
    this->__PVT__m_10__DOT__rC = 0U;
    this->__PVT__m_10__DOT__rB = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[2U] 
                                              >> 0x10U)));
    this->__PVT__m_10__DOT__rA = (0xffU & ((vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                            << 0x10U) 
                                           | (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[2U] 
                                              >> 0x10U)));
    this->__PVT__m_13__DOT__rC = 0U;
    this->__PVT__m_13__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[3U] 
                                           >> 8U));
    this->__PVT__m_13__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 8U));
    this->__PVT__m_12__DOT__rC = 0U;
    this->__PVT__m_12__DOT__rB = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[3U]);
    this->__PVT__m_12__DOT__rA = (0xffU & vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U]);
    this->__PVT__m_15__DOT__rC = 0U;
    this->__PVT__m_15__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[3U] 
                                           >> 0x18U));
    this->__PVT__m_15__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x18U));
    this->__PVT__m_14__DOT__rC = 0U;
    this->__PVT__m_14__DOT__rB = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_1__DOT___T_8612[3U] 
                                           >> 0x10U));
    this->__PVT__m_14__DOT__rA = (0xffU & (vlTOPp->Test__DOT__vta_shell__DOT__core__DOT__load__DOT__tensorLoad_0__DOT___T_887[3U] 
                                           >> 0x10U));
}

void VTest_DotProduct::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+                  VTest_DotProduct::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    io_a_0 = VL_RAND_RESET_I(8);
    io_a_1 = VL_RAND_RESET_I(8);
    io_a_2 = VL_RAND_RESET_I(8);
    io_a_3 = VL_RAND_RESET_I(8);
    io_a_4 = VL_RAND_RESET_I(8);
    io_a_5 = VL_RAND_RESET_I(8);
    io_a_6 = VL_RAND_RESET_I(8);
    io_a_7 = VL_RAND_RESET_I(8);
    io_a_8 = VL_RAND_RESET_I(8);
    io_a_9 = VL_RAND_RESET_I(8);
    io_a_10 = VL_RAND_RESET_I(8);
    io_a_11 = VL_RAND_RESET_I(8);
    io_a_12 = VL_RAND_RESET_I(8);
    io_a_13 = VL_RAND_RESET_I(8);
    io_a_14 = VL_RAND_RESET_I(8);
    io_a_15 = VL_RAND_RESET_I(8);
    io_b_0 = VL_RAND_RESET_I(8);
    io_b_1 = VL_RAND_RESET_I(8);
    io_b_2 = VL_RAND_RESET_I(8);
    io_b_3 = VL_RAND_RESET_I(8);
    io_b_4 = VL_RAND_RESET_I(8);
    io_b_5 = VL_RAND_RESET_I(8);
    io_b_6 = VL_RAND_RESET_I(8);
    io_b_7 = VL_RAND_RESET_I(8);
    io_b_8 = VL_RAND_RESET_I(8);
    io_b_9 = VL_RAND_RESET_I(8);
    io_b_10 = VL_RAND_RESET_I(8);
    io_b_11 = VL_RAND_RESET_I(8);
    io_b_12 = VL_RAND_RESET_I(8);
    io_b_13 = VL_RAND_RESET_I(8);
    io_b_14 = VL_RAND_RESET_I(8);
    io_b_15 = VL_RAND_RESET_I(8);
    io_y = VL_RAND_RESET_I(21);
    __PVT__m_0__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_0__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_0__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_1__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_1__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_1__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_2__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_2__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_2__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_3__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_3__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_3__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_4__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_4__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_4__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_5__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_5__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_5__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_6__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_6__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_6__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_7__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_7__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_7__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_8__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_8__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_8__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_9__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_9__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_9__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_10__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_10__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_10__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_11__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_11__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_11__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_12__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_12__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_12__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_13__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_13__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_13__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_14__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_14__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_14__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__m_15__DOT__rA = VL_RAND_RESET_I(8);
    __PVT__m_15__DOT__rB = VL_RAND_RESET_I(8);
    __PVT__m_15__DOT__rC = VL_RAND_RESET_I(1);
    __PVT__a_0_0__DOT__rA = VL_RAND_RESET_I(17);
    __PVT__a_0_0__DOT__rB = VL_RAND_RESET_I(17);
    __PVT__a_0_1__DOT__rA = VL_RAND_RESET_I(17);
    __PVT__a_0_1__DOT__rB = VL_RAND_RESET_I(17);
    __PVT__a_0_2__DOT__rA = VL_RAND_RESET_I(17);
    __PVT__a_0_2__DOT__rB = VL_RAND_RESET_I(17);
    __PVT__a_0_3__DOT__rA = VL_RAND_RESET_I(17);
    __PVT__a_0_3__DOT__rB = VL_RAND_RESET_I(17);
    __PVT__a_0_4__DOT__rA = VL_RAND_RESET_I(17);
    __PVT__a_0_4__DOT__rB = VL_RAND_RESET_I(17);
    __PVT__a_0_5__DOT__rA = VL_RAND_RESET_I(17);
    __PVT__a_0_5__DOT__rB = VL_RAND_RESET_I(17);
    __PVT__a_0_6__DOT__rA = VL_RAND_RESET_I(17);
    __PVT__a_0_6__DOT__rB = VL_RAND_RESET_I(17);
    __PVT__a_0_7__DOT__rA = VL_RAND_RESET_I(17);
    __PVT__a_0_7__DOT__rB = VL_RAND_RESET_I(17);
}
