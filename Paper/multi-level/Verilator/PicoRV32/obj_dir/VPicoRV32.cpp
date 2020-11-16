// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VPicoRV32.h for the primary calling header

#include "VPicoRV32.h"
#include "VPicoRV32__Syms.h"

//==========

VL_CTOR_IMP(VPicoRV32) {
    VPicoRV32__Syms* __restrict vlSymsp = __VlSymsp = new VPicoRV32__Syms(this, name());
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VPicoRV32::__Vconfigure(VPicoRV32__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

VPicoRV32::~VPicoRV32() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = NULL);
}

void VPicoRV32::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VPicoRV32::eval\n"); );
    VPicoRV32__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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
            VL_FATAL_MT("PicoRV32.v", 1, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VPicoRV32::_eval_initial_loop(VPicoRV32__Syms* __restrict vlSymsp) {
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
            VL_FATAL_MT("PicoRV32.v", 1, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VPicoRV32::_initial__TOP__1(VPicoRV32__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPicoRV32::_initial__TOP__1\n"); );
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_pcpi_valid = 0U;
    vlTOPp->io_pcpi_insn = 0U;
    vlTOPp->io_eoi = 0U;
    vlTOPp->io_trace_valid = 0U;
    vlTOPp->io_trace_data = VL_ULL(0);
}

VL_INLINE_OPT void VPicoRV32::_sequent__TOP__2(VPicoRV32__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPicoRV32::_sequent__TOP__2\n"); );
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    CData/*0:0*/ __Vdly__PicoRV32__DOT__set_mem_do_rdata;
    CData/*1:0*/ __Vdly__PicoRV32__DOT__mem_wordsize;
    CData/*0:0*/ __Vdly__PicoRV32__DOT__cpuregs_write;
    CData/*0:0*/ __Vdly__PicoRV32__DOT__set_mem_do_wdata;
    IData/*31:0*/ __Vdly__PicoRV32__DOT__cpuregs_wrdata;
    // Body
    __Vdly__PicoRV32__DOT__set_mem_do_wdata = vlTOPp->PicoRV32__DOT__set_mem_do_wdata;
    __Vdly__PicoRV32__DOT__set_mem_do_rdata = vlTOPp->PicoRV32__DOT__set_mem_do_rdata;
    __Vdly__PicoRV32__DOT__cpuregs_write = vlTOPp->PicoRV32__DOT__cpuregs_write;
    __Vdly__PicoRV32__DOT__mem_wordsize = vlTOPp->PicoRV32__DOT__mem_wordsize;
    __Vdly__PicoRV32__DOT__cpuregs_wrdata = vlTOPp->PicoRV32__DOT__cpuregs_wrdata;
    if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_482)))) {
        if (vlTOPp->PicoRV32__DOT___T_486) {
            vlTOPp->PicoRV32__DOT__mem_addr = vlTOPp->io_mem_la_addr;
        }
    }
    vlTOPp->PicoRV32__DOT__reg_next_pc = (IData)(vlTOPp->PicoRV32__DOT___GEN_934);
    if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_482)))) {
        if (vlTOPp->io_mem_la_write) {
            vlTOPp->PicoRV32__DOT__mem_wdata = vlTOPp->io_mem_la_wdata;
        }
    }
    vlTOPp->PicoRV32__DOT__count_cycle = (((QData)((IData)(
                                                           vlTOPp->PicoRV32__DOT___T_1218[1U])) 
                                           << 0x20U) 
                                          | (QData)((IData)(
                                                            vlTOPp->PicoRV32__DOT___T_1218[0U])));
    vlTOPp->PicoRV32__DOT__count_instr = (((QData)((IData)(
                                                           vlTOPp->PicoRV32__DOT___GEN_935[1U])) 
                                           << 0x20U) 
                                          | (QData)((IData)(
                                                            vlTOPp->PicoRV32__DOT___GEN_935[0U])));
    if ((0U == (IData)(vlTOPp->PicoRV32__DOT__mem_wordsize))) {
        vlTOPp->PicoRV32__DOT__mem_rdata_word = vlTOPp->io_mem_rdata;
    } else {
        if ((1U == (IData)(vlTOPp->PicoRV32__DOT__mem_wordsize))) {
            vlTOPp->PicoRV32__DOT__mem_rdata_word = 
                ((2U & vlTOPp->PicoRV32__DOT__reg_op1)
                  ? (0xffffU & (vlTOPp->io_mem_rdata 
                                >> 0x10U)) : (0xffffU 
                                              & vlTOPp->io_mem_rdata));
        } else {
            if ((2U == (IData)(vlTOPp->PicoRV32__DOT__mem_wordsize))) {
                if ((0U == (3U & vlTOPp->PicoRV32__DOT__reg_op1))) {
                    vlTOPp->PicoRV32__DOT__mem_rdata_word 
                        = (0xffU & vlTOPp->io_mem_rdata);
                } else {
                    if ((1U == (3U & vlTOPp->PicoRV32__DOT__reg_op1))) {
                        vlTOPp->PicoRV32__DOT__mem_rdata_word 
                            = (0xffU & (vlTOPp->io_mem_rdata 
                                        >> 8U));
                    } else {
                        if ((2U == (3U & vlTOPp->PicoRV32__DOT__reg_op1))) {
                            vlTOPp->PicoRV32__DOT__mem_rdata_word 
                                = (0xffU & (vlTOPp->io_mem_rdata 
                                            >> 0x10U));
                        } else {
                            if ((3U == (3U & vlTOPp->PicoRV32__DOT__reg_op1))) {
                                vlTOPp->PicoRV32__DOT__mem_rdata_word 
                                    = (0xffU & (vlTOPp->io_mem_rdata 
                                                >> 0x18U));
                            }
                        }
                    }
                }
            }
        }
    }
    if (vlTOPp->PicoRV32__DOT___T_582) {
        vlTOPp->PicoRV32__DOT__instr_lui = (0x37U == 
                                            (0x7fU 
                                             & vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle));
    }
    if (vlTOPp->PicoRV32__DOT___T_582) {
        vlTOPp->PicoRV32__DOT__instr_auipc = (0x17U 
                                              == (0x7fU 
                                                  & vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle));
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_add = ((IData)(vlTOPp->PicoRV32__DOT___T_919) 
                                                & (0U 
                                                   == 
                                                   (0x7fU 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0x19U))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_add = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_sub = ((IData)(vlTOPp->PicoRV32__DOT___T_919) 
                                                & (0x20U 
                                                   == 
                                                   (0x7fU 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0x19U))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_sub = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_sltiu = ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_imm) 
                                                  & (3U 
                                                     == 
                                                     (7U 
                                                      & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                         >> 0xcU))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_sltiu = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_slti = ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_imm) 
                                                 & (2U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                        >> 0xcU))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_slti = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_addi = ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_imm) 
                                                 & (0U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                        >> 0xcU))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_addi = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_ori = ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_imm) 
                                                & (6U 
                                                   == 
                                                   (7U 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0xcU))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_ori = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_xori = ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_imm) 
                                                 & (4U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                        >> 0xcU))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_xori = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_andi = ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_imm) 
                                                 & (7U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                        >> 0xcU))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_andi = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_and = (((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_reg) 
                                                 & (7U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                        >> 0xcU)))) 
                                                & (0U 
                                                   == 
                                                   (0x7fU 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0x19U))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_and = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_sltu = (((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_reg) 
                                                  & (3U 
                                                     == 
                                                     (7U 
                                                      & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                         >> 0xcU)))) 
                                                 & (0U 
                                                    == 
                                                    (0x7fU 
                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                        >> 0x19U))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_sltu = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_slt = (((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_reg) 
                                                 & (2U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                        >> 0xcU)))) 
                                                & (0U 
                                                   == 
                                                   (0x7fU 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0x19U))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_slt = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_or = (((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_reg) 
                                                & (6U 
                                                   == 
                                                   (7U 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0xcU)))) 
                                               & (0U 
                                                  == 
                                                  (0x7fU 
                                                   & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                      >> 0x19U))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_or = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_xor = (((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_reg) 
                                                 & (4U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                        >> 0xcU)))) 
                                                & (0U 
                                                   == 
                                                   (0x7fU 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0x19U))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_xor = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_bltu = ((IData)(vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu) 
                                                 & (6U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                        >> 0xcU))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_bltu = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_blt = ((IData)(vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu) 
                                                & (4U 
                                                   == 
                                                   (7U 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0xcU))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_blt = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_bgeu = ((IData)(vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu) 
                                                 & (7U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                        >> 0xcU))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_bgeu = 0U;
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_srai = ((IData)(vlTOPp->PicoRV32__DOT___T_907) 
                                             & (0x20U 
                                                == 
                                                (0x7fU 
                                                 & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                    >> 0x19U))));
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_srli = ((IData)(vlTOPp->PicoRV32__DOT___T_907) 
                                             & (0U 
                                                == 
                                                (0x7fU 
                                                 & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                    >> 0x19U))));
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_srl = ((IData)(vlTOPp->PicoRV32__DOT___T_955) 
                                                & (0U 
                                                   == 
                                                   (0x7fU 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0x19U))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_srl = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_sra = ((IData)(vlTOPp->PicoRV32__DOT___T_955) 
                                                & (0x20U 
                                                   == 
                                                   (0x7fU 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0x19U))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_sra = 0U;
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_slli = (((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_imm) 
                                              & (1U 
                                                 == 
                                                 (7U 
                                                  & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                     >> 0xcU)))) 
                                             & (0U 
                                                == 
                                                (0x7fU 
                                                 & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                    >> 0x19U))));
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_sll = (((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_reg) 
                                                 & (1U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                        >> 0xcU)))) 
                                                & (0U 
                                                   == 
                                                   (0x7fU 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0x19U))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_sll = 0U;
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_rdinstrh = ((0x73U 
                                                  == 
                                                  (0x7fU 
                                                   & vlTOPp->PicoRV32__DOT__mem_rdata_q)) 
                                                 & (0xc8202U 
                                                    == 
                                                    (0xfffffU 
                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                        >> 0xcU))));
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_rdcycle = (((0x73U 
                                                  == 
                                                  (0x7fU 
                                                   & vlTOPp->PicoRV32__DOT__mem_rdata_q)) 
                                                 & (0xc0002U 
                                                    == 
                                                    (0xfffffU 
                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                        >> 0xcU)))) 
                                                | ((0x73U 
                                                    == 
                                                    (0x7fU 
                                                     & vlTOPp->PicoRV32__DOT__mem_rdata_q)) 
                                                   & (0xc0102U 
                                                      == 
                                                      (0xfffffU 
                                                       & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                          >> 0xcU)))));
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_rdcycleh = (((0x73U 
                                                   == 
                                                   (0x7fU 
                                                    & vlTOPp->PicoRV32__DOT__mem_rdata_q)) 
                                                  & (0xc8002U 
                                                     == 
                                                     (0xfffffU 
                                                      & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                         >> 0xcU)))) 
                                                 | ((0x73U 
                                                     == 
                                                     (0x7fU 
                                                      & vlTOPp->PicoRV32__DOT__mem_rdata_q)) 
                                                    & (0xc8102U 
                                                       == 
                                                       (0xfffffU 
                                                        & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                           >> 0xcU)))));
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_rdinstr = ((0x73U 
                                                 == 
                                                 (0x7fU 
                                                  & vlTOPp->PicoRV32__DOT__mem_rdata_q)) 
                                                & (0xc0202U 
                                                   == 
                                                   (0xfffffU 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0xcU))));
    }
    if ((0U == (IData)(vlTOPp->PicoRV32__DOT__mem_wordsize))) {
        vlTOPp->PicoRV32__DOT__mem_la_wdata = vlTOPp->PicoRV32__DOT__reg_op2;
    } else {
        if ((1U == (IData)(vlTOPp->PicoRV32__DOT__mem_wordsize))) {
            vlTOPp->PicoRV32__DOT__mem_la_wdata = (
                                                   (0xffff0000U 
                                                    & (vlTOPp->PicoRV32__DOT__reg_op2 
                                                       << 0x10U)) 
                                                   | (0xffffU 
                                                      & vlTOPp->PicoRV32__DOT__reg_op2));
        } else {
            if ((2U == (IData)(vlTOPp->PicoRV32__DOT__mem_wordsize))) {
                vlTOPp->PicoRV32__DOT__mem_la_wdata 
                    = ((0xff000000U & (vlTOPp->PicoRV32__DOT__reg_op2 
                                       << 0x18U)) | 
                       ((0xff0000U & (vlTOPp->PicoRV32__DOT__reg_op2 
                                      << 0x10U)) | 
                        ((0xff00U & (vlTOPp->PicoRV32__DOT__reg_op2 
                                     << 8U)) | (0xffU 
                                                & vlTOPp->PicoRV32__DOT__reg_op2))));
            }
        }
    }
    vlTOPp->PicoRV32__DOT__trap = ((IData)(vlTOPp->reset) 
                                   & (0x80U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state)));
    vlTOPp->PicoRV32__DOT__decoder_pseudo_trigger = 
        ((IData)(vlTOPp->reset) & ((0x80U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                   & ((0x40U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                      & ((0x20U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                         & ((0x10U 
                                             != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                            & ((8U 
                                                != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                               & ((4U 
                                                   != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                  & ((2U 
                                                      == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                      ? (IData)(vlTOPp->PicoRV32__DOT__mem_done)
                                                      : 
                                                     ((1U 
                                                       == (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                      & (IData)(vlTOPp->PicoRV32__DOT__mem_done))))))))));
    __Vdly__PicoRV32__DOT__set_mem_do_wdata = ((IData)(vlTOPp->reset) 
                                               & ((0x80U 
                                                   != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                  & ((0x40U 
                                                      != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                     & ((0x20U 
                                                         != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                        & ((0x10U 
                                                            != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                           & ((8U 
                                                               != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                              & ((4U 
                                                                  != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                                 & ((2U 
                                                                     == (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                                    & (~ (IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata))))))))));
    __Vdly__PicoRV32__DOT__set_mem_do_rdata = ((IData)(vlTOPp->reset) 
                                               & ((0x80U 
                                                   != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                  & ((0x40U 
                                                      != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                     & ((0x20U 
                                                         != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                        & ((0x10U 
                                                            != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                           & ((8U 
                                                               != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                              & ((4U 
                                                                  != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                                 & ((2U 
                                                                     != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                                    & ((1U 
                                                                        == (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                                       & (~ (IData)(vlTOPp->PicoRV32__DOT__mem_do_rdata)))))))))));
    if (vlTOPp->reset) {
        if ((0x80U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
            if ((0x40U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                if ((0x20U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                    if ((0x10U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                        if ((8U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                            if ((4U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                                if ((2U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                                    if ((1U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                                        if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT__mem_do_rdata)))) {
                                            vlTOPp->PicoRV32__DOT__latched_is_lb 
                                                = vlTOPp->PicoRV32__DOT__instr_lb;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    } else {
        vlTOPp->PicoRV32__DOT__latched_is_lb = 0U;
    }
    if (vlTOPp->reset) {
        if ((0x80U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
            if ((0x40U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                if ((0x20U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                    if ((0x10U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                        if ((8U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                            if ((4U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                                if ((2U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                                    if ((1U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                                        if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT__mem_do_rdata)))) {
                                            vlTOPp->PicoRV32__DOT__latched_is_lh 
                                                = vlTOPp->PicoRV32__DOT__instr_lh;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    } else {
        vlTOPp->PicoRV32__DOT__latched_is_lh = 0U;
    }
    if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_482)))) {
        if ((0U == (IData)(vlTOPp->PicoRV32__DOT__mem_state))) {
            if (vlTOPp->PicoRV32__DOT___T_48) {
                vlTOPp->PicoRV32__DOT__mem_wstrb = 0U;
            } else {
                if (vlTOPp->PicoRV32__DOT___T_486) {
                    vlTOPp->PicoRV32__DOT__mem_wstrb 
                        = vlTOPp->PicoRV32__DOT___T_490;
                }
            }
        } else {
            if (vlTOPp->PicoRV32__DOT___T_486) {
                vlTOPp->PicoRV32__DOT__mem_wstrb = vlTOPp->PicoRV32__DOT___T_490;
            }
        }
    }
    if (vlTOPp->PicoRV32__DOT___T_482) {
        if ((1U & ((~ (IData)(vlTOPp->reset)) | (IData)(vlTOPp->io_mem_ready)))) {
            vlTOPp->PicoRV32__DOT__mem_valid = 0U;
        }
    } else {
        if ((0U == (IData)(vlTOPp->PicoRV32__DOT__mem_state))) {
            vlTOPp->PicoRV32__DOT__mem_valid = vlTOPp->PicoRV32__DOT___GEN_60;
        } else {
            if ((1U == (IData)(vlTOPp->PicoRV32__DOT__mem_state))) {
                if (vlTOPp->PicoRV32__DOT__mem_xfer) {
                    vlTOPp->PicoRV32__DOT__mem_valid = 0U;
                }
            } else {
                if ((2U == (IData)(vlTOPp->PicoRV32__DOT__mem_state))) {
                    if (vlTOPp->PicoRV32__DOT__mem_xfer) {
                        vlTOPp->PicoRV32__DOT__mem_valid = 0U;
                    }
                }
            }
        }
    }
    __Vdly__PicoRV32__DOT__cpuregs_write = ((0x40U 
                                             == (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                            & ((IData)(vlTOPp->PicoRV32__DOT__latched_branch) 
                                               | (IData)(vlTOPp->PicoRV32__DOT___T_1184)));
    __Vdly__PicoRV32__DOT__cpuregs_wrdata = (IData)(
                                                    ((0x40U 
                                                      == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                      ? 
                                                     ((IData)(vlTOPp->PicoRV32__DOT__latched_branch)
                                                       ? VL_ULL(4)
                                                       : (QData)((IData)(
                                                                         ((IData)(vlTOPp->PicoRV32__DOT___T_1184)
                                                                           ? vlTOPp->PicoRV32__DOT__reg_out
                                                                           : 0U))))
                                                      : VL_ULL(0)));
    if (vlTOPp->reset) {
        if ((0x80U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
            if ((0x40U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                if ((0x20U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                    if ((0x10U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                        if ((8U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                            if ((4U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                                if ((2U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                                    if ((1U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                                        if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT__mem_do_rdata)))) {
                                            vlTOPp->PicoRV32__DOT__latched_is_lu 
                                                = vlTOPp->PicoRV32__DOT__is_lbu_lhu_lw;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    } else {
        vlTOPp->PicoRV32__DOT__latched_is_lu = 0U;
    }
    vlTOPp->io_mem_addr = vlTOPp->PicoRV32__DOT__mem_addr;
    vlTOPp->io_mem_wdata = vlTOPp->PicoRV32__DOT__mem_wdata;
    vlTOPp->PicoRV32__DOT___T_1454 = ((IData)(vlTOPp->PicoRV32__DOT__instr_srli) 
                                      | (IData)(vlTOPp->PicoRV32__DOT__instr_srl));
    vlTOPp->PicoRV32__DOT___T_1456 = ((IData)(vlTOPp->PicoRV32__DOT__instr_srai) 
                                      | (IData)(vlTOPp->PicoRV32__DOT__instr_sra));
    vlTOPp->PicoRV32__DOT___T_1452 = ((IData)(vlTOPp->PicoRV32__DOT__instr_slli) 
                                      | (IData)(vlTOPp->PicoRV32__DOT__instr_sll));
    vlTOPp->io_mem_la_wdata = vlTOPp->PicoRV32__DOT__mem_la_wdata;
    vlTOPp->io_trap = vlTOPp->PicoRV32__DOT__trap;
    vlTOPp->io_mem_wstrb = vlTOPp->PicoRV32__DOT__mem_wstrb;
    vlTOPp->io_mem_valid = vlTOPp->PicoRV32__DOT__mem_valid;
    if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_482)))) {
        if (vlTOPp->PicoRV32__DOT___T_491) {
            if (vlTOPp->PicoRV32__DOT__mem_do_wdata) {
                vlTOPp->PicoRV32__DOT__mem_instr = 0U;
            } else {
                if (vlTOPp->PicoRV32__DOT___T_48) {
                    vlTOPp->PicoRV32__DOT__mem_instr 
                        = vlTOPp->PicoRV32__DOT__mem_do_rinst;
                }
            }
        }
    }
    if (vlTOPp->PicoRV32__DOT___T_482) {
        if ((1U & (~ (IData)(vlTOPp->reset)))) {
            vlTOPp->PicoRV32__DOT__mem_state = 0U;
        }
    } else {
        if (vlTOPp->PicoRV32__DOT___T_491) {
            if (vlTOPp->PicoRV32__DOT__mem_do_wdata) {
                vlTOPp->PicoRV32__DOT__mem_state = 2U;
            } else {
                if (vlTOPp->PicoRV32__DOT___T_48) {
                    vlTOPp->PicoRV32__DOT__mem_state = 1U;
                }
            }
        } else {
            if (vlTOPp->PicoRV32__DOT___T_496) {
                if (vlTOPp->PicoRV32__DOT__mem_xfer) {
                    vlTOPp->PicoRV32__DOT__mem_state 
                        = ((IData)(vlTOPp->PicoRV32__DOT___T_48)
                            ? 0U : 3U);
                }
            } else {
                if (vlTOPp->PicoRV32__DOT___T_511) {
                    if (vlTOPp->PicoRV32__DOT__mem_xfer) {
                        vlTOPp->PicoRV32__DOT__mem_state = 0U;
                    }
                } else {
                    if (vlTOPp->PicoRV32__DOT___T_512) {
                        if (vlTOPp->PicoRV32__DOT__mem_do_rinst) {
                            vlTOPp->PicoRV32__DOT__mem_state = 0U;
                        }
                    }
                }
            }
        }
    }
    vlTOPp->PicoRV32__DOT__reg_out = (IData)(((IData)(vlTOPp->reset)
                                               ? ((0x80U 
                                                   == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                   ? VL_ULL(0)
                                                   : 
                                                  ((0x40U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? VL_ULL(0)
                                                    : vlTOPp->PicoRV32__DOT___GEN_831))
                                               : VL_ULL(0)));
    if (vlTOPp->reset) {
        if ((0x80U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
            if ((0x40U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                __Vdly__PicoRV32__DOT__mem_wordsize = 0U;
            } else {
                if ((0x20U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                    if ((0x10U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                        if ((8U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                            if ((4U != (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                                if ((2U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                                    if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata)))) {
                                        if (vlTOPp->PicoRV32__DOT__instr_sb) {
                                            __Vdly__PicoRV32__DOT__mem_wordsize = 2U;
                                        } else {
                                            if (vlTOPp->PicoRV32__DOT__instr_sh) {
                                                __Vdly__PicoRV32__DOT__mem_wordsize = 1U;
                                            } else {
                                                if (vlTOPp->PicoRV32__DOT__instr_sw) {
                                                    __Vdly__PicoRV32__DOT__mem_wordsize = 0U;
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    if ((1U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))) {
                                        if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT__mem_do_rdata)))) {
                                            if (((IData)(vlTOPp->PicoRV32__DOT__instr_lb) 
                                                 | (IData)(vlTOPp->PicoRV32__DOT__instr_lbu))) {
                                                __Vdly__PicoRV32__DOT__mem_wordsize = 2U;
                                            } else {
                                                if (
                                                    ((IData)(vlTOPp->PicoRV32__DOT__instr_lh) 
                                                     | (IData)(vlTOPp->PicoRV32__DOT__instr_lhu))) {
                                                    __Vdly__PicoRV32__DOT__mem_wordsize = 1U;
                                                } else {
                                                    if (vlTOPp->PicoRV32__DOT__instr_lw) {
                                                        __Vdly__PicoRV32__DOT__mem_wordsize = 0U;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    vlTOPp->PicoRV32__DOT__is_lbu_lhu_lw = (((IData)(vlTOPp->PicoRV32__DOT__instr_lbu) 
                                             | (IData)(vlTOPp->PicoRV32__DOT__instr_lhu)) 
                                            | (IData)(vlTOPp->PicoRV32__DOT__instr_lw));
    vlTOPp->io_mem_instr = vlTOPp->PicoRV32__DOT__mem_instr;
    vlTOPp->PicoRV32__DOT___T_491 = (0U == (IData)(vlTOPp->PicoRV32__DOT__mem_state));
    vlTOPp->PicoRV32__DOT___T_496 = (1U == (IData)(vlTOPp->PicoRV32__DOT__mem_state));
    vlTOPp->PicoRV32__DOT___T_511 = (2U == (IData)(vlTOPp->PicoRV32__DOT__mem_state));
    vlTOPp->PicoRV32__DOT___T_512 = (3U == (IData)(vlTOPp->PicoRV32__DOT__mem_state));
    vlTOPp->PicoRV32__DOT___T_52 = (1U & (((IData)(vlTOPp->PicoRV32__DOT__mem_state) 
                                           >> 1U) | (IData)(vlTOPp->PicoRV32__DOT__mem_state)));
    vlTOPp->PicoRV32__DOT__mem_do_rinst = ((IData)(vlTOPp->PicoRV32__DOT__set_mem_do_rinst) 
                                           | (IData)(vlTOPp->PicoRV32__DOT___GEN_993));
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_sb = ((IData)(vlTOPp->PicoRV32__DOT__is_sb_sh_sw) 
                                           & (0U == 
                                              (7U & 
                                               (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0xcU))));
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_sh = ((IData)(vlTOPp->PicoRV32__DOT__is_sb_sh_sw) 
                                           & (1U == 
                                              (7U & 
                                               (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0xcU))));
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_sw = ((IData)(vlTOPp->PicoRV32__DOT__is_sb_sh_sw) 
                                           & (2U == 
                                              (7U & 
                                               (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0xcU))));
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_lbu = ((IData)(vlTOPp->PicoRV32__DOT__is_lb_lh_lw_lbu_lhu) 
                                            & (4U == 
                                               (7U 
                                                & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                   >> 0xcU))));
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_lhu = ((IData)(vlTOPp->PicoRV32__DOT__is_lb_lh_lw_lbu_lhu) 
                                            & (5U == 
                                               (7U 
                                                & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                   >> 0xcU))));
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_lw = ((IData)(vlTOPp->PicoRV32__DOT__is_lb_lh_lw_lbu_lhu) 
                                           & (2U == 
                                              (7U & 
                                               (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0xcU))));
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_lb = ((IData)(vlTOPp->PicoRV32__DOT__is_lb_lh_lw_lbu_lhu) 
                                           & (0U == 
                                              (7U & 
                                               (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0xcU))));
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__instr_lh = ((IData)(vlTOPp->PicoRV32__DOT__is_lb_lh_lw_lbu_lhu) 
                                           & (1U == 
                                              (7U & 
                                               (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0xcU))));
    }
    vlTOPp->PicoRV32__DOT__set_mem_do_rinst = ((IData)(vlTOPp->reset) 
                                               & ((0x80U 
                                                   != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                  & ((0x40U 
                                                      != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                     & ((0x20U 
                                                         != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                        & ((0x10U 
                                                            != (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                           & ((8U 
                                                               == (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                                              & ((IData)(vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu) 
                                                                 & (IData)(vlTOPp->PicoRV32__DOT__alu_out_0))))))));
    if ((0U == (IData)(vlTOPp->PicoRV32__DOT__mem_wordsize))) {
        vlTOPp->PicoRV32__DOT__mem_la_wstrb = 0xfU;
    } else {
        if ((1U == (IData)(vlTOPp->PicoRV32__DOT__mem_wordsize))) {
            vlTOPp->PicoRV32__DOT__mem_la_wstrb = (
                                                   (2U 
                                                    & vlTOPp->PicoRV32__DOT__reg_op1)
                                                    ? 0xcU
                                                    : 3U);
        } else {
            if ((2U == (IData)(vlTOPp->PicoRV32__DOT__mem_wordsize))) {
                vlTOPp->PicoRV32__DOT__mem_la_wstrb 
                    = (0xfU & ((IData)(1U) << (3U & vlTOPp->PicoRV32__DOT__reg_op1)));
            }
        }
    }
    if (vlTOPp->reset) {
        if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_1233)))) {
            if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_1179)))) {
                if (vlTOPp->PicoRV32__DOT___T_1359) {
                    vlTOPp->PicoRV32__DOT__reg_op2 
                        = ((VL_ULL(0) == vlTOPp->PicoRV32__DOT__all_instr)
                            ? 0U : ((IData)(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh)
                                     ? 0U : ((IData)(vlTOPp->PicoRV32__DOT__is_lui_auipc_jal)
                                              ? vlTOPp->PicoRV32__DOT__decoded_imm
                                              : ((IData)(vlTOPp->PicoRV32__DOT___T_1404)
                                                  ? 0U
                                                  : 
                                                 ((IData)(vlTOPp->PicoRV32__DOT__is_slli_srli_srai)
                                                   ? 0U
                                                   : 
                                                  ((IData)(vlTOPp->PicoRV32__DOT__is_jalr_addi_slti_sltiu_xori_ori_andi)
                                                    ? vlTOPp->PicoRV32__DOT__decoded_imm
                                                    : vlTOPp->PicoRV32__DOT__cpuregs_rs2))))));
                } else {
                    if (vlTOPp->PicoRV32__DOT___T_1418) {
                        vlTOPp->PicoRV32__DOT__reg_op2 
                            = vlTOPp->PicoRV32__DOT__cpuregs_rs2;
                    }
                }
            }
        }
    }
    if (vlTOPp->reset) {
        if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_1233)))) {
            if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_1179)))) {
                if (vlTOPp->PicoRV32__DOT___T_1359) {
                    if ((VL_ULL(0) != vlTOPp->PicoRV32__DOT__all_instr)) {
                        vlTOPp->PicoRV32__DOT__latched_store 
                            = vlTOPp->PicoRV32__DOT___GEN_595;
                    }
                } else {
                    if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_1418)))) {
                        if (vlTOPp->PicoRV32__DOT___T_1437) {
                            if (vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu) {
                                vlTOPp->PicoRV32__DOT__latched_store 
                                    = vlTOPp->PicoRV32__DOT__alu_out_0;
                            }
                        } else {
                            vlTOPp->PicoRV32__DOT__latched_store 
                                = vlTOPp->PicoRV32__DOT___GEN_766;
                        }
                    }
                }
            }
        }
    } else {
        vlTOPp->PicoRV32__DOT__latched_store = 0U;
    }
    if (vlTOPp->reset) {
        if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_1233)))) {
            if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_1179)))) {
                if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_1359)))) {
                    if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_1418)))) {
                        if (vlTOPp->PicoRV32__DOT___T_1437) {
                            if (vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu) {
                                vlTOPp->PicoRV32__DOT__latched_branch 
                                    = vlTOPp->PicoRV32__DOT__alu_out_0;
                            }
                        }
                    }
                }
            }
        }
    } else {
        vlTOPp->PicoRV32__DOT__latched_branch = 0U;
    }
    vlTOPp->PicoRV32__DOT__decoder_trigger = ((IData)(vlTOPp->reset)
                                               ? ((IData)(vlTOPp->PicoRV32__DOT___T_1233)
                                                   ? (IData)(vlTOPp->PicoRV32__DOT___T_582)
                                                   : 
                                                  ((IData)(vlTOPp->PicoRV32__DOT___T_1179)
                                                    ? (IData)(vlTOPp->PicoRV32__DOT___T_582)
                                                    : 
                                                   ((IData)(vlTOPp->PicoRV32__DOT___T_1359)
                                                     ? (IData)(vlTOPp->PicoRV32__DOT___T_582)
                                                     : 
                                                    ((IData)(vlTOPp->PicoRV32__DOT___T_1418)
                                                      ? (IData)(vlTOPp->PicoRV32__DOT___T_582)
                                                      : 
                                                     ((IData)(vlTOPp->PicoRV32__DOT___T_1437)
                                                       ? 
                                                      ((IData)(vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu)
                                                        ? 
                                                       ((~ (IData)(vlTOPp->PicoRV32__DOT__alu_out_0)) 
                                                        & (IData)(vlTOPp->PicoRV32__DOT___T_582))
                                                        : (IData)(vlTOPp->PicoRV32__DOT___T_582))
                                                       : 
                                                      ((IData)(vlTOPp->PicoRV32__DOT___T_1448)
                                                        ? (IData)(vlTOPp->PicoRV32__DOT___T_582)
                                                        : 
                                                       ((IData)(vlTOPp->PicoRV32__DOT___T_1470)
                                                         ? (IData)(vlTOPp->PicoRV32__DOT___GEN_698)
                                                         : 
                                                        ((IData)(vlTOPp->PicoRV32__DOT___T_1484)
                                                          ? (IData)(vlTOPp->PicoRV32__DOT___GEN_698)
                                                          : (IData)(vlTOPp->PicoRV32__DOT___T_582)))))))))
                                               : (IData)(vlTOPp->PicoRV32__DOT___T_582));
    if (((IData)(vlTOPp->reset) & ((IData)(vlTOPp->PicoRV32__DOT__mem_do_rdata) 
                                   | (IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata)))) {
        if ((1U & vlTOPp->PicoRV32__DOT__reg_op1)) {
            vlTOPp->PicoRV32__DOT__cpu_state = 0x80U;
        } else {
            if (vlTOPp->reset) {
                if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_1233)))) {
                    if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_1179)))) {
                        if (vlTOPp->PicoRV32__DOT___T_1359) {
                            vlTOPp->PicoRV32__DOT__cpu_state 
                                = ((VL_ULL(0) == vlTOPp->PicoRV32__DOT__all_instr)
                                    ? 0x80U : ((IData)(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh)
                                                ? 0x40U
                                                : ((IData)(vlTOPp->PicoRV32__DOT__is_lui_auipc_jal)
                                                    ? 8U
                                                    : 
                                                   ((IData)(vlTOPp->PicoRV32__DOT___T_1404)
                                                     ? 1U
                                                     : 
                                                    ((IData)(vlTOPp->PicoRV32__DOT__is_slli_srli_srai)
                                                      ? 4U
                                                      : 
                                                     ((IData)(vlTOPp->PicoRV32__DOT__is_jalr_addi_slti_sltiu_xori_ori_andi)
                                                       ? 8U
                                                       : 
                                                      ((IData)(vlTOPp->PicoRV32__DOT__is_sb_sh_sw)
                                                        ? 2U
                                                        : 
                                                       ((IData)(vlTOPp->PicoRV32__DOT__is_sll_srl_sra)
                                                         ? 4U
                                                         : 8U))))))));
                        } else {
                            if (vlTOPp->PicoRV32__DOT___T_1418) {
                                vlTOPp->PicoRV32__DOT__cpu_state 
                                    = ((IData)(vlTOPp->PicoRV32__DOT__is_sb_sh_sw)
                                        ? 2U : ((IData)(vlTOPp->PicoRV32__DOT__is_sll_srl_sra)
                                                 ? 4U
                                                 : 8U));
                            } else {
                                if (vlTOPp->PicoRV32__DOT___T_1437) {
                                    if (vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu) {
                                        if (vlTOPp->PicoRV32__DOT__mem_done) {
                                            vlTOPp->PicoRV32__DOT__cpu_state = 0x40U;
                                        }
                                    }
                                } else {
                                    if (vlTOPp->PicoRV32__DOT___T_1448) {
                                        if ((0U == (IData)(vlTOPp->PicoRV32__DOT__reg_sh))) {
                                            vlTOPp->PicoRV32__DOT__cpu_state = 0x40U;
                                        }
                                    } else {
                                        if (vlTOPp->PicoRV32__DOT___T_1470) {
                                            if (vlTOPp->PicoRV32__DOT__mem_done) {
                                                vlTOPp->PicoRV32__DOT__cpu_state = 0x40U;
                                            }
                                        } else {
                                            if (vlTOPp->PicoRV32__DOT___T_1484) {
                                                if (vlTOPp->PicoRV32__DOT__mem_done) {
                                                    vlTOPp->PicoRV32__DOT__cpu_state = 0x40U;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->PicoRV32__DOT__cpu_state = 0x40U;
            }
        }
    } else {
        if (vlTOPp->reset) {
            if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_1233)))) {
                if ((1U & (~ (IData)(vlTOPp->PicoRV32__DOT___T_1179)))) {
                    if (vlTOPp->PicoRV32__DOT___T_1359) {
                        vlTOPp->PicoRV32__DOT__cpu_state 
                            = ((VL_ULL(0) == vlTOPp->PicoRV32__DOT__all_instr)
                                ? 0x80U : ((IData)(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh)
                                            ? 0x40U
                                            : ((IData)(vlTOPp->PicoRV32__DOT__is_lui_auipc_jal)
                                                ? 8U
                                                : ((IData)(vlTOPp->PicoRV32__DOT___T_1404)
                                                    ? 1U
                                                    : 
                                                   ((IData)(vlTOPp->PicoRV32__DOT__is_slli_srli_srai)
                                                     ? 4U
                                                     : 
                                                    ((IData)(vlTOPp->PicoRV32__DOT__is_jalr_addi_slti_sltiu_xori_ori_andi)
                                                      ? 8U
                                                      : 
                                                     ((IData)(vlTOPp->PicoRV32__DOT__is_sb_sh_sw)
                                                       ? 2U
                                                       : 
                                                      ((IData)(vlTOPp->PicoRV32__DOT__is_sll_srl_sra)
                                                        ? 4U
                                                        : 8U))))))));
                    } else {
                        if (vlTOPp->PicoRV32__DOT___T_1418) {
                            vlTOPp->PicoRV32__DOT__cpu_state 
                                = ((IData)(vlTOPp->PicoRV32__DOT__is_sb_sh_sw)
                                    ? 2U : ((IData)(vlTOPp->PicoRV32__DOT__is_sll_srl_sra)
                                             ? 4U : 8U));
                        } else {
                            if (vlTOPp->PicoRV32__DOT___T_1437) {
                                if (vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu) {
                                    if (vlTOPp->PicoRV32__DOT__mem_done) {
                                        vlTOPp->PicoRV32__DOT__cpu_state = 0x40U;
                                    }
                                }
                            } else {
                                if (vlTOPp->PicoRV32__DOT___T_1448) {
                                    if ((0U == (IData)(vlTOPp->PicoRV32__DOT__reg_sh))) {
                                        vlTOPp->PicoRV32__DOT__cpu_state = 0x40U;
                                    }
                                } else {
                                    if (vlTOPp->PicoRV32__DOT___T_1470) {
                                        vlTOPp->PicoRV32__DOT__cpu_state 
                                            = vlTOPp->PicoRV32__DOT___GEN_653;
                                    } else {
                                        if (vlTOPp->PicoRV32__DOT___T_1484) {
                                            vlTOPp->PicoRV32__DOT__cpu_state 
                                                = vlTOPp->PicoRV32__DOT___GEN_653;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            vlTOPp->PicoRV32__DOT__cpu_state = 0x40U;
        }
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__decoded_imm = ((IData)(vlTOPp->PicoRV32__DOT__instr_jal)
                                               ? vlTOPp->PicoRV32__DOT__decoded_imm_j
                                               : ((IData)(vlTOPp->PicoRV32__DOT___T_564)
                                                   ? 
                                                  (0xfffff000U 
                                                   & vlTOPp->PicoRV32__DOT__mem_rdata_q)
                                                   : 
                                                  ((((IData)(vlTOPp->PicoRV32__DOT__instr_jalr) 
                                                     | (IData)(vlTOPp->PicoRV32__DOT__is_lb_lh_lw_lbu_lhu)) 
                                                    | (IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_imm))
                                                    ? 
                                                   ((0xff800000U 
                                                     & ((- (IData)(
                                                                   (1U 
                                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                                       >> 0x1fU)))) 
                                                        << 0x17U)) 
                                                    | ((0x7ff000U 
                                                        & ((- (IData)(
                                                                      (1U 
                                                                       & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                                          >> 0x1fU)))) 
                                                           << 0xcU)) 
                                                       | (0xfffU 
                                                          & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                             >> 0x14U))))
                                                    : 
                                                   ((IData)(vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu)
                                                     ? 
                                                    ((0xfe000000U 
                                                      & ((- (IData)(
                                                                    (1U 
                                                                     & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                                        >> 0x1fU)))) 
                                                         << 0x19U)) 
                                                     | ((0x1ffe000U 
                                                         & ((- (IData)(
                                                                       (1U 
                                                                        & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                                           >> 0x1fU)))) 
                                                            << 0xdU)) 
                                                        | ((0x1000U 
                                                            & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                               >> 0x13U)) 
                                                           | ((0x800U 
                                                               & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                                  << 4U)) 
                                                              | ((0x7e0U 
                                                                  & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                                     >> 0x14U)) 
                                                                 | (0x1eU 
                                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                                       >> 7U)))))))
                                                     : 
                                                    ((IData)(vlTOPp->PicoRV32__DOT__is_sb_sh_sw)
                                                      ? 
                                                     ((0xff800000U 
                                                       & ((- (IData)(
                                                                     (1U 
                                                                      & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                                         >> 0x1fU)))) 
                                                          << 0x17U)) 
                                                      | ((0x7ff000U 
                                                          & ((- (IData)(
                                                                        (1U 
                                                                         & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                                            >> 0x1fU)))) 
                                                             << 0xcU)) 
                                                         | ((0xfe0U 
                                                             & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                                >> 0x14U)) 
                                                            | (0x1fU 
                                                               & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                                  >> 7U)))))
                                                      : 0U)))));
    }
    vlTOPp->PicoRV32__DOT__is_lui_auipc_jal = ((IData)(vlTOPp->PicoRV32__DOT___T_564) 
                                               | (IData)(vlTOPp->PicoRV32__DOT__instr_jal));
    vlTOPp->PicoRV32__DOT__mem_wordsize = __Vdly__PicoRV32__DOT__mem_wordsize;
    vlTOPp->PicoRV32__DOT___T_564 = ((IData)(vlTOPp->PicoRV32__DOT__instr_lui) 
                                     | (IData)(vlTOPp->PicoRV32__DOT__instr_auipc));
    vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh 
        = ((((IData)(vlTOPp->PicoRV32__DOT__instr_rdcycle) 
             | (IData)(vlTOPp->PicoRV32__DOT__instr_rdcycleh)) 
            | (IData)(vlTOPp->PicoRV32__DOT__instr_rdinstr)) 
           | (IData)(vlTOPp->PicoRV32__DOT__instr_rdinstrh));
    vlTOPp->io_pcpi_rs2 = vlTOPp->PicoRV32__DOT__reg_op2;
    vlTOPp->io_mem_la_wstrb = vlTOPp->PicoRV32__DOT__mem_la_wstrb;
    vlTOPp->PicoRV32__DOT___T_1184 = ((IData)(vlTOPp->PicoRV32__DOT__latched_store) 
                                      & (~ (IData)(vlTOPp->PicoRV32__DOT__latched_branch)));
    if (vlTOPp->PicoRV32__DOT___T_582) {
        vlTOPp->PicoRV32__DOT__decoded_imm_j = (((0xfe000000U 
                                                  & ((- (IData)(
                                                                (1U 
                                                                 & (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                                                    >> 0x1fU)))) 
                                                     << 0x19U)) 
                                                 | ((0x1e00000U 
                                                     & ((- (IData)(
                                                                   (1U 
                                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                                                       >> 0x1fU)))) 
                                                        << 0x15U)) 
                                                    | (0x100000U 
                                                       & (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                                          >> 0xbU)))) 
                                                | ((0xff000U 
                                                    & vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle) 
                                                   | ((0x800U 
                                                       & (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                                          >> 9U)) 
                                                      | (0x7feU 
                                                         & (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                                            >> 0x14U)))));
    }
    if (vlTOPp->PicoRV32__DOT___T_582) {
        vlTOPp->PicoRV32__DOT__is_sb_sh_sw = (0x23U 
                                              == (0x7fU 
                                                  & vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle));
    }
    vlTOPp->PicoRV32__DOT___GEN_595 = ((IData)(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh) 
                                       | (IData)(vlTOPp->PicoRV32__DOT__latched_store));
    vlTOPp->PicoRV32__DOT___T_1179 = (0x40U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1233 = (0x80U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1359 = (0x20U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1418 = (0x10U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1437 = (8U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1448 = (4U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1470 = (2U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1484 = (1U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___GEN_766 = ((4U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                       | ((2U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                           ? (IData)(vlTOPp->PicoRV32__DOT__latched_store)
                                           : ((1U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                              | (IData)(vlTOPp->PicoRV32__DOT__latched_store))));
    if (vlTOPp->PicoRV32__DOT___T_582) {
        vlTOPp->PicoRV32__DOT__is_lb_lh_lw_lbu_lhu 
            = (3U == (0x7fU & vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle));
    }
    vlTOPp->PicoRV32__DOT__reg_sh = (0x1fU & (IData)(vlTOPp->PicoRV32__DOT___GEN_966));
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__is_slli_srli_srai = 
            ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_imm) 
             & (IData)(vlTOPp->PicoRV32__DOT___T_1070));
    }
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__is_sll_srl_sra = ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_reg) 
                                                 & (IData)(vlTOPp->PicoRV32__DOT___T_1070));
    }
    vlTOPp->PicoRV32__DOT__cpuregs_rs1 = ((1U & (IData)(vlTOPp->PicoRV32__DOT__decoded_rs1))
                                           ? vlTOPp->PicoRV32__DOT___T_1196
                                           : 0U);
    vlTOPp->PicoRV32__DOT__cpuregs_rs2 = ((1U & (IData)(vlTOPp->PicoRV32__DOT__decoded_rs2))
                                           ? vlTOPp->PicoRV32__DOT___T_1196
                                           : 0U);
    vlTOPp->PicoRV32__DOT__reg_op1 = (IData)(vlTOPp->PicoRV32__DOT___GEN_964);
    vlTOPp->PicoRV32__DOT__mem_do_wdata = ((IData)(vlTOPp->PicoRV32__DOT__set_mem_do_wdata) 
                                           | (IData)(vlTOPp->PicoRV32__DOT___GEN_995));
    if (vlTOPp->PicoRV32__DOT___T_582) {
        vlTOPp->PicoRV32__DOT__instr_jal = (0x6fU == 
                                            (0x7fU 
                                             & vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle));
    }
    vlTOPp->PicoRV32__DOT__mem_do_rdata = ((IData)(vlTOPp->PicoRV32__DOT__set_mem_do_rdata) 
                                           | (IData)(vlTOPp->PicoRV32__DOT___GEN_994));
    if (vlTOPp->PicoRV32__DOT___T_837) {
        vlTOPp->PicoRV32__DOT__is_jalr_addi_slti_sltiu_xori_ori_andi 
            = ((IData)(vlTOPp->PicoRV32__DOT__instr_jalr) 
               | ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_imm) 
                  & ((((((0U == (7U & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                       >> 0xcU))) | 
                         (2U == (7U & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                       >> 0xcU)))) 
                        | (3U == (7U & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                        >> 0xcU)))) 
                       | (4U == (7U & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                       >> 0xcU)))) 
                      | (6U == (7U & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                      >> 0xcU)))) | 
                     (7U == (7U & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                   >> 0xcU))))));
    }
    vlTOPp->PicoRV32__DOT__alu_out_0 = ((~ (IData)(vlTOPp->PicoRV32__DOT__instr_beq)) 
                                        & ((IData)(vlTOPp->PicoRV32__DOT__instr_bne) 
                                           | (IData)(vlTOPp->PicoRV32__DOT__instr_bge)));
    vlTOPp->PicoRV32__DOT__set_mem_do_wdata = __Vdly__PicoRV32__DOT__set_mem_do_wdata;
    vlTOPp->PicoRV32__DOT__set_mem_do_rdata = __Vdly__PicoRV32__DOT__set_mem_do_rdata;
    vlTOPp->PicoRV32__DOT___GEN_486 = ((IData)(vlTOPp->PicoRV32__DOT__is_sb_sh_sw) 
                                       | ((IData)(vlTOPp->PicoRV32__DOT__is_sll_srl_sra) 
                                          & (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)));
    if (vlTOPp->PicoRV32__DOT___T_582) {
        vlTOPp->PicoRV32__DOT__is_alu_reg_reg = (0x33U 
                                                 == 
                                                 (0x7fU 
                                                  & vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle));
    }
    if (vlTOPp->PicoRV32__DOT___T_582) {
        vlTOPp->PicoRV32__DOT__decoded_rs1 = (0x1fU 
                                              & (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                                 >> 0xfU));
    }
    if (vlTOPp->PicoRV32__DOT___T_582) {
        vlTOPp->PicoRV32__DOT__decoded_rs2 = (0x1fU 
                                              & (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                                 >> 0x14U));
    }
    if ((0U != (((IData)(vlTOPp->reset) & (IData)(vlTOPp->PicoRV32__DOT__cpuregs_write)) 
                & (IData)(vlTOPp->PicoRV32__DOT__latched_rd)))) {
        vlTOPp->PicoRV32__DOT___T_1196 = vlTOPp->PicoRV32__DOT__cpuregs_wrdata;
    }
    vlTOPp->io_pcpi_rs1 = vlTOPp->PicoRV32__DOT__reg_op1;
    vlTOPp->io_mem_la_addr = (IData)(((IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)
                                       ? ((QData)((IData)(
                                                          (0x3fffffffU 
                                                           & ((((IData)(vlTOPp->PicoRV32__DOT__latched_store) 
                                                                & (IData)(vlTOPp->PicoRV32__DOT__latched_branch))
                                                                ? 
                                                               (0xfffffffeU 
                                                                & vlTOPp->PicoRV32__DOT__reg_out)
                                                                : vlTOPp->PicoRV32__DOT__reg_next_pc) 
                                                              >> 2U)))) 
                                          << 2U) : (QData)((IData)(
                                                                   (0xfffffffcU 
                                                                    & vlTOPp->PicoRV32__DOT__reg_op1)))));
    vlTOPp->PicoRV32__DOT___T_1478 = (VL_ULL(0x1ffffffff) 
                                      & ((QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1)) 
                                         + (QData)((IData)(vlTOPp->PicoRV32__DOT__decoded_imm))));
    vlTOPp->PicoRV32__DOT___T_48 = ((IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst) 
                                    | (IData)(vlTOPp->PicoRV32__DOT__mem_do_rdata));
    if (vlTOPp->PicoRV32__DOT___T_582) {
        vlTOPp->PicoRV32__DOT__is_alu_reg_imm = (0x13U 
                                                 == 
                                                 (0x7fU 
                                                  & vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle));
    }
    if (vlTOPp->PicoRV32__DOT___T_582) {
        vlTOPp->PicoRV32__DOT__instr_jalr = ((0x67U 
                                              == (0x7fU 
                                                  & vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle)) 
                                             & (0U 
                                                == 
                                                (7U 
                                                 & (vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
                                                    >> 0xcU))));
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_beq = ((IData)(vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu) 
                                                & (0U 
                                                   == 
                                                   (7U 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0xcU))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_beq = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_bne = ((IData)(vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu) 
                                                & (1U 
                                                   == 
                                                   (7U 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0xcU))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_bne = 0U;
    }
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_837) {
            vlTOPp->PicoRV32__DOT__instr_bge = ((IData)(vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu) 
                                                & (5U 
                                                   == 
                                                   (7U 
                                                    & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                       >> 0xcU))));
        }
    } else {
        vlTOPp->PicoRV32__DOT__instr_bge = 0U;
    }
    vlTOPp->PicoRV32__DOT__cpuregs_write = __Vdly__PicoRV32__DOT__cpuregs_write;
    vlTOPp->PicoRV32__DOT__cpuregs_wrdata = __Vdly__PicoRV32__DOT__cpuregs_wrdata;
    vlTOPp->PicoRV32__DOT___GEN_816 = ((0x10U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                        ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1))
                                        : ((8U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                            ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1))
                                            : ((4U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? (QData)((IData)(
                                                                  ((0U 
                                                                    == (IData)(vlTOPp->PicoRV32__DOT__reg_sh))
                                                                    ? vlTOPp->PicoRV32__DOT__reg_op1
                                                                    : 
                                                                   ((4U 
                                                                     <= 
                                                                     (1U 
                                                                      & (IData)(vlTOPp->PicoRV32__DOT__reg_sh)))
                                                                     ? 
                                                                    ((IData)(vlTOPp->PicoRV32__DOT___T_1452)
                                                                      ? (IData)(
                                                                                ((QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1)) 
                                                                                << 4U))
                                                                      : 
                                                                     ((IData)(vlTOPp->PicoRV32__DOT___T_1454)
                                                                       ? 
                                                                      (0xfffffffU 
                                                                       & (vlTOPp->PicoRV32__DOT__reg_op1 
                                                                          >> 4U))
                                                                       : 
                                                                      ((IData)(vlTOPp->PicoRV32__DOT___T_1456)
                                                                        ? 
                                                                       ((0xf0000000U 
                                                                         & ((- (IData)(
                                                                                (1U 
                                                                                & (vlTOPp->PicoRV32__DOT__reg_op1 
                                                                                >> 0x1fU)))) 
                                                                            << 0x1cU)) 
                                                                        | (0xfffffffU 
                                                                           & (vlTOPp->PicoRV32__DOT__reg_op1 
                                                                              >> 4U)))
                                                                        : vlTOPp->PicoRV32__DOT__reg_op1)))
                                                                     : 
                                                                    ((IData)(vlTOPp->PicoRV32__DOT___T_1452)
                                                                      ? 
                                                                     (0xfffffffeU 
                                                                      & (vlTOPp->PicoRV32__DOT__reg_op1 
                                                                         << 1U))
                                                                      : 
                                                                     ((IData)(vlTOPp->PicoRV32__DOT___T_1454)
                                                                       ? 
                                                                      (0x7fffffffU 
                                                                       & (vlTOPp->PicoRV32__DOT__reg_op1 
                                                                          >> 1U))
                                                                       : 
                                                                      ((IData)(vlTOPp->PicoRV32__DOT___T_1456)
                                                                        ? 
                                                                       ((0x80000000U 
                                                                         & vlTOPp->PicoRV32__DOT__reg_op1) 
                                                                        | (0x7fffffffU 
                                                                           & (vlTOPp->PicoRV32__DOT__reg_op1 
                                                                              >> 1U)))
                                                                        : vlTOPp->PicoRV32__DOT__reg_op1)))))))
                                                : (
                                                   (2U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? 
                                                   ((IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata)
                                                     ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1))
                                                     : vlTOPp->PicoRV32__DOT___T_1478)
                                                    : 
                                                   ((1U 
                                                     == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                     ? 
                                                    ((IData)(vlTOPp->PicoRV32__DOT__mem_do_rdata)
                                                      ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1))
                                                      : vlTOPp->PicoRV32__DOT___T_1478)
                                                     : (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1)))))));
    vlTOPp->PicoRV32__DOT___GEN_60 = ((IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata) 
                                      | ((IData)(vlTOPp->PicoRV32__DOT___T_48) 
                                         | (IData)(vlTOPp->PicoRV32__DOT__mem_valid)));
    vlTOPp->PicoRV32__DOT___T_837 = ((IData)(vlTOPp->PicoRV32__DOT__decoder_trigger) 
                                     & (~ (IData)(vlTOPp->PicoRV32__DOT__decoder_pseudo_trigger)));
    vlTOPp->PicoRV32__DOT__latched_rd = (0x1fU & (IData)(vlTOPp->PicoRV32__DOT___GEN_952));
    if (vlTOPp->reset) {
        if (vlTOPp->PicoRV32__DOT___T_582) {
            vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu 
                = (0x63U == (0x7fU & vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle));
        }
    } else {
        vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu = 0U;
    }
    vlTOPp->PicoRV32__DOT__all_instr = (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_lui)) 
                                         << 0x2eU) 
                                        | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_auipc)) 
                                            << 0x2dU) 
                                           | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_jal)) 
                                               << 0x2cU) 
                                              | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_jalr)) 
                                                  << 0x2bU) 
                                                 | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_beq)) 
                                                     << 0x2aU) 
                                                    | (((QData)((IData)(
                                                                        (((IData)(vlTOPp->PicoRV32__DOT__instr_bne) 
                                                                          << 5U) 
                                                                         | (((IData)(vlTOPp->PicoRV32__DOT__instr_blt) 
                                                                             << 4U) 
                                                                            | (((IData)(vlTOPp->PicoRV32__DOT__instr_bge) 
                                                                                << 3U) 
                                                                               | (((IData)(vlTOPp->PicoRV32__DOT__instr_bltu) 
                                                                                << 2U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_bgeu) 
                                                                                << 1U) 
                                                                                | (IData)(vlTOPp->PicoRV32__DOT__instr_lb)))))))) 
                                                        << 0x24U) 
                                                       | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_lh)) 
                                                           << 0x23U) 
                                                          | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_lw)) 
                                                              << 0x22U) 
                                                             | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_lbu)) 
                                                                 << 0x21U) 
                                                                | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_lhu)) 
                                                                    << 0x20U) 
                                                                   | (QData)((IData)(
                                                                                (((IData)(vlTOPp->PicoRV32__DOT__instr_sb) 
                                                                                << 0x1fU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sh) 
                                                                                << 0x1eU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sw) 
                                                                                << 0x1dU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_addi) 
                                                                                << 0x1cU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_slti) 
                                                                                << 0x1bU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sltiu) 
                                                                                << 0x1aU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_xori) 
                                                                                << 0x19U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_ori) 
                                                                                << 0x18U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_andi) 
                                                                                << 0x17U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_slli) 
                                                                                << 0x16U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_srli) 
                                                                                << 0x15U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_srai) 
                                                                                << 0x14U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_add) 
                                                                                << 0x13U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sub) 
                                                                                << 0x12U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sll) 
                                                                                << 0x11U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_slt) 
                                                                                << 0x10U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sltu) 
                                                                                << 0xfU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_xor) 
                                                                                << 0xeU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_srl) 
                                                                                << 0xdU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sra) 
                                                                                << 0xcU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_or) 
                                                                                << 0xbU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_and) 
                                                                                << 0xaU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_rdcycle) 
                                                                                << 9U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_rdcycleh) 
                                                                                << 8U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_rdinstr) 
                                                                                << 7U) 
                                                                                | ((IData)(vlTOPp->PicoRV32__DOT__instr_rdinstrh) 
                                                                                << 6U))))))))))))))))))))))))))))))))))))));
    if (vlTOPp->PicoRV32__DOT__mem_xfer) {
        vlTOPp->PicoRV32__DOT__mem_rdata_q = vlTOPp->io_mem_rdata;
    }
    vlTOPp->PicoRV32__DOT___T_1404 = ((IData)(vlTOPp->PicoRV32__DOT__is_lb_lh_lw_lbu_lhu) 
                                      & (VL_ULL(0) 
                                         != vlTOPp->PicoRV32__DOT__all_instr));
    vlTOPp->PicoRV32__DOT___T_1070 = ((((1U == (7U 
                                                & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                   >> 0xcU))) 
                                        & (0U == (0x7fU 
                                                  & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                     >> 0x19U)))) 
                                       | ((5U == (7U 
                                                  & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                     >> 0xcU))) 
                                          & (0U == 
                                             (0x7fU 
                                              & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                 >> 0x19U))))) 
                                      | ((5U == (7U 
                                                 & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                    >> 0xcU))) 
                                         & (0x20U == 
                                            (0x7fU 
                                             & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0x19U)))));
    vlTOPp->PicoRV32__DOT___T_907 = ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_imm) 
                                     & (5U == (7U & 
                                               (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0xcU))));
    vlTOPp->PicoRV32__DOT___T_919 = ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_reg) 
                                     & (0U == (7U & 
                                               (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0xcU))));
    vlTOPp->PicoRV32__DOT___T_955 = ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_reg) 
                                     & (5U == (7U & 
                                               (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0xcU))));
}

void VPicoRV32::_settle__TOP__3(VPicoRV32__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPicoRV32::_settle__TOP__3\n"); );
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    WData/*95:0*/ __Vtemp2[3];
    WData/*95:0*/ __Vtemp3[3];
    WData/*95:0*/ __Vtemp4[3];
    WData/*95:0*/ __Vtemp8[3];
    WData/*95:0*/ __Vtemp9[3];
    WData/*95:0*/ __Vtemp10[3];
    // Body
    vlTOPp->io_mem_addr = vlTOPp->PicoRV32__DOT__mem_addr;
    vlTOPp->io_mem_wdata = vlTOPp->PicoRV32__DOT__mem_wdata;
    vlTOPp->io_mem_wstrb = vlTOPp->PicoRV32__DOT__mem_wstrb;
    vlTOPp->io_mem_la_wdata = vlTOPp->PicoRV32__DOT__mem_la_wdata;
    __Vtemp2[0U] = 1U;
    __Vtemp2[1U] = 0U;
    __Vtemp2[2U] = 0U;
    VL_EXTEND_WQ(65,64, __Vtemp3, vlTOPp->PicoRV32__DOT__count_cycle);
    VL_ADD_W(3, __Vtemp4, __Vtemp2, __Vtemp3);
    vlTOPp->PicoRV32__DOT___T_1218[0U] = ((IData)(vlTOPp->reset)
                                           ? __Vtemp4[0U]
                                           : 0U);
    vlTOPp->PicoRV32__DOT___T_1218[1U] = ((IData)(vlTOPp->reset)
                                           ? __Vtemp4[1U]
                                           : 0U);
    vlTOPp->PicoRV32__DOT___T_1218[2U] = ((IData)(vlTOPp->reset)
                                           ? (1U & 
                                              __Vtemp4[2U])
                                           : 0U);
    vlTOPp->io_trap = vlTOPp->PicoRV32__DOT__trap;
    vlTOPp->PicoRV32__DOT___T_1452 = ((IData)(vlTOPp->PicoRV32__DOT__instr_slli) 
                                      | (IData)(vlTOPp->PicoRV32__DOT__instr_sll));
    vlTOPp->PicoRV32__DOT___T_1454 = ((IData)(vlTOPp->PicoRV32__DOT__instr_srli) 
                                      | (IData)(vlTOPp->PicoRV32__DOT__instr_srl));
    vlTOPp->PicoRV32__DOT___T_1456 = ((IData)(vlTOPp->PicoRV32__DOT__instr_srai) 
                                      | (IData)(vlTOPp->PicoRV32__DOT__instr_sra));
    vlTOPp->io_mem_valid = vlTOPp->PicoRV32__DOT__mem_valid;
    vlTOPp->PicoRV32__DOT___T_491 = (0U == (IData)(vlTOPp->PicoRV32__DOT__mem_state));
    vlTOPp->PicoRV32__DOT___T_496 = (1U == (IData)(vlTOPp->PicoRV32__DOT__mem_state));
    vlTOPp->PicoRV32__DOT___T_511 = (2U == (IData)(vlTOPp->PicoRV32__DOT__mem_state));
    vlTOPp->PicoRV32__DOT___T_512 = (3U == (IData)(vlTOPp->PicoRV32__DOT__mem_state));
    vlTOPp->io_mem_instr = vlTOPp->PicoRV32__DOT__mem_instr;
    vlTOPp->PicoRV32__DOT___T_52 = (1U & (((IData)(vlTOPp->PicoRV32__DOT__mem_state) 
                                           >> 1U) | (IData)(vlTOPp->PicoRV32__DOT__mem_state)));
    vlTOPp->PicoRV32__DOT___T_564 = ((IData)(vlTOPp->PicoRV32__DOT__instr_lui) 
                                     | (IData)(vlTOPp->PicoRV32__DOT__instr_auipc));
    vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh 
        = ((((IData)(vlTOPp->PicoRV32__DOT__instr_rdcycle) 
             | (IData)(vlTOPp->PicoRV32__DOT__instr_rdcycleh)) 
            | (IData)(vlTOPp->PicoRV32__DOT__instr_rdinstr)) 
           | (IData)(vlTOPp->PicoRV32__DOT__instr_rdinstrh));
    vlTOPp->PicoRV32__DOT___T_1179 = (0x40U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1233 = (0x80U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1359 = (0x20U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1418 = (0x10U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1437 = (8U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1448 = (4U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1470 = (2U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_1484 = (1U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->io_pcpi_rs2 = vlTOPp->PicoRV32__DOT__reg_op2;
    vlTOPp->PicoRV32__DOT___T_1184 = ((IData)(vlTOPp->PicoRV32__DOT__latched_store) 
                                      & (~ (IData)(vlTOPp->PicoRV32__DOT__latched_branch)));
    vlTOPp->PicoRV32__DOT___GEN_766 = ((4U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                       | ((2U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                           ? (IData)(vlTOPp->PicoRV32__DOT__latched_store)
                                           : ((1U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state)) 
                                              | (IData)(vlTOPp->PicoRV32__DOT__latched_store))));
    vlTOPp->PicoRV32__DOT___GEN_934 = ((IData)(vlTOPp->reset)
                                        ? ((0x80U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                            ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_next_pc))
                                            : ((0x40U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_next_pc))
                                                : (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_next_pc))))
                                        : VL_ULL(0));
    VL_EXTEND_WQ(65,64, __Vtemp8, vlTOPp->PicoRV32__DOT__count_instr);
    VL_EXTEND_WQ(65,64, __Vtemp9, vlTOPp->PicoRV32__DOT__count_instr);
    VL_EXTEND_WQ(65,64, __Vtemp10, vlTOPp->PicoRV32__DOT__count_instr);
    vlTOPp->PicoRV32__DOT___GEN_935[0U] = ((IData)(vlTOPp->reset)
                                            ? ((0x80U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? __Vtemp8[0U]
                                                : (
                                                   (0x40U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? 
                                                   __Vtemp9[0U]
                                                    : 
                                                   __Vtemp10[0U]))
                                            : 0U);
    vlTOPp->PicoRV32__DOT___GEN_935[1U] = ((IData)(vlTOPp->reset)
                                            ? ((0x80U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? __Vtemp8[1U]
                                                : (
                                                   (0x40U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? 
                                                   __Vtemp9[1U]
                                                    : 
                                                   __Vtemp10[1U]))
                                            : 0U);
    vlTOPp->PicoRV32__DOT___GEN_935[2U] = ((IData)(vlTOPp->reset)
                                            ? ((0x80U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? __Vtemp8[2U]
                                                : (
                                                   (0x40U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? 
                                                   __Vtemp9[2U]
                                                    : 
                                                   __Vtemp10[2U]))
                                            : 0U);
    vlTOPp->io_mem_la_wstrb = vlTOPp->PicoRV32__DOT__mem_la_wstrb;
    vlTOPp->io_pcpi_rs1 = vlTOPp->PicoRV32__DOT__reg_op1;
    vlTOPp->io_mem_la_addr = (IData)(((IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)
                                       ? ((QData)((IData)(
                                                          (0x3fffffffU 
                                                           & ((((IData)(vlTOPp->PicoRV32__DOT__latched_store) 
                                                                & (IData)(vlTOPp->PicoRV32__DOT__latched_branch))
                                                                ? 
                                                               (0xfffffffeU 
                                                                & vlTOPp->PicoRV32__DOT__reg_out)
                                                                : vlTOPp->PicoRV32__DOT__reg_next_pc) 
                                                              >> 2U)))) 
                                          << 2U) : (QData)((IData)(
                                                                   (0xfffffffcU 
                                                                    & vlTOPp->PicoRV32__DOT__reg_op1)))));
    vlTOPp->PicoRV32__DOT___GEN_486 = ((IData)(vlTOPp->PicoRV32__DOT__is_sb_sh_sw) 
                                       | ((IData)(vlTOPp->PicoRV32__DOT__is_sll_srl_sra) 
                                          & (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)));
    vlTOPp->PicoRV32__DOT___T_1478 = (VL_ULL(0x1ffffffff) 
                                      & ((QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1)) 
                                         + (QData)((IData)(vlTOPp->PicoRV32__DOT__decoded_imm))));
    vlTOPp->PicoRV32__DOT___T_48 = ((IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst) 
                                    | (IData)(vlTOPp->PicoRV32__DOT__mem_do_rdata));
    vlTOPp->PicoRV32__DOT___T_837 = ((IData)(vlTOPp->PicoRV32__DOT__decoder_trigger) 
                                     & (~ (IData)(vlTOPp->PicoRV32__DOT__decoder_pseudo_trigger)));
    vlTOPp->PicoRV32__DOT__all_instr = (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_lui)) 
                                         << 0x2eU) 
                                        | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_auipc)) 
                                            << 0x2dU) 
                                           | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_jal)) 
                                               << 0x2cU) 
                                              | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_jalr)) 
                                                  << 0x2bU) 
                                                 | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_beq)) 
                                                     << 0x2aU) 
                                                    | (((QData)((IData)(
                                                                        (((IData)(vlTOPp->PicoRV32__DOT__instr_bne) 
                                                                          << 5U) 
                                                                         | (((IData)(vlTOPp->PicoRV32__DOT__instr_blt) 
                                                                             << 4U) 
                                                                            | (((IData)(vlTOPp->PicoRV32__DOT__instr_bge) 
                                                                                << 3U) 
                                                                               | (((IData)(vlTOPp->PicoRV32__DOT__instr_bltu) 
                                                                                << 2U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_bgeu) 
                                                                                << 1U) 
                                                                                | (IData)(vlTOPp->PicoRV32__DOT__instr_lb)))))))) 
                                                        << 0x24U) 
                                                       | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_lh)) 
                                                           << 0x23U) 
                                                          | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_lw)) 
                                                              << 0x22U) 
                                                             | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_lbu)) 
                                                                 << 0x21U) 
                                                                | (((QData)((IData)(vlTOPp->PicoRV32__DOT__instr_lhu)) 
                                                                    << 0x20U) 
                                                                   | (QData)((IData)(
                                                                                (((IData)(vlTOPp->PicoRV32__DOT__instr_sb) 
                                                                                << 0x1fU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sh) 
                                                                                << 0x1eU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sw) 
                                                                                << 0x1dU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_addi) 
                                                                                << 0x1cU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_slti) 
                                                                                << 0x1bU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sltiu) 
                                                                                << 0x1aU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_xori) 
                                                                                << 0x19U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_ori) 
                                                                                << 0x18U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_andi) 
                                                                                << 0x17U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_slli) 
                                                                                << 0x16U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_srli) 
                                                                                << 0x15U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_srai) 
                                                                                << 0x14U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_add) 
                                                                                << 0x13U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sub) 
                                                                                << 0x12U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sll) 
                                                                                << 0x11U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_slt) 
                                                                                << 0x10U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sltu) 
                                                                                << 0xfU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_xor) 
                                                                                << 0xeU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_srl) 
                                                                                << 0xdU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_sra) 
                                                                                << 0xcU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_or) 
                                                                                << 0xbU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_and) 
                                                                                << 0xaU) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_rdcycle) 
                                                                                << 9U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_rdcycleh) 
                                                                                << 8U) 
                                                                                | (((IData)(vlTOPp->PicoRV32__DOT__instr_rdinstr) 
                                                                                << 7U) 
                                                                                | ((IData)(vlTOPp->PicoRV32__DOT__instr_rdinstrh) 
                                                                                << 6U))))))))))))))))))))))))))))))))))))));
    vlTOPp->PicoRV32__DOT___T_1070 = ((((1U == (7U 
                                                & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                   >> 0xcU))) 
                                        & (0U == (0x7fU 
                                                  & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                     >> 0x19U)))) 
                                       | ((5U == (7U 
                                                  & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                     >> 0xcU))) 
                                          & (0U == 
                                             (0x7fU 
                                              & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                 >> 0x19U))))) 
                                      | ((5U == (7U 
                                                 & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                    >> 0xcU))) 
                                         & (0x20U == 
                                            (0x7fU 
                                             & (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0x19U)))));
    vlTOPp->PicoRV32__DOT___T_907 = ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_imm) 
                                     & (5U == (7U & 
                                               (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0xcU))));
    vlTOPp->PicoRV32__DOT___T_919 = ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_reg) 
                                     & (0U == (7U & 
                                               (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0xcU))));
    vlTOPp->PicoRV32__DOT___T_955 = ((IData)(vlTOPp->PicoRV32__DOT__is_alu_reg_reg) 
                                     & (5U == (7U & 
                                               (vlTOPp->PicoRV32__DOT__mem_rdata_q 
                                                >> 0xcU))));
    vlTOPp->PicoRV32__DOT___T_482 = (1U & ((~ (IData)(vlTOPp->reset)) 
                                           | (IData)(vlTOPp->io_trap)));
    vlTOPp->PicoRV32__DOT__mem_xfer = ((IData)(vlTOPp->io_mem_valid) 
                                       & (IData)(vlTOPp->io_mem_ready));
    vlTOPp->io_mem_la_write = (((IData)(vlTOPp->reset) 
                                & (~ (IData)(vlTOPp->PicoRV32__DOT___T_52))) 
                               & (IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata));
    vlTOPp->PicoRV32__DOT___GEN_595 = ((IData)(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh) 
                                       | (IData)(vlTOPp->PicoRV32__DOT__latched_store));
    vlTOPp->PicoRV32__DOT___GEN_816 = ((0x10U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                        ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1))
                                        : ((8U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                            ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1))
                                            : ((4U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? (QData)((IData)(
                                                                  ((0U 
                                                                    == (IData)(vlTOPp->PicoRV32__DOT__reg_sh))
                                                                    ? vlTOPp->PicoRV32__DOT__reg_op1
                                                                    : 
                                                                   ((4U 
                                                                     <= 
                                                                     (1U 
                                                                      & (IData)(vlTOPp->PicoRV32__DOT__reg_sh)))
                                                                     ? 
                                                                    ((IData)(vlTOPp->PicoRV32__DOT___T_1452)
                                                                      ? (IData)(
                                                                                ((QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1)) 
                                                                                << 4U))
                                                                      : 
                                                                     ((IData)(vlTOPp->PicoRV32__DOT___T_1454)
                                                                       ? 
                                                                      (0xfffffffU 
                                                                       & (vlTOPp->PicoRV32__DOT__reg_op1 
                                                                          >> 4U))
                                                                       : 
                                                                      ((IData)(vlTOPp->PicoRV32__DOT___T_1456)
                                                                        ? 
                                                                       ((0xf0000000U 
                                                                         & ((- (IData)(
                                                                                (1U 
                                                                                & (vlTOPp->PicoRV32__DOT__reg_op1 
                                                                                >> 0x1fU)))) 
                                                                            << 0x1cU)) 
                                                                        | (0xfffffffU 
                                                                           & (vlTOPp->PicoRV32__DOT__reg_op1 
                                                                              >> 4U)))
                                                                        : vlTOPp->PicoRV32__DOT__reg_op1)))
                                                                     : 
                                                                    ((IData)(vlTOPp->PicoRV32__DOT___T_1452)
                                                                      ? 
                                                                     (0xfffffffeU 
                                                                      & (vlTOPp->PicoRV32__DOT__reg_op1 
                                                                         << 1U))
                                                                      : 
                                                                     ((IData)(vlTOPp->PicoRV32__DOT___T_1454)
                                                                       ? 
                                                                      (0x7fffffffU 
                                                                       & (vlTOPp->PicoRV32__DOT__reg_op1 
                                                                          >> 1U))
                                                                       : 
                                                                      ((IData)(vlTOPp->PicoRV32__DOT___T_1456)
                                                                        ? 
                                                                       ((0x80000000U 
                                                                         & vlTOPp->PicoRV32__DOT__reg_op1) 
                                                                        | (0x7fffffffU 
                                                                           & (vlTOPp->PicoRV32__DOT__reg_op1 
                                                                              >> 1U)))
                                                                        : vlTOPp->PicoRV32__DOT__reg_op1)))))))
                                                : (
                                                   (2U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? 
                                                   ((IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata)
                                                     ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1))
                                                     : vlTOPp->PicoRV32__DOT___T_1478)
                                                    : 
                                                   ((1U 
                                                     == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                     ? 
                                                    ((IData)(vlTOPp->PicoRV32__DOT__mem_do_rdata)
                                                      ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1))
                                                      : vlTOPp->PicoRV32__DOT___T_1478)
                                                     : (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1)))))));
    vlTOPp->PicoRV32__DOT___GEN_60 = ((IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata) 
                                      | ((IData)(vlTOPp->PicoRV32__DOT___T_48) 
                                         | (IData)(vlTOPp->PicoRV32__DOT__mem_valid)));
    vlTOPp->io_mem_la_read = ((IData)(vlTOPp->reset) 
                              & ((~ (IData)(vlTOPp->PicoRV32__DOT___T_52)) 
                                 & (IData)(vlTOPp->PicoRV32__DOT___T_48)));
    vlTOPp->PicoRV32__DOT___T_1404 = ((IData)(vlTOPp->PicoRV32__DOT__is_lb_lh_lw_lbu_lhu) 
                                      & (VL_ULL(0) 
                                         != vlTOPp->PicoRV32__DOT__all_instr));
    vlTOPp->PicoRV32__DOT___GEN_952 = ((IData)(vlTOPp->reset)
                                        ? ((0x80U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                            ? (IData)(vlTOPp->PicoRV32__DOT__latched_rd)
                                            : ((0x40U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? (IData)(vlTOPp->PicoRV32__DOT__latched_rd)
                                                : (
                                                   (0x20U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? (IData)(vlTOPp->PicoRV32__DOT__latched_rd)
                                                    : 
                                                   ((0x10U 
                                                     == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                     ? (IData)(vlTOPp->PicoRV32__DOT__latched_rd)
                                                     : 
                                                    ((8U 
                                                      == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                      ? 
                                                     ((IData)(vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu)
                                                       ? 0U
                                                       : (IData)(vlTOPp->PicoRV32__DOT__latched_rd))
                                                      : (IData)(vlTOPp->PicoRV32__DOT__latched_rd))))))
                                        : (IData)(vlTOPp->PicoRV32__DOT__latched_rd));
    vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
        = ((IData)(vlTOPp->PicoRV32__DOT__mem_xfer)
            ? vlTOPp->io_mem_rdata : vlTOPp->PicoRV32__DOT__mem_rdata_q);
    vlTOPp->PicoRV32__DOT__mem_done = ((IData)(vlTOPp->reset) 
                                       & ((((IData)(vlTOPp->PicoRV32__DOT__mem_xfer) 
                                            & (IData)(vlTOPp->PicoRV32__DOT___T_52)) 
                                           & ((IData)(vlTOPp->PicoRV32__DOT___T_48) 
                                              | (IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata))) 
                                          | ((((IData)(vlTOPp->PicoRV32__DOT__mem_state) 
                                               >> 1U) 
                                              & (IData)(vlTOPp->PicoRV32__DOT__mem_state)) 
                                             & (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst))));
    vlTOPp->PicoRV32__DOT___T_490 = ((IData)(vlTOPp->io_mem_la_wstrb) 
                                     & (- (IData)((IData)(vlTOPp->io_mem_la_write))));
    vlTOPp->PicoRV32__DOT___GEN_964 = ((IData)(vlTOPp->reset)
                                        ? ((0x80U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                            ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1))
                                            : ((0x40U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1))
                                                : (
                                                   (0x20U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? (QData)((IData)(
                                                                      ((VL_ULL(0) 
                                                                        == vlTOPp->PicoRV32__DOT__all_instr)
                                                                        ? 0U
                                                                        : 
                                                                       ((IData)(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh)
                                                                         ? 0U
                                                                         : 
                                                                        ((IData)(vlTOPp->PicoRV32__DOT__is_lui_auipc_jal)
                                                                          ? 0U
                                                                          : vlTOPp->PicoRV32__DOT__cpuregs_rs1)))))
                                                    : vlTOPp->PicoRV32__DOT___GEN_816)))
                                        : (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1)));
    vlTOPp->PicoRV32__DOT___T_486 = ((IData)(vlTOPp->io_mem_la_read) 
                                     | (IData)(vlTOPp->io_mem_la_write));
    vlTOPp->PicoRV32__DOT___GEN_966 = ((IData)(vlTOPp->reset)
                                        ? ((0x80U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                            ? 0U : 
                                           ((0x40U 
                                             == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                             ? 0U : 
                                            (0x3fU 
                                             & ((0x20U 
                                                 == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                 ? 
                                                ((VL_ULL(0) 
                                                  == vlTOPp->PicoRV32__DOT__all_instr)
                                                  ? 0U
                                                  : 
                                                 ((IData)(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh)
                                                   ? 0U
                                                   : 
                                                  ((IData)(vlTOPp->PicoRV32__DOT__is_lui_auipc_jal)
                                                    ? 0U
                                                    : 
                                                   ((IData)(vlTOPp->PicoRV32__DOT___T_1404)
                                                     ? 0U
                                                     : 
                                                    (0x1fU 
                                                     & ((IData)(vlTOPp->PicoRV32__DOT__is_slli_srli_srai)
                                                         ? (IData)(vlTOPp->PicoRV32__DOT__decoded_rs2)
                                                         : 
                                                        ((IData)(vlTOPp->PicoRV32__DOT__is_jalr_addi_slti_sltiu_xori_ori_andi)
                                                          ? 0U
                                                          : vlTOPp->PicoRV32__DOT__cpuregs_rs2)))))))
                                                 : 
                                                ((0x10U 
                                                  == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                  ? 
                                                 (0x1fU 
                                                  & vlTOPp->PicoRV32__DOT__cpuregs_rs2)
                                                  : 
                                                 ((8U 
                                                   == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                   ? 0U
                                                   : 
                                                  ((4U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? 
                                                   ((0U 
                                                     == (IData)(vlTOPp->PicoRV32__DOT__reg_sh))
                                                     ? 0U
                                                     : 
                                                    ((4U 
                                                      <= 
                                                      (1U 
                                                       & (IData)(vlTOPp->PicoRV32__DOT__reg_sh)))
                                                      ? 
                                                     ((IData)(vlTOPp->PicoRV32__DOT__reg_sh) 
                                                      - (IData)(4U))
                                                      : 
                                                     ((IData)(vlTOPp->PicoRV32__DOT__reg_sh) 
                                                      - (IData)(1U))))
                                                    : 0U)))))))
                                        : 0U);
    vlTOPp->PicoRV32__DOT___GEN_653 = ((IData)(vlTOPp->PicoRV32__DOT__mem_done)
                                        ? 0x40U : (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_582 = ((IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst) 
                                     & (IData)(vlTOPp->PicoRV32__DOT__mem_done));
    vlTOPp->PicoRV32__DOT___GEN_831 = ((0x20U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                        ? (QData)((IData)(
                                                          ((VL_ULL(0) 
                                                            == vlTOPp->PicoRV32__DOT__all_instr)
                                                            ? 0U
                                                            : 
                                                           ((IData)(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh)
                                                             ? 
                                                            ((IData)(vlTOPp->PicoRV32__DOT__instr_rdinstrh)
                                                              ? (IData)(
                                                                        (vlTOPp->PicoRV32__DOT__count_instr 
                                                                         >> 0x20U))
                                                              : 
                                                             ((IData)(vlTOPp->PicoRV32__DOT__instr_rdinstr)
                                                               ? (IData)(vlTOPp->PicoRV32__DOT__count_instr)
                                                               : 
                                                              ((IData)(vlTOPp->PicoRV32__DOT__instr_rdcycleh)
                                                                ? (IData)(
                                                                          (vlTOPp->PicoRV32__DOT__count_cycle 
                                                                           >> 0x20U))
                                                                : 
                                                               ((IData)(vlTOPp->PicoRV32__DOT__instr_rdcycle)
                                                                 ? (IData)(vlTOPp->PicoRV32__DOT__count_cycle)
                                                                 : 0U))))
                                                             : 0U))))
                                        : ((0x10U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                            ? VL_ULL(0)
                                            : ((8U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? (QData)((IData)(vlTOPp->PicoRV32__DOT__decoded_imm))
                                                : (QData)((IData)(
                                                                  ((4U 
                                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                                    ? 
                                                                   ((0U 
                                                                     == (IData)(vlTOPp->PicoRV32__DOT__reg_sh))
                                                                     ? vlTOPp->PicoRV32__DOT__reg_op1
                                                                     : 0U)
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                                     ? 0U
                                                                     : 
                                                                    ((1U 
                                                                      == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                                      ? 
                                                                     ((IData)(vlTOPp->PicoRV32__DOT__mem_done)
                                                                       ? 
                                                                      ((IData)(vlTOPp->PicoRV32__DOT__latched_is_lu)
                                                                        ? vlTOPp->PicoRV32__DOT__mem_rdata_word
                                                                        : 
                                                                       ((IData)(vlTOPp->PicoRV32__DOT__latched_is_lh)
                                                                         ? 
                                                                        ((0x80000000U 
                                                                          & (vlTOPp->PicoRV32__DOT__mem_rdata_word 
                                                                             << 0x10U)) 
                                                                         | ((0x7fff0000U 
                                                                             & ((- (IData)(
                                                                                (1U 
                                                                                & (vlTOPp->PicoRV32__DOT__mem_rdata_word 
                                                                                >> 0xfU)))) 
                                                                                << 0x10U)) 
                                                                            | (0xffffU 
                                                                               & vlTOPp->PicoRV32__DOT__mem_rdata_word)))
                                                                         : 
                                                                        ((IData)(vlTOPp->PicoRV32__DOT__latched_is_lb)
                                                                          ? 
                                                                         ((0xffff8000U 
                                                                           & ((- (IData)(
                                                                                (1U 
                                                                                & (vlTOPp->PicoRV32__DOT__mem_rdata_word 
                                                                                >> 7U)))) 
                                                                              << 0xfU)) 
                                                                          | ((0x7f00U 
                                                                              & ((- (IData)(
                                                                                (1U 
                                                                                & (vlTOPp->PicoRV32__DOT__mem_rdata_word 
                                                                                >> 7U)))) 
                                                                                << 8U)) 
                                                                             | (0xffU 
                                                                                & vlTOPp->PicoRV32__DOT__mem_rdata_word)))
                                                                          : 0U)))
                                                                       : 0U)
                                                                      : 0U))))))));
    vlTOPp->PicoRV32__DOT___T_1560 = (1U & ((~ (IData)(vlTOPp->reset)) 
                                            | (IData)(vlTOPp->PicoRV32__DOT__mem_done)));
    vlTOPp->PicoRV32__DOT___GEN_698 = ((IData)(vlTOPp->PicoRV32__DOT__mem_done) 
                                       | (IData)(vlTOPp->PicoRV32__DOT___T_582));
    vlTOPp->PicoRV32__DOT___GEN_994 = ((~ (IData)(vlTOPp->PicoRV32__DOT___T_1560)) 
                                       & (IData)(vlTOPp->PicoRV32__DOT__mem_do_rdata));
    vlTOPp->PicoRV32__DOT___GEN_995 = ((~ (IData)(vlTOPp->PicoRV32__DOT___T_1560)) 
                                       & (IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata));
    vlTOPp->PicoRV32__DOT___GEN_993 = (1U & ((~ (IData)(vlTOPp->PicoRV32__DOT___T_1560)) 
                                             & ((IData)(vlTOPp->reset)
                                                 ? 
                                                ((0x80U 
                                                  == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                  ? (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)
                                                  : 
                                                 ((0x40U 
                                                   == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                   ? 
                                                  (~ (IData)(vlTOPp->PicoRV32__DOT__decoder_trigger))
                                                   : 
                                                  ((0x20U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? 
                                                   ((VL_ULL(0) 
                                                     == vlTOPp->PicoRV32__DOT__all_instr)
                                                     ? (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)
                                                     : 
                                                    ((IData)(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh)
                                                      ? (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)
                                                      : 
                                                     ((~ (IData)(vlTOPp->PicoRV32__DOT__is_lui_auipc_jal)) 
                                                      & ((IData)(vlTOPp->PicoRV32__DOT___T_1404) 
                                                         | ((IData)(vlTOPp->PicoRV32__DOT__is_slli_srli_srai)
                                                             ? (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)
                                                             : 
                                                            ((~ (IData)(vlTOPp->PicoRV32__DOT__is_jalr_addi_slti_sltiu_xori_ori_andi)) 
                                                             & (IData)(vlTOPp->PicoRV32__DOT___GEN_486)))))))
                                                    : 
                                                   ((0x10U 
                                                     == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                     ? (IData)(vlTOPp->PicoRV32__DOT___GEN_486)
                                                     : 
                                                    ((8U 
                                                      == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                      ? (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)
                                                      : 
                                                     ((4U 
                                                       == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                       ? 
                                                      ((0U 
                                                        != (IData)(vlTOPp->PicoRV32__DOT__reg_sh)) 
                                                       & (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst))
                                                       : (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)))))))
                                                 : (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst))));
}

VL_INLINE_OPT void VPicoRV32::_combo__TOP__4(VPicoRV32__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPicoRV32::_combo__TOP__4\n"); );
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    WData/*95:0*/ __Vtemp18[3];
    WData/*95:0*/ __Vtemp19[3];
    WData/*95:0*/ __Vtemp20[3];
    WData/*95:0*/ __Vtemp24[3];
    WData/*95:0*/ __Vtemp25[3];
    WData/*95:0*/ __Vtemp26[3];
    // Body
    __Vtemp18[0U] = 1U;
    __Vtemp18[1U] = 0U;
    __Vtemp18[2U] = 0U;
    VL_EXTEND_WQ(65,64, __Vtemp19, vlTOPp->PicoRV32__DOT__count_cycle);
    VL_ADD_W(3, __Vtemp20, __Vtemp18, __Vtemp19);
    vlTOPp->PicoRV32__DOT___T_1218[0U] = ((IData)(vlTOPp->reset)
                                           ? __Vtemp20[0U]
                                           : 0U);
    vlTOPp->PicoRV32__DOT___T_1218[1U] = ((IData)(vlTOPp->reset)
                                           ? __Vtemp20[1U]
                                           : 0U);
    vlTOPp->PicoRV32__DOT___T_1218[2U] = ((IData)(vlTOPp->reset)
                                           ? (1U & 
                                              __Vtemp20[2U])
                                           : 0U);
    vlTOPp->PicoRV32__DOT___T_482 = (1U & ((~ (IData)(vlTOPp->reset)) 
                                           | (IData)(vlTOPp->io_trap)));
    vlTOPp->PicoRV32__DOT___GEN_934 = ((IData)(vlTOPp->reset)
                                        ? ((0x80U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                            ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_next_pc))
                                            : ((0x40U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_next_pc))
                                                : (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_next_pc))))
                                        : VL_ULL(0));
    VL_EXTEND_WQ(65,64, __Vtemp24, vlTOPp->PicoRV32__DOT__count_instr);
    VL_EXTEND_WQ(65,64, __Vtemp25, vlTOPp->PicoRV32__DOT__count_instr);
    VL_EXTEND_WQ(65,64, __Vtemp26, vlTOPp->PicoRV32__DOT__count_instr);
    vlTOPp->PicoRV32__DOT___GEN_935[0U] = ((IData)(vlTOPp->reset)
                                            ? ((0x80U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? __Vtemp24[0U]
                                                : (
                                                   (0x40U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? 
                                                   __Vtemp25[0U]
                                                    : 
                                                   __Vtemp26[0U]))
                                            : 0U);
    vlTOPp->PicoRV32__DOT___GEN_935[1U] = ((IData)(vlTOPp->reset)
                                            ? ((0x80U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? __Vtemp24[1U]
                                                : (
                                                   (0x40U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? 
                                                   __Vtemp25[1U]
                                                    : 
                                                   __Vtemp26[1U]))
                                            : 0U);
    vlTOPp->PicoRV32__DOT___GEN_935[2U] = ((IData)(vlTOPp->reset)
                                            ? ((0x80U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? __Vtemp24[2U]
                                                : (
                                                   (0x40U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? 
                                                   __Vtemp25[2U]
                                                    : 
                                                   __Vtemp26[2U]))
                                            : 0U);
    vlTOPp->io_mem_la_write = (((IData)(vlTOPp->reset) 
                                & (~ (IData)(vlTOPp->PicoRV32__DOT___T_52))) 
                               & (IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata));
    vlTOPp->io_mem_la_read = ((IData)(vlTOPp->reset) 
                              & ((~ (IData)(vlTOPp->PicoRV32__DOT___T_52)) 
                                 & (IData)(vlTOPp->PicoRV32__DOT___T_48)));
    vlTOPp->PicoRV32__DOT___GEN_964 = ((IData)(vlTOPp->reset)
                                        ? ((0x80U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                            ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1))
                                            : ((0x40U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1))
                                                : (
                                                   (0x20U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? (QData)((IData)(
                                                                      ((VL_ULL(0) 
                                                                        == vlTOPp->PicoRV32__DOT__all_instr)
                                                                        ? 0U
                                                                        : 
                                                                       ((IData)(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh)
                                                                         ? 0U
                                                                         : 
                                                                        ((IData)(vlTOPp->PicoRV32__DOT__is_lui_auipc_jal)
                                                                          ? 0U
                                                                          : vlTOPp->PicoRV32__DOT__cpuregs_rs1)))))
                                                    : vlTOPp->PicoRV32__DOT___GEN_816)))
                                        : (QData)((IData)(vlTOPp->PicoRV32__DOT__reg_op1)));
    vlTOPp->PicoRV32__DOT__mem_xfer = ((IData)(vlTOPp->io_mem_valid) 
                                       & (IData)(vlTOPp->io_mem_ready));
    vlTOPp->PicoRV32__DOT___GEN_952 = ((IData)(vlTOPp->reset)
                                        ? ((0x80U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                            ? (IData)(vlTOPp->PicoRV32__DOT__latched_rd)
                                            : ((0x40U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? (IData)(vlTOPp->PicoRV32__DOT__latched_rd)
                                                : (
                                                   (0x20U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? (IData)(vlTOPp->PicoRV32__DOT__latched_rd)
                                                    : 
                                                   ((0x10U 
                                                     == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                     ? (IData)(vlTOPp->PicoRV32__DOT__latched_rd)
                                                     : 
                                                    ((8U 
                                                      == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                      ? 
                                                     ((IData)(vlTOPp->PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu)
                                                       ? 0U
                                                       : (IData)(vlTOPp->PicoRV32__DOT__latched_rd))
                                                      : (IData)(vlTOPp->PicoRV32__DOT__latched_rd))))))
                                        : (IData)(vlTOPp->PicoRV32__DOT__latched_rd));
    vlTOPp->PicoRV32__DOT___GEN_966 = ((IData)(vlTOPp->reset)
                                        ? ((0x80U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                            ? 0U : 
                                           ((0x40U 
                                             == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                             ? 0U : 
                                            (0x3fU 
                                             & ((0x20U 
                                                 == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                 ? 
                                                ((VL_ULL(0) 
                                                  == vlTOPp->PicoRV32__DOT__all_instr)
                                                  ? 0U
                                                  : 
                                                 ((IData)(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh)
                                                   ? 0U
                                                   : 
                                                  ((IData)(vlTOPp->PicoRV32__DOT__is_lui_auipc_jal)
                                                    ? 0U
                                                    : 
                                                   ((IData)(vlTOPp->PicoRV32__DOT___T_1404)
                                                     ? 0U
                                                     : 
                                                    (0x1fU 
                                                     & ((IData)(vlTOPp->PicoRV32__DOT__is_slli_srli_srai)
                                                         ? (IData)(vlTOPp->PicoRV32__DOT__decoded_rs2)
                                                         : 
                                                        ((IData)(vlTOPp->PicoRV32__DOT__is_jalr_addi_slti_sltiu_xori_ori_andi)
                                                          ? 0U
                                                          : vlTOPp->PicoRV32__DOT__cpuregs_rs2)))))))
                                                 : 
                                                ((0x10U 
                                                  == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                  ? 
                                                 (0x1fU 
                                                  & vlTOPp->PicoRV32__DOT__cpuregs_rs2)
                                                  : 
                                                 ((8U 
                                                   == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                   ? 0U
                                                   : 
                                                  ((4U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? 
                                                   ((0U 
                                                     == (IData)(vlTOPp->PicoRV32__DOT__reg_sh))
                                                     ? 0U
                                                     : 
                                                    ((4U 
                                                      <= 
                                                      (1U 
                                                       & (IData)(vlTOPp->PicoRV32__DOT__reg_sh)))
                                                      ? 
                                                     ((IData)(vlTOPp->PicoRV32__DOT__reg_sh) 
                                                      - (IData)(4U))
                                                      : 
                                                     ((IData)(vlTOPp->PicoRV32__DOT__reg_sh) 
                                                      - (IData)(1U))))
                                                    : 0U)))))))
                                        : 0U);
    vlTOPp->PicoRV32__DOT___T_490 = ((IData)(vlTOPp->io_mem_la_wstrb) 
                                     & (- (IData)((IData)(vlTOPp->io_mem_la_write))));
    vlTOPp->PicoRV32__DOT___T_486 = ((IData)(vlTOPp->io_mem_la_read) 
                                     | (IData)(vlTOPp->io_mem_la_write));
    vlTOPp->PicoRV32__DOT__mem_rdata_latched_noshuffle 
        = ((IData)(vlTOPp->PicoRV32__DOT__mem_xfer)
            ? vlTOPp->io_mem_rdata : vlTOPp->PicoRV32__DOT__mem_rdata_q);
    vlTOPp->PicoRV32__DOT__mem_done = ((IData)(vlTOPp->reset) 
                                       & ((((IData)(vlTOPp->PicoRV32__DOT__mem_xfer) 
                                            & (IData)(vlTOPp->PicoRV32__DOT___T_52)) 
                                           & ((IData)(vlTOPp->PicoRV32__DOT___T_48) 
                                              | (IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata))) 
                                          | ((((IData)(vlTOPp->PicoRV32__DOT__mem_state) 
                                               >> 1U) 
                                              & (IData)(vlTOPp->PicoRV32__DOT__mem_state)) 
                                             & (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst))));
    vlTOPp->PicoRV32__DOT___GEN_653 = ((IData)(vlTOPp->PicoRV32__DOT__mem_done)
                                        ? 0x40U : (IData)(vlTOPp->PicoRV32__DOT__cpu_state));
    vlTOPp->PicoRV32__DOT___T_582 = ((IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst) 
                                     & (IData)(vlTOPp->PicoRV32__DOT__mem_done));
    vlTOPp->PicoRV32__DOT___GEN_831 = ((0x20U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                        ? (QData)((IData)(
                                                          ((VL_ULL(0) 
                                                            == vlTOPp->PicoRV32__DOT__all_instr)
                                                            ? 0U
                                                            : 
                                                           ((IData)(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh)
                                                             ? 
                                                            ((IData)(vlTOPp->PicoRV32__DOT__instr_rdinstrh)
                                                              ? (IData)(
                                                                        (vlTOPp->PicoRV32__DOT__count_instr 
                                                                         >> 0x20U))
                                                              : 
                                                             ((IData)(vlTOPp->PicoRV32__DOT__instr_rdinstr)
                                                               ? (IData)(vlTOPp->PicoRV32__DOT__count_instr)
                                                               : 
                                                              ((IData)(vlTOPp->PicoRV32__DOT__instr_rdcycleh)
                                                                ? (IData)(
                                                                          (vlTOPp->PicoRV32__DOT__count_cycle 
                                                                           >> 0x20U))
                                                                : 
                                                               ((IData)(vlTOPp->PicoRV32__DOT__instr_rdcycle)
                                                                 ? (IData)(vlTOPp->PicoRV32__DOT__count_cycle)
                                                                 : 0U))))
                                                             : 0U))))
                                        : ((0x10U == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                            ? VL_ULL(0)
                                            : ((8U 
                                                == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                ? (QData)((IData)(vlTOPp->PicoRV32__DOT__decoded_imm))
                                                : (QData)((IData)(
                                                                  ((4U 
                                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                                    ? 
                                                                   ((0U 
                                                                     == (IData)(vlTOPp->PicoRV32__DOT__reg_sh))
                                                                     ? vlTOPp->PicoRV32__DOT__reg_op1
                                                                     : 0U)
                                                                    : 
                                                                   ((2U 
                                                                     == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                                     ? 0U
                                                                     : 
                                                                    ((1U 
                                                                      == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                                      ? 
                                                                     ((IData)(vlTOPp->PicoRV32__DOT__mem_done)
                                                                       ? 
                                                                      ((IData)(vlTOPp->PicoRV32__DOT__latched_is_lu)
                                                                        ? vlTOPp->PicoRV32__DOT__mem_rdata_word
                                                                        : 
                                                                       ((IData)(vlTOPp->PicoRV32__DOT__latched_is_lh)
                                                                         ? 
                                                                        ((0x80000000U 
                                                                          & (vlTOPp->PicoRV32__DOT__mem_rdata_word 
                                                                             << 0x10U)) 
                                                                         | ((0x7fff0000U 
                                                                             & ((- (IData)(
                                                                                (1U 
                                                                                & (vlTOPp->PicoRV32__DOT__mem_rdata_word 
                                                                                >> 0xfU)))) 
                                                                                << 0x10U)) 
                                                                            | (0xffffU 
                                                                               & vlTOPp->PicoRV32__DOT__mem_rdata_word)))
                                                                         : 
                                                                        ((IData)(vlTOPp->PicoRV32__DOT__latched_is_lb)
                                                                          ? 
                                                                         ((0xffff8000U 
                                                                           & ((- (IData)(
                                                                                (1U 
                                                                                & (vlTOPp->PicoRV32__DOT__mem_rdata_word 
                                                                                >> 7U)))) 
                                                                              << 0xfU)) 
                                                                          | ((0x7f00U 
                                                                              & ((- (IData)(
                                                                                (1U 
                                                                                & (vlTOPp->PicoRV32__DOT__mem_rdata_word 
                                                                                >> 7U)))) 
                                                                                << 8U)) 
                                                                             | (0xffU 
                                                                                & vlTOPp->PicoRV32__DOT__mem_rdata_word)))
                                                                          : 0U)))
                                                                       : 0U)
                                                                      : 0U))))))));
    vlTOPp->PicoRV32__DOT___T_1560 = (1U & ((~ (IData)(vlTOPp->reset)) 
                                            | (IData)(vlTOPp->PicoRV32__DOT__mem_done)));
    vlTOPp->PicoRV32__DOT___GEN_698 = ((IData)(vlTOPp->PicoRV32__DOT__mem_done) 
                                       | (IData)(vlTOPp->PicoRV32__DOT___T_582));
    vlTOPp->PicoRV32__DOT___GEN_994 = ((~ (IData)(vlTOPp->PicoRV32__DOT___T_1560)) 
                                       & (IData)(vlTOPp->PicoRV32__DOT__mem_do_rdata));
    vlTOPp->PicoRV32__DOT___GEN_995 = ((~ (IData)(vlTOPp->PicoRV32__DOT___T_1560)) 
                                       & (IData)(vlTOPp->PicoRV32__DOT__mem_do_wdata));
    vlTOPp->PicoRV32__DOT___GEN_993 = (1U & ((~ (IData)(vlTOPp->PicoRV32__DOT___T_1560)) 
                                             & ((IData)(vlTOPp->reset)
                                                 ? 
                                                ((0x80U 
                                                  == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                  ? (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)
                                                  : 
                                                 ((0x40U 
                                                   == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                   ? 
                                                  (~ (IData)(vlTOPp->PicoRV32__DOT__decoder_trigger))
                                                   : 
                                                  ((0x20U 
                                                    == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                    ? 
                                                   ((VL_ULL(0) 
                                                     == vlTOPp->PicoRV32__DOT__all_instr)
                                                     ? (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)
                                                     : 
                                                    ((IData)(vlTOPp->PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh)
                                                      ? (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)
                                                      : 
                                                     ((~ (IData)(vlTOPp->PicoRV32__DOT__is_lui_auipc_jal)) 
                                                      & ((IData)(vlTOPp->PicoRV32__DOT___T_1404) 
                                                         | ((IData)(vlTOPp->PicoRV32__DOT__is_slli_srli_srai)
                                                             ? (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)
                                                             : 
                                                            ((~ (IData)(vlTOPp->PicoRV32__DOT__is_jalr_addi_slti_sltiu_xori_ori_andi)) 
                                                             & (IData)(vlTOPp->PicoRV32__DOT___GEN_486)))))))
                                                    : 
                                                   ((0x10U 
                                                     == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                     ? (IData)(vlTOPp->PicoRV32__DOT___GEN_486)
                                                     : 
                                                    ((8U 
                                                      == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                      ? (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)
                                                      : 
                                                     ((4U 
                                                       == (IData)(vlTOPp->PicoRV32__DOT__cpu_state))
                                                       ? 
                                                      ((0U 
                                                        != (IData)(vlTOPp->PicoRV32__DOT__reg_sh)) 
                                                       & (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst))
                                                       : (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst)))))))
                                                 : (IData)(vlTOPp->PicoRV32__DOT__mem_do_rinst))));
}

void VPicoRV32::_eval(VPicoRV32__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPicoRV32::_eval\n"); );
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock)))) {
        vlTOPp->_sequent__TOP__2(vlSymsp);
        vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
    }
    vlTOPp->_combo__TOP__4(vlSymsp);
    vlTOPp->__Vm_traceActivity = (4U | vlTOPp->__Vm_traceActivity);
    // Final
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void VPicoRV32::_eval_initial(VPicoRV32__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPicoRV32::_eval_initial\n"); );
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_initial__TOP__1(vlSymsp);
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void VPicoRV32::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPicoRV32::final\n"); );
    // Variables
    VPicoRV32__Syms* __restrict vlSymsp = this->__VlSymsp;
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VPicoRV32::_eval_settle(VPicoRV32__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPicoRV32::_eval_settle\n"); );
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__3(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
}

VL_INLINE_OPT QData VPicoRV32::_change_request(VPicoRV32__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPicoRV32::_change_request\n"); );
    VPicoRV32* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VPicoRV32::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPicoRV32::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((io_mem_ready & 0xfeU))) {
        Verilated::overWidthError("io_mem_ready");}
    if (VL_UNLIKELY((io_pcpi_wr & 0xfeU))) {
        Verilated::overWidthError("io_pcpi_wr");}
    if (VL_UNLIKELY((io_pcpi_wait & 0xfeU))) {
        Verilated::overWidthError("io_pcpi_wait");}
    if (VL_UNLIKELY((io_pcpi_ready & 0xfeU))) {
        Verilated::overWidthError("io_pcpi_ready");}
}
#endif  // VL_DEBUG

void VPicoRV32::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPicoRV32::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_trap = VL_RAND_RESET_I(1);
    io_mem_valid = VL_RAND_RESET_I(1);
    io_mem_instr = VL_RAND_RESET_I(1);
    io_mem_ready = VL_RAND_RESET_I(1);
    io_mem_addr = VL_RAND_RESET_I(32);
    io_mem_wdata = VL_RAND_RESET_I(32);
    io_mem_wstrb = VL_RAND_RESET_I(4);
    io_mem_rdata = VL_RAND_RESET_I(32);
    io_mem_la_read = VL_RAND_RESET_I(1);
    io_mem_la_write = VL_RAND_RESET_I(1);
    io_mem_la_addr = VL_RAND_RESET_I(32);
    io_mem_la_wdata = VL_RAND_RESET_I(32);
    io_mem_la_wstrb = VL_RAND_RESET_I(4);
    io_pcpi_valid = VL_RAND_RESET_I(1);
    io_pcpi_insn = VL_RAND_RESET_I(32);
    io_pcpi_rs1 = VL_RAND_RESET_I(32);
    io_pcpi_rs2 = VL_RAND_RESET_I(32);
    io_pcpi_wr = VL_RAND_RESET_I(1);
    io_pcpi_rd = VL_RAND_RESET_I(32);
    io_pcpi_wait = VL_RAND_RESET_I(1);
    io_pcpi_ready = VL_RAND_RESET_I(1);
    io_irq = VL_RAND_RESET_I(32);
    io_eoi = VL_RAND_RESET_I(32);
    io_trace_valid = VL_RAND_RESET_I(1);
    io_trace_data = VL_RAND_RESET_Q(36);
    PicoRV32__DOT__trap = VL_RAND_RESET_I(1);
    PicoRV32__DOT__mem_valid = VL_RAND_RESET_I(1);
    PicoRV32__DOT__mem_instr = VL_RAND_RESET_I(1);
    PicoRV32__DOT__mem_addr = VL_RAND_RESET_I(32);
    PicoRV32__DOT__mem_wdata = VL_RAND_RESET_I(32);
    PicoRV32__DOT__mem_wstrb = VL_RAND_RESET_I(4);
    PicoRV32__DOT__mem_la_wdata = VL_RAND_RESET_I(32);
    PicoRV32__DOT__mem_la_wstrb = VL_RAND_RESET_I(4);
    PicoRV32__DOT__reg_op1 = VL_RAND_RESET_I(32);
    PicoRV32__DOT__reg_op2 = VL_RAND_RESET_I(32);
    PicoRV32__DOT__mem_do_rinst = VL_RAND_RESET_I(1);
    PicoRV32__DOT__latched_store = VL_RAND_RESET_I(1);
    PicoRV32__DOT__latched_branch = VL_RAND_RESET_I(1);
    PicoRV32__DOT__reg_out = VL_RAND_RESET_I(32);
    PicoRV32__DOT__reg_next_pc = VL_RAND_RESET_I(32);
    PicoRV32__DOT__mem_xfer = VL_RAND_RESET_I(1);
    PicoRV32__DOT__mem_do_rdata = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_48 = VL_RAND_RESET_I(1);
    PicoRV32__DOT__mem_do_wdata = VL_RAND_RESET_I(1);
    PicoRV32__DOT__mem_state = VL_RAND_RESET_I(2);
    PicoRV32__DOT___T_52 = VL_RAND_RESET_I(1);
    PicoRV32__DOT__mem_done = VL_RAND_RESET_I(1);
    PicoRV32__DOT__mem_rdata_q = VL_RAND_RESET_I(32);
    PicoRV32__DOT__mem_rdata_latched_noshuffle = VL_RAND_RESET_I(32);
    PicoRV32__DOT__mem_wordsize = VL_RAND_RESET_I(2);
    PicoRV32__DOT__mem_rdata_word = VL_RAND_RESET_I(32);
    PicoRV32__DOT___T_482 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_486 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_490 = VL_RAND_RESET_I(4);
    PicoRV32__DOT___T_491 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_496 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_511 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_512 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___GEN_60 = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_lui = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_auipc = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_jal = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_jalr = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_beq = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_bne = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_blt = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_bge = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_bltu = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_bgeu = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_lb = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_lh = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_lw = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_lbu = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_lhu = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_sb = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_sh = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_sw = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_addi = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_slti = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_sltiu = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_xori = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_ori = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_andi = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_slli = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_srli = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_srai = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_add = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_sub = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_sll = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_slt = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_sltu = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_xor = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_srl = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_sra = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_or = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_and = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_rdcycle = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_rdcycleh = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_rdinstr = VL_RAND_RESET_I(1);
    PicoRV32__DOT__instr_rdinstrh = VL_RAND_RESET_I(1);
    PicoRV32__DOT__all_instr = VL_RAND_RESET_Q(47);
    PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh = VL_RAND_RESET_I(1);
    PicoRV32__DOT__is_lui_auipc_jal = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_564 = VL_RAND_RESET_I(1);
    PicoRV32__DOT__is_lbu_lhu_lw = VL_RAND_RESET_I(1);
    PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_582 = VL_RAND_RESET_I(1);
    PicoRV32__DOT__is_lb_lh_lw_lbu_lhu = VL_RAND_RESET_I(1);
    PicoRV32__DOT__is_sb_sh_sw = VL_RAND_RESET_I(1);
    PicoRV32__DOT__is_alu_reg_imm = VL_RAND_RESET_I(1);
    PicoRV32__DOT__is_alu_reg_reg = VL_RAND_RESET_I(1);
    PicoRV32__DOT__decoded_imm_j = VL_RAND_RESET_I(32);
    PicoRV32__DOT__decoded_rs1 = VL_RAND_RESET_I(5);
    PicoRV32__DOT__decoded_rs2 = VL_RAND_RESET_I(5);
    PicoRV32__DOT__decoder_trigger = VL_RAND_RESET_I(1);
    PicoRV32__DOT__decoder_pseudo_trigger = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_837 = VL_RAND_RESET_I(1);
    PicoRV32__DOT__is_slli_srli_srai = VL_RAND_RESET_I(1);
    PicoRV32__DOT__is_jalr_addi_slti_sltiu_xori_ori_andi = VL_RAND_RESET_I(1);
    PicoRV32__DOT__is_sll_srl_sra = VL_RAND_RESET_I(1);
    PicoRV32__DOT__decoded_imm = VL_RAND_RESET_I(32);
    PicoRV32__DOT___T_907 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_919 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_955 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_1070 = VL_RAND_RESET_I(1);
    PicoRV32__DOT__alu_out_0 = VL_RAND_RESET_I(1);
    PicoRV32__DOT__cpuregs_write = VL_RAND_RESET_I(1);
    PicoRV32__DOT__cpuregs_wrdata = VL_RAND_RESET_I(32);
    PicoRV32__DOT__cpu_state = VL_RAND_RESET_I(8);
    PicoRV32__DOT___T_1179 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_1184 = VL_RAND_RESET_I(1);
    PicoRV32__DOT__latched_rd = VL_RAND_RESET_I(5);
    PicoRV32__DOT___T_1196 = VL_RAND_RESET_I(32);
    PicoRV32__DOT__cpuregs_rs1 = VL_RAND_RESET_I(32);
    PicoRV32__DOT__cpuregs_rs2 = VL_RAND_RESET_I(32);
    PicoRV32__DOT__reg_sh = VL_RAND_RESET_I(5);
    PicoRV32__DOT__set_mem_do_rinst = VL_RAND_RESET_I(1);
    PicoRV32__DOT__set_mem_do_rdata = VL_RAND_RESET_I(1);
    PicoRV32__DOT__set_mem_do_wdata = VL_RAND_RESET_I(1);
    PicoRV32__DOT__count_cycle = VL_RAND_RESET_Q(64);
    PicoRV32__DOT__count_instr = VL_RAND_RESET_Q(64);
    VL_RAND_RESET_W(65, PicoRV32__DOT___T_1218);
    PicoRV32__DOT__latched_is_lu = VL_RAND_RESET_I(1);
    PicoRV32__DOT__latched_is_lh = VL_RAND_RESET_I(1);
    PicoRV32__DOT__latched_is_lb = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_1233 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_1359 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_1418 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_1437 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_1448 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_1470 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_1484 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_1404 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___GEN_486 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___GEN_595 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___GEN_653 = VL_RAND_RESET_I(8);
    PicoRV32__DOT___T_1452 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_1454 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_1456 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___T_1478 = VL_RAND_RESET_Q(33);
    PicoRV32__DOT___GEN_698 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___GEN_766 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___GEN_816 = VL_RAND_RESET_Q(33);
    PicoRV32__DOT___GEN_831 = VL_RAND_RESET_Q(33);
    PicoRV32__DOT___GEN_934 = VL_RAND_RESET_Q(33);
    VL_RAND_RESET_W(65, PicoRV32__DOT___GEN_935);
    PicoRV32__DOT___GEN_952 = VL_RAND_RESET_I(6);
    PicoRV32__DOT___GEN_964 = VL_RAND_RESET_Q(33);
    PicoRV32__DOT___GEN_966 = VL_RAND_RESET_I(6);
    PicoRV32__DOT___T_1560 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___GEN_993 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___GEN_994 = VL_RAND_RESET_I(1);
    PicoRV32__DOT___GEN_995 = VL_RAND_RESET_I(1);
    __Vm_traceActivity = 0;
}
