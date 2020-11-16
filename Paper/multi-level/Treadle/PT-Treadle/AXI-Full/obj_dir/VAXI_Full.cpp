// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VAXI_Full.h for the primary calling header

#include "VAXI_Full.h"
#include "VAXI_Full__Syms.h"


//--------------------
// STATIC VARIABLES


//--------------------

VL_CTOR_IMP(VAXI_Full) {
    VAXI_Full__Syms* __restrict vlSymsp = __VlSymsp = new VAXI_Full__Syms(this, name());
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VAXI_Full::__Vconfigure(VAXI_Full__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

VAXI_Full::~VAXI_Full() {
    delete __VlSymsp; __VlSymsp=NULL;
}

//--------------------


void VAXI_Full::eval() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VAXI_Full::eval\n"); );
    VAXI_Full__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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

void VAXI_Full::_eval_initial_loop(VAXI_Full__Syms* __restrict vlSymsp) {
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

VL_INLINE_OPT void VAXI_Full::_sequent__TOP__1(VAXI_Full__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Full::_sequent__TOP__1\n"); );
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__write_index 
        = (0x1fU & ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_29)));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__read_burst_counter 
        = (3U & ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_46)));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__write_burst_counter 
        = (3U & ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_44)));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__read_index 
        = (0x1fU & ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_37)));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__axi_awaddr 
        = ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_22));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__axi_araddr 
        = ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_35));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__burst_read_active 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_74));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__burst_write_active 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_71));
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->reset) {
        vlTOPp->AXI_Full__DOT__slave__DOT__axi_arburst = 0U;
    } else {
        if (vlTOPp->AXI_Full__DOT__slave__DOT___T_56) {
            vlTOPp->AXI_Full__DOT__slave__DOT__axi_arburst = 1U;
        }
    }
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__axi_bready 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_32));
    // ALWAYS at AXI_Full.v:1159
    vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid = 
        ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___GEN_13));
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->reset) {
        vlTOPp->AXI_Full__DOT__slave__DOT__axi_awburst = 0U;
    } else {
        if (vlTOPp->AXI_Full__DOT__slave__DOT___T_3) {
            vlTOPp->AXI_Full__DOT__slave__DOT__axi_awburst = 1U;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr = 
        ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___GEN_24));
    // ALWAYS at AXI_Full.v:1159
    vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr = 
        ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___GEN_6));
    // ALWAYS at AXI_Full.v:1159
    vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen_cntr 
        = (0xffU & ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___GEN_9)));
    // ALWAYS at AXI_Full.v:1159
    vlTOPp->AXI_Full__DOT__slave__DOT__axi_rlast = 
        ((~ (IData)(vlTOPp->reset)) & ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_56)) 
                                       & ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_60)) 
                                          & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___GEN_20))));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__axi_wlast = 
        ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_27));
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->reset) {
        vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen = 0U;
    } else {
        if (vlTOPp->AXI_Full__DOT__slave__DOT___T_3) {
            vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen = 0xfU;
        }
    }
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_24));
    // ALWAYS at AXI_Full.v:1159
    vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen_cntr 
        = (0xffU & ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___GEN_27)));
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->reset) {
        vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen = 0U;
    } else {
        if (vlTOPp->AXI_Full__DOT__slave__DOT___T_56) {
            vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen = 0xfU;
        }
    }
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__init_txn_ff2 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_ff));
    // ALWAYS at AXI_Full.v:1159
    vlTOPp->AXI_Full__DOT__slave__DOT__axi_awready 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___GEN_2));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__axi_awvalid 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_21));
    // ALWAYS at AXI_Full.v:1159
    vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready = 
        ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___GEN_11));
    // ALWAYS at AXI_Full.v:407
    if (vlTOPp->reset) {
        vlTOPp->AXI_Full__DOT__master__DOT__compare_done = 0U;
    } else {
        if ((0U == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state))) {
            if (vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse) {
                vlTOPp->AXI_Full__DOT__master__DOT__compare_done = 0U;
            }
        } else {
            if ((1U != (IData)(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state))) {
                if ((2U != (IData)(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state))) {
                    vlTOPp->AXI_Full__DOT__master__DOT__compare_done 
                        = vlTOPp->AXI_Full__DOT__master__DOT___GEN_57;
                }
            }
        }
    }
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__error_reg = 
        ((~ (IData)(vlTOPp->reset)) & ((0U == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state))
                                        ? ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse)) 
                                           & (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_42))
                                        : (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_42)));
    // ALWAYS at AXI_Full.v:1159
    vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___GEN_3));
    // ALWAYS at AXI_Full.v:1159
    vlTOPp->AXI_Full__DOT__slave__DOT__axi_arready 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___GEN_17));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__axi_arvalid 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_34));
    // ALWAYS at AXI_Full.v:407
    if (vlTOPp->reset) {
        vlTOPp->AXI_Full__DOT__master__DOT__axi_rready = 0U;
    } else {
        if (vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid) {
            vlTOPp->AXI_Full__DOT__master__DOT__axi_rready 
                = (1U & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_33)));
        } else {
            if (vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse) {
                vlTOPp->AXI_Full__DOT__master__DOT__axi_rready = 0U;
            }
        }
    }
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__read_mismatch 
        = ((~ (IData)(vlTOPp->reset)) & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_50) 
                                         & (((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid)
                                              ? ((1U 
                                                  == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__mem_select))
                                                  ? vlTOPp->AXI_Full__DOT__slave__DOT__mem_data_out_1
                                                  : vlTOPp->AXI_Full__DOT__slave__DOT__mem_data_out_0)
                                              : 0U) 
                                            != vlTOPp->AXI_Full__DOT__master__DOT__expected_rdata)));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_32 = (
                                                   ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid) 
                                                    & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready))) 
                                                   | ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready)) 
                                                      & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready)));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_51 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen_cntr) 
                                                == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__init_txn_ff 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->io_INIT_AXI_TXN));
    vlTOPp->AXI_Full__DOT__master__DOT___T_6 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awready) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awvalid));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_14 = ((((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen_cntr) 
                                                  <= (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen)) 
                                                 & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready)) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_6 = ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wlast) 
                                               & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready));
    vlTOPp->io_TXN_DONE = vlTOPp->AXI_Full__DOT__master__DOT__compare_done;
    vlTOPp->io_ERROR = vlTOPp->AXI_Full__DOT__master__DOT__error_reg;
    // ALWAYS at AXI_Full.v:407
    if (vlTOPp->reset) {
        vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write = 0U;
    } else {
        if ((1U & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_52)))) {
            if (vlTOPp->AXI_Full__DOT__master__DOT___T_54) {
                if ((1U & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__writes_done)))) {
                    vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write 
                        = vlTOPp->AXI_Full__DOT__master__DOT___T_59;
                }
            }
        }
    }
    if (vlTOPp->reset) {
        vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_read = 0U;
    } else {
        if ((1U & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_52)))) {
            if ((1U & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_54)))) {
                if (vlTOPp->AXI_Full__DOT__master__DOT___T_60) {
                    if ((1U & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__reads_done)))) {
                        vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_read 
                            = vlTOPp->AXI_Full__DOT__master__DOT___T_65;
                    }
                }
            }
        }
    }
    vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state 
        = ((IData)(vlTOPp->reset) ? 0U : ((IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_52)
                                           ? ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse)
                                               ? 1U
                                               : 0U)
                                           : ((IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_54)
                                               ? ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__writes_done)
                                                   ? 2U
                                                   : 1U)
                                               : ((IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_60)
                                                   ? 
                                                  ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__reads_done)
                                                    ? 3U
                                                    : 2U)
                                                   : 0U))));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_13 = ((
                                                   ((((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag) 
                                                      & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready)) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid)) 
                                                    & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid))) 
                                                   & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wlast)) 
                                                  | ((~ 
                                                      ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready) 
                                                       & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid))) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid)));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_3 = (((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awready)) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awvalid)) 
                                               & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag)));
    vlTOPp->AXI_Full__DOT__master__DOT___T_26 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arready) 
                                                 & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_arvalid));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_45 = ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arready)) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_arvalid));
    vlTOPp->AXI_Full__DOT__master__DOT___T_33 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rlast) 
                                                 & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_rready));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_42 = ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_mismatch) 
                                                   | (IData)(vlTOPp->AXI_Full__DOT__master__DOT__error_reg));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__expected_rdata 
        = ((IData)(vlTOPp->reset) ? 1U : (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_41));
    // ALWAYS at AXI_Full.v:1159
    vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid = 
        ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___GEN_30));
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag) {
        if ((0U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__mem_select))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__mem_data_out_0 
                = ((0x1fU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                    ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_31
                    : ((0x1eU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                        ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_30
                        : ((0x1dU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                            ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_29
                            : ((0x1cU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_28
                                : ((0x1bU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                    ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_27
                                    : ((0x1aU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                        ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_26
                                        : ((0x19U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                            ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_25
                                            : ((0x18U 
                                                == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_24
                                                : (
                                                   (0x17U 
                                                    == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                    ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_23
                                                    : 
                                                   ((0x16U 
                                                     == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                     ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_22
                                                     : 
                                                    ((0x15U 
                                                      == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                      ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_21
                                                      : 
                                                     ((0x14U 
                                                       == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                       ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_20
                                                       : 
                                                      ((0x13U 
                                                        == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                        ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_19
                                                        : 
                                                       ((0x12U 
                                                         == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                         ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_18
                                                         : 
                                                        ((0x11U 
                                                          == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                          ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_17
                                                          : 
                                                         ((0x10U 
                                                           == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                           ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_16
                                                           : 
                                                          ((0xfU 
                                                            == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                            ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_15
                                                            : 
                                                           ((0xeU 
                                                             == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                             ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_14
                                                             : 
                                                            ((0xdU 
                                                              == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                              ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_13
                                                              : 
                                                             ((0xcU 
                                                               == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                               ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_12
                                                               : 
                                                              ((0xbU 
                                                                == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_11
                                                                : 
                                                               ((0xaU 
                                                                 == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                 ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_10
                                                                 : 
                                                                ((9U 
                                                                  == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                  ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_9
                                                                  : 
                                                                 ((8U 
                                                                   == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                   ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_8
                                                                   : 
                                                                  ((7U 
                                                                    == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                    ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_7
                                                                    : 
                                                                   ((6U 
                                                                     == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                     ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_6
                                                                     : 
                                                                    ((5U 
                                                                      == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                      ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_5
                                                                      : 
                                                                     ((4U 
                                                                       == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                       ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_4
                                                                       : 
                                                                      ((3U 
                                                                        == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                        ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_3
                                                                        : 
                                                                       ((2U 
                                                                         == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                         ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_2
                                                                         : 
                                                                        ((1U 
                                                                          == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                          ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_1
                                                                          : vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_0)))))))))))))))))))))))))))))));
        }
    }
    if (vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag) {
        if ((1U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__mem_select))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__mem_data_out_1 
                = ((0x1fU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                    ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_31
                    : ((0x1eU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                        ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_30
                        : ((0x1dU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                            ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_29
                            : ((0x1cU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_28
                                : ((0x1bU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                    ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_27
                                    : ((0x1aU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                        ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_26
                                        : ((0x19U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                            ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_25
                                            : ((0x18U 
                                                == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_24
                                                : (
                                                   (0x17U 
                                                    == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                    ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_23
                                                    : 
                                                   ((0x16U 
                                                     == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                     ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_22
                                                     : 
                                                    ((0x15U 
                                                      == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                      ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_21
                                                      : 
                                                     ((0x14U 
                                                       == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                       ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_20
                                                       : 
                                                      ((0x13U 
                                                        == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                        ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_19
                                                        : 
                                                       ((0x12U 
                                                         == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                         ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_18
                                                         : 
                                                        ((0x11U 
                                                          == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                          ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_17
                                                          : 
                                                         ((0x10U 
                                                           == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                           ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_16
                                                           : 
                                                          ((0xfU 
                                                            == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                            ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_15
                                                            : 
                                                           ((0xeU 
                                                             == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                             ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_14
                                                             : 
                                                            ((0xdU 
                                                              == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                              ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_13
                                                              : 
                                                             ((0xcU 
                                                               == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                               ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_12
                                                               : 
                                                              ((0xbU 
                                                                == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_11
                                                                : 
                                                               ((0xaU 
                                                                 == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                 ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_10
                                                                 : 
                                                                ((9U 
                                                                  == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                  ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_9
                                                                  : 
                                                                 ((8U 
                                                                   == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                   ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_8
                                                                   : 
                                                                  ((7U 
                                                                    == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                    ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_7
                                                                    : 
                                                                   ((6U 
                                                                     == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                     ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_6
                                                                     : 
                                                                    ((5U 
                                                                      == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                      ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_5
                                                                      : 
                                                                     ((4U 
                                                                       == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                       ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_4
                                                                       : 
                                                                      ((3U 
                                                                        == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                        ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_3
                                                                        : 
                                                                       ((2U 
                                                                         == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                         ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_2
                                                                         : 
                                                                        ((1U 
                                                                          == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))
                                                                          ? vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_1
                                                                          : vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_0)))))))))))))))))))))))))))))));
        }
    }
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_22 = (VL_ULL(0x1ffffffff) 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_6)
                                                       ? 
                                                      (VL_ULL(0x40) 
                                                       + (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awaddr)))
                                                       : (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awaddr))));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_11 = ((
                                                   ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid)) 
                                                   & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag)) 
                                                  | ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_6)) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready)));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_9 = (0x1ffU 
                                                 & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_3)
                                                     ? 0U
                                                     : 
                                                    ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_14)
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen_cntr))
                                                      : (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen_cntr))));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_6 = (VL_ULL(0x1ffffffff) 
                                                 & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_3)
                                                     ? (QData)((IData)(
                                                                       ((IData)(0x40000000U) 
                                                                        + vlTOPp->AXI_Full__DOT__master__DOT__axi_awaddr)))
                                                     : 
                                                    ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_14)
                                                      ? 
                                                     ((0U 
                                                       == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awburst))
                                                       ? (QData)((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr))
                                                       : 
                                                      ((1U 
                                                        == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awburst))
                                                        ? 
                                                       ((QData)((IData)(
                                                                        (0x7fffffffU 
                                                                         & ((IData)(1U) 
                                                                            + 
                                                                            (0x3fffffffU 
                                                                             & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                                                                >> 2U)))))) 
                                                        << 2U)
                                                        : 
                                                       ((2U 
                                                         == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awburst))
                                                         ? 
                                                        (((0x7ffU 
                                                           & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                                              & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen) 
                                                                 << 2U))) 
                                                          == 
                                                          (0x7ffU 
                                                           & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen) 
                                                              << 2U)))
                                                          ? 
                                                         ((QData)((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr)) 
                                                          - (QData)((IData)(
                                                                            (0x7ffU 
                                                                             & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen) 
                                                                                << 2U)))))
                                                          : 
                                                         ((QData)((IData)(
                                                                          (0x7fffffffU 
                                                                           & ((IData)(1U) 
                                                                              + 
                                                                              (0x3fffffffU 
                                                                               & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                                                                >> 2U)))))) 
                                                          << 2U))
                                                         : (QData)((IData)(
                                                                           (0x7fffffffU 
                                                                            & ((IData)(1U) 
                                                                               + 
                                                                               (0x3fffffffU 
                                                                                & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                                                                >> 2U)))))))))
                                                      : (QData)((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr)))));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_35 = (VL_ULL(0x1ffffffff) 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_26)
                                                       ? 
                                                      (VL_ULL(0x40) 
                                                       + (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_araddr)))
                                                       : (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_araddr))));
    vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse 
        = ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_ff2)) 
           & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_ff));
    vlTOPp->AXI_Full__DOT__master__DOT___T_52 = (0U 
                                                 == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Full__DOT__master__DOT___T_54 = (1U 
                                                 == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Full__DOT__master__DOT___T_60 = (2U 
                                                 == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_57 = (
                                                   (3U 
                                                    == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state)) 
                                                   | (IData)(vlTOPp->AXI_Full__DOT__master__DOT__compare_done));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_34 = (
                                                   ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_arvalid)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_read)) 
                                                   | ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_26)) 
                                                      & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_arvalid)));
    vlTOPp->AXI_Full__DOT__master__DOT___T_65 = (1U 
                                                 & (((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_arvalid)) 
                                                     & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__burst_read_active))) 
                                                    & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_read))));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_21 = (
                                                   ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awvalid)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write)) 
                                                   | ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_6)) 
                                                      & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awvalid)));
    vlTOPp->AXI_Full__DOT__master__DOT___T_59 = (1U 
                                                 & (((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awvalid)) 
                                                     & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write))) 
                                                    & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__burst_write_active))));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__writes_done 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_72));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__reads_done 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_75));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_60 = ((((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen_cntr) 
                                                  <= (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen)) 
                                                 & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid)) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_rready));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_50 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_rready));
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x1fU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_31 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x1eU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_30 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x1dU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_29 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x1cU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_28 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x1bU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_27 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x1aU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_26 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x19U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_25 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x18U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_24 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x17U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_23 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x16U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_22 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x15U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_21 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x14U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_20 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x13U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_19 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x12U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_18 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x11U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_17 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0x10U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_16 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0xfU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_15 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0xeU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_14 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0xdU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_13 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0xcU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_12 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0xbU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_11 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0xaU == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_10 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((9U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_9 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((8U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_8 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((7U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_7 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((6U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_6 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((5U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_5 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((4U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_4 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((3U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_3 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((2U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_2 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((1U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_1 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    if (vlTOPp->AXI_Full__DOT__master__DOT__wnext) {
        if ((0U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_95))) {
            vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_0 
                = vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata;
        }
    }
    // ALWAYS at AXI_Full.v:1159
    vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___GEN_18));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_44 = (7U 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_6)
                                                       ? 
                                                      ((2U 
                                                        & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_burst_counter))
                                                        ? 
                                                       ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse)
                                                         ? 0U
                                                         : (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_burst_counter))
                                                        : 
                                                       ((IData)(1U) 
                                                        + (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_burst_counter)))
                                                       : (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_burst_counter)));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_46 = (7U 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_26)
                                                       ? 
                                                      ((2U 
                                                        & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_burst_counter))
                                                        ? 
                                                       ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse)
                                                         ? 0U
                                                         : (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_burst_counter))
                                                        : 
                                                       ((IData)(1U) 
                                                        + (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_burst_counter)))
                                                       : (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_burst_counter)));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_71 = ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write) 
                                                   | ((~ 
                                                       ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid) 
                                                        & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready))) 
                                                      & ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse)) 
                                                         & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__burst_write_active))));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_41 = (VL_ULL(0x1ffffffff) 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_50)
                                                       ? 
                                                      (VL_ULL(1) 
                                                       + (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__expected_rdata)))
                                                       : (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__expected_rdata))));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_37 = (0x3fU 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_read)
                                                       ? 0U
                                                       : 
                                                      (((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_50) 
                                                        & (0xfU 
                                                           != (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_index)))
                                                        ? 
                                                       ((IData)(1U) 
                                                        + (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_index))
                                                        : (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_index))));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_74 = ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_read) 
                                                   | ((~ 
                                                       ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_50) 
                                                        & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rlast))) 
                                                      & ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse)) 
                                                         & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__burst_read_active))));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_52 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_50) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_51));
    vlTOPp->AXI_Full__DOT__master__DOT__wnext = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready) 
                                                 & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_72 = (
                                                   (((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid) 
                                                     & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_burst_counter) 
                                                        >> 1U)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready)) 
                                                   | (IData)(vlTOPp->AXI_Full__DOT__master__DOT__writes_done));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_75 = (
                                                   (((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_50) 
                                                     & (0xfU 
                                                        == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_index))) 
                                                    & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_burst_counter) 
                                                       >> 1U)) 
                                                   | (IData)(vlTOPp->AXI_Full__DOT__master__DOT__reads_done));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_27 = (
                                                   ((0xeU 
                                                     == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_index)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__wnext)) 
                                                   | ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__wnext)) 
                                                      & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wlast)));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_29 = (0x3fU 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write)
                                                       ? 0U
                                                       : 
                                                      (((IData)(vlTOPp->AXI_Full__DOT__master__DOT__wnext) 
                                                        & (0xfU 
                                                           != (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_index)))
                                                        ? 
                                                       ((IData)(1U) 
                                                        + (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_index))
                                                        : (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_index))));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_24 = (
                                                   ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write)) 
                                                   | ((~ 
                                                       ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__wnext) 
                                                        & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wlast))) 
                                                      & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid)));
    // ALWAYS at AXI_Full.v:407
    vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata = 
        ((IData)(vlTOPp->reset) ? 1U : (IData)(vlTOPp->AXI_Full__DOT__master__DOT___GEN_30));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_30 = (((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag) 
                                                   & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid))) 
                                                  | ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_50)) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid)));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_20 = ((
                                                   ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_51) 
                                                    & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rlast))) 
                                                   & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)) 
                                                  | ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_rready)) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rlast)));
    vlTOPp->AXI_Full__DOT__slave__DOT__mem_select = 
        (3U & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)
                ? (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                   >> 6U) : ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag)
                              ? (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                 >> 6U) : 0U)));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_5 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_3) 
                                               & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_49 = (((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_45) 
                                                 & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag))) 
                                                & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_56 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_45) 
                                                & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_95 = (0xffU 
                                                & ((0xfU 
                                                    & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)
                                                        ? 
                                                       (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                                        >> 2U)
                                                        : 
                                                       ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag)
                                                         ? 
                                                        (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                                         >> 2U)
                                                         : 0U))) 
                                                   + 
                                                   (0x7fU 
                                                    & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__mem_select) 
                                                       << 4U))));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_2 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_5) 
                                                 | ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_6) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awready)));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_3 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_5) 
                                                 | ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_6)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag)));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_17 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_49) 
                                                  | ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_52) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arready)));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_18 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_49) 
                                                  | ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_52)) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_27 = (0x1ffU 
                                                  & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_56)
                                                      ? 0U
                                                      : 
                                                     ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_60)
                                                       ? 
                                                      ((IData)(1U) 
                                                       + (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen_cntr))
                                                       : (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen_cntr))));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_24 = (VL_ULL(0x1ffffffff) 
                                                  & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_56)
                                                      ? (QData)((IData)(
                                                                        ((IData)(0x40000000U) 
                                                                         + vlTOPp->AXI_Full__DOT__master__DOT__axi_araddr)))
                                                      : 
                                                     ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_60)
                                                       ? 
                                                      ((0U 
                                                        == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arburst))
                                                        ? (QData)((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr))
                                                        : 
                                                       ((1U 
                                                         == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arburst))
                                                         ? 
                                                        ((QData)((IData)(
                                                                         (0x7fffffffU 
                                                                          & ((IData)(1U) 
                                                                             + 
                                                                             (0x3fffffffU 
                                                                              & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                                                                >> 2U)))))) 
                                                         << 2U)
                                                         : 
                                                        ((2U 
                                                          == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arburst))
                                                          ? 
                                                         (((0x7ffU 
                                                            & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                                               & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen) 
                                                                  << 2U))) 
                                                           == 
                                                           (0x7ffU 
                                                            & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen) 
                                                               << 2U)))
                                                           ? 
                                                          ((QData)((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr)) 
                                                           - (QData)((IData)(
                                                                             (0x7ffU 
                                                                              & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen) 
                                                                                << 2U)))))
                                                           : 
                                                          ((QData)((IData)(
                                                                           (0x7fffffffU 
                                                                            & ((IData)(1U) 
                                                                               + 
                                                                               (0x3fffffffU 
                                                                                & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                                                                >> 2U)))))) 
                                                           << 2U))
                                                          : (QData)((IData)(
                                                                            (0x7fffffffU 
                                                                             & ((IData)(1U) 
                                                                                + 
                                                                                (0x3fffffffU 
                                                                                & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                                                                >> 2U)))))))))
                                                       : (QData)((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr)))));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_30 = (VL_ULL(0x1ffffffff) 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__wnext)
                                                       ? 
                                                      (VL_ULL(1) 
                                                       + (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata)))
                                                       : (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata))));
}

void VAXI_Full::_settle__TOP__2(VAXI_Full__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Full::_settle__TOP__2\n"); );
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_TXN_DONE = vlTOPp->AXI_Full__DOT__master__DOT__compare_done;
    vlTOPp->io_ERROR = vlTOPp->AXI_Full__DOT__master__DOT__error_reg;
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_32 = (
                                                   ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid) 
                                                    & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready))) 
                                                   | ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready)) 
                                                      & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready)));
    vlTOPp->AXI_Full__DOT__master__DOT___T_33 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rlast) 
                                                 & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_rready));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_42 = ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_mismatch) 
                                                   | (IData)(vlTOPp->AXI_Full__DOT__master__DOT__error_reg));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_13 = ((
                                                   ((((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag) 
                                                      & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready)) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid)) 
                                                    & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid))) 
                                                   & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wlast)) 
                                                  | ((~ 
                                                      ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready) 
                                                       & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid))) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid)));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_14 = ((((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen_cntr) 
                                                  <= (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen)) 
                                                 & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready)) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid));
    vlTOPp->AXI_Full__DOT__master__DOT___T_6 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awready) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awvalid));
    vlTOPp->AXI_Full__DOT__master__DOT___T_26 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arready) 
                                                 & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_arvalid));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_6 = ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wlast) 
                                               & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_51 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen_cntr) 
                                                == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_3 = (((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awready)) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awvalid)) 
                                               & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag)));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_45 = ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arready)) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_arvalid));
    vlTOPp->AXI_Full__DOT__master__DOT___T_52 = (0U 
                                                 == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Full__DOT__master__DOT___T_54 = (1U 
                                                 == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Full__DOT__master__DOT___T_60 = (2U 
                                                 == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_57 = (
                                                   (3U 
                                                    == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state)) 
                                                   | (IData)(vlTOPp->AXI_Full__DOT__master__DOT__compare_done));
    vlTOPp->AXI_Full__DOT__master__DOT___T_59 = (1U 
                                                 & (((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awvalid)) 
                                                     & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write))) 
                                                    & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__burst_write_active))));
    vlTOPp->AXI_Full__DOT__master__DOT___T_65 = (1U 
                                                 & (((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_arvalid)) 
                                                     & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__burst_read_active))) 
                                                    & (~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_read))));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_60 = ((((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen_cntr) 
                                                  <= (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen)) 
                                                 & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid)) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_rready));
    vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse 
        = ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_ff2)) 
           & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_ff));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_50 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_rready));
    vlTOPp->AXI_Full__DOT__master__DOT__wnext = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready) 
                                                 & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_72 = (
                                                   (((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid) 
                                                     & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_burst_counter) 
                                                        >> 1U)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready)) 
                                                   | (IData)(vlTOPp->AXI_Full__DOT__master__DOT__writes_done));
    vlTOPp->AXI_Full__DOT__slave__DOT__mem_select = 
        (3U & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)
                ? (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                   >> 6U) : ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag)
                              ? (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                 >> 6U) : 0U)));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_22 = (VL_ULL(0x1ffffffff) 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_6)
                                                       ? 
                                                      (VL_ULL(0x40) 
                                                       + (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awaddr)))
                                                       : (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awaddr))));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_21 = (
                                                   ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awvalid)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write)) 
                                                   | ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_6)) 
                                                      & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_awvalid)));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_35 = (VL_ULL(0x1ffffffff) 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_26)
                                                       ? 
                                                      (VL_ULL(0x40) 
                                                       + (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_araddr)))
                                                       : (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_araddr))));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_34 = (
                                                   ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_arvalid)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_read)) 
                                                   | ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_26)) 
                                                      & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_arvalid)));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_11 = ((
                                                   ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid)) 
                                                   & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag)) 
                                                  | ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_6)) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready)));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_20 = ((
                                                   ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_51) 
                                                    & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rlast))) 
                                                   & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)) 
                                                  | ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_rready)) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rlast)));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_9 = (0x1ffU 
                                                 & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_3)
                                                     ? 0U
                                                     : 
                                                    ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_14)
                                                      ? 
                                                     ((IData)(1U) 
                                                      + (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen_cntr))
                                                      : (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen_cntr))));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_6 = (VL_ULL(0x1ffffffff) 
                                                 & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_3)
                                                     ? (QData)((IData)(
                                                                       ((IData)(0x40000000U) 
                                                                        + vlTOPp->AXI_Full__DOT__master__DOT__axi_awaddr)))
                                                     : 
                                                    ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_14)
                                                      ? 
                                                     ((0U 
                                                       == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awburst))
                                                       ? (QData)((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr))
                                                       : 
                                                      ((1U 
                                                        == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awburst))
                                                        ? 
                                                       ((QData)((IData)(
                                                                        (0x7fffffffU 
                                                                         & ((IData)(1U) 
                                                                            + 
                                                                            (0x3fffffffU 
                                                                             & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                                                                >> 2U)))))) 
                                                        << 2U)
                                                        : 
                                                       ((2U 
                                                         == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awburst))
                                                         ? 
                                                        (((0x7ffU 
                                                           & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                                              & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen) 
                                                                 << 2U))) 
                                                          == 
                                                          (0x7ffU 
                                                           & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen) 
                                                              << 2U)))
                                                          ? 
                                                         ((QData)((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr)) 
                                                          - (QData)((IData)(
                                                                            (0x7ffU 
                                                                             & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen) 
                                                                                << 2U)))))
                                                          : 
                                                         ((QData)((IData)(
                                                                          (0x7fffffffU 
                                                                           & ((IData)(1U) 
                                                                              + 
                                                                              (0x3fffffffU 
                                                                               & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                                                                >> 2U)))))) 
                                                          << 2U))
                                                         : (QData)((IData)(
                                                                           (0x7fffffffU 
                                                                            & ((IData)(1U) 
                                                                               + 
                                                                               (0x3fffffffU 
                                                                                & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                                                                >> 2U)))))))))
                                                      : (QData)((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr)))));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_5 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_3) 
                                               & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_49 = (((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_45) 
                                                 & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag))) 
                                                & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_56 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_45) 
                                                & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_44 = (7U 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_6)
                                                       ? 
                                                      ((2U 
                                                        & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_burst_counter))
                                                        ? 
                                                       ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse)
                                                         ? 0U
                                                         : (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_burst_counter))
                                                        : 
                                                       ((IData)(1U) 
                                                        + (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_burst_counter)))
                                                       : (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_burst_counter)));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_46 = (7U 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT___T_26)
                                                       ? 
                                                      ((2U 
                                                        & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_burst_counter))
                                                        ? 
                                                       ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse)
                                                         ? 0U
                                                         : (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_burst_counter))
                                                        : 
                                                       ((IData)(1U) 
                                                        + (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_burst_counter)))
                                                       : (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_burst_counter)));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_71 = ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write) 
                                                   | ((~ 
                                                       ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid) 
                                                        & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready))) 
                                                      & ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse)) 
                                                         & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__burst_write_active))));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_41 = (VL_ULL(0x1ffffffff) 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_50)
                                                       ? 
                                                      (VL_ULL(1) 
                                                       + (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__expected_rdata)))
                                                       : (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__expected_rdata))));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_37 = (0x3fU 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_read)
                                                       ? 0U
                                                       : 
                                                      (((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_50) 
                                                        & (0xfU 
                                                           != (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_index)))
                                                        ? 
                                                       ((IData)(1U) 
                                                        + (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_index))
                                                        : (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_index))));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_74 = ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_read) 
                                                   | ((~ 
                                                       ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_50) 
                                                        & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rlast))) 
                                                      & ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse)) 
                                                         & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__burst_read_active))));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_52 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_50) 
                                                & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_51));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_30 = (((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag) 
                                                   & (~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid))) 
                                                  | ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_50)) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid)));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_75 = (
                                                   (((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_50) 
                                                     & (0xfU 
                                                        == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_index))) 
                                                    & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__read_burst_counter) 
                                                       >> 1U)) 
                                                   | (IData)(vlTOPp->AXI_Full__DOT__master__DOT__reads_done));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_27 = (
                                                   ((0xeU 
                                                     == (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_index)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__wnext)) 
                                                   | ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__wnext)) 
                                                      & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wlast)));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_29 = (0x3fU 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write)
                                                       ? 0U
                                                       : 
                                                      (((IData)(vlTOPp->AXI_Full__DOT__master__DOT__wnext) 
                                                        & (0xfU 
                                                           != (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_index)))
                                                        ? 
                                                       ((IData)(1U) 
                                                        + (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_index))
                                                        : (IData)(vlTOPp->AXI_Full__DOT__master__DOT__write_index))));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_24 = (
                                                   ((~ (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write)) 
                                                   | ((~ 
                                                       ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__wnext) 
                                                        & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wlast))) 
                                                      & (IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid)));
    vlTOPp->AXI_Full__DOT__master__DOT___GEN_30 = (VL_ULL(0x1ffffffff) 
                                                   & ((IData)(vlTOPp->AXI_Full__DOT__master__DOT__wnext)
                                                       ? 
                                                      (VL_ULL(1) 
                                                       + (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata)))
                                                       : (QData)((IData)(vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata))));
    vlTOPp->AXI_Full__DOT__slave__DOT___T_95 = (0xffU 
                                                & ((0xfU 
                                                    & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)
                                                        ? 
                                                       (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                                        >> 2U)
                                                        : 
                                                       ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag)
                                                         ? 
                                                        (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                                         >> 2U)
                                                         : 0U))) 
                                                   + 
                                                   (0x7fU 
                                                    & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__mem_select) 
                                                       << 4U))));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_2 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_5) 
                                                 | ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_6) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awready)));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_3 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_5) 
                                                 | ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_6)) 
                                                    & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag)));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_27 = (0x1ffU 
                                                  & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_56)
                                                      ? 0U
                                                      : 
                                                     ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_60)
                                                       ? 
                                                      ((IData)(1U) 
                                                       + (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen_cntr))
                                                       : (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen_cntr))));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_24 = (VL_ULL(0x1ffffffff) 
                                                  & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_56)
                                                      ? (QData)((IData)(
                                                                        ((IData)(0x40000000U) 
                                                                         + vlTOPp->AXI_Full__DOT__master__DOT__axi_araddr)))
                                                      : 
                                                     ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_60)
                                                       ? 
                                                      ((0U 
                                                        == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arburst))
                                                        ? (QData)((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr))
                                                        : 
                                                       ((1U 
                                                         == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arburst))
                                                         ? 
                                                        ((QData)((IData)(
                                                                         (0x7fffffffU 
                                                                          & ((IData)(1U) 
                                                                             + 
                                                                             (0x3fffffffU 
                                                                              & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                                                                >> 2U)))))) 
                                                         << 2U)
                                                         : 
                                                        ((2U 
                                                          == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arburst))
                                                          ? 
                                                         (((0x7ffU 
                                                            & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                                               & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen) 
                                                                  << 2U))) 
                                                           == 
                                                           (0x7ffU 
                                                            & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen) 
                                                               << 2U)))
                                                           ? 
                                                          ((QData)((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr)) 
                                                           - (QData)((IData)(
                                                                             (0x7ffU 
                                                                              & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen) 
                                                                                << 2U)))))
                                                           : 
                                                          ((QData)((IData)(
                                                                           (0x7fffffffU 
                                                                            & ((IData)(1U) 
                                                                               + 
                                                                               (0x3fffffffU 
                                                                                & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                                                                >> 2U)))))) 
                                                           << 2U))
                                                          : (QData)((IData)(
                                                                            (0x7fffffffU 
                                                                             & ((IData)(1U) 
                                                                                + 
                                                                                (0x3fffffffU 
                                                                                & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                                                                >> 2U)))))))))
                                                       : (QData)((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr)))));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_17 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_49) 
                                                  | ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_52) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arready)));
    vlTOPp->AXI_Full__DOT__slave__DOT___GEN_18 = ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_49) 
                                                  | ((~ (IData)(vlTOPp->AXI_Full__DOT__slave__DOT___T_52)) 
                                                     & (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)));
}

void VAXI_Full::_eval(VAXI_Full__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Full::_eval\n"); );
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock)))) {
        vlTOPp->_sequent__TOP__1(vlSymsp);
        vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
    }
    // Final
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void VAXI_Full::_eval_initial(VAXI_Full__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Full::_eval_initial\n"); );
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void VAXI_Full::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Full::final\n"); );
    // Variables
    VAXI_Full__Syms* __restrict vlSymsp = this->__VlSymsp;
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VAXI_Full::_eval_settle(VAXI_Full__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Full::_eval_settle\n"); );
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__2(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
}

VL_INLINE_OPT QData VAXI_Full::_change_request(VAXI_Full__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Full::_change_request\n"); );
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VAXI_Full::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Full::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((io_INIT_AXI_TXN & 0xfeU))) {
        Verilated::overWidthError("io_INIT_AXI_TXN");}
}
#endif // VL_DEBUG

void VAXI_Full::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Full::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_INIT_AXI_TXN = VL_RAND_RESET_I(1);
    io_TXN_DONE = VL_RAND_RESET_I(1);
    io_ERROR = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__error_reg = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__axi_awaddr = VL_RAND_RESET_I(32);
    AXI_Full__DOT__master__DOT__axi_awvalid = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__axi_wdata = VL_RAND_RESET_I(32);
    AXI_Full__DOT__master__DOT__axi_wlast = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__axi_wvalid = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__axi_bready = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__axi_araddr = VL_RAND_RESET_I(32);
    AXI_Full__DOT__master__DOT__axi_arvalid = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__axi_rready = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__compare_done = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__init_txn_ff = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__init_txn_ff2 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__init_txn_pulse = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__read_index = VL_RAND_RESET_I(5);
    AXI_Full__DOT__master__DOT__read_mismatch = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__expected_rdata = VL_RAND_RESET_I(32);
    AXI_Full__DOT__master__DOT__write_burst_counter = VL_RAND_RESET_I(2);
    AXI_Full__DOT__master__DOT__read_burst_counter = VL_RAND_RESET_I(2);
    AXI_Full__DOT__master__DOT__burst_write_active = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__writes_done = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__burst_read_active = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__reads_done = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__write_index = VL_RAND_RESET_I(5);
    AXI_Full__DOT__master__DOT__start_single_burst_write = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___T_6 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_21 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_22 = VL_RAND_RESET_Q(33);
    AXI_Full__DOT__master__DOT__wnext = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_24 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_27 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_29 = VL_RAND_RESET_I(6);
    AXI_Full__DOT__master__DOT___GEN_30 = VL_RAND_RESET_Q(33);
    AXI_Full__DOT__master__DOT___GEN_32 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT__start_single_burst_read = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___T_26 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_34 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_35 = VL_RAND_RESET_Q(33);
    AXI_Full__DOT__master__DOT___GEN_37 = VL_RAND_RESET_I(6);
    AXI_Full__DOT__master__DOT___T_33 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_41 = VL_RAND_RESET_Q(33);
    AXI_Full__DOT__master__DOT___GEN_42 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_44 = VL_RAND_RESET_I(3);
    AXI_Full__DOT__master__DOT___GEN_46 = VL_RAND_RESET_I(3);
    AXI_Full__DOT__master__DOT__mst_exec_state = VL_RAND_RESET_I(2);
    AXI_Full__DOT__master__DOT___T_52 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___T_54 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___T_60 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___T_59 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___T_65 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_57 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_71 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_72 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_74 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__master__DOT___GEN_75 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT__axi_awready = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT__axi_wready = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT__axi_bvalid = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT__axi_arready = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT__axi_rlast = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT__axi_rvalid = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT__axi_awv_awr_flag = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___T_3 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT__axi_arv_arr_flag = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___T_5 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___T_6 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___GEN_2 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___GEN_3 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT__axi_awaddr = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__axi_awburst = VL_RAND_RESET_I(2);
    AXI_Full__DOT__slave__DOT__axi_awlen = VL_RAND_RESET_I(8);
    AXI_Full__DOT__slave__DOT__axi_awlen_cntr = VL_RAND_RESET_I(8);
    AXI_Full__DOT__slave__DOT___T_14 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___GEN_6 = VL_RAND_RESET_Q(33);
    AXI_Full__DOT__slave__DOT___GEN_9 = VL_RAND_RESET_I(9);
    AXI_Full__DOT__slave__DOT___GEN_11 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___GEN_13 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___T_45 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___T_49 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___T_50 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT__axi_arlen_cntr = VL_RAND_RESET_I(8);
    AXI_Full__DOT__slave__DOT__axi_arlen = VL_RAND_RESET_I(8);
    AXI_Full__DOT__slave__DOT___T_51 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___T_52 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___GEN_17 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___GEN_18 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___T_56 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT__axi_araddr = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__axi_arburst = VL_RAND_RESET_I(2);
    AXI_Full__DOT__slave__DOT___T_60 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___GEN_20 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT___GEN_24 = VL_RAND_RESET_Q(33);
    AXI_Full__DOT__slave__DOT___GEN_27 = VL_RAND_RESET_I(9);
    AXI_Full__DOT__slave__DOT___GEN_30 = VL_RAND_RESET_I(1);
    AXI_Full__DOT__slave__DOT__byte_ram_0 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_1 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_2 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_3 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_4 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_5 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_6 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_7 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_8 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_9 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_10 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_11 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_12 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_13 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_14 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_15 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_16 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_17 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_18 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_19 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_20 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_21 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_22 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_23 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_24 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_25 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_26 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_27 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_28 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_29 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_30 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__byte_ram_31 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__mem_select = VL_RAND_RESET_I(2);
    AXI_Full__DOT__slave__DOT___T_95 = VL_RAND_RESET_I(8);
    AXI_Full__DOT__slave__DOT__mem_data_out_0 = VL_RAND_RESET_I(32);
    AXI_Full__DOT__slave__DOT__mem_data_out_1 = VL_RAND_RESET_I(32);
    __Vm_traceActivity = VL_RAND_RESET_I(32);
}
