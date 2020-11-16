// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfetch.h for the primary calling header

#include "Vfetch.h"
#include "Vfetch__Syms.h"

//==========

VL_CTOR_IMP(Vfetch) {
    Vfetch__Syms* __restrict vlSymsp = __VlSymsp = new Vfetch__Syms(this, name());
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vfetch::__Vconfigure(Vfetch__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

Vfetch::~Vfetch() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = NULL);
}

void Vfetch::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vfetch::eval\n"); );
    Vfetch__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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
            VL_FATAL_MT("fetch.v", 232, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vfetch::_eval_initial_loop(Vfetch__Syms* __restrict vlSymsp) {
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
            VL_FATAL_MT("fetch.v", 232, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vfetch::_settle__TOP__1(Vfetch__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfetch::_settle__TOP__1\n"); );
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_inst_ld_valid = 0U;
    vlTOPp->io_inst_co_valid = 0U;
    vlTOPp->io_inst_st_valid = 0U;
    vlTOPp->Fetch__DOT___T = (1U & (~ (IData)(vlTOPp->Fetch__DOT__state)));
    vlTOPp->io_vme_rd_cmd_valid = vlTOPp->Fetch__DOT__state;
    vlTOPp->io_vme_rd_cmd_bits_addr = vlTOPp->Fetch__DOT__raddr;
    vlTOPp->io_vme_rd_cmd_bits_len = vlTOPp->Fetch__DOT__rlen;
    vlTOPp->Fetch__DOT__inst_q__DOT___GEN_6 = vlTOPp->Fetch__DOT__inst_q__DOT___T;
    vlTOPp->Fetch__DOT__inst_q__DOT___GEN_8 = vlTOPp->Fetch__DOT__inst_q__DOT___T_4;
    vlTOPp->Fetch__DOT___GEN_40 = ((IData)(vlTOPp->Fetch__DOT__state)
                                    ? (QData)((IData)(vlTOPp->Fetch__DOT__raddr))
                                    : (QData)((IData)(vlTOPp->io_ins_baddr)));
    vlTOPp->Fetch__DOT__pulse = ((IData)(vlTOPp->io_launch) 
                                 & (~ (IData)(vlTOPp->Fetch__DOT__s1_launch)));
    vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match = ((IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T) 
                                                  == (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T_4));
    vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U] 
        = vlTOPp->Fetch__DOT__inst_q__DOT__ram[vlTOPp->Fetch__DOT__inst_q__DOT___T_4][0U];
    vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[1U] 
        = vlTOPp->Fetch__DOT__inst_q__DOT__ram[vlTOPp->Fetch__DOT__inst_q__DOT___T_4][1U];
    vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[2U] 
        = vlTOPp->Fetch__DOT__inst_q__DOT__ram[vlTOPp->Fetch__DOT__inst_q__DOT___T_4][2U];
    vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U] 
        = vlTOPp->Fetch__DOT__inst_q__DOT__ram[vlTOPp->Fetch__DOT__inst_q__DOT___T_4][3U];
    vlTOPp->Fetch__DOT___GEN_3 = ((IData)(vlTOPp->Fetch__DOT__pulse) 
                                  | (IData)(vlTOPp->Fetch__DOT__state));
    vlTOPp->io_vme_rd_data_ready = (1U & (~ ((IData)(vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match) 
                                             & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT__maybe_full))));
    vlTOPp->Fetch__DOT__inst_q__DOT__empty = ((IData)(vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match) 
                                              & (~ (IData)(vlTOPp->Fetch__DOT__inst_q__DOT__maybe_full)));
    vlTOPp->Fetch__DOT__inst_q__DOT___T_14 = (0xffU 
                                              & ((((IData)(vlTOPp->Fetch__DOT__inst_q__DOT__maybe_full) 
                                                   & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match))
                                                   ? 0x80U
                                                   : 0U) 
                                                 | ((IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T) 
                                                    - (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T_4))));
    vlTOPp->io_inst_ld_bits[0U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U];
    vlTOPp->io_inst_ld_bits[1U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[1U];
    vlTOPp->io_inst_ld_bits[2U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[2U];
    vlTOPp->io_inst_ld_bits[3U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U];
    vlTOPp->io_inst_co_bits[0U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U];
    vlTOPp->io_inst_co_bits[1U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[1U];
    vlTOPp->io_inst_co_bits[2U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[2U];
    vlTOPp->io_inst_co_bits[3U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U];
    vlTOPp->io_inst_st_bits[0U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U];
    vlTOPp->io_inst_st_bits[1U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[1U];
    vlTOPp->io_inst_st_bits[2U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[2U];
    vlTOPp->io_inst_st_bits[3U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U];
    vlTOPp->Fetch__DOT__dec__DOT__cs_val_inst = ((0U 
                                                  == 
                                                  (0x187U 
                                                   & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                 | ((0U 
                                                     == 
                                                     (0x80U 
                                                      ^ 
                                                      (0x187U 
                                                       & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))) 
                                                    | ((0U 
                                                        == 
                                                        (0x100U 
                                                         ^ 
                                                         (0x187U 
                                                          & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))) 
                                                       | ((0U 
                                                           == 
                                                           (0x180U 
                                                            ^ 
                                                            (0x187U 
                                                             & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))) 
                                                          | ((0U 
                                                              == 
                                                              (1U 
                                                               ^ 
                                                               (7U 
                                                                & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))) 
                                                             | ((0U 
                                                                 == 
                                                                 (2U 
                                                                  ^ 
                                                                  (7U 
                                                                   & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))) 
                                                                | ((0U 
                                                                    == 
                                                                    (3U 
                                                                     ^ 
                                                                     (7U 
                                                                      & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))) 
                                                                   | ((0U 
                                                                       == 
                                                                       ((4U 
                                                                         ^ 
                                                                         (7U 
                                                                          & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                                        | (0x3000U 
                                                                           & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U]))) 
                                                                      | ((0U 
                                                                          == 
                                                                          ((4U 
                                                                            ^ 
                                                                            (7U 
                                                                             & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                                           | (0x1000U 
                                                                              ^ 
                                                                              (0x3000U 
                                                                               & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U])))) 
                                                                         | ((0U 
                                                                             == 
                                                                             ((4U 
                                                                               ^ 
                                                                               (7U 
                                                                                & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                                              | (0x2000U 
                                                                                ^ 
                                                                                (0x3000U 
                                                                                & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U])))) 
                                                                            | (0U 
                                                                               == 
                                                                               ((4U 
                                                                                ^ 
                                                                                (7U 
                                                                                & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                                                | (0x3000U 
                                                                                ^ 
                                                                                (0x3000U 
                                                                                & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U]))))))))))))));
    vlTOPp->Fetch__DOT__dec__DOT__cs_op_type = ((0U 
                                                 == 
                                                 (0x187U 
                                                  & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))
                                                 ? 2U
                                                 : 
                                                ((0U 
                                                  == 
                                                  (0x80U 
                                                   ^ 
                                                   (0x187U 
                                                    & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])))
                                                  ? 0U
                                                  : 
                                                 ((0U 
                                                   == 
                                                   (0x100U 
                                                    ^ 
                                                    (0x187U 
                                                     & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])))
                                                   ? 0U
                                                   : 
                                                  ((0U 
                                                    == 
                                                    (0x180U 
                                                     ^ 
                                                     (0x187U 
                                                      & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])))
                                                    ? 2U
                                                    : 
                                                   ((0U 
                                                     == 
                                                     (1U 
                                                      ^ 
                                                      (7U 
                                                       & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])))
                                                     ? 1U
                                                     : 
                                                    ((0U 
                                                      == 
                                                      (2U 
                                                       ^ 
                                                       (7U 
                                                        & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])))
                                                      ? 2U
                                                      : 
                                                     ((0U 
                                                       == 
                                                       (3U 
                                                        ^ 
                                                        (7U 
                                                         & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])))
                                                       ? 2U
                                                       : 
                                                      ((0U 
                                                        == 
                                                        ((4U 
                                                          ^ 
                                                          (7U 
                                                           & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                         | (0x3000U 
                                                            & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U])))
                                                        ? 2U
                                                        : 
                                                       ((0U 
                                                         == 
                                                         ((4U 
                                                           ^ 
                                                           (7U 
                                                            & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                          | (0x1000U 
                                                             ^ 
                                                             (0x3000U 
                                                              & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U]))))
                                                         ? 2U
                                                         : 
                                                        ((0U 
                                                          == 
                                                          ((4U 
                                                            ^ 
                                                            (7U 
                                                             & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                           | (0x2000U 
                                                              ^ 
                                                              (0x3000U 
                                                               & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U]))))
                                                          ? 2U
                                                          : 
                                                         ((0U 
                                                           == 
                                                           ((4U 
                                                             ^ 
                                                             (7U 
                                                              & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                            | (0x3000U 
                                                               ^ 
                                                               (0x3000U 
                                                                & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U]))))
                                                           ? 2U
                                                           : 5U)))))))))));
    vlTOPp->Fetch__DOT___GEN_38 = (VL_ULL(0x1ffffffff) 
                                   & ((IData)(vlTOPp->Fetch__DOT__state)
                                       ? ((IData)(vlTOPp->Fetch__DOT__state)
                                           ? (QData)((IData)(vlTOPp->Fetch__DOT__xrem))
                                           : ((0U == 
                                               (0x7fU 
                                                & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T_14)))
                                               ? ((0U 
                                                   == vlTOPp->Fetch__DOT__xrem)
                                                   ? (QData)((IData)(vlTOPp->Fetch__DOT__xrem))
                                                   : 
                                                  ((0x100U 
                                                    > vlTOPp->Fetch__DOT__xrem)
                                                    ? VL_ULL(0)
                                                    : 
                                                   ((QData)((IData)(vlTOPp->Fetch__DOT__xrem)) 
                                                    - VL_ULL(0x100))))
                                               : (QData)((IData)(vlTOPp->Fetch__DOT__xrem))))
                                       : (QData)((IData)(
                                                         ((IData)(vlTOPp->Fetch__DOT__pulse)
                                                           ? 
                                                          ((VL_ULL(0x100) 
                                                            > 
                                                            (VL_ULL(0x3ffffffff) 
                                                             & (((QData)((IData)(vlTOPp->io_ins_count)) 
                                                                 << 1U) 
                                                                - VL_ULL(1))))
                                                            ? 0U
                                                            : 
                                                           ((IData)(
                                                                    (VL_ULL(0x3ffffffff) 
                                                                     & (((QData)((IData)(vlTOPp->io_ins_count)) 
                                                                         << 1U) 
                                                                        - VL_ULL(1)))) 
                                                            - (IData)(0x100U)))
                                                           : vlTOPp->Fetch__DOT__xrem)))));
    vlTOPp->Fetch__DOT__dec_io_isLoad = ((IData)(vlTOPp->Fetch__DOT__dec__DOT__cs_val_inst) 
                                         & (0U == (IData)(vlTOPp->Fetch__DOT__dec__DOT__cs_op_type)));
    vlTOPp->Fetch__DOT__dec_io_isCompute = ((IData)(vlTOPp->Fetch__DOT__dec__DOT__cs_val_inst) 
                                            & (2U == (IData)(vlTOPp->Fetch__DOT__dec__DOT__cs_op_type)));
    vlTOPp->Fetch__DOT__dec_io_isStore = ((IData)(vlTOPp->Fetch__DOT__dec__DOT__cs_val_inst) 
                                          & (1U == (IData)(vlTOPp->Fetch__DOT__dec__DOT__cs_op_type)));
    vlTOPp->Fetch__DOT___T_42 = (((IData)(vlTOPp->Fetch__DOT__dec_io_isCompute) 
                                  << 2U) | (((IData)(vlTOPp->Fetch__DOT__dec_io_isStore) 
                                             << 1U) 
                                            | (IData)(vlTOPp->Fetch__DOT__dec_io_isLoad)));
}

VL_INLINE_OPT void Vfetch::_sequent__TOP__2(Vfetch__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfetch::_sequent__TOP__2\n"); );
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    CData/*0:0*/ __Vdly__Fetch__DOT__state;
    // Body
    __Vdly__Fetch__DOT__state = vlTOPp->Fetch__DOT__state;
    vlTOPp->Fetch__DOT__raddr = (IData)(vlTOPp->Fetch__DOT___GEN_40);
    vlTOPp->Fetch__DOT__s1_launch = vlTOPp->io_launch;
    if (vlTOPp->reset) {
        vlTOPp->Fetch__DOT__inst_q__DOT__maybe_full = 0U;
    }
    if (vlTOPp->reset) {
        __Vdly__Fetch__DOT__state = 0U;
    } else {
        if (vlTOPp->Fetch__DOT___T) {
            __Vdly__Fetch__DOT__state = vlTOPp->Fetch__DOT___GEN_3;
        } else {
            if (vlTOPp->Fetch__DOT__state) {
                if (vlTOPp->io_vme_rd_cmd_ready) {
                    __Vdly__Fetch__DOT__state = 0U;
                }
            } else {
                if ((0U == (0x7fU & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T_14)))) {
                    __Vdly__Fetch__DOT__state = (0U 
                                                 != vlTOPp->Fetch__DOT__xrem);
                }
            }
        }
    }
    if (vlTOPp->Fetch__DOT___T) {
        if (vlTOPp->Fetch__DOT__pulse) {
            vlTOPp->Fetch__DOT__rlen = ((VL_ULL(0x100) 
                                         > (VL_ULL(0x3ffffffff) 
                                            & (((QData)((IData)(vlTOPp->io_ins_count)) 
                                                << 1U) 
                                               - VL_ULL(1))))
                                         ? (0xffU & 
                                            ((IData)(
                                                     ((QData)((IData)(vlTOPp->io_ins_count)) 
                                                      << 1U)) 
                                             - (IData)(1U)))
                                         : 0xffU);
        }
    } else {
        if ((1U & (~ (IData)(vlTOPp->Fetch__DOT__state)))) {
            if ((0U == (0x7fU & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T_14)))) {
                if ((0U != vlTOPp->Fetch__DOT__xrem)) {
                    vlTOPp->Fetch__DOT__rlen = ((0x100U 
                                                 > vlTOPp->Fetch__DOT__xrem)
                                                 ? 
                                                (0xffU 
                                                 & vlTOPp->Fetch__DOT__xrem)
                                                 : 0xffU);
                }
            }
        }
    }
    vlTOPp->Fetch__DOT__inst_q__DOT___T = ((IData)(vlTOPp->reset)
                                            ? 0U : 
                                           (0x7fU & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___GEN_6)));
    vlTOPp->Fetch__DOT__inst_q__DOT___T_4 = ((IData)(vlTOPp->reset)
                                              ? 0U : 
                                             (0x7fU 
                                              & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___GEN_8)));
    vlTOPp->Fetch__DOT__state = __Vdly__Fetch__DOT__state;
    vlTOPp->io_vme_rd_cmd_bits_addr = vlTOPp->Fetch__DOT__raddr;
    vlTOPp->io_vme_rd_cmd_bits_len = vlTOPp->Fetch__DOT__rlen;
    vlTOPp->Fetch__DOT___T = (1U & (~ (IData)(vlTOPp->Fetch__DOT__state)));
    vlTOPp->io_vme_rd_cmd_valid = vlTOPp->Fetch__DOT__state;
    vlTOPp->Fetch__DOT__xrem = (IData)(vlTOPp->Fetch__DOT___GEN_38);
    vlTOPp->Fetch__DOT__inst_q__DOT___GEN_6 = vlTOPp->Fetch__DOT__inst_q__DOT___T;
    vlTOPp->Fetch__DOT__inst_q__DOT___GEN_8 = vlTOPp->Fetch__DOT__inst_q__DOT___T_4;
    vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match = ((IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T) 
                                                  == (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T_4));
    vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U] 
        = vlTOPp->Fetch__DOT__inst_q__DOT__ram[vlTOPp->Fetch__DOT__inst_q__DOT___T_4][0U];
    vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[1U] 
        = vlTOPp->Fetch__DOT__inst_q__DOT__ram[vlTOPp->Fetch__DOT__inst_q__DOT___T_4][1U];
    vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[2U] 
        = vlTOPp->Fetch__DOT__inst_q__DOT__ram[vlTOPp->Fetch__DOT__inst_q__DOT___T_4][2U];
    vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U] 
        = vlTOPp->Fetch__DOT__inst_q__DOT__ram[vlTOPp->Fetch__DOT__inst_q__DOT___T_4][3U];
    vlTOPp->io_vme_rd_data_ready = (1U & (~ ((IData)(vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match) 
                                             & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT__maybe_full))));
    vlTOPp->Fetch__DOT__inst_q__DOT__empty = ((IData)(vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match) 
                                              & (~ (IData)(vlTOPp->Fetch__DOT__inst_q__DOT__maybe_full)));
    vlTOPp->Fetch__DOT__inst_q__DOT___T_14 = (0xffU 
                                              & ((((IData)(vlTOPp->Fetch__DOT__inst_q__DOT__maybe_full) 
                                                   & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match))
                                                   ? 0x80U
                                                   : 0U) 
                                                 | ((IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T) 
                                                    - (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T_4))));
    vlTOPp->io_inst_ld_bits[0U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U];
    vlTOPp->io_inst_ld_bits[1U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[1U];
    vlTOPp->io_inst_ld_bits[2U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[2U];
    vlTOPp->io_inst_ld_bits[3U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U];
    vlTOPp->io_inst_co_bits[0U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U];
    vlTOPp->io_inst_co_bits[1U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[1U];
    vlTOPp->io_inst_co_bits[2U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[2U];
    vlTOPp->io_inst_co_bits[3U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U];
    vlTOPp->io_inst_st_bits[0U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U];
    vlTOPp->io_inst_st_bits[1U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[1U];
    vlTOPp->io_inst_st_bits[2U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[2U];
    vlTOPp->io_inst_st_bits[3U] = vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U];
    vlTOPp->Fetch__DOT__dec__DOT__cs_val_inst = ((0U 
                                                  == 
                                                  (0x187U 
                                                   & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                 | ((0U 
                                                     == 
                                                     (0x80U 
                                                      ^ 
                                                      (0x187U 
                                                       & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))) 
                                                    | ((0U 
                                                        == 
                                                        (0x100U 
                                                         ^ 
                                                         (0x187U 
                                                          & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))) 
                                                       | ((0U 
                                                           == 
                                                           (0x180U 
                                                            ^ 
                                                            (0x187U 
                                                             & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))) 
                                                          | ((0U 
                                                              == 
                                                              (1U 
                                                               ^ 
                                                               (7U 
                                                                & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))) 
                                                             | ((0U 
                                                                 == 
                                                                 (2U 
                                                                  ^ 
                                                                  (7U 
                                                                   & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))) 
                                                                | ((0U 
                                                                    == 
                                                                    (3U 
                                                                     ^ 
                                                                     (7U 
                                                                      & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))) 
                                                                   | ((0U 
                                                                       == 
                                                                       ((4U 
                                                                         ^ 
                                                                         (7U 
                                                                          & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                                        | (0x3000U 
                                                                           & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U]))) 
                                                                      | ((0U 
                                                                          == 
                                                                          ((4U 
                                                                            ^ 
                                                                            (7U 
                                                                             & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                                           | (0x1000U 
                                                                              ^ 
                                                                              (0x3000U 
                                                                               & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U])))) 
                                                                         | ((0U 
                                                                             == 
                                                                             ((4U 
                                                                               ^ 
                                                                               (7U 
                                                                                & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                                              | (0x2000U 
                                                                                ^ 
                                                                                (0x3000U 
                                                                                & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U])))) 
                                                                            | (0U 
                                                                               == 
                                                                               ((4U 
                                                                                ^ 
                                                                                (7U 
                                                                                & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                                                | (0x3000U 
                                                                                ^ 
                                                                                (0x3000U 
                                                                                & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U]))))))))))))));
    vlTOPp->Fetch__DOT__dec__DOT__cs_op_type = ((0U 
                                                 == 
                                                 (0x187U 
                                                  & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U]))
                                                 ? 2U
                                                 : 
                                                ((0U 
                                                  == 
                                                  (0x80U 
                                                   ^ 
                                                   (0x187U 
                                                    & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])))
                                                  ? 0U
                                                  : 
                                                 ((0U 
                                                   == 
                                                   (0x100U 
                                                    ^ 
                                                    (0x187U 
                                                     & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])))
                                                   ? 0U
                                                   : 
                                                  ((0U 
                                                    == 
                                                    (0x180U 
                                                     ^ 
                                                     (0x187U 
                                                      & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])))
                                                    ? 2U
                                                    : 
                                                   ((0U 
                                                     == 
                                                     (1U 
                                                      ^ 
                                                      (7U 
                                                       & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])))
                                                     ? 1U
                                                     : 
                                                    ((0U 
                                                      == 
                                                      (2U 
                                                       ^ 
                                                       (7U 
                                                        & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])))
                                                      ? 2U
                                                      : 
                                                     ((0U 
                                                       == 
                                                       (3U 
                                                        ^ 
                                                        (7U 
                                                         & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])))
                                                       ? 2U
                                                       : 
                                                      ((0U 
                                                        == 
                                                        ((4U 
                                                          ^ 
                                                          (7U 
                                                           & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                         | (0x3000U 
                                                            & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U])))
                                                        ? 2U
                                                        : 
                                                       ((0U 
                                                         == 
                                                         ((4U 
                                                           ^ 
                                                           (7U 
                                                            & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                          | (0x1000U 
                                                             ^ 
                                                             (0x3000U 
                                                              & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U]))))
                                                         ? 2U
                                                         : 
                                                        ((0U 
                                                          == 
                                                          ((4U 
                                                            ^ 
                                                            (7U 
                                                             & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                           | (0x2000U 
                                                              ^ 
                                                              (0x3000U 
                                                               & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U]))))
                                                          ? 2U
                                                          : 
                                                         ((0U 
                                                           == 
                                                           ((4U 
                                                             ^ 
                                                             (7U 
                                                              & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[0U])) 
                                                            | (0x3000U 
                                                               ^ 
                                                               (0x3000U 
                                                                & vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data[3U]))))
                                                           ? 2U
                                                           : 5U)))))))))));
    vlTOPp->Fetch__DOT__dec_io_isLoad = ((IData)(vlTOPp->Fetch__DOT__dec__DOT__cs_val_inst) 
                                         & (0U == (IData)(vlTOPp->Fetch__DOT__dec__DOT__cs_op_type)));
    vlTOPp->Fetch__DOT__dec_io_isCompute = ((IData)(vlTOPp->Fetch__DOT__dec__DOT__cs_val_inst) 
                                            & (2U == (IData)(vlTOPp->Fetch__DOT__dec__DOT__cs_op_type)));
    vlTOPp->Fetch__DOT__dec_io_isStore = ((IData)(vlTOPp->Fetch__DOT__dec__DOT__cs_val_inst) 
                                          & (1U == (IData)(vlTOPp->Fetch__DOT__dec__DOT__cs_op_type)));
    vlTOPp->Fetch__DOT___T_42 = (((IData)(vlTOPp->Fetch__DOT__dec_io_isCompute) 
                                  << 2U) | (((IData)(vlTOPp->Fetch__DOT__dec_io_isStore) 
                                             << 1U) 
                                            | (IData)(vlTOPp->Fetch__DOT__dec_io_isLoad)));
}

VL_INLINE_OPT void Vfetch::_combo__TOP__3(Vfetch__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfetch::_combo__TOP__3\n"); );
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->Fetch__DOT__pulse = ((IData)(vlTOPp->io_launch) 
                                 & (~ (IData)(vlTOPp->Fetch__DOT__s1_launch)));
    vlTOPp->Fetch__DOT___GEN_40 = ((IData)(vlTOPp->Fetch__DOT__state)
                                    ? (QData)((IData)(vlTOPp->Fetch__DOT__raddr))
                                    : (QData)((IData)(vlTOPp->io_ins_baddr)));
    vlTOPp->Fetch__DOT___GEN_3 = ((IData)(vlTOPp->Fetch__DOT__pulse) 
                                  | (IData)(vlTOPp->Fetch__DOT__state));
    vlTOPp->Fetch__DOT___GEN_38 = (VL_ULL(0x1ffffffff) 
                                   & ((IData)(vlTOPp->Fetch__DOT__state)
                                       ? ((IData)(vlTOPp->Fetch__DOT__state)
                                           ? (QData)((IData)(vlTOPp->Fetch__DOT__xrem))
                                           : ((0U == 
                                               (0x7fU 
                                                & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T_14)))
                                               ? ((0U 
                                                   == vlTOPp->Fetch__DOT__xrem)
                                                   ? (QData)((IData)(vlTOPp->Fetch__DOT__xrem))
                                                   : 
                                                  ((0x100U 
                                                    > vlTOPp->Fetch__DOT__xrem)
                                                    ? VL_ULL(0)
                                                    : 
                                                   ((QData)((IData)(vlTOPp->Fetch__DOT__xrem)) 
                                                    - VL_ULL(0x100))))
                                               : (QData)((IData)(vlTOPp->Fetch__DOT__xrem))))
                                       : (QData)((IData)(
                                                         ((IData)(vlTOPp->Fetch__DOT__pulse)
                                                           ? 
                                                          ((VL_ULL(0x100) 
                                                            > 
                                                            (VL_ULL(0x3ffffffff) 
                                                             & (((QData)((IData)(vlTOPp->io_ins_count)) 
                                                                 << 1U) 
                                                                - VL_ULL(1))))
                                                            ? 0U
                                                            : 
                                                           ((IData)(
                                                                    (VL_ULL(0x3ffffffff) 
                                                                     & (((QData)((IData)(vlTOPp->io_ins_count)) 
                                                                         << 1U) 
                                                                        - VL_ULL(1)))) 
                                                            - (IData)(0x100U)))
                                                           : vlTOPp->Fetch__DOT__xrem)))));
}

void Vfetch::_eval(Vfetch__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfetch::_eval\n"); );
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock)))) {
        vlTOPp->_sequent__TOP__2(vlSymsp);
        vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
    }
    vlTOPp->_combo__TOP__3(vlSymsp);
    vlTOPp->__Vm_traceActivity = (4U | vlTOPp->__Vm_traceActivity);
    // Final
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void Vfetch::_eval_initial(Vfetch__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfetch::_eval_initial\n"); );
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void Vfetch::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfetch::final\n"); );
    // Variables
    Vfetch__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vfetch::_eval_settle(Vfetch__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfetch::_eval_settle\n"); );
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__1(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
}

VL_INLINE_OPT QData Vfetch::_change_request(Vfetch__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfetch::_change_request\n"); );
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vfetch::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfetch::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((io_launch & 0xfeU))) {
        Verilated::overWidthError("io_launch");}
    if (VL_UNLIKELY((io_vme_rd_cmd_ready & 0xfeU))) {
        Verilated::overWidthError("io_vme_rd_cmd_ready");}
    if (VL_UNLIKELY((io_vme_rd_data_valid & 0xfeU))) {
        Verilated::overWidthError("io_vme_rd_data_valid");}
    if (VL_UNLIKELY((io_inst_ld_ready & 0xfeU))) {
        Verilated::overWidthError("io_inst_ld_ready");}
    if (VL_UNLIKELY((io_inst_co_ready & 0xfeU))) {
        Verilated::overWidthError("io_inst_co_ready");}
    if (VL_UNLIKELY((io_inst_st_ready & 0xfeU))) {
        Verilated::overWidthError("io_inst_st_ready");}
}
#endif  // VL_DEBUG

void Vfetch::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfetch::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_launch = VL_RAND_RESET_I(1);
    io_ins_baddr = VL_RAND_RESET_I(32);
    io_ins_count = VL_RAND_RESET_I(32);
    io_vme_rd_cmd_valid = VL_RAND_RESET_I(1);
    io_vme_rd_cmd_ready = VL_RAND_RESET_I(1);
    io_vme_rd_cmd_bits_addr = VL_RAND_RESET_I(32);
    io_vme_rd_cmd_bits_len = VL_RAND_RESET_I(8);
    io_vme_rd_data_valid = VL_RAND_RESET_I(1);
    io_vme_rd_data_ready = VL_RAND_RESET_I(1);
    io_vme_rd_data_bits = VL_RAND_RESET_Q(64);
    io_inst_ld_valid = VL_RAND_RESET_I(1);
    io_inst_ld_ready = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, io_inst_ld_bits);
    io_inst_co_valid = VL_RAND_RESET_I(1);
    io_inst_co_ready = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, io_inst_co_bits);
    io_inst_st_valid = VL_RAND_RESET_I(1);
    io_inst_st_ready = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, io_inst_st_bits);
    Fetch__DOT__dec_io_isLoad = VL_RAND_RESET_I(1);
    Fetch__DOT__dec_io_isCompute = VL_RAND_RESET_I(1);
    Fetch__DOT__dec_io_isStore = VL_RAND_RESET_I(1);
    Fetch__DOT__s1_launch = VL_RAND_RESET_I(1);
    Fetch__DOT__state = VL_RAND_RESET_I(1);
    Fetch__DOT___T = VL_RAND_RESET_I(1);
    Fetch__DOT__pulse = VL_RAND_RESET_I(1);
    Fetch__DOT__rlen = VL_RAND_RESET_I(8);
    Fetch__DOT__xrem = VL_RAND_RESET_I(32);
    Fetch__DOT___GEN_3 = VL_RAND_RESET_I(1);
    Fetch__DOT___GEN_38 = VL_RAND_RESET_Q(33);
    Fetch__DOT__raddr = VL_RAND_RESET_I(32);
    Fetch__DOT___GEN_40 = VL_RAND_RESET_Q(33);
    Fetch__DOT__lsb = VL_RAND_RESET_Q(64);
    Fetch__DOT___T_42 = VL_RAND_RESET_I(3);
    { int __Vi0=0; for (; __Vi0<128; ++__Vi0) {
            VL_RAND_RESET_W(128, Fetch__DOT__inst_q__DOT__ram[__Vi0]);
    }}
    VL_RAND_RESET_W(128, Fetch__DOT__inst_q__DOT__ram___05FT_11_data);
    Fetch__DOT__inst_q__DOT___T = VL_RAND_RESET_I(7);
    Fetch__DOT__inst_q__DOT___GEN_6 = VL_RAND_RESET_I(8);
    Fetch__DOT__inst_q__DOT___T_4 = VL_RAND_RESET_I(7);
    Fetch__DOT__inst_q__DOT___GEN_8 = VL_RAND_RESET_I(8);
    Fetch__DOT__inst_q__DOT__maybe_full = VL_RAND_RESET_I(1);
    Fetch__DOT__inst_q__DOT__ptr_match = VL_RAND_RESET_I(1);
    Fetch__DOT__inst_q__DOT__empty = VL_RAND_RESET_I(1);
    Fetch__DOT__inst_q__DOT___T_14 = VL_RAND_RESET_I(8);
    Fetch__DOT__dec__DOT__cs_val_inst = VL_RAND_RESET_I(1);
    Fetch__DOT__dec__DOT__cs_op_type = VL_RAND_RESET_I(3);
    __Vm_traceActivity = 0;
}
