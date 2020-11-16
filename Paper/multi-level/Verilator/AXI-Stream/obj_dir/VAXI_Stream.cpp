// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VAXI_Stream.h for the primary calling header

#include "VAXI_Stream.h"
#include "VAXI_Stream__Syms.h"


//--------------------
// STATIC VARIABLES


//--------------------

VL_CTOR_IMP(VAXI_Stream) {
    VAXI_Stream__Syms* __restrict vlSymsp = __VlSymsp = new VAXI_Stream__Syms(this, name());
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VAXI_Stream::__Vconfigure(VAXI_Stream__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

VAXI_Stream::~VAXI_Stream() {
    delete __VlSymsp; __VlSymsp=NULL;
}

//--------------------


void VAXI_Stream::eval() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VAXI_Stream::eval\n"); );
    VAXI_Stream__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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
            VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Verilated model didn't converge");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VAXI_Stream::_eval_initial_loop(VAXI_Stream__Syms* __restrict vlSymsp) {
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
            VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Verilated model didn't DC converge");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

//--------------------
// Internal Methods

VL_INLINE_OPT void VAXI_Stream::_sequent__TOP__1(VAXI_Stream__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Stream::_sequent__TOP__1\n"); );
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // ALWAYS at AXI_Stream.v:228
    vlTOPp->AXI_Stream__DOT__master__DOT__axis_tlast_delay 
        = ((~ (IData)(vlTOPp->reset)) & (7U == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer)));
    // ALWAYS at AXI_Stream.v:228
    if (vlTOPp->reset) {
        vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state = 0U;
    } else {
        if (vlTOPp->AXI_Stream__DOT__master__DOT___T) {
            vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state = 1U;
        } else {
            if (vlTOPp->AXI_Stream__DOT__master__DOT___T_1) {
                vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state 
                    = ((0x1fU == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__count))
                        ? 2U : 1U);
            } else {
                if (vlTOPp->AXI_Stream__DOT__master__DOT___T_4) {
                    vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state 
                        = ((IData)(vlTOPp->AXI_Stream__DOT__master__DOT__tx_done)
                            ? 0U : 2U);
                }
            }
        }
    }
    // ALWAYS at AXI_Stream.v:85
    if (vlTOPp->reset) {
        vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state = 0U;
    } else {
        if (vlTOPp->AXI_Stream__DOT__slave__DOT___T_2) {
            vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state 
                = ((IData)(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid_delay)
                    ? 1U : 0U);
        } else {
            if (vlTOPp->AXI_Stream__DOT__slave__DOT___T) {
                vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state 
                    = ((IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__writes_done)
                        ? 0U : 1U);
            }
        }
    }
    // ALWAYS at AXI_Stream.v:228
    vlTOPp->AXI_Stream__DOT__master__DOT__count = (0x3fU 
                                                   & ((IData)(vlTOPp->reset)
                                                       ? 0U
                                                       : (IData)(vlTOPp->AXI_Stream__DOT__master__DOT___GEN_7)));
    vlTOPp->AXI_Stream__DOT__master__DOT___T = (0U 
                                                == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Stream__DOT__master__DOT___T_1 = (1U 
                                                  == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Stream__DOT__master__DOT___T_4 = (2U 
                                                  == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state));
    // ALWAYS at AXI_Stream.v:228
    if (vlTOPp->reset) {
        vlTOPp->AXI_Stream__DOT__master__DOT__tx_done = 0U;
    } else {
        if ((7U >= (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer))) {
            vlTOPp->AXI_Stream__DOT__master__DOT__tx_done 
                = ((~ (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__tx_en)) 
                   & (IData)(vlTOPp->AXI_Stream__DOT__master__DOT___GEN_8));
        }
    }
    vlTOPp->AXI_Stream__DOT__slave__DOT___T = (1U == (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state));
    vlTOPp->AXI_Stream__DOT__slave__DOT___T_2 = (0U 
                                                 == (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state));
    // ALWAYS at AXI_Stream.v:228
    vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid_delay 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid));
    // ALWAYS at AXI_Stream.v:85
    if (vlTOPp->reset) {
        vlTOPp->AXI_Stream__DOT__slave__DOT__writes_done = 0U;
    } else {
        if ((8U >= (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer))) {
            vlTOPp->AXI_Stream__DOT__slave__DOT__writes_done 
                = vlTOPp->AXI_Stream__DOT__slave__DOT___GEN_6;
        }
    }
    vlTOPp->AXI_Stream__DOT__master__DOT___GEN_7 = 
        (0x7fU & ((0U == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state))
                   ? (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__count)
                   : ((1U == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state))
                       ? ((0x1fU == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__count))
                           ? (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__count)
                           : ((IData)(1U) + (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__count)))
                       : (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__count))));
    // ALWAYS at AXI_Stream.v:228
    vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer 
        = (0x1fU & ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Stream__DOT__master__DOT___GEN_11)));
    vlTOPp->io_AXIS_TVALID = vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid_delay;
    // ALWAYS at AXI_Stream.v:85
    vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer 
        = (0x1fU & ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT___GEN_7)));
    vlTOPp->AXI_Stream__DOT__master__DOT___GEN_8 = 
        ((8U == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer)) 
         | (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__tx_done));
    vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid 
        = ((2U == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state)) 
           & (8U > (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer)));
    vlTOPp->AXI_Stream__DOT__slave__DOT__fifo_wren 
        = ((IData)(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid_delay) 
           & ((1U == (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state)) 
              & (8U >= (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer))));
    vlTOPp->AXI_Stream__DOT__master__DOT__tx_en = (
                                                   ((1U 
                                                     == (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state)) 
                                                    & (8U 
                                                       >= (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer))) 
                                                   & (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid));
    vlTOPp->AXI_Stream__DOT__slave__DOT___GEN_7 = (0x3fU 
                                                   & ((8U 
                                                       >= (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer))
                                                       ? 
                                                      ((IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__fifo_wren)
                                                        ? 
                                                       ((IData)(1U) 
                                                        + (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer))
                                                        : (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer))
                                                       : (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer)));
    vlTOPp->AXI_Stream__DOT__slave__DOT___GEN_6 = (
                                                   ((8U 
                                                     == (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer)) 
                                                    | (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tlast_delay)) 
                                                   | ((~ (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__fifo_wren)) 
                                                      & (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__writes_done)));
    vlTOPp->AXI_Stream__DOT__master__DOT___GEN_11 = 
        (0x3fU & ((7U >= (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer))
                   ? ((IData)(vlTOPp->AXI_Stream__DOT__master__DOT__tx_en)
                       ? ((IData)(1U) + (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer))
                       : (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer))
                   : (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer)));
}

void VAXI_Stream::_settle__TOP__2(VAXI_Stream__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Stream::_settle__TOP__2\n"); );
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->AXI_Stream__DOT__slave__DOT___T = (1U == (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state));
    vlTOPp->AXI_Stream__DOT__slave__DOT___T_2 = (0U 
                                                 == (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state));
    vlTOPp->AXI_Stream__DOT__master__DOT___T = (0U 
                                                == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Stream__DOT__master__DOT___T_1 = (1U 
                                                  == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Stream__DOT__master__DOT___T_4 = (2U 
                                                  == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state));
    vlTOPp->io_AXIS_TVALID = vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid_delay;
    vlTOPp->AXI_Stream__DOT__master__DOT___GEN_7 = 
        (0x7fU & ((0U == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state))
                   ? (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__count)
                   : ((1U == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state))
                       ? ((0x1fU == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__count))
                           ? (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__count)
                           : ((IData)(1U) + (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__count)))
                       : (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__count))));
    vlTOPp->AXI_Stream__DOT__master__DOT___GEN_8 = 
        ((8U == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer)) 
         | (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__tx_done));
    vlTOPp->AXI_Stream__DOT__slave__DOT__fifo_wren 
        = ((IData)(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid_delay) 
           & ((1U == (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state)) 
              & (8U >= (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer))));
    vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid 
        = ((2U == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state)) 
           & (8U > (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer)));
    vlTOPp->AXI_Stream__DOT__slave__DOT___GEN_7 = (0x3fU 
                                                   & ((8U 
                                                       >= (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer))
                                                       ? 
                                                      ((IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__fifo_wren)
                                                        ? 
                                                       ((IData)(1U) 
                                                        + (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer))
                                                        : (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer))
                                                       : (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer)));
    vlTOPp->AXI_Stream__DOT__slave__DOT___GEN_6 = (
                                                   ((8U 
                                                     == (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer)) 
                                                    | (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tlast_delay)) 
                                                   | ((~ (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__fifo_wren)) 
                                                      & (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__writes_done)));
    vlTOPp->AXI_Stream__DOT__master__DOT__tx_en = (
                                                   ((1U 
                                                     == (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state)) 
                                                    & (8U 
                                                       >= (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer))) 
                                                   & (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid));
    vlTOPp->AXI_Stream__DOT__master__DOT___GEN_11 = 
        (0x3fU & ((7U >= (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer))
                   ? ((IData)(vlTOPp->AXI_Stream__DOT__master__DOT__tx_en)
                       ? ((IData)(1U) + (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer))
                       : (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer))
                   : (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer)));
}

void VAXI_Stream::_eval(VAXI_Stream__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Stream::_eval\n"); );
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock)))) {
        vlTOPp->_sequent__TOP__1(vlSymsp);
        vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
    }
    // Final
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void VAXI_Stream::_eval_initial(VAXI_Stream__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Stream::_eval_initial\n"); );
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void VAXI_Stream::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Stream::final\n"); );
    // Variables
    VAXI_Stream__Syms* __restrict vlSymsp = this->__VlSymsp;
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VAXI_Stream::_eval_settle(VAXI_Stream__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Stream::_eval_settle\n"); );
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__2(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
}

VL_INLINE_OPT QData VAXI_Stream::_change_request(VAXI_Stream__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Stream::_change_request\n"); );
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VAXI_Stream::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Stream::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
}
#endif // VL_DEBUG

void VAXI_Stream::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Stream::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_AXIS_TVALID = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__slave__DOT__mst_exec_state = VL_RAND_RESET_I(2);
    AXI_Stream__DOT__slave__DOT___T = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__slave__DOT__write_pointer = VL_RAND_RESET_I(5);
    AXI_Stream__DOT__slave__DOT___T_2 = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__slave__DOT__writes_done = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__slave__DOT__fifo_wren = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__slave__DOT___GEN_6 = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__slave__DOT___GEN_7 = VL_RAND_RESET_I(6);
    AXI_Stream__DOT__master__DOT__axis_tvalid_delay = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__master__DOT__axis_tlast_delay = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__master__DOT__mst_exec_state = VL_RAND_RESET_I(2);
    AXI_Stream__DOT__master__DOT___T = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__master__DOT___T_1 = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__master__DOT__count = VL_RAND_RESET_I(6);
    AXI_Stream__DOT__master__DOT___T_4 = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__master__DOT__tx_done = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__master__DOT___GEN_7 = VL_RAND_RESET_I(7);
    AXI_Stream__DOT__master__DOT__read_pointer = VL_RAND_RESET_I(5);
    AXI_Stream__DOT__master__DOT__axis_tvalid = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__master__DOT__tx_en = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__master__DOT___GEN_8 = VL_RAND_RESET_I(1);
    AXI_Stream__DOT__master__DOT___GEN_11 = VL_RAND_RESET_I(6);
    __Vm_traceActivity = VL_RAND_RESET_I(32);
}
