// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VTop.h for the primary calling header

#include "VTop_ShiftRegister.h"
#include "VTop__Syms.h"

//==========

VL_CTOR_IMP(VTop_ShiftRegister) {
    // Reset internal values
    // Reset structure values
    _ctor_var_reset();
}

void VTop_ShiftRegister::__Vconfigure(VTop__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
}

VTop_ShiftRegister::~VTop_ShiftRegister() {
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__t2__DOT___T__1(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__t2__DOT___T__1\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__t1__DOT___T__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__t1__DOT___T__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__t1__DOT___T__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__t1__DOT___T__DOT__maxpool__DOT___GEN_1));
        }
    }
    this->io_d_out[0U] = ((0xffff0000U & ((IData)(this->__PVT___T_23) 
                                          << 0x10U)) 
                          | (IData)(this->__PVT___T_24));
    this->io_d_out[1U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_22)) 
                                      | ((IData)(this->__PVT___T_23) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_21) 
                                            << 0x10U)));
    this->io_d_out[2U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_20)) 
                                      | ((IData)(this->__PVT___T_21) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_19) 
                                            << 0x10U)));
    this->io_d_out[3U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_18)) 
                                      | ((IData)(this->__PVT___T_19) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_17) 
                                            << 0x10U)));
    this->io_d_out[4U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_16)) 
                                      | ((IData)(this->__PVT___T_17) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_15) 
                                            << 0x10U)));
    this->io_d_out[5U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_14)) 
                                      | ((IData)(this->__PVT___T_15) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_13) 
                                            << 0x10U)));
    this->io_d_out[6U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_12)) 
                                      | ((IData)(this->__PVT___T_13) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_11) 
                                            << 0x10U)));
    this->io_d_out[7U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_10)) 
                                      | ((IData)(this->__PVT___T_11) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_9) 
                                            << 0x10U)));
    this->io_d_out[8U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_8)) 
                                      | ((IData)(this->__PVT___T_9) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_7) 
                                            << 0x10U)));
    this->io_d_out[9U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_6)) 
                                      | ((IData)(this->__PVT___T_7) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_5) 
                                            << 0x10U)));
    this->io_d_out[0xaU] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_4)) 
                                        | ((IData)(this->__PVT___T_5) 
                                           >> 0x10U))) 
                            | (0xffff0000U & ((IData)(
                                                      (((QData)((IData)(
                                                                        (((IData)(this->__PVT___T) 
                                                                          << 0x10U) 
                                                                         | (IData)(this->__PVT___T_1)))) 
                                                        << 0x20U) 
                                                       | (QData)((IData)(
                                                                         (((IData)(this->__PVT___T_2) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_3)))))) 
                                              << 0x10U)));
    this->io_d_out[0xbU] = ((0xffffU & ((IData)((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3)))))) 
                                        >> 0x10U)) 
                            | (0xffff0000U & ((IData)(
                                                      ((((QData)((IData)(
                                                                         (((IData)(this->__PVT___T) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_1)))) 
                                                         << 0x20U) 
                                                        | (QData)((IData)(
                                                                          (((IData)(this->__PVT___T_2) 
                                                                            << 0x10U) 
                                                                           | (IData)(this->__PVT___T_3))))) 
                                                       >> 0x20U)) 
                                              << 0x10U)));
    this->io_d_out[0xcU] = (0xffffU & ((IData)(((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3))))) 
                                                >> 0x20U)) 
                                       >> 0x10U));
}

void VTop_ShiftRegister::_settle__TOP__Top__DOT__t2__DOT___T__23(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_settle__TOP__Top__DOT__t2__DOT___T__23\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->io_d_out[0U] = ((0xffff0000U & ((IData)(this->__PVT___T_23) 
                                          << 0x10U)) 
                          | (IData)(this->__PVT___T_24));
    this->io_d_out[1U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_22)) 
                                      | ((IData)(this->__PVT___T_23) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_21) 
                                            << 0x10U)));
    this->io_d_out[2U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_20)) 
                                      | ((IData)(this->__PVT___T_21) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_19) 
                                            << 0x10U)));
    this->io_d_out[3U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_18)) 
                                      | ((IData)(this->__PVT___T_19) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_17) 
                                            << 0x10U)));
    this->io_d_out[4U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_16)) 
                                      | ((IData)(this->__PVT___T_17) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_15) 
                                            << 0x10U)));
    this->io_d_out[5U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_14)) 
                                      | ((IData)(this->__PVT___T_15) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_13) 
                                            << 0x10U)));
    this->io_d_out[6U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_12)) 
                                      | ((IData)(this->__PVT___T_13) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_11) 
                                            << 0x10U)));
    this->io_d_out[7U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_10)) 
                                      | ((IData)(this->__PVT___T_11) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_9) 
                                            << 0x10U)));
    this->io_d_out[8U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_8)) 
                                      | ((IData)(this->__PVT___T_9) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_7) 
                                            << 0x10U)));
    this->io_d_out[9U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_6)) 
                                      | ((IData)(this->__PVT___T_7) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_5) 
                                            << 0x10U)));
    this->io_d_out[0xaU] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_4)) 
                                        | ((IData)(this->__PVT___T_5) 
                                           >> 0x10U))) 
                            | (0xffff0000U & ((IData)(
                                                      (((QData)((IData)(
                                                                        (((IData)(this->__PVT___T) 
                                                                          << 0x10U) 
                                                                         | (IData)(this->__PVT___T_1)))) 
                                                        << 0x20U) 
                                                       | (QData)((IData)(
                                                                         (((IData)(this->__PVT___T_2) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_3)))))) 
                                              << 0x10U)));
    this->io_d_out[0xbU] = ((0xffffU & ((IData)((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3)))))) 
                                        >> 0x10U)) 
                            | (0xffff0000U & ((IData)(
                                                      ((((QData)((IData)(
                                                                         (((IData)(this->__PVT___T) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_1)))) 
                                                         << 0x20U) 
                                                        | (QData)((IData)(
                                                                          (((IData)(this->__PVT___T_2) 
                                                                            << 0x10U) 
                                                                           | (IData)(this->__PVT___T_3))))) 
                                                       >> 0x20U)) 
                                              << 0x10U)));
    this->io_d_out[0xcU] = (0xffffU & ((IData)(((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3))))) 
                                                >> 0x20U)) 
                                       >> 0x10U));
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__t2__DOT___T_2__18(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__t2__DOT___T_2__18\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__t1__DOT___T_1__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__t1__DOT___T_1__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__t1__DOT___T_1__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__t1__DOT___T_1__DOT__maxpool__DOT___GEN_1));
        }
    }
    this->io_d_out[0U] = ((0xffff0000U & ((IData)(this->__PVT___T_23) 
                                          << 0x10U)) 
                          | (IData)(this->__PVT___T_24));
    this->io_d_out[1U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_22)) 
                                      | ((IData)(this->__PVT___T_23) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_21) 
                                            << 0x10U)));
    this->io_d_out[2U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_20)) 
                                      | ((IData)(this->__PVT___T_21) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_19) 
                                            << 0x10U)));
    this->io_d_out[3U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_18)) 
                                      | ((IData)(this->__PVT___T_19) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_17) 
                                            << 0x10U)));
    this->io_d_out[4U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_16)) 
                                      | ((IData)(this->__PVT___T_17) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_15) 
                                            << 0x10U)));
    this->io_d_out[5U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_14)) 
                                      | ((IData)(this->__PVT___T_15) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_13) 
                                            << 0x10U)));
    this->io_d_out[6U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_12)) 
                                      | ((IData)(this->__PVT___T_13) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_11) 
                                            << 0x10U)));
    this->io_d_out[7U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_10)) 
                                      | ((IData)(this->__PVT___T_11) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_9) 
                                            << 0x10U)));
    this->io_d_out[8U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_8)) 
                                      | ((IData)(this->__PVT___T_9) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_7) 
                                            << 0x10U)));
    this->io_d_out[9U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_6)) 
                                      | ((IData)(this->__PVT___T_7) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_5) 
                                            << 0x10U)));
    this->io_d_out[0xaU] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_4)) 
                                        | ((IData)(this->__PVT___T_5) 
                                           >> 0x10U))) 
                            | (0xffff0000U & ((IData)(
                                                      (((QData)((IData)(
                                                                        (((IData)(this->__PVT___T) 
                                                                          << 0x10U) 
                                                                         | (IData)(this->__PVT___T_1)))) 
                                                        << 0x20U) 
                                                       | (QData)((IData)(
                                                                         (((IData)(this->__PVT___T_2) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_3)))))) 
                                              << 0x10U)));
    this->io_d_out[0xbU] = ((0xffffU & ((IData)((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3)))))) 
                                        >> 0x10U)) 
                            | (0xffff0000U & ((IData)(
                                                      ((((QData)((IData)(
                                                                         (((IData)(this->__PVT___T) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_1)))) 
                                                         << 0x20U) 
                                                        | (QData)((IData)(
                                                                          (((IData)(this->__PVT___T_2) 
                                                                            << 0x10U) 
                                                                           | (IData)(this->__PVT___T_3))))) 
                                                       >> 0x20U)) 
                                              << 0x10U)));
    this->io_d_out[0xcU] = (0xffffU & ((IData)(((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3))))) 
                                                >> 0x20U)) 
                                       >> 0x10U));
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__t2__DOT___T_4__19(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__t2__DOT___T_4__19\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__t1__DOT___T_2__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__t1__DOT___T_2__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__t1__DOT___T_2__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__t1__DOT___T_2__DOT__maxpool__DOT___GEN_1));
        }
    }
    this->io_d_out[0U] = ((0xffff0000U & ((IData)(this->__PVT___T_23) 
                                          << 0x10U)) 
                          | (IData)(this->__PVT___T_24));
    this->io_d_out[1U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_22)) 
                                      | ((IData)(this->__PVT___T_23) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_21) 
                                            << 0x10U)));
    this->io_d_out[2U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_20)) 
                                      | ((IData)(this->__PVT___T_21) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_19) 
                                            << 0x10U)));
    this->io_d_out[3U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_18)) 
                                      | ((IData)(this->__PVT___T_19) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_17) 
                                            << 0x10U)));
    this->io_d_out[4U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_16)) 
                                      | ((IData)(this->__PVT___T_17) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_15) 
                                            << 0x10U)));
    this->io_d_out[5U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_14)) 
                                      | ((IData)(this->__PVT___T_15) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_13) 
                                            << 0x10U)));
    this->io_d_out[6U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_12)) 
                                      | ((IData)(this->__PVT___T_13) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_11) 
                                            << 0x10U)));
    this->io_d_out[7U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_10)) 
                                      | ((IData)(this->__PVT___T_11) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_9) 
                                            << 0x10U)));
    this->io_d_out[8U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_8)) 
                                      | ((IData)(this->__PVT___T_9) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_7) 
                                            << 0x10U)));
    this->io_d_out[9U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_6)) 
                                      | ((IData)(this->__PVT___T_7) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_5) 
                                            << 0x10U)));
    this->io_d_out[0xaU] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_4)) 
                                        | ((IData)(this->__PVT___T_5) 
                                           >> 0x10U))) 
                            | (0xffff0000U & ((IData)(
                                                      (((QData)((IData)(
                                                                        (((IData)(this->__PVT___T) 
                                                                          << 0x10U) 
                                                                         | (IData)(this->__PVT___T_1)))) 
                                                        << 0x20U) 
                                                       | (QData)((IData)(
                                                                         (((IData)(this->__PVT___T_2) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_3)))))) 
                                              << 0x10U)));
    this->io_d_out[0xbU] = ((0xffffU & ((IData)((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3)))))) 
                                        >> 0x10U)) 
                            | (0xffff0000U & ((IData)(
                                                      ((((QData)((IData)(
                                                                         (((IData)(this->__PVT___T) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_1)))) 
                                                         << 0x20U) 
                                                        | (QData)((IData)(
                                                                          (((IData)(this->__PVT___T_2) 
                                                                            << 0x10U) 
                                                                           | (IData)(this->__PVT___T_3))))) 
                                                       >> 0x20U)) 
                                              << 0x10U)));
    this->io_d_out[0xcU] = (0xffffU & ((IData)(((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3))))) 
                                                >> 0x20U)) 
                                       >> 0x10U));
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__t2__DOT___T_6__20(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__t2__DOT___T_6__20\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__t1__DOT___T_3__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__t1__DOT___T_3__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__t1__DOT___T_3__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__t1__DOT___T_3__DOT__maxpool__DOT___GEN_1));
        }
    }
    this->io_d_out[0U] = ((0xffff0000U & ((IData)(this->__PVT___T_23) 
                                          << 0x10U)) 
                          | (IData)(this->__PVT___T_24));
    this->io_d_out[1U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_22)) 
                                      | ((IData)(this->__PVT___T_23) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_21) 
                                            << 0x10U)));
    this->io_d_out[2U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_20)) 
                                      | ((IData)(this->__PVT___T_21) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_19) 
                                            << 0x10U)));
    this->io_d_out[3U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_18)) 
                                      | ((IData)(this->__PVT___T_19) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_17) 
                                            << 0x10U)));
    this->io_d_out[4U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_16)) 
                                      | ((IData)(this->__PVT___T_17) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_15) 
                                            << 0x10U)));
    this->io_d_out[5U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_14)) 
                                      | ((IData)(this->__PVT___T_15) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_13) 
                                            << 0x10U)));
    this->io_d_out[6U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_12)) 
                                      | ((IData)(this->__PVT___T_13) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_11) 
                                            << 0x10U)));
    this->io_d_out[7U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_10)) 
                                      | ((IData)(this->__PVT___T_11) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_9) 
                                            << 0x10U)));
    this->io_d_out[8U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_8)) 
                                      | ((IData)(this->__PVT___T_9) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_7) 
                                            << 0x10U)));
    this->io_d_out[9U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_6)) 
                                      | ((IData)(this->__PVT___T_7) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_5) 
                                            << 0x10U)));
    this->io_d_out[0xaU] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_4)) 
                                        | ((IData)(this->__PVT___T_5) 
                                           >> 0x10U))) 
                            | (0xffff0000U & ((IData)(
                                                      (((QData)((IData)(
                                                                        (((IData)(this->__PVT___T) 
                                                                          << 0x10U) 
                                                                         | (IData)(this->__PVT___T_1)))) 
                                                        << 0x20U) 
                                                       | (QData)((IData)(
                                                                         (((IData)(this->__PVT___T_2) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_3)))))) 
                                              << 0x10U)));
    this->io_d_out[0xbU] = ((0xffffU & ((IData)((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3)))))) 
                                        >> 0x10U)) 
                            | (0xffff0000U & ((IData)(
                                                      ((((QData)((IData)(
                                                                         (((IData)(this->__PVT___T) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_1)))) 
                                                         << 0x20U) 
                                                        | (QData)((IData)(
                                                                          (((IData)(this->__PVT___T_2) 
                                                                            << 0x10U) 
                                                                           | (IData)(this->__PVT___T_3))))) 
                                                       >> 0x20U)) 
                                              << 0x10U)));
    this->io_d_out[0xcU] = (0xffffU & ((IData)(((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3))))) 
                                                >> 0x20U)) 
                                       >> 0x10U));
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__t2__DOT___T_8__21(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__t2__DOT___T_8__21\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__t1__DOT___T_4__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__t1__DOT___T_4__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__t1__DOT___T_4__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__t1__DOT___T_4__DOT__maxpool__DOT___GEN_1));
        }
    }
    this->io_d_out[0U] = ((0xffff0000U & ((IData)(this->__PVT___T_23) 
                                          << 0x10U)) 
                          | (IData)(this->__PVT___T_24));
    this->io_d_out[1U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_22)) 
                                      | ((IData)(this->__PVT___T_23) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_21) 
                                            << 0x10U)));
    this->io_d_out[2U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_20)) 
                                      | ((IData)(this->__PVT___T_21) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_19) 
                                            << 0x10U)));
    this->io_d_out[3U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_18)) 
                                      | ((IData)(this->__PVT___T_19) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_17) 
                                            << 0x10U)));
    this->io_d_out[4U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_16)) 
                                      | ((IData)(this->__PVT___T_17) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_15) 
                                            << 0x10U)));
    this->io_d_out[5U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_14)) 
                                      | ((IData)(this->__PVT___T_15) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_13) 
                                            << 0x10U)));
    this->io_d_out[6U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_12)) 
                                      | ((IData)(this->__PVT___T_13) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_11) 
                                            << 0x10U)));
    this->io_d_out[7U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_10)) 
                                      | ((IData)(this->__PVT___T_11) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_9) 
                                            << 0x10U)));
    this->io_d_out[8U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_8)) 
                                      | ((IData)(this->__PVT___T_9) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_7) 
                                            << 0x10U)));
    this->io_d_out[9U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_6)) 
                                      | ((IData)(this->__PVT___T_7) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_5) 
                                            << 0x10U)));
    this->io_d_out[0xaU] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_4)) 
                                        | ((IData)(this->__PVT___T_5) 
                                           >> 0x10U))) 
                            | (0xffff0000U & ((IData)(
                                                      (((QData)((IData)(
                                                                        (((IData)(this->__PVT___T) 
                                                                          << 0x10U) 
                                                                         | (IData)(this->__PVT___T_1)))) 
                                                        << 0x20U) 
                                                       | (QData)((IData)(
                                                                         (((IData)(this->__PVT___T_2) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_3)))))) 
                                              << 0x10U)));
    this->io_d_out[0xbU] = ((0xffffU & ((IData)((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3)))))) 
                                        >> 0x10U)) 
                            | (0xffff0000U & ((IData)(
                                                      ((((QData)((IData)(
                                                                         (((IData)(this->__PVT___T) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_1)))) 
                                                         << 0x20U) 
                                                        | (QData)((IData)(
                                                                          (((IData)(this->__PVT___T_2) 
                                                                            << 0x10U) 
                                                                           | (IData)(this->__PVT___T_3))))) 
                                                       >> 0x20U)) 
                                              << 0x10U)));
    this->io_d_out[0xcU] = (0xffffU & ((IData)(((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3))))) 
                                                >> 0x20U)) 
                                       >> 0x10U));
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__t2__DOT___T_10__22(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__t2__DOT___T_10__22\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__t1_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__t1__DOT___T_5__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__t1__DOT___T_5__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__t1__DOT___T_5__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__t1__DOT___T_5__DOT__maxpool__DOT___GEN_1));
        }
    }
    this->io_d_out[0U] = ((0xffff0000U & ((IData)(this->__PVT___T_23) 
                                          << 0x10U)) 
                          | (IData)(this->__PVT___T_24));
    this->io_d_out[1U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_22)) 
                                      | ((IData)(this->__PVT___T_23) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_21) 
                                            << 0x10U)));
    this->io_d_out[2U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_20)) 
                                      | ((IData)(this->__PVT___T_21) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_19) 
                                            << 0x10U)));
    this->io_d_out[3U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_18)) 
                                      | ((IData)(this->__PVT___T_19) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_17) 
                                            << 0x10U)));
    this->io_d_out[4U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_16)) 
                                      | ((IData)(this->__PVT___T_17) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_15) 
                                            << 0x10U)));
    this->io_d_out[5U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_14)) 
                                      | ((IData)(this->__PVT___T_15) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_13) 
                                            << 0x10U)));
    this->io_d_out[6U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_12)) 
                                      | ((IData)(this->__PVT___T_13) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_11) 
                                            << 0x10U)));
    this->io_d_out[7U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_10)) 
                                      | ((IData)(this->__PVT___T_11) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_9) 
                                            << 0x10U)));
    this->io_d_out[8U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_8)) 
                                      | ((IData)(this->__PVT___T_9) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_7) 
                                            << 0x10U)));
    this->io_d_out[9U] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_6)) 
                                      | ((IData)(this->__PVT___T_7) 
                                         >> 0x10U))) 
                          | (0xffff0000U & ((IData)(this->__PVT___T_5) 
                                            << 0x10U)));
    this->io_d_out[0xaU] = ((0xffffU & ((0xffffU & (IData)(this->__PVT___T_4)) 
                                        | ((IData)(this->__PVT___T_5) 
                                           >> 0x10U))) 
                            | (0xffff0000U & ((IData)(
                                                      (((QData)((IData)(
                                                                        (((IData)(this->__PVT___T) 
                                                                          << 0x10U) 
                                                                         | (IData)(this->__PVT___T_1)))) 
                                                        << 0x20U) 
                                                       | (QData)((IData)(
                                                                         (((IData)(this->__PVT___T_2) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_3)))))) 
                                              << 0x10U)));
    this->io_d_out[0xbU] = ((0xffffU & ((IData)((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3)))))) 
                                        >> 0x10U)) 
                            | (0xffff0000U & ((IData)(
                                                      ((((QData)((IData)(
                                                                         (((IData)(this->__PVT___T) 
                                                                           << 0x10U) 
                                                                          | (IData)(this->__PVT___T_1)))) 
                                                         << 0x20U) 
                                                        | (QData)((IData)(
                                                                          (((IData)(this->__PVT___T_2) 
                                                                            << 0x10U) 
                                                                           | (IData)(this->__PVT___T_3))))) 
                                                       >> 0x20U)) 
                                              << 0x10U)));
    this->io_d_out[0xcU] = (0xffffU & ((IData)(((((QData)((IData)(
                                                                  (((IData)(this->__PVT___T) 
                                                                    << 0x10U) 
                                                                   | (IData)(this->__PVT___T_1)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(
                                                                   (((IData)(this->__PVT___T_2) 
                                                                     << 0x10U) 
                                                                    | (IData)(this->__PVT___T_3))))) 
                                                >> 0x20U)) 
                                       >> 0x10U));
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_1__2(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_1__2\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_2__3(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_2__3\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_1__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_1__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_1__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_1__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_4__4(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_4__4\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_2__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_2__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_2__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_2__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_5__5(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_5__5\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_3__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_3__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_3__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_3__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_8__6(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_8__6\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_4__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_4__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_4__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_4__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_9__7(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_9__7\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_5__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_5__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_5__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_5__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_11__8(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_11__8\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_6__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_6__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_6__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_6__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_12__9(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_12__9\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_7__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_7__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_7__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_7__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_16__10(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_16__10\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_8__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_8__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_8__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_8__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_17__11(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_17__11\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_9__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_9__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_9__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_9__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_19__12(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_19__12\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_10__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_10__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_10__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_10__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_20__13(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_20__13\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_11__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_11__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_11__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_11__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_23__14(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_23__14\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_12__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_12__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_12__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_12__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_24__15(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_24__15\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_13__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_13__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_13__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_13__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_26__16(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_26__16\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_14__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_14__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_14__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_14__DOT__maxpool__DOT___GEN_1));
        }
    }
}

VL_INLINE_OPT void VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_27__17(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_sequent__TOP__Top__DOT__f1__DOT___T_27__17\n"); );
    VTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        this->__PVT___T_24 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_24 = this->__PVT___T_23;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_23 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_23 = this->__PVT___T_22;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_22 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_22 = this->__PVT___T_21;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_21 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_21 = this->__PVT___T_20;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_20 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_20 = this->__PVT___T_19;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_19 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_19 = this->__PVT___T_18;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_18 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_18 = this->__PVT___T_17;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_17 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_17 = this->__PVT___T_16;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_16 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_16 = this->__PVT___T_15;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_15 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_15 = this->__PVT___T_14;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_14 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_14 = this->__PVT___T_13;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_13 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_13 = this->__PVT___T_12;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_12 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_12 = this->__PVT___T_11;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_11 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_11 = this->__PVT___T_10;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_10 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_10 = this->__PVT___T_9;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_9 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_9 = this->__PVT___T_8;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_8 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_8 = this->__PVT___T_7;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_7 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_7 = this->__PVT___T_6;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_6 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_6 = this->__PVT___T_5;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_5 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_5 = this->__PVT___T_4;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_4 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_4 = this->__PVT___T_3;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_3 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_3 = this->__PVT___T_2;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_2 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_2 = this->__PVT___T_1;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T_1 = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T_1 = this->__PVT___T;
        }
    }
    if (vlTOPp->reset) {
        this->__PVT___T = 0U;
    } else {
        if (vlTOPp->Top__DOT__c2mp_io_pool_v) {
            this->__PVT___T = (((IData)(vlTOPp->Top__DOT__c2mp__DOT___T_15__DOT__maxpool__DOT___GEN_0) 
                                > (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_15__DOT__maxpool__DOT___GEN_1))
                                ? (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_15__DOT__maxpool__DOT___GEN_0)
                                : (IData)(vlTOPp->Top__DOT__c2mp__DOT___T_15__DOT__maxpool__DOT___GEN_1));
        }
    }
}

void VTop_ShiftRegister::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ShiftRegister::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_d_in = VL_RAND_RESET_I(16);
    io_en = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(400, io_d_out);
    __PVT___T = VL_RAND_RESET_I(16);
    __PVT___T_1 = VL_RAND_RESET_I(16);
    __PVT___T_2 = VL_RAND_RESET_I(16);
    __PVT___T_3 = VL_RAND_RESET_I(16);
    __PVT___T_4 = VL_RAND_RESET_I(16);
    __PVT___T_5 = VL_RAND_RESET_I(16);
    __PVT___T_6 = VL_RAND_RESET_I(16);
    __PVT___T_7 = VL_RAND_RESET_I(16);
    __PVT___T_8 = VL_RAND_RESET_I(16);
    __PVT___T_9 = VL_RAND_RESET_I(16);
    __PVT___T_10 = VL_RAND_RESET_I(16);
    __PVT___T_11 = VL_RAND_RESET_I(16);
    __PVT___T_12 = VL_RAND_RESET_I(16);
    __PVT___T_13 = VL_RAND_RESET_I(16);
    __PVT___T_14 = VL_RAND_RESET_I(16);
    __PVT___T_15 = VL_RAND_RESET_I(16);
    __PVT___T_16 = VL_RAND_RESET_I(16);
    __PVT___T_17 = VL_RAND_RESET_I(16);
    __PVT___T_18 = VL_RAND_RESET_I(16);
    __PVT___T_19 = VL_RAND_RESET_I(16);
    __PVT___T_20 = VL_RAND_RESET_I(16);
    __PVT___T_21 = VL_RAND_RESET_I(16);
    __PVT___T_22 = VL_RAND_RESET_I(16);
    __PVT___T_23 = VL_RAND_RESET_I(16);
    __PVT___T_24 = VL_RAND_RESET_I(16);
}
