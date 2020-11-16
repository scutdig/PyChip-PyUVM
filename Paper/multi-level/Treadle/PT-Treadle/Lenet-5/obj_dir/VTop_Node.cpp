// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VTop.h for the primary calling header

#include "VTop_Node.h"
#include "VTop__Syms.h"

//==========

VL_CTOR_IMP(VTop_Node) {
    // Reset internal values
    // Reset structure values
    _ctor_var_reset();
}

void VTop_Node::__Vconfigure(VTop__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
}

VTop_Node::~VTop_Node() {
}

VL_INLINE_OPT void VTop_Node::_sequent__TOP__Top__DOT__t1__DOT__convc1__DOT___T__97(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_sequent__TOP__Top__DOT__t1__DOT__convc1__DOT___T__97\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT__sum = ((IData)(vlTOPp->reset)
                                       ? 0U : (IData)(
                                                      ((IData)(vlTOPp->io_rdy)
                                                        ? this->__PVT__muladdc__DOT___T_51
                                                        : 
                                                       ((0x19U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? VL_ULL(0)
                                                         : 
                                                        ((0U 
                                                          != (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? this->__PVT__muladdc__DOT___T_51
                                                          : VL_ULL(0))))));
    this->__PVT__muladdc__DOT__i = ((IData)(vlTOPp->reset)
                                     ? 0U : (0x1fU 
                                             & (IData)(this->__PVT__muladdc__DOT___GEN_57)));
}

VL_INLINE_OPT void VTop_Node::_combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T__199(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T__199\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & ((IData)(vlTOPp->io_rdy)
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__act__DOT___T_2 = (0x1ffffU & (((IData)(vlTOPp->io_rdy)
                                                 ? 0U
                                                 : 
                                                ((0x19U 
                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                  ? 
                                                 (0xffffU 
                                                  & this->__PVT__muladdc__DOT__sum)
                                                  : 0U)) 
                                               + (0xffffU 
                                                  & vlTOPp->io_bias[0U])));
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlTOPp->io_d_in[7U] 
                                                << 0x10U) 
                                               | (vlTOPp->io_d_in[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlTOPp->io_d_in[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_d_in[6U] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_d_in[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_d_in[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_d_in[5U] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_d_in[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_d_in[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_d_in[4U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_d_in[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_d_in[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_d_in[3U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_d_in[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_d_in[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlTOPp->io_d_in[2U] 
                                                             << 0x10U) 
                                                            | (vlTOPp->io_d_in[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlTOPp->io_d_in[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlTOPp->io_d_in[1U] 
                                                               << 0x10U) 
                                                              | (vlTOPp->io_d_in[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlTOPp->io_d_in[0U]))))))))))))));
    this->__PVT__muladdc__DOT___GEN_38 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlTOPp->io_w_in_0[7U] 
                                                << 0x10U) 
                                               | (vlTOPp->io_w_in_0[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlTOPp->io_w_in_0[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_w_in_0[6U] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_w_in_0[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_w_in_0[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_w_in_0[5U] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_w_in_0[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_w_in_0[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_w_in_0[4U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_w_in_0[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_w_in_0[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_w_in_0[3U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_w_in_0[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_w_in_0[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlTOPp->io_w_in_0[2U] 
                                                             << 0x10U) 
                                                            | (vlTOPp->io_w_in_0[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlTOPp->io_w_in_0[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlTOPp->io_w_in_0[1U] 
                                                               << 0x10U) 
                                                              | (vlTOPp->io_w_in_0[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlTOPp->io_w_in_0[0U]))))))))))))));
    this->__PVT__muladdc_io_v = ((~ (IData)(vlTOPp->io_rdy)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlTOPp->io_d_in[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlTOPp->io_d_in[0xcU] 
                                                   << 0x10U) 
                                                  | (vlTOPp->io_d_in[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlTOPp->io_d_in[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_d_in[0xbU] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_d_in[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_d_in[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_d_in[0xaU] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_d_in[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_d_in[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_d_in[9U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_d_in[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_d_in[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_d_in[8U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_d_in[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_d_in[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * (0xffffU 
                                           & ((0x18U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? vlTOPp->io_w_in_0[0xcU]
                                               : ((0x17U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  ((vlTOPp->io_w_in_0[0xcU] 
                                                    << 0x10U) 
                                                   | (vlTOPp->io_w_in_0[0xbU] 
                                                      >> 0x10U))
                                                   : 
                                                  ((0x16U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   vlTOPp->io_w_in_0[0xbU]
                                                    : 
                                                   ((0x15U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    ((vlTOPp->io_w_in_0[0xbU] 
                                                      << 0x10U) 
                                                     | (vlTOPp->io_w_in_0[0xaU] 
                                                        >> 0x10U))
                                                     : 
                                                    ((0x14U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     vlTOPp->io_w_in_0[0xaU]
                                                      : 
                                                     ((0x13U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      ((vlTOPp->io_w_in_0[0xaU] 
                                                        << 0x10U) 
                                                       | (vlTOPp->io_w_in_0[9U] 
                                                          >> 0x10U))
                                                       : 
                                                      ((0x12U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       vlTOPp->io_w_in_0[9U]
                                                        : 
                                                       ((0x11U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        ((vlTOPp->io_w_in_0[9U] 
                                                          << 0x10U) 
                                                         | (vlTOPp->io_w_in_0[8U] 
                                                            >> 0x10U))
                                                         : 
                                                        ((0x10U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         vlTOPp->io_w_in_0[8U]
                                                          : 
                                                         ((0xfU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          ((vlTOPp->io_w_in_0[8U] 
                                                            << 0x10U) 
                                                           | (vlTOPp->io_w_in_0[7U] 
                                                              >> 0x10U))
                                                           : 
                                                          ((0xeU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           vlTOPp->io_w_in_0[7U]
                                                            : (IData)(this->__PVT__muladdc__DOT___GEN_38))))))))))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

VL_INLINE_OPT void VTop_Node::_combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_1__200(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_1__200\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & ((IData)(vlTOPp->io_rdy)
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__act__DOT___T_2 = (0x1ffffU & (((IData)(vlTOPp->io_rdy)
                                                 ? 0U
                                                 : 
                                                ((0x19U 
                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                  ? 
                                                 (0xffffU 
                                                  & this->__PVT__muladdc__DOT__sum)
                                                  : 0U)) 
                                               + (0xffffU 
                                                  & vlTOPp->io_bias[0U])));
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlTOPp->io_d_in[7U] 
                                                << 0x10U) 
                                               | (vlTOPp->io_d_in[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlTOPp->io_d_in[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_d_in[6U] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_d_in[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_d_in[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_d_in[5U] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_d_in[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_d_in[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_d_in[4U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_d_in[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_d_in[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_d_in[3U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_d_in[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_d_in[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlTOPp->io_d_in[2U] 
                                                             << 0x10U) 
                                                            | (vlTOPp->io_d_in[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlTOPp->io_d_in[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlTOPp->io_d_in[1U] 
                                                               << 0x10U) 
                                                              | (vlTOPp->io_d_in[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlTOPp->io_d_in[0U]))))))))))))));
    this->__PVT__muladdc__DOT___GEN_38 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlTOPp->io_w_in_1[7U] 
                                                << 0x10U) 
                                               | (vlTOPp->io_w_in_1[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlTOPp->io_w_in_1[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_w_in_1[6U] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_w_in_1[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_w_in_1[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_w_in_1[5U] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_w_in_1[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_w_in_1[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_w_in_1[4U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_w_in_1[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_w_in_1[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_w_in_1[3U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_w_in_1[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_w_in_1[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlTOPp->io_w_in_1[2U] 
                                                             << 0x10U) 
                                                            | (vlTOPp->io_w_in_1[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlTOPp->io_w_in_1[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlTOPp->io_w_in_1[1U] 
                                                               << 0x10U) 
                                                              | (vlTOPp->io_w_in_1[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlTOPp->io_w_in_1[0U]))))))))))))));
    this->__PVT__muladdc_io_v = ((~ (IData)(vlTOPp->io_rdy)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlTOPp->io_d_in[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlTOPp->io_d_in[0xcU] 
                                                   << 0x10U) 
                                                  | (vlTOPp->io_d_in[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlTOPp->io_d_in[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_d_in[0xbU] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_d_in[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_d_in[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_d_in[0xaU] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_d_in[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_d_in[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_d_in[9U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_d_in[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_d_in[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_d_in[8U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_d_in[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_d_in[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * (0xffffU 
                                           & ((0x18U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? vlTOPp->io_w_in_1[0xcU]
                                               : ((0x17U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  ((vlTOPp->io_w_in_1[0xcU] 
                                                    << 0x10U) 
                                                   | (vlTOPp->io_w_in_1[0xbU] 
                                                      >> 0x10U))
                                                   : 
                                                  ((0x16U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   vlTOPp->io_w_in_1[0xbU]
                                                    : 
                                                   ((0x15U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    ((vlTOPp->io_w_in_1[0xbU] 
                                                      << 0x10U) 
                                                     | (vlTOPp->io_w_in_1[0xaU] 
                                                        >> 0x10U))
                                                     : 
                                                    ((0x14U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     vlTOPp->io_w_in_1[0xaU]
                                                      : 
                                                     ((0x13U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      ((vlTOPp->io_w_in_1[0xaU] 
                                                        << 0x10U) 
                                                       | (vlTOPp->io_w_in_1[9U] 
                                                          >> 0x10U))
                                                       : 
                                                      ((0x12U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       vlTOPp->io_w_in_1[9U]
                                                        : 
                                                       ((0x11U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        ((vlTOPp->io_w_in_1[9U] 
                                                          << 0x10U) 
                                                         | (vlTOPp->io_w_in_1[8U] 
                                                            >> 0x10U))
                                                         : 
                                                        ((0x10U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         vlTOPp->io_w_in_1[8U]
                                                          : 
                                                         ((0xfU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          ((vlTOPp->io_w_in_1[8U] 
                                                            << 0x10U) 
                                                           | (vlTOPp->io_w_in_1[7U] 
                                                              >> 0x10U))
                                                           : 
                                                          ((0xeU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           vlTOPp->io_w_in_1[7U]
                                                            : (IData)(this->__PVT__muladdc__DOT___GEN_38))))))))))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

VL_INLINE_OPT void VTop_Node::_combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_2__201(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_2__201\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & ((IData)(vlTOPp->io_rdy)
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__act__DOT___T_2 = (0x1ffffU & (((IData)(vlTOPp->io_rdy)
                                                 ? 0U
                                                 : 
                                                ((0x19U 
                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                  ? 
                                                 (0xffffU 
                                                  & this->__PVT__muladdc__DOT__sum)
                                                  : 0U)) 
                                               + (0xffffU 
                                                  & vlTOPp->io_bias[0U])));
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlTOPp->io_d_in[7U] 
                                                << 0x10U) 
                                               | (vlTOPp->io_d_in[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlTOPp->io_d_in[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_d_in[6U] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_d_in[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_d_in[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_d_in[5U] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_d_in[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_d_in[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_d_in[4U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_d_in[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_d_in[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_d_in[3U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_d_in[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_d_in[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlTOPp->io_d_in[2U] 
                                                             << 0x10U) 
                                                            | (vlTOPp->io_d_in[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlTOPp->io_d_in[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlTOPp->io_d_in[1U] 
                                                               << 0x10U) 
                                                              | (vlTOPp->io_d_in[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlTOPp->io_d_in[0U]))))))))))))));
    this->__PVT__muladdc__DOT___GEN_38 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlTOPp->io_w_in_2[7U] 
                                                << 0x10U) 
                                               | (vlTOPp->io_w_in_2[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlTOPp->io_w_in_2[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_w_in_2[6U] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_w_in_2[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_w_in_2[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_w_in_2[5U] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_w_in_2[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_w_in_2[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_w_in_2[4U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_w_in_2[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_w_in_2[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_w_in_2[3U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_w_in_2[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_w_in_2[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlTOPp->io_w_in_2[2U] 
                                                             << 0x10U) 
                                                            | (vlTOPp->io_w_in_2[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlTOPp->io_w_in_2[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlTOPp->io_w_in_2[1U] 
                                                               << 0x10U) 
                                                              | (vlTOPp->io_w_in_2[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlTOPp->io_w_in_2[0U]))))))))))))));
    this->__PVT__muladdc_io_v = ((~ (IData)(vlTOPp->io_rdy)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlTOPp->io_d_in[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlTOPp->io_d_in[0xcU] 
                                                   << 0x10U) 
                                                  | (vlTOPp->io_d_in[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlTOPp->io_d_in[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_d_in[0xbU] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_d_in[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_d_in[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_d_in[0xaU] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_d_in[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_d_in[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_d_in[9U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_d_in[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_d_in[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_d_in[8U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_d_in[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_d_in[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * (0xffffU 
                                           & ((0x18U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? vlTOPp->io_w_in_2[0xcU]
                                               : ((0x17U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  ((vlTOPp->io_w_in_2[0xcU] 
                                                    << 0x10U) 
                                                   | (vlTOPp->io_w_in_2[0xbU] 
                                                      >> 0x10U))
                                                   : 
                                                  ((0x16U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   vlTOPp->io_w_in_2[0xbU]
                                                    : 
                                                   ((0x15U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    ((vlTOPp->io_w_in_2[0xbU] 
                                                      << 0x10U) 
                                                     | (vlTOPp->io_w_in_2[0xaU] 
                                                        >> 0x10U))
                                                     : 
                                                    ((0x14U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     vlTOPp->io_w_in_2[0xaU]
                                                      : 
                                                     ((0x13U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      ((vlTOPp->io_w_in_2[0xaU] 
                                                        << 0x10U) 
                                                       | (vlTOPp->io_w_in_2[9U] 
                                                          >> 0x10U))
                                                       : 
                                                      ((0x12U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       vlTOPp->io_w_in_2[9U]
                                                        : 
                                                       ((0x11U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        ((vlTOPp->io_w_in_2[9U] 
                                                          << 0x10U) 
                                                         | (vlTOPp->io_w_in_2[8U] 
                                                            >> 0x10U))
                                                         : 
                                                        ((0x10U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         vlTOPp->io_w_in_2[8U]
                                                          : 
                                                         ((0xfU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          ((vlTOPp->io_w_in_2[8U] 
                                                            << 0x10U) 
                                                           | (vlTOPp->io_w_in_2[7U] 
                                                              >> 0x10U))
                                                           : 
                                                          ((0xeU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           vlTOPp->io_w_in_2[7U]
                                                            : (IData)(this->__PVT__muladdc__DOT___GEN_38))))))))))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

VL_INLINE_OPT void VTop_Node::_combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_3__202(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_3__202\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & ((IData)(vlTOPp->io_rdy)
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__act__DOT___T_2 = (0x1ffffU & (((IData)(vlTOPp->io_rdy)
                                                 ? 0U
                                                 : 
                                                ((0x19U 
                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                  ? 
                                                 (0xffffU 
                                                  & this->__PVT__muladdc__DOT__sum)
                                                  : 0U)) 
                                               + (0xffffU 
                                                  & vlTOPp->io_bias[0U])));
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlTOPp->io_d_in[7U] 
                                                << 0x10U) 
                                               | (vlTOPp->io_d_in[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlTOPp->io_d_in[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_d_in[6U] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_d_in[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_d_in[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_d_in[5U] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_d_in[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_d_in[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_d_in[4U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_d_in[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_d_in[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_d_in[3U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_d_in[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_d_in[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlTOPp->io_d_in[2U] 
                                                             << 0x10U) 
                                                            | (vlTOPp->io_d_in[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlTOPp->io_d_in[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlTOPp->io_d_in[1U] 
                                                               << 0x10U) 
                                                              | (vlTOPp->io_d_in[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlTOPp->io_d_in[0U]))))))))))))));
    this->__PVT__muladdc__DOT___GEN_38 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlTOPp->io_w_in_3[7U] 
                                                << 0x10U) 
                                               | (vlTOPp->io_w_in_3[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlTOPp->io_w_in_3[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_w_in_3[6U] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_w_in_3[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_w_in_3[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_w_in_3[5U] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_w_in_3[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_w_in_3[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_w_in_3[4U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_w_in_3[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_w_in_3[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_w_in_3[3U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_w_in_3[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_w_in_3[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlTOPp->io_w_in_3[2U] 
                                                             << 0x10U) 
                                                            | (vlTOPp->io_w_in_3[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlTOPp->io_w_in_3[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlTOPp->io_w_in_3[1U] 
                                                               << 0x10U) 
                                                              | (vlTOPp->io_w_in_3[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlTOPp->io_w_in_3[0U]))))))))))))));
    this->__PVT__muladdc_io_v = ((~ (IData)(vlTOPp->io_rdy)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlTOPp->io_d_in[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlTOPp->io_d_in[0xcU] 
                                                   << 0x10U) 
                                                  | (vlTOPp->io_d_in[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlTOPp->io_d_in[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_d_in[0xbU] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_d_in[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_d_in[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_d_in[0xaU] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_d_in[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_d_in[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_d_in[9U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_d_in[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_d_in[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_d_in[8U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_d_in[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_d_in[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * (0xffffU 
                                           & ((0x18U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? vlTOPp->io_w_in_3[0xcU]
                                               : ((0x17U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  ((vlTOPp->io_w_in_3[0xcU] 
                                                    << 0x10U) 
                                                   | (vlTOPp->io_w_in_3[0xbU] 
                                                      >> 0x10U))
                                                   : 
                                                  ((0x16U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   vlTOPp->io_w_in_3[0xbU]
                                                    : 
                                                   ((0x15U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    ((vlTOPp->io_w_in_3[0xbU] 
                                                      << 0x10U) 
                                                     | (vlTOPp->io_w_in_3[0xaU] 
                                                        >> 0x10U))
                                                     : 
                                                    ((0x14U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     vlTOPp->io_w_in_3[0xaU]
                                                      : 
                                                     ((0x13U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      ((vlTOPp->io_w_in_3[0xaU] 
                                                        << 0x10U) 
                                                       | (vlTOPp->io_w_in_3[9U] 
                                                          >> 0x10U))
                                                       : 
                                                      ((0x12U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       vlTOPp->io_w_in_3[9U]
                                                        : 
                                                       ((0x11U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        ((vlTOPp->io_w_in_3[9U] 
                                                          << 0x10U) 
                                                         | (vlTOPp->io_w_in_3[8U] 
                                                            >> 0x10U))
                                                         : 
                                                        ((0x10U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         vlTOPp->io_w_in_3[8U]
                                                          : 
                                                         ((0xfU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          ((vlTOPp->io_w_in_3[8U] 
                                                            << 0x10U) 
                                                           | (vlTOPp->io_w_in_3[7U] 
                                                              >> 0x10U))
                                                           : 
                                                          ((0xeU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           vlTOPp->io_w_in_3[7U]
                                                            : (IData)(this->__PVT__muladdc__DOT___GEN_38))))))))))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

VL_INLINE_OPT void VTop_Node::_combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_4__203(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_4__203\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & ((IData)(vlTOPp->io_rdy)
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__act__DOT___T_2 = (0x1ffffU & (((IData)(vlTOPp->io_rdy)
                                                 ? 0U
                                                 : 
                                                ((0x19U 
                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                  ? 
                                                 (0xffffU 
                                                  & this->__PVT__muladdc__DOT__sum)
                                                  : 0U)) 
                                               + (0xffffU 
                                                  & vlTOPp->io_bias[0U])));
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlTOPp->io_d_in[7U] 
                                                << 0x10U) 
                                               | (vlTOPp->io_d_in[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlTOPp->io_d_in[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_d_in[6U] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_d_in[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_d_in[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_d_in[5U] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_d_in[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_d_in[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_d_in[4U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_d_in[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_d_in[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_d_in[3U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_d_in[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_d_in[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlTOPp->io_d_in[2U] 
                                                             << 0x10U) 
                                                            | (vlTOPp->io_d_in[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlTOPp->io_d_in[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlTOPp->io_d_in[1U] 
                                                               << 0x10U) 
                                                              | (vlTOPp->io_d_in[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlTOPp->io_d_in[0U]))))))))))))));
    this->__PVT__muladdc__DOT___GEN_38 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlTOPp->io_w_in_4[7U] 
                                                << 0x10U) 
                                               | (vlTOPp->io_w_in_4[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlTOPp->io_w_in_4[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_w_in_4[6U] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_w_in_4[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_w_in_4[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_w_in_4[5U] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_w_in_4[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_w_in_4[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_w_in_4[4U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_w_in_4[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_w_in_4[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_w_in_4[3U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_w_in_4[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_w_in_4[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlTOPp->io_w_in_4[2U] 
                                                             << 0x10U) 
                                                            | (vlTOPp->io_w_in_4[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlTOPp->io_w_in_4[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlTOPp->io_w_in_4[1U] 
                                                               << 0x10U) 
                                                              | (vlTOPp->io_w_in_4[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlTOPp->io_w_in_4[0U]))))))))))))));
    this->__PVT__muladdc_io_v = ((~ (IData)(vlTOPp->io_rdy)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlTOPp->io_d_in[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlTOPp->io_d_in[0xcU] 
                                                   << 0x10U) 
                                                  | (vlTOPp->io_d_in[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlTOPp->io_d_in[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_d_in[0xbU] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_d_in[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_d_in[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_d_in[0xaU] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_d_in[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_d_in[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_d_in[9U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_d_in[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_d_in[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_d_in[8U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_d_in[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_d_in[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * (0xffffU 
                                           & ((0x18U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? vlTOPp->io_w_in_4[0xcU]
                                               : ((0x17U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  ((vlTOPp->io_w_in_4[0xcU] 
                                                    << 0x10U) 
                                                   | (vlTOPp->io_w_in_4[0xbU] 
                                                      >> 0x10U))
                                                   : 
                                                  ((0x16U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   vlTOPp->io_w_in_4[0xbU]
                                                    : 
                                                   ((0x15U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    ((vlTOPp->io_w_in_4[0xbU] 
                                                      << 0x10U) 
                                                     | (vlTOPp->io_w_in_4[0xaU] 
                                                        >> 0x10U))
                                                     : 
                                                    ((0x14U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     vlTOPp->io_w_in_4[0xaU]
                                                      : 
                                                     ((0x13U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      ((vlTOPp->io_w_in_4[0xaU] 
                                                        << 0x10U) 
                                                       | (vlTOPp->io_w_in_4[9U] 
                                                          >> 0x10U))
                                                       : 
                                                      ((0x12U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       vlTOPp->io_w_in_4[9U]
                                                        : 
                                                       ((0x11U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        ((vlTOPp->io_w_in_4[9U] 
                                                          << 0x10U) 
                                                         | (vlTOPp->io_w_in_4[8U] 
                                                            >> 0x10U))
                                                         : 
                                                        ((0x10U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         vlTOPp->io_w_in_4[8U]
                                                          : 
                                                         ((0xfU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          ((vlTOPp->io_w_in_4[8U] 
                                                            << 0x10U) 
                                                           | (vlTOPp->io_w_in_4[7U] 
                                                              >> 0x10U))
                                                           : 
                                                          ((0xeU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           vlTOPp->io_w_in_4[7U]
                                                            : (IData)(this->__PVT__muladdc__DOT___GEN_38))))))))))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

VL_INLINE_OPT void VTop_Node::_combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_5__204(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_combo__TOP__Top__DOT__t1__DOT__convc1__DOT___T_5__204\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & ((IData)(vlTOPp->io_rdy)
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__act__DOT___T_2 = (0x1ffffU & (((IData)(vlTOPp->io_rdy)
                                                 ? 0U
                                                 : 
                                                ((0x19U 
                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                  ? 
                                                 (0xffffU 
                                                  & this->__PVT__muladdc__DOT__sum)
                                                  : 0U)) 
                                               + (0xffffU 
                                                  & vlTOPp->io_bias[0U])));
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlTOPp->io_d_in[7U] 
                                                << 0x10U) 
                                               | (vlTOPp->io_d_in[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlTOPp->io_d_in[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_d_in[6U] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_d_in[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_d_in[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_d_in[5U] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_d_in[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_d_in[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_d_in[4U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_d_in[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_d_in[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_d_in[3U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_d_in[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_d_in[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlTOPp->io_d_in[2U] 
                                                             << 0x10U) 
                                                            | (vlTOPp->io_d_in[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlTOPp->io_d_in[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlTOPp->io_d_in[1U] 
                                                               << 0x10U) 
                                                              | (vlTOPp->io_d_in[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlTOPp->io_d_in[0U]))))))))))))));
    this->__PVT__muladdc__DOT___GEN_38 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlTOPp->io_w_in_5[7U] 
                                                << 0x10U) 
                                               | (vlTOPp->io_w_in_5[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlTOPp->io_w_in_5[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_w_in_5[6U] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_w_in_5[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_w_in_5[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_w_in_5[5U] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_w_in_5[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_w_in_5[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_w_in_5[4U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_w_in_5[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_w_in_5[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_w_in_5[3U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_w_in_5[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_w_in_5[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlTOPp->io_w_in_5[2U] 
                                                             << 0x10U) 
                                                            | (vlTOPp->io_w_in_5[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlTOPp->io_w_in_5[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlTOPp->io_w_in_5[1U] 
                                                               << 0x10U) 
                                                              | (vlTOPp->io_w_in_5[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlTOPp->io_w_in_5[0U]))))))))))))));
    this->__PVT__muladdc_io_v = ((~ (IData)(vlTOPp->io_rdy)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlTOPp->io_d_in[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlTOPp->io_d_in[0xcU] 
                                                   << 0x10U) 
                                                  | (vlTOPp->io_d_in[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlTOPp->io_d_in[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlTOPp->io_d_in[0xbU] 
                                                     << 0x10U) 
                                                    | (vlTOPp->io_d_in[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlTOPp->io_d_in[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlTOPp->io_d_in[0xaU] 
                                                       << 0x10U) 
                                                      | (vlTOPp->io_d_in[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlTOPp->io_d_in[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlTOPp->io_d_in[9U] 
                                                         << 0x10U) 
                                                        | (vlTOPp->io_d_in[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlTOPp->io_d_in[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlTOPp->io_d_in[8U] 
                                                           << 0x10U) 
                                                          | (vlTOPp->io_d_in[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlTOPp->io_d_in[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * (0xffffU 
                                           & ((0x18U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? vlTOPp->io_w_in_5[0xcU]
                                               : ((0x17U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  ((vlTOPp->io_w_in_5[0xcU] 
                                                    << 0x10U) 
                                                   | (vlTOPp->io_w_in_5[0xbU] 
                                                      >> 0x10U))
                                                   : 
                                                  ((0x16U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   vlTOPp->io_w_in_5[0xbU]
                                                    : 
                                                   ((0x15U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    ((vlTOPp->io_w_in_5[0xbU] 
                                                      << 0x10U) 
                                                     | (vlTOPp->io_w_in_5[0xaU] 
                                                        >> 0x10U))
                                                     : 
                                                    ((0x14U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     vlTOPp->io_w_in_5[0xaU]
                                                      : 
                                                     ((0x13U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      ((vlTOPp->io_w_in_5[0xaU] 
                                                        << 0x10U) 
                                                       | (vlTOPp->io_w_in_5[9U] 
                                                          >> 0x10U))
                                                       : 
                                                      ((0x12U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       vlTOPp->io_w_in_5[9U]
                                                        : 
                                                       ((0x11U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        ((vlTOPp->io_w_in_5[9U] 
                                                          << 0x10U) 
                                                         | (vlTOPp->io_w_in_5[8U] 
                                                            >> 0x10U))
                                                         : 
                                                        ((0x10U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         vlTOPp->io_w_in_5[8U]
                                                          : 
                                                         ((0xfU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          ((vlTOPp->io_w_in_5[8U] 
                                                            << 0x10U) 
                                                           | (vlTOPp->io_w_in_5[7U] 
                                                              >> 0x10U))
                                                           : 
                                                          ((0xeU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           vlTOPp->io_w_in_5[7U]
                                                            : (IData)(this->__PVT__muladdc__DOT___GEN_38))))))))))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

VL_INLINE_OPT void VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_1___T__1(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_1___T__1\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT__sum = ((IData)(vlTOPp->reset)
                                       ? 0U : (IData)(this->__PVT__muladdc__DOT___GEN_56));
    this->__PVT__muladdc__DOT__i = ((IData)(vlTOPp->reset)
                                     ? 0U : (0x1fU 
                                             & (IData)(this->__PVT__muladdc__DOT___GEN_57)));
}

VL_INLINE_OPT void VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_1___T__183(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_1___T__183\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & (
                                                   (0x19U 
                                                    == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__muladdc_io_v = ((0x19U != (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc__DOT___GEN_56 = ((0x19U == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                           ? (QData)((IData)(this->__PVT__muladdc__DOT__sum))
                                           : ((0x19U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? VL_ULL(0)
                                               : ((0U 
                                                   != (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? (QData)((IData)(this->__PVT__muladdc__DOT__sum))
                                                   : VL_ULL(0))));
    this->__PVT__muladdc_io_q = ((0x19U == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                  ? 0U : ((0x19U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? this->__PVT__muladdc__DOT__sum
                                           : 0U));
}

VL_INLINE_OPT void VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_3___T__17(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_3___T__17\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT__sum = ((IData)(vlTOPp->reset)
                                       ? 0U : (IData)(
                                                      ((0x19U 
                                                        == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                        ? this->__PVT__muladdc__DOT___T_51
                                                        : 
                                                       ((0x19U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? VL_ULL(0)
                                                         : 
                                                        ((0U 
                                                          != (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? this->__PVT__muladdc__DOT___T_51
                                                          : VL_ULL(0))))));
    this->__PVT__muladdc__DOT__i = ((IData)(vlTOPp->reset)
                                     ? 0U : (0x1fU 
                                             & (IData)(this->__PVT__muladdc__DOT___GEN_57)));
    this->__PVT__muladdc__DOT___GEN_45 = ((0x14U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? 0U : (
                                                   (0x13U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 0U
                                                    : 
                                                   ((0x12U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0x11U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 0U
                                                      : 
                                                     ((0x10U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 0U
                                                       : 
                                                      ((0xfU 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 0U
                                                        : 
                                                       ((0xeU 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 0U
                                                         : 
                                                        ((0xdU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 0U
                                                          : 
                                                         ((0xcU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 0U
                                                           : 
                                                          ((0xbU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 0U
                                                            : 
                                                           ((0xaU 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 0U
                                                             : 
                                                            ((9U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 0U
                                                              : 
                                                             ((8U 
                                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                                               ? 0U
                                                               : 
                                                              ((7U 
                                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                                ? 0U
                                                                : 
                                                               ((6U 
                                                                 == (IData)(this->__PVT__muladdc__DOT__i))
                                                                 ? 0U
                                                                 : 
                                                                ((5U 
                                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                                  ? 0U
                                                                  : 
                                                                 ((4U 
                                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                                   ? 0U
                                                                   : 
                                                                  ((3U 
                                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                                    ? 0U
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                                     ? 0U
                                                                     : 
                                                                    ((1U 
                                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                                      ? 0U
                                                                      : 1U))))))))))))))))))));
}

VL_INLINE_OPT void VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_3___T__103(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_3___T__103\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[7U] 
                                                << 0x10U) 
                                               | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[6U] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[5U] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[4U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[3U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[2U] 
                                                             << 0x10U) 
                                                            | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[1U] 
                                                               << 0x10U) 
                                                              | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0U]))))))))))))));
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & (
                                                   (0x19U 
                                                    == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__muladdc_io_v = ((0x19U != (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc_io_q = ((0x19U == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                  ? 0U : ((0x19U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? this->__PVT__muladdc__DOT__sum
                                           : 0U));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xcU] 
                                                   << 0x10U) 
                                                  | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xbU] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xaU] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[9U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[8U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? 0U : 
                                           ((0x17U 
                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                             ? 0U : 
                                            ((0x16U 
                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                              ? 0U : 
                                             ((0x15U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? 0U
                                               : (IData)(this->__PVT__muladdc__DOT___GEN_45))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

void VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_3___T__227(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_3___T__227\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & (
                                                   (0x19U 
                                                    == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__muladdc_io_v = ((0x19U != (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc_io_q = ((0x19U == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                  ? 0U : ((0x19U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? this->__PVT__muladdc__DOT__sum
                                           : 0U));
    this->__PVT__muladdc__DOT___GEN_45 = ((0x14U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? 0U : (
                                                   (0x13U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 0U
                                                    : 
                                                   ((0x12U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0x11U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 0U
                                                      : 
                                                     ((0x10U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 0U
                                                       : 
                                                      ((0xfU 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 0U
                                                        : 
                                                       ((0xeU 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 0U
                                                         : 
                                                        ((0xdU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 0U
                                                          : 
                                                         ((0xcU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 0U
                                                           : 
                                                          ((0xbU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 0U
                                                            : 
                                                           ((0xaU 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 0U
                                                             : 
                                                            ((9U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 0U
                                                              : 
                                                             ((8U 
                                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                                               ? 0U
                                                               : 
                                                              ((7U 
                                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                                ? 0U
                                                                : 
                                                               ((6U 
                                                                 == (IData)(this->__PVT__muladdc__DOT__i))
                                                                 ? 0U
                                                                 : 
                                                                ((5U 
                                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                                  ? 0U
                                                                  : 
                                                                 ((4U 
                                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                                   ? 0U
                                                                   : 
                                                                  ((3U 
                                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                                    ? 0U
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                                     ? 0U
                                                                     : 
                                                                    ((1U 
                                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                                      ? 0U
                                                                      : 1U))))))))))))))))))));
}

void VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_3___T__307(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_3___T__307\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[7U] 
                                                << 0x10U) 
                                               | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[6U] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[5U] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[4U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[3U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[2U] 
                                                             << 0x10U) 
                                                            | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[1U] 
                                                               << 0x10U) 
                                                              | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0U]))))))))))))));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xcU] 
                                                   << 0x10U) 
                                                  | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xbU] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[0xaU] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[9U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[8U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_2.io_d_out[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? 0U : 
                                           ((0x17U 
                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                             ? 0U : 
                                            ((0x16U 
                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                              ? 0U : 
                                             ((0x15U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? 0U
                                               : (IData)(this->__PVT__muladdc__DOT___GEN_45))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

VL_INLINE_OPT void VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_5___T__33(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_5___T__33\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT__sum = ((IData)(vlTOPp->reset)
                                       ? 0U : (IData)(
                                                      ((0x19U 
                                                        == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                        ? this->__PVT__muladdc__DOT___T_51
                                                        : 
                                                       ((0x19U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? VL_ULL(0)
                                                         : 
                                                        ((0U 
                                                          != (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? this->__PVT__muladdc__DOT___T_51
                                                          : VL_ULL(0))))));
    this->__PVT__muladdc__DOT__i = ((IData)(vlTOPp->reset)
                                     ? 0U : (0x1fU 
                                             & (IData)(this->__PVT__muladdc__DOT___GEN_57)));
    this->__PVT__muladdc__DOT___GEN_45 = ((0x14U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? 0U : (
                                                   (0x13U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 0U
                                                    : 
                                                   ((0x12U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0x11U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 0U
                                                      : 
                                                     ((0x10U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 0U
                                                       : 
                                                      ((0xfU 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 0U
                                                        : 
                                                       ((0xeU 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 0U
                                                         : 
                                                        ((0xdU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 0U
                                                          : 
                                                         ((0xcU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 0U
                                                           : 
                                                          ((0xbU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 0U
                                                            : 
                                                           ((0xaU 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 0U
                                                             : 
                                                            ((9U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 0U
                                                              : 
                                                             ((8U 
                                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                                               ? 0U
                                                               : 
                                                              ((7U 
                                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                                ? 0U
                                                                : 
                                                               ((6U 
                                                                 == (IData)(this->__PVT__muladdc__DOT__i))
                                                                 ? 0U
                                                                 : 
                                                                ((5U 
                                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                                  ? 0U
                                                                  : 
                                                                 ((4U 
                                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                                   ? 0U
                                                                   : 
                                                                  ((3U 
                                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                                    ? 0U
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                                     ? 0U
                                                                     : 
                                                                    ((1U 
                                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                                      ? 0U
                                                                      : 2U))))))))))))))))))));
}

VL_INLINE_OPT void VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_5___T__119(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_5___T__119\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[7U] 
                                                << 0x10U) 
                                               | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[6U] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[5U] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[4U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[3U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[2U] 
                                                             << 0x10U) 
                                                            | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[1U] 
                                                               << 0x10U) 
                                                              | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0U]))))))))))))));
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & (
                                                   (0x19U 
                                                    == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__muladdc_io_v = ((0x19U != (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc_io_q = ((0x19U == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                  ? 0U : ((0x19U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? this->__PVT__muladdc__DOT__sum
                                           : 0U));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xcU] 
                                                   << 0x10U) 
                                                  | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xbU] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xaU] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[9U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[8U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? 0U : 
                                           ((0x17U 
                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                             ? 0U : 
                                            ((0x16U 
                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                              ? 0U : 
                                             ((0x15U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? 0U
                                               : (IData)(this->__PVT__muladdc__DOT___GEN_45))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

void VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_5___T__243(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_5___T__243\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & (
                                                   (0x19U 
                                                    == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__muladdc_io_v = ((0x19U != (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc_io_q = ((0x19U == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                  ? 0U : ((0x19U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? this->__PVT__muladdc__DOT__sum
                                           : 0U));
    this->__PVT__muladdc__DOT___GEN_45 = ((0x14U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? 0U : (
                                                   (0x13U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 0U
                                                    : 
                                                   ((0x12U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0x11U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 0U
                                                      : 
                                                     ((0x10U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 0U
                                                       : 
                                                      ((0xfU 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 0U
                                                        : 
                                                       ((0xeU 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 0U
                                                         : 
                                                        ((0xdU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 0U
                                                          : 
                                                         ((0xcU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 0U
                                                           : 
                                                          ((0xbU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 0U
                                                            : 
                                                           ((0xaU 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 0U
                                                             : 
                                                            ((9U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 0U
                                                              : 
                                                             ((8U 
                                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                                               ? 0U
                                                               : 
                                                              ((7U 
                                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                                ? 0U
                                                                : 
                                                               ((6U 
                                                                 == (IData)(this->__PVT__muladdc__DOT__i))
                                                                 ? 0U
                                                                 : 
                                                                ((5U 
                                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                                  ? 0U
                                                                  : 
                                                                 ((4U 
                                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                                   ? 0U
                                                                   : 
                                                                  ((3U 
                                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                                    ? 0U
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                                     ? 0U
                                                                     : 
                                                                    ((1U 
                                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                                      ? 0U
                                                                      : 2U))))))))))))))))))));
}

void VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_5___T__323(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_5___T__323\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[7U] 
                                                << 0x10U) 
                                               | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[6U] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[5U] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[4U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[3U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[2U] 
                                                             << 0x10U) 
                                                            | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[1U] 
                                                               << 0x10U) 
                                                              | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0U]))))))))))))));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xcU] 
                                                   << 0x10U) 
                                                  | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xbU] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[0xaU] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[9U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[8U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_4.io_d_out[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? 0U : 
                                           ((0x17U 
                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                             ? 0U : 
                                            ((0x16U 
                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                              ? 0U : 
                                             ((0x15U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? 0U
                                               : (IData)(this->__PVT__muladdc__DOT___GEN_45))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

VL_INLINE_OPT void VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_7___T__49(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_7___T__49\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT__sum = ((IData)(vlTOPp->reset)
                                       ? 0U : (IData)(
                                                      ((0x19U 
                                                        == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                        ? this->__PVT__muladdc__DOT___T_51
                                                        : 
                                                       ((0x19U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? VL_ULL(0)
                                                         : 
                                                        ((0U 
                                                          != (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? this->__PVT__muladdc__DOT___T_51
                                                          : VL_ULL(0))))));
    this->__PVT__muladdc__DOT__i = ((IData)(vlTOPp->reset)
                                     ? 0U : (0x1fU 
                                             & (IData)(this->__PVT__muladdc__DOT___GEN_57)));
    this->__PVT__muladdc__DOT___GEN_45 = ((0x14U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? 0U : (
                                                   (0x13U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 0U
                                                    : 
                                                   ((0x12U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0x11U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 0U
                                                      : 
                                                     ((0x10U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 0U
                                                       : 
                                                      ((0xfU 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 0U
                                                        : 
                                                       ((0xeU 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 0U
                                                         : 
                                                        ((0xdU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 0U
                                                          : 
                                                         ((0xcU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 0U
                                                           : 
                                                          ((0xbU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 0U
                                                            : 
                                                           ((0xaU 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 0U
                                                             : 
                                                            ((9U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 0U
                                                              : 
                                                             ((8U 
                                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                                               ? 0U
                                                               : 
                                                              ((7U 
                                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                                ? 0U
                                                                : 
                                                               ((6U 
                                                                 == (IData)(this->__PVT__muladdc__DOT__i))
                                                                 ? 0U
                                                                 : 
                                                                ((5U 
                                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                                  ? 0U
                                                                  : 
                                                                 ((4U 
                                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                                   ? 0U
                                                                   : 
                                                                  ((3U 
                                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                                    ? 0U
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                                     ? 0U
                                                                     : 
                                                                    ((1U 
                                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                                      ? 0U
                                                                      : 3U))))))))))))))))))));
}

VL_INLINE_OPT void VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_7___T__135(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_7___T__135\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[7U] 
                                                << 0x10U) 
                                               | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[6U] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[5U] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[4U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[3U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[2U] 
                                                             << 0x10U) 
                                                            | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[1U] 
                                                               << 0x10U) 
                                                              | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0U]))))))))))))));
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & (
                                                   (0x19U 
                                                    == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__muladdc_io_v = ((0x19U != (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc_io_q = ((0x19U == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                  ? 0U : ((0x19U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? this->__PVT__muladdc__DOT__sum
                                           : 0U));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xcU] 
                                                   << 0x10U) 
                                                  | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xbU] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xaU] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[9U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[8U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? 0U : 
                                           ((0x17U 
                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                             ? 0U : 
                                            ((0x16U 
                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                              ? 0U : 
                                             ((0x15U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? 0U
                                               : (IData)(this->__PVT__muladdc__DOT___GEN_45))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

void VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_7___T__259(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_7___T__259\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & (
                                                   (0x19U 
                                                    == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__muladdc_io_v = ((0x19U != (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc_io_q = ((0x19U == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                  ? 0U : ((0x19U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? this->__PVT__muladdc__DOT__sum
                                           : 0U));
    this->__PVT__muladdc__DOT___GEN_45 = ((0x14U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? 0U : (
                                                   (0x13U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 0U
                                                    : 
                                                   ((0x12U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0x11U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 0U
                                                      : 
                                                     ((0x10U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 0U
                                                       : 
                                                      ((0xfU 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 0U
                                                        : 
                                                       ((0xeU 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 0U
                                                         : 
                                                        ((0xdU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 0U
                                                          : 
                                                         ((0xcU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 0U
                                                           : 
                                                          ((0xbU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 0U
                                                            : 
                                                           ((0xaU 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 0U
                                                             : 
                                                            ((9U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 0U
                                                              : 
                                                             ((8U 
                                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                                               ? 0U
                                                               : 
                                                              ((7U 
                                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                                ? 0U
                                                                : 
                                                               ((6U 
                                                                 == (IData)(this->__PVT__muladdc__DOT__i))
                                                                 ? 0U
                                                                 : 
                                                                ((5U 
                                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                                  ? 0U
                                                                  : 
                                                                 ((4U 
                                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                                   ? 0U
                                                                   : 
                                                                  ((3U 
                                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                                    ? 0U
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                                     ? 0U
                                                                     : 
                                                                    ((1U 
                                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                                      ? 0U
                                                                      : 3U))))))))))))))))))));
}

void VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_7___T__339(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_7___T__339\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[7U] 
                                                << 0x10U) 
                                               | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[6U] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[5U] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[4U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[3U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[2U] 
                                                             << 0x10U) 
                                                            | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[1U] 
                                                               << 0x10U) 
                                                              | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0U]))))))))))))));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xcU] 
                                                   << 0x10U) 
                                                  | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xbU] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[0xaU] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[9U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[8U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_6.io_d_out[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? 0U : 
                                           ((0x17U 
                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                             ? 0U : 
                                            ((0x16U 
                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                              ? 0U : 
                                             ((0x15U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? 0U
                                               : (IData)(this->__PVT__muladdc__DOT___GEN_45))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

VL_INLINE_OPT void VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_9___T__65(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_9___T__65\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT__sum = ((IData)(vlTOPp->reset)
                                       ? 0U : (IData)(
                                                      ((0x19U 
                                                        == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                        ? this->__PVT__muladdc__DOT___T_51
                                                        : 
                                                       ((0x19U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? VL_ULL(0)
                                                         : 
                                                        ((0U 
                                                          != (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? this->__PVT__muladdc__DOT___T_51
                                                          : VL_ULL(0))))));
    this->__PVT__muladdc__DOT__i = ((IData)(vlTOPp->reset)
                                     ? 0U : (0x1fU 
                                             & (IData)(this->__PVT__muladdc__DOT___GEN_57)));
    this->__PVT__muladdc__DOT___GEN_45 = ((0x14U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? 0U : (
                                                   (0x13U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 0U
                                                    : 
                                                   ((0x12U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0x11U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 0U
                                                      : 
                                                     ((0x10U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 0U
                                                       : 
                                                      ((0xfU 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 0U
                                                        : 
                                                       ((0xeU 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 0U
                                                         : 
                                                        ((0xdU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 0U
                                                          : 
                                                         ((0xcU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 0U
                                                           : 
                                                          ((0xbU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 0U
                                                            : 
                                                           ((0xaU 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 0U
                                                             : 
                                                            ((9U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 0U
                                                              : 
                                                             ((8U 
                                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                                               ? 0U
                                                               : 
                                                              ((7U 
                                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                                ? 0U
                                                                : 
                                                               ((6U 
                                                                 == (IData)(this->__PVT__muladdc__DOT__i))
                                                                 ? 0U
                                                                 : 
                                                                ((5U 
                                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                                  ? 0U
                                                                  : 
                                                                 ((4U 
                                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                                   ? 0U
                                                                   : 
                                                                  ((3U 
                                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                                    ? 0U
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                                     ? 0U
                                                                     : 
                                                                    ((1U 
                                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                                      ? 0U
                                                                      : 4U))))))))))))))))))));
}

VL_INLINE_OPT void VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_9___T__151(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_9___T__151\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[7U] 
                                                << 0x10U) 
                                               | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[6U] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[5U] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[4U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[3U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[2U] 
                                                             << 0x10U) 
                                                            | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[1U] 
                                                               << 0x10U) 
                                                              | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0U]))))))))))))));
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & (
                                                   (0x19U 
                                                    == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__muladdc_io_v = ((0x19U != (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc_io_q = ((0x19U == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                  ? 0U : ((0x19U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? this->__PVT__muladdc__DOT__sum
                                           : 0U));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xcU] 
                                                   << 0x10U) 
                                                  | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xbU] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xaU] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[9U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[8U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? 0U : 
                                           ((0x17U 
                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                             ? 0U : 
                                            ((0x16U 
                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                              ? 0U : 
                                             ((0x15U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? 0U
                                               : (IData)(this->__PVT__muladdc__DOT___GEN_45))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

void VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_9___T__275(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_9___T__275\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & (
                                                   (0x19U 
                                                    == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__muladdc_io_v = ((0x19U != (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc_io_q = ((0x19U == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                  ? 0U : ((0x19U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? this->__PVT__muladdc__DOT__sum
                                           : 0U));
    this->__PVT__muladdc__DOT___GEN_45 = ((0x14U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? 0U : (
                                                   (0x13U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 0U
                                                    : 
                                                   ((0x12U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0x11U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 0U
                                                      : 
                                                     ((0x10U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 0U
                                                       : 
                                                      ((0xfU 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 0U
                                                        : 
                                                       ((0xeU 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 0U
                                                         : 
                                                        ((0xdU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 0U
                                                          : 
                                                         ((0xcU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 0U
                                                           : 
                                                          ((0xbU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 0U
                                                            : 
                                                           ((0xaU 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 0U
                                                             : 
                                                            ((9U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 0U
                                                              : 
                                                             ((8U 
                                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                                               ? 0U
                                                               : 
                                                              ((7U 
                                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                                ? 0U
                                                                : 
                                                               ((6U 
                                                                 == (IData)(this->__PVT__muladdc__DOT__i))
                                                                 ? 0U
                                                                 : 
                                                                ((5U 
                                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                                  ? 0U
                                                                  : 
                                                                 ((4U 
                                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                                   ? 0U
                                                                   : 
                                                                  ((3U 
                                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                                    ? 0U
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                                     ? 0U
                                                                     : 
                                                                    ((1U 
                                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                                      ? 0U
                                                                      : 4U))))))))))))))))))));
}

void VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_9___T__355(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_9___T__355\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[7U] 
                                                << 0x10U) 
                                               | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[6U] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[5U] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[4U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[3U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[2U] 
                                                             << 0x10U) 
                                                            | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[1U] 
                                                               << 0x10U) 
                                                              | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0U]))))))))))))));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xcU] 
                                                   << 0x10U) 
                                                  | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xbU] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[0xaU] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[9U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[8U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_8.io_d_out[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? 0U : 
                                           ((0x17U 
                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                             ? 0U : 
                                            ((0x16U 
                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                              ? 0U : 
                                             ((0x15U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? 0U
                                               : (IData)(this->__PVT__muladdc__DOT___GEN_45))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

VL_INLINE_OPT void VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_11___T__81(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_11___T__81\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT__sum = ((IData)(vlTOPp->reset)
                                       ? 0U : (IData)(
                                                      ((0x19U 
                                                        == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                        ? this->__PVT__muladdc__DOT___T_51
                                                        : 
                                                       ((0x19U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? VL_ULL(0)
                                                         : 
                                                        ((0U 
                                                          != (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? this->__PVT__muladdc__DOT___T_51
                                                          : VL_ULL(0))))));
    this->__PVT__muladdc__DOT__i = ((IData)(vlTOPp->reset)
                                     ? 0U : (0x1fU 
                                             & (IData)(this->__PVT__muladdc__DOT___GEN_57)));
    this->__PVT__muladdc__DOT___GEN_45 = ((0x14U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? 0U : (
                                                   (0x13U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 0U
                                                    : 
                                                   ((0x12U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0x11U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 0U
                                                      : 
                                                     ((0x10U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 0U
                                                       : 
                                                      ((0xfU 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 0U
                                                        : 
                                                       ((0xeU 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 0U
                                                         : 
                                                        ((0xdU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 0U
                                                          : 
                                                         ((0xcU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 0U
                                                           : 
                                                          ((0xbU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 0U
                                                            : 
                                                           ((0xaU 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 0U
                                                             : 
                                                            ((9U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 0U
                                                              : 
                                                             ((8U 
                                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                                               ? 0U
                                                               : 
                                                              ((7U 
                                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                                ? 0U
                                                                : 
                                                               ((6U 
                                                                 == (IData)(this->__PVT__muladdc__DOT__i))
                                                                 ? 0U
                                                                 : 
                                                                ((5U 
                                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                                  ? 0U
                                                                  : 
                                                                 ((4U 
                                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                                   ? 0U
                                                                   : 
                                                                  ((3U 
                                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                                    ? 0U
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                                     ? 0U
                                                                     : 
                                                                    ((1U 
                                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                                      ? 0U
                                                                      : 5U))))))))))))))))))));
}

VL_INLINE_OPT void VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_11___T__167(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_sequent__TOP__Top__DOT__t2__DOT___T_11___T__167\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[7U] 
                                                << 0x10U) 
                                               | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[6U] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[5U] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[4U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[3U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[2U] 
                                                             << 0x10U) 
                                                            | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[1U] 
                                                               << 0x10U) 
                                                              | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0U]))))))))))))));
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & (
                                                   (0x19U 
                                                    == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__muladdc_io_v = ((0x19U != (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc_io_q = ((0x19U == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                  ? 0U : ((0x19U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? this->__PVT__muladdc__DOT__sum
                                           : 0U));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xcU] 
                                                   << 0x10U) 
                                                  | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xbU] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xaU] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[9U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[8U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? 0U : 
                                           ((0x17U 
                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                             ? 0U : 
                                            ((0x16U 
                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                              ? 0U : 
                                             ((0x15U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? 0U
                                               : (IData)(this->__PVT__muladdc__DOT___GEN_45))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

void VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_11___T__291(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_11___T__291\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_57 = (0x3fU & (
                                                   (0x19U 
                                                    == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                                    ? 
                                                   ((IData)(1U) 
                                                    + (IData)(this->__PVT__muladdc__DOT__i))
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0U 
                                                      != (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(this->__PVT__muladdc__DOT__i))
                                                      : 0U))));
    this->__PVT__muladdc_io_v = ((0x19U != (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter)) 
                                 & (0x19U == (IData)(this->__PVT__muladdc__DOT__i)));
    this->__PVT__muladdc_io_q = ((0x19U == (IData)(vlTOPp->Top__DOT__t2__DOT__C1_counter))
                                  ? 0U : ((0x19U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? this->__PVT__muladdc__DOT__sum
                                           : 0U));
    this->__PVT__muladdc__DOT___GEN_45 = ((0x14U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? 0U : (
                                                   (0x13U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 0U
                                                    : 
                                                   ((0x12U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 0U
                                                     : 
                                                    ((0x11U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 0U
                                                      : 
                                                     ((0x10U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 0U
                                                       : 
                                                      ((0xfU 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 0U
                                                        : 
                                                       ((0xeU 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 0U
                                                         : 
                                                        ((0xdU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 0U
                                                          : 
                                                         ((0xcU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 0U
                                                           : 
                                                          ((0xbU 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 0U
                                                            : 
                                                           ((0xaU 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 0U
                                                             : 
                                                            ((9U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 0U
                                                              : 
                                                             ((8U 
                                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                                               ? 0U
                                                               : 
                                                              ((7U 
                                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                                ? 0U
                                                                : 
                                                               ((6U 
                                                                 == (IData)(this->__PVT__muladdc__DOT__i))
                                                                 ? 0U
                                                                 : 
                                                                ((5U 
                                                                  == (IData)(this->__PVT__muladdc__DOT__i))
                                                                  ? 0U
                                                                  : 
                                                                 ((4U 
                                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                                   ? 0U
                                                                   : 
                                                                  ((3U 
                                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                                    ? 0U
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                                     ? 0U
                                                                     : 
                                                                    ((1U 
                                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                                      ? 0U
                                                                      : 5U))))))))))))))))))));
}

void VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_11___T__371(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_settle__TOP__Top__DOT__t2__DOT___T_11___T__371\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__muladdc__DOT___GEN_13 = (0xffffU & 
                                          ((0xdU == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[7U] 
                                                << 0x10U) 
                                               | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[6U] 
                                                  >> 0x10U))
                                            : ((0xcU 
                                                == (IData)(this->__PVT__muladdc__DOT__i))
                                                ? vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[6U]
                                                : (
                                                   (0xbU 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[6U] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[5U] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[5U]
                                                     : 
                                                    ((9U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[5U] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[4U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((8U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[4U]
                                                       : 
                                                      ((7U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[4U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[3U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((6U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[3U]
                                                         : 
                                                        ((5U 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[3U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[2U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((4U 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[2U]
                                                           : 
                                                          ((3U 
                                                            == (IData)(this->__PVT__muladdc__DOT__i))
                                                            ? 
                                                           ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[2U] 
                                                             << 0x10U) 
                                                            | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[1U] 
                                                               >> 0x10U))
                                                            : 
                                                           ((2U 
                                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                                             ? 
                                                            vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[1U]
                                                             : 
                                                            ((1U 
                                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                                              ? 
                                                             ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[1U] 
                                                               << 0x10U) 
                                                              | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0U] 
                                                                 >> 0x10U))
                                                              : 
                                                             vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0U]))))))))))))));
    this->__PVT__muladdc__DOT___T_50 = ((0xffffU & 
                                         ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                           ? vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xcU]
                                           : ((0x17U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? ((
                                                   vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xcU] 
                                                   << 0x10U) 
                                                  | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xbU] 
                                                     >> 0x10U))
                                               : ((0x16U 
                                                   == (IData)(this->__PVT__muladdc__DOT__i))
                                                   ? 
                                                  vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xbU]
                                                   : 
                                                  ((0x15U 
                                                    == (IData)(this->__PVT__muladdc__DOT__i))
                                                    ? 
                                                   ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xbU] 
                                                     << 0x10U) 
                                                    | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xaU] 
                                                       >> 0x10U))
                                                    : 
                                                   ((0x14U 
                                                     == (IData)(this->__PVT__muladdc__DOT__i))
                                                     ? 
                                                    vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xaU]
                                                     : 
                                                    ((0x13U 
                                                      == (IData)(this->__PVT__muladdc__DOT__i))
                                                      ? 
                                                     ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[0xaU] 
                                                       << 0x10U) 
                                                      | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[9U] 
                                                         >> 0x10U))
                                                      : 
                                                     ((0x12U 
                                                       == (IData)(this->__PVT__muladdc__DOT__i))
                                                       ? 
                                                      vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[9U]
                                                       : 
                                                      ((0x11U 
                                                        == (IData)(this->__PVT__muladdc__DOT__i))
                                                        ? 
                                                       ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[9U] 
                                                         << 0x10U) 
                                                        | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[8U] 
                                                           >> 0x10U))
                                                        : 
                                                       ((0x10U 
                                                         == (IData)(this->__PVT__muladdc__DOT__i))
                                                         ? 
                                                        vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[8U]
                                                         : 
                                                        ((0xfU 
                                                          == (IData)(this->__PVT__muladdc__DOT__i))
                                                          ? 
                                                         ((vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[8U] 
                                                           << 0x10U) 
                                                          | (vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[7U] 
                                                             >> 0x10U))
                                                          : 
                                                         ((0xeU 
                                                           == (IData)(this->__PVT__muladdc__DOT__i))
                                                           ? 
                                                          vlSymsp->TOP__Top__DOT__t2__DOT___T_10.io_d_out[7U]
                                                           : (IData)(this->__PVT__muladdc__DOT___GEN_13))))))))))))) 
                                        * ((0x18U == (IData)(this->__PVT__muladdc__DOT__i))
                                            ? 0U : 
                                           ((0x17U 
                                             == (IData)(this->__PVT__muladdc__DOT__i))
                                             ? 0U : 
                                            ((0x16U 
                                              == (IData)(this->__PVT__muladdc__DOT__i))
                                              ? 0U : 
                                             ((0x15U 
                                               == (IData)(this->__PVT__muladdc__DOT__i))
                                               ? 0U
                                               : (IData)(this->__PVT__muladdc__DOT___GEN_45))))));
    this->__PVT__muladdc__DOT___T_51 = (VL_ULL(0x1ffffffff) 
                                        & ((QData)((IData)(this->__PVT__muladdc__DOT__sum)) 
                                           + (QData)((IData)(this->__PVT__muladdc__DOT___T_50))));
}

void VTop_Node::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+            VTop_Node::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(400, io_d_in);
    VL_RAND_RESET_W(400, io_w);
    io_rdy = VL_RAND_RESET_I(1);
    io_bias = VL_RAND_RESET_I(16);
    io_d_out = VL_RAND_RESET_I(16);
    io_v = VL_RAND_RESET_I(1);
    __PVT__muladdc_io_q = VL_RAND_RESET_I(32);
    __PVT__muladdc_io_v = VL_RAND_RESET_I(1);
    __PVT__muladdc__DOT__sum = VL_RAND_RESET_I(32);
    __PVT__muladdc__DOT__i = VL_RAND_RESET_I(5);
    __PVT__muladdc__DOT___GEN_13 = VL_RAND_RESET_I(16);
    __PVT__muladdc__DOT___GEN_38 = VL_RAND_RESET_I(16);
    __PVT__muladdc__DOT___GEN_45 = VL_RAND_RESET_I(16);
    __PVT__muladdc__DOT___T_50 = VL_RAND_RESET_I(32);
    __PVT__muladdc__DOT___T_51 = VL_RAND_RESET_Q(33);
    __PVT__muladdc__DOT___GEN_56 = VL_RAND_RESET_Q(33);
    __PVT__muladdc__DOT___GEN_57 = VL_RAND_RESET_I(6);
    __PVT__act__DOT___T_2 = VL_RAND_RESET_I(17);
}
