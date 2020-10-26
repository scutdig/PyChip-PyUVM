// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VALU.h for the primary calling header

#include "VALU.h"
#include "VALU__Syms.h"

//==========

VL_CTOR_IMP(VALU) {
    VALU__Syms* __restrict vlSymsp = __VlSymsp = new VALU__Syms(this, name());
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VALU::__Vconfigure(VALU__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

VALU::~VALU() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = NULL);
}

void VALU::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VALU::eval\n"); );
    VALU__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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
            VL_FATAL_MT("ALU.v", 1, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VALU::_eval_initial_loop(VALU__Syms* __restrict vlSymsp) {
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
            VL_FATAL_MT("ALU.v", 1, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

VL_INLINE_OPT void VALU::_combo__TOP__1(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU::_combo__TOP__1\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    WData/*95:0*/ __Vtemp2[3];
    WData/*95:0*/ __Vtemp3[3];
    WData/*95:0*/ __Vtemp4[3];
    WData/*95:0*/ __Vtemp5[3];
    WData/*95:0*/ __Vtemp6[3];
    WData/*95:0*/ __Vtemp7[3];
    WData/*95:0*/ __Vtemp8[3];
    WData/*95:0*/ __Vtemp9[3];
    // Body
    vlTOPp->ALU__DOT___T_30 = VL_LTS_III(1,32,32, vlTOPp->io_src_a, vlTOPp->io_src_b);
    vlTOPp->ALU__DOT___T_33 = (vlTOPp->io_src_a < vlTOPp->io_src_b);
    VL_EXTEND_WQ(95,33, __Vtemp2, (VL_ULL(0x1ffffffff) 
                                   & ((QData)((IData)(vlTOPp->io_src_a)) 
                                      + (QData)((IData)(vlTOPp->io_src_b)))));
    VL_EXTEND_WQ(95,33, __Vtemp3, (VL_ULL(0x1ffffffff) 
                                   & ((QData)((IData)(vlTOPp->io_src_a)) 
                                      - (QData)((IData)(vlTOPp->io_src_b)))));
    VL_EXTEND_WI(95,32, __Vtemp4, (vlTOPp->io_src_a 
                                   & vlTOPp->io_src_b));
    VL_EXTEND_WI(95,32, __Vtemp5, (vlTOPp->io_src_a 
                                   | vlTOPp->io_src_b));
    VL_EXTEND_WI(95,32, __Vtemp6, (vlTOPp->io_src_a 
                                   ^ (0x3fU & vlTOPp->io_src_b)));
    VL_EXTEND_WI(95,32, __Vtemp7, vlTOPp->io_src_a);
    VL_SHIFTL_WWI(95,95,6, __Vtemp8, __Vtemp7, (0x3fU 
                                                & vlTOPp->io_src_b));
    VL_EXTEND_WI(95,32, __Vtemp9, ((6U == (IData)(vlTOPp->io_ALUOp))
                                    ? ((0x1fU >= (0x3fU 
                                                  & vlTOPp->io_src_b))
                                        ? (vlTOPp->io_src_a 
                                           >> (0x3fU 
                                               & vlTOPp->io_src_b))
                                        : 0U) : ((7U 
                                                  == (IData)(vlTOPp->io_ALUOp))
                                                  ? 
                                                 ((0x1fU 
                                                   >= 
                                                   (0x3fU 
                                                    & vlTOPp->io_src_b))
                                                   ? 
                                                  VL_SHIFTRS_III(32,32,6, vlTOPp->io_src_a, 
                                                                 (0x3fU 
                                                                  & vlTOPp->io_src_b))
                                                   : 
                                                  (- 
                                                   (vlTOPp->io_src_a 
                                                    >> 0x1fU)))
                                                  : 
                                                 ((8U 
                                                   == (IData)(vlTOPp->io_ALUOp))
                                                   ? (IData)(vlTOPp->ALU__DOT___T_30)
                                                   : 
                                                  ((9U 
                                                    == (IData)(vlTOPp->io_ALUOp))
                                                    ? (IData)(vlTOPp->ALU__DOT___T_33)
                                                    : vlTOPp->io_src_b)))));
    vlTOPp->io_sum = ((0U == (IData)(vlTOPp->io_ALUOp))
                       ? __Vtemp2[0U] : ((1U == (IData)(vlTOPp->io_ALUOp))
                                          ? __Vtemp3[0U]
                                          : ((2U == (IData)(vlTOPp->io_ALUOp))
                                              ? __Vtemp4[0U]
                                              : ((3U 
                                                  == (IData)(vlTOPp->io_ALUOp))
                                                  ? 
                                                 __Vtemp5[0U]
                                                  : 
                                                 ((4U 
                                                   == (IData)(vlTOPp->io_ALUOp))
                                                   ? 
                                                  __Vtemp6[0U]
                                                   : 
                                                  ((5U 
                                                    == (IData)(vlTOPp->io_ALUOp))
                                                    ? 
                                                   __Vtemp8[0U]
                                                    : 
                                                   __Vtemp9[0U]))))));
    vlTOPp->io_conflag = ((0xaU == (IData)(vlTOPp->io_ALUOp))
                           ? (vlTOPp->io_src_a == vlTOPp->io_src_b)
                           : ((0xbU == (IData)(vlTOPp->io_ALUOp))
                               ? (vlTOPp->io_src_a 
                                  != vlTOPp->io_src_b)
                               : ((0xcU == (IData)(vlTOPp->io_ALUOp))
                                   ? (IData)(vlTOPp->ALU__DOT___T_30)
                                   : ((0xdU == (IData)(vlTOPp->io_ALUOp))
                                       ? VL_GTES_III(1,32,32, vlTOPp->io_src_a, vlTOPp->io_src_b)
                                       : ((0xeU == (IData)(vlTOPp->io_ALUOp))
                                           ? (IData)(vlTOPp->ALU__DOT___T_33)
                                           : ((0xfU 
                                               == (IData)(vlTOPp->io_ALUOp)) 
                                              & (vlTOPp->io_src_a 
                                                 >= vlTOPp->io_src_b)))))));
}

void VALU::_eval(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU::_eval\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
}

void VALU::_eval_initial(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU::_eval_initial\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VALU::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU::final\n"); );
    // Variables
    VALU__Syms* __restrict vlSymsp = this->__VlSymsp;
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VALU::_eval_settle(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU::_eval_settle\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
}

VL_INLINE_OPT QData VALU::_change_request(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU::_change_request\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VALU::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((io_ALUOp & 0xe0U))) {
        Verilated::overWidthError("io_ALUOp");}
}
#endif  // VL_DEBUG

void VALU::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_src_a = VL_RAND_RESET_I(32);
    io_src_b = VL_RAND_RESET_I(32);
    io_ALUOp = VL_RAND_RESET_I(5);
    io_sum = VL_RAND_RESET_I(32);
    io_conflag = VL_RAND_RESET_I(1);
    ALU__DOT___T_30 = VL_RAND_RESET_I(1);
    ALU__DOT___T_33 = VL_RAND_RESET_I(1);
    __Vm_traceActivity = 0;
}
