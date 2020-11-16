// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VWallace.h for the primary calling header

#include "VWallace.h"
#include "VWallace__Syms.h"

//==========

VL_CTOR_IMP(VWallace) {
    VWallace__Syms* __restrict vlSymsp = __VlSymsp = new VWallace__Syms(this, name());
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VWallace::__Vconfigure(VWallace__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

VWallace::~VWallace() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = NULL);
}

void VWallace::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VWallace::eval\n"); );
    VWallace__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
#ifdef VL_DEBUG
    // Debug assertions
    _eval_debug_assertions();
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        vlSymsp->__Vm_activity = true;
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("Wallace.v", 162, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VWallace::_eval_initial_loop(VWallace__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    vlSymsp->__Vm_activity = true;
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        _eval_settle(vlSymsp);
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("Wallace.v", 162, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

VL_INLINE_OPT void VWallace::_combo__TOP__1(VWallace__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VWallace::_combo__TOP__1\n"); );
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->Wallace__DOT___T_26_io_a = (1U & (((IData)(vlTOPp->io_x) 
                                               & (IData)(vlTOPp->io_y)) 
                                              >> 1U));
    vlTOPp->Wallace__DOT___T_26_io_b = (1U & ((IData)(vlTOPp->io_x) 
                                              & ((IData)(vlTOPp->io_y) 
                                                 >> 2U)));
    vlTOPp->Wallace__DOT___T_33_io_a = (1U & (((IData)(vlTOPp->io_x) 
                                               >> 3U) 
                                              & (IData)(vlTOPp->io_y)));
    vlTOPp->Wallace__DOT___T_33_io_b = (1U & (((IData)(vlTOPp->io_x) 
                                               >> 2U) 
                                              & ((IData)(vlTOPp->io_y) 
                                                 >> 1U)));
    vlTOPp->Wallace__DOT___T_40_io_a = (1U & (((IData)(vlTOPp->io_x) 
                                               >> 3U) 
                                              & ((IData)(vlTOPp->io_y) 
                                                 >> 1U)));
    vlTOPp->Wallace__DOT___T_44_io_a = (1U & (((IData)(vlTOPp->io_x) 
                                               >> 3U) 
                                              & ((IData)(vlTOPp->io_y) 
                                                 >> 2U)));
    vlTOPp->Wallace__DOT___T_44_io_b = (1U & (((IData)(vlTOPp->io_x) 
                                               >> 2U) 
                                              & ((IData)(vlTOPp->io_y) 
                                                 >> 3U)));
    vlTOPp->Wallace__DOT___T_12_io_a = (1U & (((IData)(vlTOPp->io_x) 
                                               >> 1U) 
                                              & ((IData)(vlTOPp->io_y) 
                                                 >> 2U)));
    vlTOPp->Wallace__DOT___T_12_io_b = (1U & ((IData)(vlTOPp->io_x) 
                                              & ((IData)(vlTOPp->io_y) 
                                                 >> 3U)));
    vlTOPp->Wallace__DOT___T_19_io_a = (1U & (((IData)(vlTOPp->io_x) 
                                               & (IData)(vlTOPp->io_y)) 
                                              >> 2U));
    vlTOPp->Wallace__DOT___T_19_io_b = (1U & (((IData)(vlTOPp->io_x) 
                                               >> 1U) 
                                              & ((IData)(vlTOPp->io_y) 
                                                 >> 3U)));
    vlTOPp->Wallace__DOT___T_12_io_s = ((IData)(vlTOPp->Wallace__DOT___T_12_io_a) 
                                        ^ (IData)(vlTOPp->Wallace__DOT___T_12_io_b));
    vlTOPp->Wallace__DOT___T_12_io_cout = ((IData)(vlTOPp->Wallace__DOT___T_12_io_a) 
                                           & (IData)(vlTOPp->Wallace__DOT___T_12_io_b));
    vlTOPp->Wallace__DOT___T_19_io_s = ((IData)(vlTOPp->Wallace__DOT___T_19_io_a) 
                                        ^ (IData)(vlTOPp->Wallace__DOT___T_19_io_b));
    vlTOPp->Wallace__DOT___T_19_io_cout = ((IData)(vlTOPp->Wallace__DOT___T_19_io_a) 
                                           & (IData)(vlTOPp->Wallace__DOT___T_19_io_b));
    vlTOPp->Wallace__DOT___T_66_io_a = ((0x40U & (((IData)(vlTOPp->io_x) 
                                                   & (IData)(vlTOPp->io_y)) 
                                                  << 3U)) 
                                        | (((((IData)(vlTOPp->Wallace__DOT___T_44_io_a) 
                                              ^ (IData)(vlTOPp->Wallace__DOT___T_44_io_b)) 
                                             ^ (IData)(vlTOPp->Wallace__DOT___T_19_io_cout)) 
                                            << 5U) 
                                           | (((((IData)(vlTOPp->Wallace__DOT___T_40_io_a) 
                                                 ^ (IData)(vlTOPp->Wallace__DOT___T_19_io_s)) 
                                                ^ (IData)(vlTOPp->Wallace__DOT___T_12_io_cout)) 
                                               << 4U) 
                                              | (((((IData)(vlTOPp->Wallace__DOT___T_33_io_a) 
                                                    ^ (IData)(vlTOPp->Wallace__DOT___T_33_io_b)) 
                                                   ^ (IData)(vlTOPp->Wallace__DOT___T_12_io_s)) 
                                                  << 3U) 
                                                 | ((4U 
                                                     & ((IData)(vlTOPp->io_x) 
                                                        & ((IData)(vlTOPp->io_y) 
                                                           << 2U))) 
                                                    | ((2U 
                                                        & ((IData)(vlTOPp->io_x) 
                                                           & ((IData)(vlTOPp->io_y) 
                                                              << 1U))) 
                                                       | (1U 
                                                          & ((IData)(vlTOPp->io_x) 
                                                             & (IData)(vlTOPp->io_y)))))))));
    vlTOPp->Wallace__DOT___T_66_io_b = (((((IData)(vlTOPp->Wallace__DOT___T_44_io_a) 
                                           & ((IData)(vlTOPp->Wallace__DOT___T_44_io_b) 
                                              | (IData)(vlTOPp->Wallace__DOT___T_19_io_cout))) 
                                          | ((IData)(vlTOPp->Wallace__DOT___T_44_io_b) 
                                             & (IData)(vlTOPp->Wallace__DOT___T_19_io_cout))) 
                                         << 6U) | (
                                                   ((((IData)(vlTOPp->Wallace__DOT___T_40_io_a) 
                                                      & ((IData)(vlTOPp->Wallace__DOT___T_19_io_s) 
                                                         | (IData)(vlTOPp->Wallace__DOT___T_12_io_cout))) 
                                                     | ((IData)(vlTOPp->Wallace__DOT___T_19_io_s) 
                                                        & (IData)(vlTOPp->Wallace__DOT___T_12_io_cout))) 
                                                    << 5U) 
                                                   | (((((IData)(vlTOPp->Wallace__DOT___T_33_io_a) 
                                                         & ((IData)(vlTOPp->Wallace__DOT___T_33_io_b) 
                                                            | (IData)(vlTOPp->Wallace__DOT___T_12_io_s))) 
                                                        | ((IData)(vlTOPp->Wallace__DOT___T_33_io_b) 
                                                           & (IData)(vlTOPp->Wallace__DOT___T_12_io_s))) 
                                                       << 4U) 
                                                      | ((((IData)(vlTOPp->Wallace__DOT___T_26_io_a) 
                                                           & (IData)(vlTOPp->Wallace__DOT___T_26_io_b)) 
                                                          << 3U) 
                                                         | ((((IData)(vlTOPp->Wallace__DOT___T_26_io_a) 
                                                              ^ (IData)(vlTOPp->Wallace__DOT___T_26_io_b)) 
                                                             << 2U) 
                                                            | (2U 
                                                               & (((IData)(vlTOPp->io_x) 
                                                                   << 1U) 
                                                                  & (IData)(vlTOPp->io_y))))))));
    vlTOPp->Wallace__DOT___T_66__DOT___T__DOT___T_2 
        = (1U & ((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                 & (IData)(vlTOPp->Wallace__DOT___T_66_io_b)));
    vlTOPp->Wallace__DOT___T_66__DOT___T_3_io_cout 
        = (1U & (((((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                    & (IData)(vlTOPp->Wallace__DOT___T_66_io_b)) 
                   >> 1U) | (((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                              >> 1U) & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T__DOT___T_2))) 
                 | (((IData)(vlTOPp->Wallace__DOT___T_66_io_b) 
                     >> 1U) & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T__DOT___T_2))));
    vlTOPp->Wallace__DOT___T_66__DOT___T_6_io_cout 
        = (1U & (((((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                    & (IData)(vlTOPp->Wallace__DOT___T_66_io_b)) 
                   >> 2U) | (((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                              >> 2U) & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_3_io_cout))) 
                 | (((IData)(vlTOPp->Wallace__DOT___T_66_io_b) 
                     >> 2U) & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_3_io_cout))));
    vlTOPp->Wallace__DOT___T_66__DOT___T_9_io_cout 
        = (1U & (((((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                    & (IData)(vlTOPp->Wallace__DOT___T_66_io_b)) 
                   >> 3U) | (((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                              >> 3U) & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_6_io_cout))) 
                 | (((IData)(vlTOPp->Wallace__DOT___T_66_io_b) 
                     >> 3U) & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_6_io_cout))));
    vlTOPp->Wallace__DOT___T_66__DOT___T_12_io_cout 
        = (1U & (((((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                    & (IData)(vlTOPp->Wallace__DOT___T_66_io_b)) 
                   >> 4U) | (((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                              >> 4U) & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_9_io_cout))) 
                 | (((IData)(vlTOPp->Wallace__DOT___T_66_io_b) 
                     >> 4U) & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_9_io_cout))));
    vlTOPp->Wallace__DOT___T_66__DOT___T_15_io_cout 
        = (1U & (((((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                    & (IData)(vlTOPp->Wallace__DOT___T_66_io_b)) 
                   >> 5U) | (((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                              >> 5U) & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_12_io_cout))) 
                 | (((IData)(vlTOPp->Wallace__DOT___T_66_io_b) 
                     >> 5U) & (IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_12_io_cout))));
    vlTOPp->Wallace__DOT___T_66_io_s = ((0x40U & ((0xffffffc0U 
                                                   & ((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                                                      ^ (IData)(vlTOPp->Wallace__DOT___T_66_io_b))) 
                                                  ^ 
                                                  ((IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_15_io_cout) 
                                                   << 6U))) 
                                        | ((0x20U & 
                                            ((0xffffffe0U 
                                              & ((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                                                 ^ (IData)(vlTOPp->Wallace__DOT___T_66_io_b))) 
                                             ^ ((IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_12_io_cout) 
                                                << 5U))) 
                                           | ((0x10U 
                                               & ((0xfffffff0U 
                                                   & ((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                                                      ^ (IData)(vlTOPp->Wallace__DOT___T_66_io_b))) 
                                                  ^ 
                                                  ((IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_9_io_cout) 
                                                   << 4U))) 
                                              | ((8U 
                                                  & ((0xfffffff8U 
                                                      & ((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                                                         ^ (IData)(vlTOPp->Wallace__DOT___T_66_io_b))) 
                                                     ^ 
                                                     ((IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_6_io_cout) 
                                                      << 3U))) 
                                                 | ((4U 
                                                     & ((0xfffffffcU 
                                                         & ((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                                                            ^ (IData)(vlTOPp->Wallace__DOT___T_66_io_b))) 
                                                        ^ 
                                                        ((IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_3_io_cout) 
                                                         << 2U))) 
                                                    | ((2U 
                                                        & ((0xfffffffeU 
                                                            & ((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                                                               ^ (IData)(vlTOPp->Wallace__DOT___T_66_io_b))) 
                                                           ^ 
                                                           ((IData)(vlTOPp->Wallace__DOT___T_66__DOT___T__DOT___T_2) 
                                                            << 1U))) 
                                                       | (1U 
                                                          & ((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                                                             ^ (IData)(vlTOPp->Wallace__DOT___T_66_io_b)))))))));
    vlTOPp->io_c = ((0x80U & (((((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                                 & (IData)(vlTOPp->Wallace__DOT___T_66_io_b)) 
                                << 1U) | (((IData)(vlTOPp->Wallace__DOT___T_66_io_a) 
                                           << 1U) & 
                                          ((IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_15_io_cout) 
                                           << 7U))) 
                              | (((IData)(vlTOPp->Wallace__DOT___T_66_io_b) 
                                  << 1U) & ((IData)(vlTOPp->Wallace__DOT___T_66__DOT___T_15_io_cout) 
                                            << 7U)))) 
                    | (IData)(vlTOPp->Wallace__DOT___T_66_io_s));
}

void VWallace::_eval(VWallace__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VWallace::_eval\n"); );
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
    vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
}

void VWallace::_eval_initial(VWallace__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VWallace::_eval_initial\n"); );
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VWallace::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VWallace::final\n"); );
    // Variables
    VWallace__Syms* __restrict vlSymsp = this->__VlSymsp;
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VWallace::_eval_settle(VWallace__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VWallace::_eval_settle\n"); );
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
}

VL_INLINE_OPT QData VWallace::_change_request(VWallace__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VWallace::_change_request\n"); );
    VWallace* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VWallace::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VWallace::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((io_x & 0xf0U))) {
        Verilated::overWidthError("io_x");}
    if (VL_UNLIKELY((io_y & 0xf0U))) {
        Verilated::overWidthError("io_y");}
}
#endif  // VL_DEBUG

void VWallace::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VWallace::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_x = VL_RAND_RESET_I(4);
    io_y = VL_RAND_RESET_I(4);
    io_c = VL_RAND_RESET_I(8);
    Wallace__DOT___T_12_io_a = VL_RAND_RESET_I(1);
    Wallace__DOT___T_12_io_b = VL_RAND_RESET_I(1);
    Wallace__DOT___T_12_io_s = VL_RAND_RESET_I(1);
    Wallace__DOT___T_12_io_cout = VL_RAND_RESET_I(1);
    Wallace__DOT___T_19_io_a = VL_RAND_RESET_I(1);
    Wallace__DOT___T_19_io_b = VL_RAND_RESET_I(1);
    Wallace__DOT___T_19_io_s = VL_RAND_RESET_I(1);
    Wallace__DOT___T_19_io_cout = VL_RAND_RESET_I(1);
    Wallace__DOT___T_26_io_a = VL_RAND_RESET_I(1);
    Wallace__DOT___T_26_io_b = VL_RAND_RESET_I(1);
    Wallace__DOT___T_33_io_a = VL_RAND_RESET_I(1);
    Wallace__DOT___T_33_io_b = VL_RAND_RESET_I(1);
    Wallace__DOT___T_40_io_a = VL_RAND_RESET_I(1);
    Wallace__DOT___T_44_io_a = VL_RAND_RESET_I(1);
    Wallace__DOT___T_44_io_b = VL_RAND_RESET_I(1);
    Wallace__DOT___T_66_io_a = VL_RAND_RESET_I(7);
    Wallace__DOT___T_66_io_b = VL_RAND_RESET_I(7);
    Wallace__DOT___T_66_io_s = VL_RAND_RESET_I(7);
    Wallace__DOT___T_66__DOT___T_3_io_cout = VL_RAND_RESET_I(1);
    Wallace__DOT___T_66__DOT___T_6_io_cout = VL_RAND_RESET_I(1);
    Wallace__DOT___T_66__DOT___T_9_io_cout = VL_RAND_RESET_I(1);
    Wallace__DOT___T_66__DOT___T_12_io_cout = VL_RAND_RESET_I(1);
    Wallace__DOT___T_66__DOT___T_15_io_cout = VL_RAND_RESET_I(1);
    Wallace__DOT___T_66__DOT___T__DOT___T_2 = VL_RAND_RESET_I(1);
    __Vm_traceActivity = 0;
}
