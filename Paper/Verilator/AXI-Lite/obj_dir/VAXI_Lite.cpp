// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VAXI_Lite.h for the primary calling header

#include "VAXI_Lite.h"
#include "VAXI_Lite__Syms.h"


//--------------------
// STATIC VARIABLES


//--------------------

VL_CTOR_IMP(VAXI_Lite) {
    VAXI_Lite__Syms* __restrict vlSymsp = __VlSymsp = new VAXI_Lite__Syms(this, name());
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VAXI_Lite::__Vconfigure(VAXI_Lite__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

VAXI_Lite::~VAXI_Lite() {
    delete __VlSymsp; __VlSymsp=NULL;
}

//--------------------


void VAXI_Lite::eval() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VAXI_Lite::eval\n"); );
    VAXI_Lite__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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

void VAXI_Lite::_eval_initial_loop(VAXI_Lite__Syms* __restrict vlSymsp) {
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

VL_INLINE_OPT void VAXI_Lite::_sequent__TOP__1(VAXI_Lite__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Lite::_sequent__TOP__1\n"); );
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__error_reg = 
        ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_74));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__read_mismatch 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_73));
    // ALWAYS at AXI_Lite.v:792
    vlTOPp->AXI_Lite__DOT__slave__DOT__aw_en = ((IData)(vlTOPp->reset) 
                                                | (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___GEN_3));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__last_read = 
        ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_71));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__last_write 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_69));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_28));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_23));
    // ALWAYS at AXI_Lite.v:792
    vlTOPp->AXI_Lite__DOT__slave__DOT__axi_arready 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___T_62));
    // ALWAYS at AXI_Lite.v:792
    vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awready 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___T_3));
    // ALWAYS at AXI_Lite.v:396
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__master__DOT__expected_rdata = 0U;
    } else {
        if (vlTOPp->AXI_Lite__DOT__master__DOT___T_25) {
            vlTOPp->AXI_Lite__DOT__master__DOT__expected_rdata 
                = (0xfffU & ((IData)(0x666U) + (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_index)));
        } else {
            if (vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse) {
                vlTOPp->AXI_Lite__DOT__master__DOT__expected_rdata = 0x666U;
            }
        }
    }
    // ALWAYS at AXI_Lite.v:792
    vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid = 
        ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___GEN_48));
    // ALWAYS at AXI_Lite.v:792
    vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid = 
        ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___GEN_43));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__axi_arvalid 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_26));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid 
        = ((~ (IData)(vlTOPp->reset)) & ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_6)) 
                                         & ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)) 
                                            & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_1))));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_ff2 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_ff));
    // ALWAYS at AXI_Lite.v:396
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__master__DOT__compare_done = 0U;
    } else {
        if ((0U == (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state))) {
            if (vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse) {
                vlTOPp->AXI_Lite__DOT__master__DOT__compare_done = 0U;
            }
        } else {
            if ((1U != (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state))) {
                if ((2U != (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state))) {
                    vlTOPp->AXI_Lite__DOT__master__DOT__compare_done 
                        = vlTOPp->AXI_Lite__DOT__master__DOT___GEN_51;
                }
            }
        }
    }
    // ALWAYS at AXI_Lite.v:792
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rdata = 0U;
    } else {
        if (vlTOPp->AXI_Lite__DOT__slave__DOT___T_65) {
            vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rdata 
                = ((0U == (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_araddr 
                                 >> 2U))) ? vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg0
                    : ((1U == (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_araddr 
                                     >> 2U))) ? vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg1
                        : ((2U == (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_araddr 
                                         >> 2U))) ? vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg2
                            : ((3U == (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_araddr 
                                             >> 2U)))
                                ? vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg3
                                : 0U))));
        }
    }
    vlTOPp->io_ERROR = vlTOPp->AXI_Lite__DOT__master__DOT__error_reg;
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_74 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_mismatch) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__error_reg));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__read_index 
        = (7U & ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_25)));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_25 = ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid) 
                                                 & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_23 = (
                                                   ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid) 
                                                    & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready))) 
                                                   | ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready)) 
                                                      & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready)));
    vlTOPp->AXI_Lite__DOT__slave__DOT___T_4 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready) 
                                               & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid));
    vlTOPp->AXI_Lite__DOT__slave__DOT___T_65 = (((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_arready) 
                                                 & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_arvalid)) 
                                                & (~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid)));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_13 = ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_arready) 
                                                 & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_arvalid));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_6 = ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awready) 
                                                & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_ff 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->io_INIT_AXI_TXN));
    vlTOPp->io_TXN_DONE = vlTOPp->AXI_Lite__DOT__master__DOT__compare_done;
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state 
        = ((IData)(vlTOPp->reset) ? 0U : ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_28)
                                           ? ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)
                                               ? 1U
                                               : 0U)
                                           : ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_31)
                                               ? ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__writes_done)
                                                   ? 2U
                                                   : 1U)
                                               : ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_44)
                                                   ? 
                                                  ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__reads_done)
                                                    ? 3U
                                                    : 2U)
                                                   : 0U))));
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__master__DOT__start_single_read = 0U;
    } else {
        if ((1U & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_28)))) {
            if ((1U & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_31)))) {
                if (vlTOPp->AXI_Lite__DOT__master__DOT___T_44) {
                    if ((1U & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__reads_done)))) {
                        vlTOPp->AXI_Lite__DOT__master__DOT__start_single_read 
                            = vlTOPp->AXI_Lite__DOT__master__DOT___GEN_45;
                    }
                }
            }
        }
    }
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__master__DOT__read_issued = 0U;
    } else {
        if ((1U & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_28)))) {
            if ((1U & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_31)))) {
                if (vlTOPp->AXI_Lite__DOT__master__DOT___T_44) {
                    if ((1U & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__reads_done)))) {
                        vlTOPp->AXI_Lite__DOT__master__DOT__read_issued 
                            = vlTOPp->AXI_Lite__DOT__master__DOT___GEN_46;
                    }
                }
            }
        }
    }
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write = 0U;
    } else {
        if ((1U & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_28)))) {
            if (vlTOPp->AXI_Lite__DOT__master__DOT___T_31) {
                if ((1U & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__writes_done)))) {
                    vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write 
                        = vlTOPp->AXI_Lite__DOT__master__DOT___GEN_38;
                }
            }
        }
    }
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__master__DOT__write_issued = 0U;
    } else {
        if ((1U & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_28)))) {
            if (vlTOPp->AXI_Lite__DOT__master__DOT___T_31) {
                if ((1U & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__writes_done)))) {
                    vlTOPp->AXI_Lite__DOT__master__DOT__write_issued 
                        = vlTOPp->AXI_Lite__DOT__master__DOT___GEN_39;
                }
            }
        }
    }
    // ALWAYS at AXI_Lite.v:792
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__slave__DOT__axi_araddr = 0U;
    } else {
        if (vlTOPp->AXI_Lite__DOT__slave__DOT___T_62) {
            vlTOPp->AXI_Lite__DOT__slave__DOT__axi_araddr 
                = ((IData)(0x40000000U) + vlTOPp->AXI_Lite__DOT__master__DOT__axi_araddr);
        }
    }
    // ALWAYS at AXI_Lite.v:792
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg0 = 0U;
    } else {
        if (vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg_wren) {
            if ((0U == (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr 
                              >> 2U)))) {
                vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg0 
                    = vlTOPp->AXI_Lite__DOT__master__DOT__axi_wdata;
            }
        }
    }
    // ALWAYS at AXI_Lite.v:792
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg1 = 0U;
    } else {
        if (vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg_wren) {
            if ((0U != (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr 
                              >> 2U)))) {
                if ((1U == (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr 
                                  >> 2U)))) {
                    vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg1 
                        = vlTOPp->AXI_Lite__DOT__master__DOT__axi_wdata;
                }
            }
        }
    }
    // ALWAYS at AXI_Lite.v:792
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg2 = 0U;
    } else {
        if (vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg_wren) {
            if ((0U != (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr 
                              >> 2U)))) {
                if ((1U != (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr 
                                  >> 2U)))) {
                    if ((2U == (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr 
                                      >> 2U)))) {
                        vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg2 
                            = vlTOPp->AXI_Lite__DOT__master__DOT__axi_wdata;
                    }
                }
            }
        }
    }
    // ALWAYS at AXI_Lite.v:792
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg3 = 0U;
    } else {
        if (vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg_wren) {
            if ((0U != (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr 
                              >> 2U)))) {
                if ((1U != (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr 
                                  >> 2U)))) {
                    if ((2U != (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr 
                                      >> 2U)))) {
                        if ((3U == (3U & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr 
                                          >> 2U)))) {
                            vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg3 
                                = vlTOPp->AXI_Lite__DOT__master__DOT__axi_wdata;
                        }
                    }
                }
            }
        }
    }
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_73 = (
                                                   ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_25) 
                                                    & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rdata 
                                                       != vlTOPp->AXI_Lite__DOT__master__DOT__expected_rdata)) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_mismatch));
    vlTOPp->AXI_Lite__DOT__slave__DOT___GEN_48 = ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___T_65) 
                                                  | ((~ 
                                                      ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid) 
                                                       & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready))) 
                                                     & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid)));
    vlTOPp->AXI_Lite__DOT__slave__DOT___T_62 = ((~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_arready)) 
                                                & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_arvalid));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_71 = (
                                                   ((4U 
                                                     == (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_index)) 
                                                    & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_arready)) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__last_read));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_28 = (0U 
                                                 == (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_31 = (1U 
                                                 == (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_44 = (2U 
                                                 == (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_51 = (
                                                   (3U 
                                                    == (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state)) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__compare_done));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_53 = (1U 
                                                 & (((((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_arvalid)) 
                                                       & (~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid))) 
                                                      & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__last_read))) 
                                                     & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_read))) 
                                                    & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_issued))));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_1 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write) 
                                                  | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__writes_done 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_70));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__reads_done 
        = ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_72));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__axi_araddr 
        = ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_31));
    // ALWAYS at AXI_Lite.v:792
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr = 0U;
    } else {
        if (vlTOPp->AXI_Lite__DOT__slave__DOT___T_3) {
            vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr 
                = ((IData)(0x40000000U) + vlTOPp->AXI_Lite__DOT__master__DOT__axi_awaddr);
        }
    }
    // ALWAYS at AXI_Lite.v:396
    if (vlTOPp->reset) {
        vlTOPp->AXI_Lite__DOT__master__DOT__axi_wdata = 0U;
    } else {
        if (((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_wready) 
             & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid))) {
            vlTOPp->AXI_Lite__DOT__master__DOT__axi_wdata 
                = (0xfffU & ((IData)(0x666U) + (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__write_index)));
        } else {
            if (vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse) {
                vlTOPp->AXI_Lite__DOT__master__DOT__axi_wdata = 0x666U;
            }
        }
    }
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_45 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_53) 
                                                   | ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready) 
                                                      & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_read)));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_46 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_53) 
                                                   | ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready)) 
                                                      & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_issued)));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_70 = (
                                                   (((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__last_write) 
                                                     & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid)) 
                                                    & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready)) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__writes_done));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_72 = (
                                                   (((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__last_read) 
                                                     & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid)) 
                                                    & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready)) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__reads_done));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__axi_awaddr 
        = ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_29));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__write_index 
        = (7U & ((IData)(vlTOPp->reset) ? 0U : (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_7)));
    // ALWAYS at AXI_Lite.v:792
    vlTOPp->AXI_Lite__DOT__slave__DOT__axi_wready = 
        ((~ (IData)(vlTOPp->reset)) & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___T_12));
    // ALWAYS at AXI_Lite.v:396
    vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid 
        = ((~ (IData)(vlTOPp->reset)) & ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)) 
                                         & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___GEN_2)));
    vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse 
        = ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_ff2)) 
           & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_ff));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_69 = (
                                                   ((4U 
                                                     == (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__write_index)) 
                                                    & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awready)) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__last_write));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_7 = (0xfU 
                                                  & ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)
                                                      ? 0U
                                                      : 
                                                     ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write)
                                                       ? 
                                                      ((IData)(1U) 
                                                       + (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__write_index))
                                                       : (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__write_index))));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_25 = (0xfU 
                                                   & ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_read)
                                                       ? 
                                                      ((IData)(1U) 
                                                       + (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_index))
                                                       : 
                                                      ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)
                                                        ? 0U
                                                        : (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_index))));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_28 = (
                                                   ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid) 
                                                    & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready))) 
                                                   | ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready)) 
                                                      & ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)) 
                                                         & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready))));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_29 = (VL_ULL(0x1ffffffff) 
                                                   & ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_6)
                                                       ? 
                                                      (VL_ULL(4) 
                                                       + (QData)((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awaddr)))
                                                       : (QData)((IData)(
                                                                         ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)
                                                                           ? 0U
                                                                           : vlTOPp->AXI_Lite__DOT__master__DOT__axi_awaddr)))));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_31 = (VL_ULL(0x1ffffffff) 
                                                   & ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_13)
                                                       ? 
                                                      (VL_ULL(4) 
                                                       + (QData)((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_araddr)))
                                                       : (QData)((IData)(
                                                                         ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)
                                                                           ? 0U
                                                                           : vlTOPp->AXI_Lite__DOT__master__DOT__axi_araddr)))));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_26 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_read) 
                                                   | ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_13)) 
                                                      & ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)) 
                                                         & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_arvalid))));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_2 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write) 
                                                  | ((~ 
                                                      ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_wready) 
                                                       & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid))) 
                                                     & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid)));
    vlTOPp->AXI_Lite__DOT__slave__DOT___T_12 = ((((~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_wready)) 
                                                  & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid)) 
                                                 & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid)) 
                                                & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__aw_en));
    vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg_wren 
        = ((((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_wready) 
             & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid)) 
            & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awready)) 
           & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid));
    vlTOPp->AXI_Lite__DOT__slave__DOT___GEN_43 = ((
                                                   ((((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awready) 
                                                      & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid)) 
                                                     & (~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid))) 
                                                    & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_wready)) 
                                                   & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid)) 
                                                  | ((~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___T_4)) 
                                                     & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid)));
    vlTOPp->AXI_Lite__DOT__slave__DOT___T_3 = ((((~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awready)) 
                                                 & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid)) 
                                                & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid)) 
                                               & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__aw_en));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_42 = (1U 
                                                 & ((((((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid)) 
                                                        & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid))) 
                                                       & (~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid))) 
                                                      & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__last_write))) 
                                                     & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write))) 
                                                    & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__write_issued))));
    vlTOPp->AXI_Lite__DOT__slave__DOT___GEN_3 = ((~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___T_3)) 
                                                 & ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___T_4) 
                                                    | (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__aw_en)));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_38 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_42) 
                                                   | ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready) 
                                                      & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write)));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_39 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_42) 
                                                   | ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready)) 
                                                      & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__write_issued)));
}

void VAXI_Lite::_settle__TOP__2(VAXI_Lite__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Lite::_settle__TOP__2\n"); );
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_TXN_DONE = vlTOPp->AXI_Lite__DOT__master__DOT__compare_done;
    vlTOPp->io_ERROR = vlTOPp->AXI_Lite__DOT__master__DOT__error_reg;
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_23 = (
                                                   ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid) 
                                                    & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready))) 
                                                   | ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready)) 
                                                      & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready)));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_74 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_mismatch) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__error_reg));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_6 = ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awready) 
                                                & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid));
    vlTOPp->AXI_Lite__DOT__slave__DOT___T_65 = (((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_arready) 
                                                 & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_arvalid)) 
                                                & (~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid)));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_25 = ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid) 
                                                 & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_13 = ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_arready) 
                                                 & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_arvalid));
    vlTOPp->AXI_Lite__DOT__slave__DOT___T_4 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready) 
                                               & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid));
    vlTOPp->AXI_Lite__DOT__slave__DOT___T_62 = ((~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_arready)) 
                                                & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_arvalid));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_28 = (0U 
                                                 == (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_31 = (1U 
                                                 == (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_44 = (2U 
                                                 == (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_1 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write) 
                                                  | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_51 = (
                                                   (3U 
                                                    == (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state)) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__compare_done));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_71 = (
                                                   ((4U 
                                                     == (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_index)) 
                                                    & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_arready)) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__last_read));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_53 = (1U 
                                                 & (((((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_arvalid)) 
                                                       & (~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid))) 
                                                      & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__last_read))) 
                                                     & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_read))) 
                                                    & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_issued))));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_70 = (
                                                   (((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__last_write) 
                                                     & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid)) 
                                                    & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready)) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__writes_done));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_72 = (
                                                   (((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__last_read) 
                                                     & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid)) 
                                                    & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready)) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__reads_done));
    vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse 
        = ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_ff2)) 
           & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_ff));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_69 = (
                                                   ((4U 
                                                     == (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__write_index)) 
                                                    & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awready)) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__last_write));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_2 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write) 
                                                  | ((~ 
                                                      ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_wready) 
                                                       & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid))) 
                                                     & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid)));
    vlTOPp->AXI_Lite__DOT__slave__DOT___T_12 = ((((~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_wready)) 
                                                  & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid)) 
                                                 & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid)) 
                                                & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__aw_en));
    vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg_wren 
        = ((((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_wready) 
             & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid)) 
            & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awready)) 
           & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid));
    vlTOPp->AXI_Lite__DOT__slave__DOT___T_3 = ((((~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awready)) 
                                                 & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid)) 
                                                & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid)) 
                                               & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__aw_en));
    vlTOPp->AXI_Lite__DOT__master__DOT___T_42 = (1U 
                                                 & ((((((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid)) 
                                                        & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid))) 
                                                       & (~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid))) 
                                                      & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__last_write))) 
                                                     & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write))) 
                                                    & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__write_issued))));
    vlTOPp->AXI_Lite__DOT__slave__DOT___GEN_48 = ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___T_65) 
                                                  | ((~ 
                                                      ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid) 
                                                       & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready))) 
                                                     & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid)));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_73 = (
                                                   ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_25) 
                                                    & (vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rdata 
                                                       != vlTOPp->AXI_Lite__DOT__master__DOT__expected_rdata)) 
                                                   | (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_mismatch));
    vlTOPp->AXI_Lite__DOT__slave__DOT___GEN_43 = ((
                                                   ((((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awready) 
                                                      & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid)) 
                                                     & (~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid))) 
                                                    & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_wready)) 
                                                   & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid)) 
                                                  | ((~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___T_4)) 
                                                     & (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid)));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_45 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_53) 
                                                   | ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready) 
                                                      & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_read)));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_46 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_53) 
                                                   | ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready)) 
                                                      & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_issued)));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_7 = (0xfU 
                                                  & ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)
                                                      ? 0U
                                                      : 
                                                     ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write)
                                                       ? 
                                                      ((IData)(1U) 
                                                       + (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__write_index))
                                                       : (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__write_index))));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_25 = (0xfU 
                                                   & ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_read)
                                                       ? 
                                                      ((IData)(1U) 
                                                       + (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_index))
                                                       : 
                                                      ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)
                                                        ? 0U
                                                        : (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__read_index))));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_28 = (
                                                   ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid) 
                                                    & (~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready))) 
                                                   | ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready)) 
                                                      & ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)) 
                                                         & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready))));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_29 = (VL_ULL(0x1ffffffff) 
                                                   & ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_6)
                                                       ? 
                                                      (VL_ULL(4) 
                                                       + (QData)((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awaddr)))
                                                       : (QData)((IData)(
                                                                         ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)
                                                                           ? 0U
                                                                           : vlTOPp->AXI_Lite__DOT__master__DOT__axi_awaddr)))));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_31 = (VL_ULL(0x1ffffffff) 
                                                   & ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_13)
                                                       ? 
                                                      (VL_ULL(4) 
                                                       + (QData)((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_araddr)))
                                                       : (QData)((IData)(
                                                                         ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)
                                                                           ? 0U
                                                                           : vlTOPp->AXI_Lite__DOT__master__DOT__axi_araddr)))));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_26 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_read) 
                                                   | ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_13)) 
                                                      & ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse)) 
                                                         & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_arvalid))));
    vlTOPp->AXI_Lite__DOT__slave__DOT___GEN_3 = ((~ (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___T_3)) 
                                                 & ((IData)(vlTOPp->AXI_Lite__DOT__slave__DOT___T_4) 
                                                    | (IData)(vlTOPp->AXI_Lite__DOT__slave__DOT__aw_en)));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_38 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_42) 
                                                   | ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready) 
                                                      & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write)));
    vlTOPp->AXI_Lite__DOT__master__DOT___GEN_39 = ((IData)(vlTOPp->AXI_Lite__DOT__master__DOT___T_42) 
                                                   | ((~ (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready)) 
                                                      & (IData)(vlTOPp->AXI_Lite__DOT__master__DOT__write_issued)));
}

void VAXI_Lite::_eval(VAXI_Lite__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Lite::_eval\n"); );
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock)))) {
        vlTOPp->_sequent__TOP__1(vlSymsp);
        vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
    }
    // Final
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void VAXI_Lite::_eval_initial(VAXI_Lite__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Lite::_eval_initial\n"); );
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void VAXI_Lite::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Lite::final\n"); );
    // Variables
    VAXI_Lite__Syms* __restrict vlSymsp = this->__VlSymsp;
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VAXI_Lite::_eval_settle(VAXI_Lite__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Lite::_eval_settle\n"); );
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__2(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
}

VL_INLINE_OPT QData VAXI_Lite::_change_request(VAXI_Lite__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Lite::_change_request\n"); );
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VAXI_Lite::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Lite::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((io_INIT_AXI_TXN & 0xfeU))) {
        Verilated::overWidthError("io_INIT_AXI_TXN");}
}
#endif // VL_DEBUG

void VAXI_Lite::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAXI_Lite::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_INIT_AXI_TXN = VL_RAND_RESET_I(1);
    io_TXN_DONE = VL_RAND_RESET_I(1);
    io_ERROR = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__mst_exec_state = VL_RAND_RESET_I(2);
    AXI_Lite__DOT__master__DOT__read_index = VL_RAND_RESET_I(3);
    AXI_Lite__DOT__master__DOT__last_read = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__start_single_read = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__read_issued = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__error_reg = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__axi_awaddr = VL_RAND_RESET_I(32);
    AXI_Lite__DOT__master__DOT__axi_wdata = VL_RAND_RESET_I(32);
    AXI_Lite__DOT__master__DOT__axi_awvalid = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__axi_wvalid = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__axi_bready = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__axi_araddr = VL_RAND_RESET_I(32);
    AXI_Lite__DOT__master__DOT__axi_arvalid = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__axi_rready = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__compare_done = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__init_txn_ff = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__init_txn_ff2 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__start_single_write = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__write_index = VL_RAND_RESET_I(3);
    AXI_Lite__DOT__master__DOT___GEN_1 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_2 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__init_txn_pulse = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__expected_rdata = VL_RAND_RESET_I(32);
    AXI_Lite__DOT__master__DOT__last_write = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__writes_done = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__reads_done = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__read_mismatch = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_7 = VL_RAND_RESET_I(4);
    AXI_Lite__DOT__master__DOT___T_6 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_23 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___T_13 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_25 = VL_RAND_RESET_I(4);
    AXI_Lite__DOT__master__DOT___GEN_26 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_28 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_29 = VL_RAND_RESET_Q(33);
    AXI_Lite__DOT__master__DOT___GEN_31 = VL_RAND_RESET_Q(33);
    AXI_Lite__DOT__master__DOT___T_25 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___T_28 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___T_31 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT__write_issued = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___T_44 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___T_42 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_38 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_39 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___T_53 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_45 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_46 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_51 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_69 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_70 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_71 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_72 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_73 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__master__DOT___GEN_74 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT__axi_awready = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT__axi_wready = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT__axi_bvalid = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT__axi_arready = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT__axi_rdata = VL_RAND_RESET_I(32);
    AXI_Lite__DOT__slave__DOT__axi_rvalid = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT__aw_en = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT___T_3 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT___T_4 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT___GEN_3 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT__axi_awaddr = VL_RAND_RESET_I(32);
    AXI_Lite__DOT__slave__DOT___T_12 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT__slv_reg_wren = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT__slv_reg0 = VL_RAND_RESET_I(32);
    AXI_Lite__DOT__slave__DOT__slv_reg1 = VL_RAND_RESET_I(32);
    AXI_Lite__DOT__slave__DOT__slv_reg2 = VL_RAND_RESET_I(32);
    AXI_Lite__DOT__slave__DOT__slv_reg3 = VL_RAND_RESET_I(32);
    AXI_Lite__DOT__slave__DOT___GEN_43 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT___T_62 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT__axi_araddr = VL_RAND_RESET_I(32);
    AXI_Lite__DOT__slave__DOT___T_65 = VL_RAND_RESET_I(1);
    AXI_Lite__DOT__slave__DOT___GEN_48 = VL_RAND_RESET_I(1);
    __Vm_traceActivity = VL_RAND_RESET_I(32);
}
