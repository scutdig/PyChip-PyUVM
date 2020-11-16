// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VCSR.h for the primary calling header

#include "VCSR.h"
#include "VCSR__Syms.h"

//==========

VL_CTOR_IMP(VCSR) {
    VCSR__Syms* __restrict vlSymsp = __VlSymsp = new VCSR__Syms(this, name());
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VCSR::__Vconfigure(VCSR__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

VCSR::~VCSR() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = NULL);
}

void VCSR::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VCSR::eval\n"); );
    VCSR__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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
            VL_FATAL_MT("CSR.v", 1, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VCSR::_eval_initial_loop(VCSR__Syms* __restrict vlSymsp) {
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
            VL_FATAL_MT("CSR.v", 1, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VCSR::_initial__TOP__1(VCSR__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VCSR::_initial__TOP__1\n"); );
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_mtvec_out = 0xa4U;
}

VL_INLINE_OPT void VCSR::_combo__TOP__2(VCSR__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VCSR::_combo__TOP__2\n"); );
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->CSR__DOT___T_88 = ((0x13U != vlTOPp->io_ex_inst) 
                               & (0x30200073U != vlTOPp->io_ex_inst));
}

void VCSR::_settle__TOP__3(VCSR__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VCSR::_settle__TOP__3\n"); );
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->CSR__DOT___T_88 = ((0x13U != vlTOPp->io_ex_inst) 
                               & (0x30200073U != vlTOPp->io_ex_inst));
    vlTOPp->CSR__DOT__is_CSR_Instruction = ((((((1U 
                                                 == (IData)(vlTOPp->io_ex_Write_CSR)) 
                                                | (3U 
                                                   == (IData)(vlTOPp->io_ex_Write_CSR))) 
                                               | (5U 
                                                  == (IData)(vlTOPp->io_ex_Write_CSR))) 
                                              | (2U 
                                                 == (IData)(vlTOPp->io_ex_Write_CSR))) 
                                             | (4U 
                                                == (IData)(vlTOPp->io_ex_Write_CSR))) 
                                            | (6U == (IData)(vlTOPp->io_ex_Write_CSR)));
    vlTOPp->CSR__DOT__InstructionAddressMisaligned_con 
        = ((0U != (3U & vlTOPp->io_ex_branch_addr)) 
           & (IData)(vlTOPp->io_ex_Branch));
    vlTOPp->CSR__DOT__LoadAddressMisaligned_con = (
                                                   (0U 
                                                    != 
                                                    (3U 
                                                     & vlTOPp->io_ex_addr)) 
                                                   & (IData)(vlTOPp->io_ex_Mem_Read));
    vlTOPp->CSR__DOT__StoreAddressMisaligned_con = 
        ((0U != (3U & vlTOPp->io_ex_addr)) & (IData)(vlTOPp->io_ex_Mem_Write));
    vlTOPp->io_mepc_out = vlTOPp->CSR__DOT__mepc;
    vlTOPp->CSR__DOT___T_57 = ((0xffffffffU == vlTOPp->CSR__DOT__mcycle) 
                               & (0xffffffffU == vlTOPp->CSR__DOT__mcycleh));
    vlTOPp->CSR__DOT___T_89 = ((0xffffffffU == vlTOPp->CSR__DOT__minstret) 
                               & (0xffffffffU == vlTOPp->CSR__DOT__minstreth));
    vlTOPp->CSR__DOT___T_61 = (((QData)((IData)(vlTOPp->CSR__DOT__mtimeh)) 
                                << 0x20U) | (QData)((IData)(vlTOPp->CSR__DOT__mtime)));
    vlTOPp->CSR__DOT___T_62 = (((QData)((IData)(vlTOPp->CSR__DOT__mtimecmph)) 
                                << 0x20U) | (QData)((IData)(vlTOPp->CSR__DOT__mtimecmp)));
    vlTOPp->CSR__DOT___T_24 = ((0x304U == (0xfffU & 
                                           (vlTOPp->io_ex_inst 
                                            >> 0x14U)))
                                ? (((IData)(vlTOPp->CSR__DOT__MEIE) 
                                    << 0xbU) | (((IData)(vlTOPp->CSR__DOT__MTIE) 
                                                 << 7U) 
                                                | ((IData)(vlTOPp->CSR__DOT__MSIE) 
                                                   << 3U)))
                                : ((0x344U == (0xfffU 
                                               & (vlTOPp->io_ex_inst 
                                                  >> 0x14U)))
                                    ? (((IData)(vlTOPp->CSR__DOT__MEIP) 
                                        << 0xbU) | 
                                       (((IData)(vlTOPp->CSR__DOT__MTIP) 
                                         << 7U) | ((IData)(vlTOPp->CSR__DOT__MSIP) 
                                                   << 3U)))
                                    : ((0x342U == (0xfffU 
                                                   & (vlTOPp->io_ex_inst 
                                                      >> 0x14U)))
                                        ? vlTOPp->CSR__DOT__mcause
                                        : ((0xb00U 
                                            == (0xfffU 
                                                & (vlTOPp->io_ex_inst 
                                                   >> 0x14U)))
                                            ? vlTOPp->CSR__DOT__mcycle
                                            : ((0xb80U 
                                                == 
                                                (0xfffU 
                                                 & (vlTOPp->io_ex_inst 
                                                    >> 0x14U)))
                                                ? vlTOPp->CSR__DOT__mcycleh
                                                : (
                                                   (0x700U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? vlTOPp->CSR__DOT__mtime
                                                    : 
                                                   ((0x701U 
                                                     == 
                                                     (0xfffU 
                                                      & (vlTOPp->io_ex_inst 
                                                         >> 0x14U)))
                                                     ? vlTOPp->CSR__DOT__mtimeh
                                                     : 
                                                    ((0xb02U 
                                                      == 
                                                      (0xfffU 
                                                       & (vlTOPp->io_ex_inst 
                                                          >> 0x14U)))
                                                      ? vlTOPp->CSR__DOT__minstret
                                                      : 
                                                     ((0xb82U 
                                                       == 
                                                       (0xfffU 
                                                        & (vlTOPp->io_ex_inst 
                                                           >> 0x14U)))
                                                       ? vlTOPp->CSR__DOT__minstreth
                                                       : 
                                                      ((0x702U 
                                                        == 
                                                        (0xfffU 
                                                         & (vlTOPp->io_ex_inst 
                                                            >> 0x14U)))
                                                        ? vlTOPp->CSR__DOT__mtimecmp
                                                        : 
                                                       ((0x703U 
                                                         == 
                                                         (0xfffU 
                                                          & (vlTOPp->io_ex_inst 
                                                             >> 0x14U)))
                                                         ? vlTOPp->CSR__DOT__mtimecmph
                                                         : 0U)))))))))));
    vlTOPp->CSR__DOT__is_a_exception = ((((IData)(vlTOPp->CSR__DOT__InstructionAddressMisaligned_con) 
                                          | (IData)(vlTOPp->io_ex_is_Illegal)) 
                                         | (IData)(vlTOPp->CSR__DOT__LoadAddressMisaligned_con)) 
                                        | (IData)(vlTOPp->CSR__DOT__StoreAddressMisaligned_con));
    vlTOPp->CSR__DOT___GEN_2 = ((IData)(vlTOPp->CSR__DOT___T_57)
                                 ? VL_ULL(0) : ((0xffffffffU 
                                                 == vlTOPp->CSR__DOT__mcycle)
                                                 ? VL_ULL(0)
                                                 : 
                                                (VL_ULL(0x1ffffffff) 
                                                 & (VL_ULL(1) 
                                                    + (QData)((IData)(vlTOPp->CSR__DOT__mcycle))))));
    vlTOPp->CSR__DOT___GEN_3 = ((IData)(vlTOPp->CSR__DOT___T_57)
                                 ? VL_ULL(0) : (VL_ULL(0x1ffffffff) 
                                                & ((0xffffffffU 
                                                    == vlTOPp->CSR__DOT__mcycle)
                                                    ? 
                                                   (VL_ULL(1) 
                                                    + (QData)((IData)(vlTOPp->CSR__DOT__mcycleh)))
                                                    : (QData)((IData)(vlTOPp->CSR__DOT__mcycleh)))));
    vlTOPp->CSR__DOT___GEN_12 = (VL_ULL(0x1ffffffff) 
                                 & ((IData)(vlTOPp->CSR__DOT___T_88)
                                     ? ((IData)(vlTOPp->CSR__DOT___T_89)
                                         ? VL_ULL(0)
                                         : ((0xffffffffU 
                                             == vlTOPp->CSR__DOT__minstret)
                                             ? VL_ULL(0)
                                             : (VL_ULL(1) 
                                                + (QData)((IData)(vlTOPp->CSR__DOT__minstret)))))
                                     : (QData)((IData)(vlTOPp->CSR__DOT__minstret))));
    vlTOPp->CSR__DOT___GEN_13 = (VL_ULL(0x1ffffffff) 
                                 & ((IData)(vlTOPp->CSR__DOT___T_88)
                                     ? ((IData)(vlTOPp->CSR__DOT___T_89)
                                         ? VL_ULL(0)
                                         : ((0xffffffffU 
                                             == vlTOPp->CSR__DOT__minstret)
                                             ? (VL_ULL(1) 
                                                + (QData)((IData)(vlTOPp->CSR__DOT__minstreth)))
                                             : (QData)((IData)(vlTOPp->CSR__DOT__minstreth))))
                                     : (QData)((IData)(vlTOPp->CSR__DOT__minstreth))));
    vlTOPp->CSR__DOT__is_a_interrupt = ((VL_ULL(0) 
                                         != vlTOPp->CSR__DOT___T_62) 
                                        & (vlTOPp->CSR__DOT___T_61 
                                           > vlTOPp->CSR__DOT___T_62));
    vlTOPp->io_csr_data_out = ((0x300U == (0xfffU & 
                                           (vlTOPp->io_ex_inst 
                                            >> 0x14U)))
                                ? (((IData)(vlTOPp->CSR__DOT__MPP) 
                                    << 0xbU) | (((IData)(vlTOPp->CSR__DOT__MPIE) 
                                                 << 7U) 
                                                | ((IData)(vlTOPp->CSR__DOT__MIE) 
                                                   << 3U)))
                                : ((0x341U == (0xfffU 
                                               & (vlTOPp->io_ex_inst 
                                                  >> 0x14U)))
                                    ? vlTOPp->CSR__DOT__mepc
                                    : ((0x305U == (0xfffU 
                                                   & (vlTOPp->io_ex_inst 
                                                      >> 0x14U)))
                                        ? 0xa4U : (
                                                   (0x343U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? vlTOPp->CSR__DOT__mtval
                                                    : vlTOPp->CSR__DOT___T_24))));
    vlTOPp->CSR__DOT__enable_exception = (((IData)(vlTOPp->CSR__DOT__MIE) 
                                           & ((IData)(vlTOPp->CSR__DOT__is_a_exception) 
                                              | ((IData)(vlTOPp->CSR__DOT__is_a_interrupt) 
                                                 & (IData)(vlTOPp->CSR__DOT__MTIE)))) 
                                          & (~ (IData)(vlTOPp->io_is_Waiting_Resolved)));
    vlTOPp->CSR__DOT__s_val = (vlTOPp->io_csr_data_out 
                               | vlTOPp->io_csr_data_in);
    vlTOPp->CSR__DOT__si_val = (vlTOPp->io_csr_data_out 
                                | (0x1fU & (vlTOPp->io_ex_inst 
                                            >> 0xfU)));
    vlTOPp->CSR__DOT__c_val = (vlTOPp->io_csr_data_out 
                               & (~ vlTOPp->io_csr_data_in));
    vlTOPp->CSR__DOT__ci_val = (vlTOPp->io_csr_data_out 
                                & (~ (0x1fU & (vlTOPp->io_ex_inst 
                                               >> 0xfU))));
    vlTOPp->CSR__DOT___T_83 = (((0xffffffffU == vlTOPp->CSR__DOT__mtime) 
                                & (0xffffffffU == vlTOPp->CSR__DOT__mtimeh)) 
                               | (vlTOPp->CSR__DOT___T_61 
                                  > (vlTOPp->CSR__DOT___T_62 
                                     & (QData)((IData)(vlTOPp->CSR__DOT__enable_exception)))));
    vlTOPp->CSR__DOT___T_95 = (((IData)(vlTOPp->CSR__DOT__is_a_exception) 
                                | (IData)(vlTOPp->CSR__DOT__is_a_interrupt)) 
                               & (IData)(vlTOPp->CSR__DOT__enable_exception));
    vlTOPp->CSR__DOT__csr_write_data = ((1U == (IData)(vlTOPp->io_ex_Write_CSR))
                                         ? vlTOPp->io_csr_data_in
                                         : ((2U == (IData)(vlTOPp->io_ex_Write_CSR))
                                             ? (0x1fU 
                                                & (vlTOPp->io_ex_inst 
                                                   >> 0xfU))
                                             : ((3U 
                                                 == (IData)(vlTOPp->io_ex_Write_CSR))
                                                 ? vlTOPp->CSR__DOT__s_val
                                                 : 
                                                ((4U 
                                                  == (IData)(vlTOPp->io_ex_Write_CSR))
                                                  ? vlTOPp->CSR__DOT__si_val
                                                  : 
                                                 ((5U 
                                                   == (IData)(vlTOPp->io_ex_Write_CSR))
                                                   ? vlTOPp->CSR__DOT__c_val
                                                   : 
                                                  ((6U 
                                                    == (IData)(vlTOPp->io_ex_Write_CSR))
                                                    ? vlTOPp->CSR__DOT__ci_val
                                                    : 0U))))));
    vlTOPp->CSR__DOT___GEN_6 = ((IData)(vlTOPp->CSR__DOT___T_83)
                                 ? VL_ULL(0) : ((0xffffffffU 
                                                 == vlTOPp->CSR__DOT__mtime)
                                                 ? VL_ULL(0)
                                                 : 
                                                (VL_ULL(0x1ffffffff) 
                                                 & (VL_ULL(1) 
                                                    + (QData)((IData)(vlTOPp->CSR__DOT__mtime))))));
    vlTOPp->CSR__DOT___GEN_7 = ((IData)(vlTOPp->CSR__DOT___T_83)
                                 ? VL_ULL(0) : (VL_ULL(0x1ffffffff) 
                                                & ((0xffffffffU 
                                                    == vlTOPp->CSR__DOT__mtime)
                                                    ? 
                                                   (VL_ULL(1) 
                                                    + (QData)((IData)(vlTOPp->CSR__DOT__mtimeh)))
                                                    : (QData)((IData)(vlTOPp->CSR__DOT__mtimeh)))));
    vlTOPp->io_IF_ID_Flush = ((IData)(vlTOPp->CSR__DOT___T_95) 
                              | (7U == (IData)(vlTOPp->io_ex_Write_CSR)));
    vlTOPp->io_ID_EX_Flush = ((IData)(vlTOPp->CSR__DOT___T_95) 
                              | (7U == (IData)(vlTOPp->io_ex_Write_CSR)));
    vlTOPp->io_is_Exception = ((IData)(vlTOPp->CSR__DOT___T_95)
                                ? 2U : ((7U == (IData)(vlTOPp->io_ex_Write_CSR))
                                         ? 1U : 0U));
    vlTOPp->io_Exception_Flush = ((IData)(vlTOPp->CSR__DOT___T_95) 
                                  & (IData)(vlTOPp->CSR__DOT__is_a_exception));
    vlTOPp->CSR__DOT___GEN_151 = (1U & ((IData)(vlTOPp->CSR__DOT___T_95)
                                         ? (IData)(vlTOPp->CSR__DOT__MSIE)
                                         : ((7U == (IData)(vlTOPp->io_ex_Write_CSR))
                                             ? (IData)(vlTOPp->CSR__DOT__MSIE)
                                             : ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                 ? 
                                                ((0x300U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlTOPp->io_ex_inst 
                                                      >> 0x14U)))
                                                  ? (IData)(vlTOPp->CSR__DOT__MSIE)
                                                  : 
                                                 ((0x341U 
                                                   == 
                                                   (0xfffU 
                                                    & (vlTOPp->io_ex_inst 
                                                       >> 0x14U)))
                                                   ? (IData)(vlTOPp->CSR__DOT__MSIE)
                                                   : 
                                                  ((0x342U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? (IData)(vlTOPp->CSR__DOT__MSIE)
                                                    : 
                                                   ((0x344U 
                                                     == 
                                                     (0xfffU 
                                                      & (vlTOPp->io_ex_inst 
                                                         >> 0x14U)))
                                                     ? (IData)(vlTOPp->CSR__DOT__MSIE)
                                                     : 
                                                    ((0x304U 
                                                      == 
                                                      (0xfffU 
                                                       & (vlTOPp->io_ex_inst 
                                                          >> 0x14U)))
                                                      ? 
                                                     (vlTOPp->CSR__DOT__csr_write_data 
                                                      >> 3U)
                                                      : (IData)(vlTOPp->CSR__DOT__MSIE))))))
                                                 : (IData)(vlTOPp->CSR__DOT__MSIE)))));
    vlTOPp->CSR__DOT___GEN_152 = (1U & ((IData)(vlTOPp->CSR__DOT___T_95)
                                         ? (IData)(vlTOPp->CSR__DOT__MTIE)
                                         : ((7U == (IData)(vlTOPp->io_ex_Write_CSR))
                                             ? (IData)(vlTOPp->CSR__DOT__MTIE)
                                             : ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                 ? 
                                                ((0x300U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlTOPp->io_ex_inst 
                                                      >> 0x14U)))
                                                  ? (IData)(vlTOPp->CSR__DOT__MTIE)
                                                  : 
                                                 ((0x341U 
                                                   == 
                                                   (0xfffU 
                                                    & (vlTOPp->io_ex_inst 
                                                       >> 0x14U)))
                                                   ? (IData)(vlTOPp->CSR__DOT__MTIE)
                                                   : 
                                                  ((0x342U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? (IData)(vlTOPp->CSR__DOT__MTIE)
                                                    : 
                                                   ((0x344U 
                                                     == 
                                                     (0xfffU 
                                                      & (vlTOPp->io_ex_inst 
                                                         >> 0x14U)))
                                                     ? (IData)(vlTOPp->CSR__DOT__MTIE)
                                                     : 
                                                    ((0x304U 
                                                      == 
                                                      (0xfffU 
                                                       & (vlTOPp->io_ex_inst 
                                                          >> 0x14U)))
                                                      ? 
                                                     (vlTOPp->CSR__DOT__csr_write_data 
                                                      >> 7U)
                                                      : (IData)(vlTOPp->CSR__DOT__MTIE))))))
                                                 : (IData)(vlTOPp->CSR__DOT__MTIE)))));
    vlTOPp->CSR__DOT___GEN_153 = (1U & ((IData)(vlTOPp->CSR__DOT___T_95)
                                         ? (IData)(vlTOPp->CSR__DOT__MEIE)
                                         : ((7U == (IData)(vlTOPp->io_ex_Write_CSR))
                                             ? (IData)(vlTOPp->CSR__DOT__MEIE)
                                             : ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                 ? 
                                                ((0x300U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlTOPp->io_ex_inst 
                                                      >> 0x14U)))
                                                  ? (IData)(vlTOPp->CSR__DOT__MEIE)
                                                  : 
                                                 ((0x341U 
                                                   == 
                                                   (0xfffU 
                                                    & (vlTOPp->io_ex_inst 
                                                       >> 0x14U)))
                                                   ? (IData)(vlTOPp->CSR__DOT__MEIE)
                                                   : 
                                                  ((0x342U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? (IData)(vlTOPp->CSR__DOT__MEIE)
                                                    : 
                                                   ((0x344U 
                                                     == 
                                                     (0xfffU 
                                                      & (vlTOPp->io_ex_inst 
                                                         >> 0x14U)))
                                                     ? (IData)(vlTOPp->CSR__DOT__MEIE)
                                                     : 
                                                    ((0x304U 
                                                      == 
                                                      (0xfffU 
                                                       & (vlTOPp->io_ex_inst 
                                                          >> 0x14U)))
                                                      ? 
                                                     (vlTOPp->CSR__DOT__csr_write_data 
                                                      >> 0xbU)
                                                      : (IData)(vlTOPp->CSR__DOT__MEIE))))))
                                                 : (IData)(vlTOPp->CSR__DOT__MEIE)))));
    vlTOPp->CSR__DOT___GEN_145 = (1U & ((IData)(vlTOPp->CSR__DOT___T_95)
                                         ? (IData)(vlTOPp->CSR__DOT__MIE)
                                         : ((7U == (IData)(vlTOPp->io_ex_Write_CSR)) 
                                            | ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                ? (
                                                   (0x300U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? 
                                                   (vlTOPp->CSR__DOT__csr_write_data 
                                                    >> 7U)
                                                    : (IData)(vlTOPp->CSR__DOT__MPIE))
                                                : (IData)(vlTOPp->CSR__DOT__MPIE)))));
    vlTOPp->CSR__DOT___GEN_147 = (1U & ((~ (IData)(vlTOPp->CSR__DOT___T_95)) 
                                        & ((7U == (IData)(vlTOPp->io_ex_Write_CSR))
                                            ? (IData)(vlTOPp->CSR__DOT__MPIE)
                                            : ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                ? (
                                                   (0x300U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? 
                                                   (vlTOPp->CSR__DOT__csr_write_data 
                                                    >> 3U)
                                                    : (IData)(vlTOPp->CSR__DOT__MIE))
                                                : (IData)(vlTOPp->CSR__DOT__MIE)))));
    vlTOPp->CSR__DOT___GEN_142 = (VL_ULL(0x1ffffffff) 
                                  & ((IData)(vlTOPp->CSR__DOT___T_95)
                                      ? ((IData)(vlTOPp->CSR__DOT__is_a_exception)
                                          ? ((QData)((IData)(vlTOPp->io_ex_pc_4)) 
                                             - VL_ULL(4))
                                          : (QData)((IData)(vlTOPp->io_ex_pc_4)))
                                      : (QData)((IData)(
                                                        ((7U 
                                                          == (IData)(vlTOPp->io_ex_Write_CSR))
                                                          ? vlTOPp->CSR__DOT__mepc
                                                          : 
                                                         ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                           ? 
                                                          ((0x300U 
                                                            == 
                                                            (0xfffU 
                                                             & (vlTOPp->io_ex_inst 
                                                                >> 0x14U)))
                                                            ? vlTOPp->CSR__DOT__mepc
                                                            : 
                                                           ((0x341U 
                                                             == 
                                                             (0xfffU 
                                                              & (vlTOPp->io_ex_inst 
                                                                 >> 0x14U)))
                                                             ? vlTOPp->CSR__DOT__csr_write_data
                                                             : vlTOPp->CSR__DOT__mepc))
                                                           : vlTOPp->CSR__DOT__mepc))))));
}

VL_INLINE_OPT void VCSR::_sequent__TOP__4(VCSR__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VCSR::_sequent__TOP__4\n"); );
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->CSR__DOT__mepc = ((IData)(vlTOPp->reset)
                               ? 0U : (IData)(vlTOPp->CSR__DOT___GEN_142));
    vlTOPp->CSR__DOT__MPIE = ((IData)(vlTOPp->reset) 
                              | (IData)(vlTOPp->CSR__DOT___GEN_145));
    if (vlTOPp->reset) {
        vlTOPp->CSR__DOT__MPP = 3U;
    } else {
        if (vlTOPp->CSR__DOT___T_95) {
            vlTOPp->CSR__DOT__MPP = 3U;
        } else {
            if ((7U == (IData)(vlTOPp->io_ex_Write_CSR))) {
                vlTOPp->CSR__DOT__MPP = 3U;
            } else {
                if (vlTOPp->CSR__DOT__is_CSR_Instruction) {
                    if ((0x300U == (0xfffU & (vlTOPp->io_ex_inst 
                                              >> 0x14U)))) {
                        vlTOPp->CSR__DOT__MPP = (3U 
                                                 & (vlTOPp->CSR__DOT__csr_write_data 
                                                    >> 0xbU));
                    }
                }
            }
        }
    }
    vlTOPp->CSR__DOT__MIE = ((IData)(vlTOPp->reset) 
                             | (IData)(vlTOPp->CSR__DOT___GEN_147));
    vlTOPp->CSR__DOT__MEIE = ((IData)(vlTOPp->reset) 
                              | (IData)(vlTOPp->CSR__DOT___GEN_153));
    vlTOPp->CSR__DOT__MSIE = ((IData)(vlTOPp->reset) 
                              | (IData)(vlTOPp->CSR__DOT___GEN_151));
    if (vlTOPp->reset) {
        vlTOPp->CSR__DOT__MSIP = 0U;
    } else {
        if ((1U & (~ (IData)(vlTOPp->CSR__DOT___T_95)))) {
            if ((7U != (IData)(vlTOPp->io_ex_Write_CSR))) {
                if (vlTOPp->CSR__DOT__is_CSR_Instruction) {
                    if ((0x300U != (0xfffU & (vlTOPp->io_ex_inst 
                                              >> 0x14U)))) {
                        if ((0x341U != (0xfffU & (vlTOPp->io_ex_inst 
                                                  >> 0x14U)))) {
                            if ((0x342U != (0xfffU 
                                            & (vlTOPp->io_ex_inst 
                                               >> 0x14U)))) {
                                if ((0x344U == (0xfffU 
                                                & (vlTOPp->io_ex_inst 
                                                   >> 0x14U)))) {
                                    vlTOPp->CSR__DOT__MSIP 
                                        = (1U & (vlTOPp->CSR__DOT__csr_write_data 
                                                 >> 3U));
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    if (vlTOPp->reset) {
        vlTOPp->CSR__DOT__MTIP = 0U;
    } else {
        if ((1U & (~ (IData)(vlTOPp->CSR__DOT___T_95)))) {
            if ((7U != (IData)(vlTOPp->io_ex_Write_CSR))) {
                if (vlTOPp->CSR__DOT__is_CSR_Instruction) {
                    if ((0x300U != (0xfffU & (vlTOPp->io_ex_inst 
                                              >> 0x14U)))) {
                        if ((0x341U != (0xfffU & (vlTOPp->io_ex_inst 
                                                  >> 0x14U)))) {
                            if ((0x342U != (0xfffU 
                                            & (vlTOPp->io_ex_inst 
                                               >> 0x14U)))) {
                                if ((0x344U == (0xfffU 
                                                & (vlTOPp->io_ex_inst 
                                                   >> 0x14U)))) {
                                    vlTOPp->CSR__DOT__MTIP 
                                        = (1U & (vlTOPp->CSR__DOT__csr_write_data 
                                                 >> 7U));
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    if (vlTOPp->reset) {
        vlTOPp->CSR__DOT__MEIP = 0U;
    } else {
        if ((1U & (~ (IData)(vlTOPp->CSR__DOT___T_95)))) {
            if ((7U != (IData)(vlTOPp->io_ex_Write_CSR))) {
                if (vlTOPp->CSR__DOT__is_CSR_Instruction) {
                    if ((0x300U != (0xfffU & (vlTOPp->io_ex_inst 
                                              >> 0x14U)))) {
                        if ((0x341U != (0xfffU & (vlTOPp->io_ex_inst 
                                                  >> 0x14U)))) {
                            if ((0x342U != (0xfffU 
                                            & (vlTOPp->io_ex_inst 
                                               >> 0x14U)))) {
                                if ((0x344U == (0xfffU 
                                                & (vlTOPp->io_ex_inst 
                                                   >> 0x14U)))) {
                                    vlTOPp->CSR__DOT__MEIP 
                                        = (1U & (vlTOPp->CSR__DOT__csr_write_data 
                                                 >> 0xbU));
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    vlTOPp->CSR__DOT__mcycleh = ((IData)(vlTOPp->reset)
                                  ? 0U : (IData)(((IData)(vlTOPp->CSR__DOT___T_95)
                                                   ? vlTOPp->CSR__DOT___GEN_3
                                                   : 
                                                  ((7U 
                                                    == (IData)(vlTOPp->io_ex_Write_CSR))
                                                    ? vlTOPp->CSR__DOT___GEN_3
                                                    : 
                                                   ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                     ? 
                                                    ((0x300U 
                                                      == 
                                                      (0xfffU 
                                                       & (vlTOPp->io_ex_inst 
                                                          >> 0x14U)))
                                                      ? vlTOPp->CSR__DOT___GEN_3
                                                      : 
                                                     ((0x341U 
                                                       == 
                                                       (0xfffU 
                                                        & (vlTOPp->io_ex_inst 
                                                           >> 0x14U)))
                                                       ? vlTOPp->CSR__DOT___GEN_3
                                                       : 
                                                      ((0x342U 
                                                        == 
                                                        (0xfffU 
                                                         & (vlTOPp->io_ex_inst 
                                                            >> 0x14U)))
                                                        ? vlTOPp->CSR__DOT___GEN_3
                                                        : 
                                                       ((0x344U 
                                                         == 
                                                         (0xfffU 
                                                          & (vlTOPp->io_ex_inst 
                                                             >> 0x14U)))
                                                         ? vlTOPp->CSR__DOT___GEN_3
                                                         : 
                                                        ((0x304U 
                                                          == 
                                                          (0xfffU 
                                                           & (vlTOPp->io_ex_inst 
                                                              >> 0x14U)))
                                                          ? vlTOPp->CSR__DOT___GEN_3
                                                          : 
                                                         ((0xb00U 
                                                           == 
                                                           (0xfffU 
                                                            & (vlTOPp->io_ex_inst 
                                                               >> 0x14U)))
                                                           ? vlTOPp->CSR__DOT___GEN_3
                                                           : 
                                                          ((0xb80U 
                                                            == 
                                                            (0xfffU 
                                                             & (vlTOPp->io_ex_inst 
                                                                >> 0x14U)))
                                                            ? (QData)((IData)(vlTOPp->CSR__DOT__csr_write_data))
                                                            : vlTOPp->CSR__DOT___GEN_3)))))))
                                                     : vlTOPp->CSR__DOT___GEN_3)))));
    vlTOPp->CSR__DOT__mcycle = ((IData)(vlTOPp->reset)
                                 ? 0U : (IData)(((IData)(vlTOPp->CSR__DOT___T_95)
                                                  ? vlTOPp->CSR__DOT___GEN_2
                                                  : 
                                                 ((7U 
                                                   == (IData)(vlTOPp->io_ex_Write_CSR))
                                                   ? vlTOPp->CSR__DOT___GEN_2
                                                   : 
                                                  ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                    ? 
                                                   ((0x300U 
                                                     == 
                                                     (0xfffU 
                                                      & (vlTOPp->io_ex_inst 
                                                         >> 0x14U)))
                                                     ? vlTOPp->CSR__DOT___GEN_2
                                                     : 
                                                    ((0x341U 
                                                      == 
                                                      (0xfffU 
                                                       & (vlTOPp->io_ex_inst 
                                                          >> 0x14U)))
                                                      ? vlTOPp->CSR__DOT___GEN_2
                                                      : 
                                                     ((0x342U 
                                                       == 
                                                       (0xfffU 
                                                        & (vlTOPp->io_ex_inst 
                                                           >> 0x14U)))
                                                       ? vlTOPp->CSR__DOT___GEN_2
                                                       : 
                                                      ((0x344U 
                                                        == 
                                                        (0xfffU 
                                                         & (vlTOPp->io_ex_inst 
                                                            >> 0x14U)))
                                                        ? vlTOPp->CSR__DOT___GEN_2
                                                        : 
                                                       ((0x304U 
                                                         == 
                                                         (0xfffU 
                                                          & (vlTOPp->io_ex_inst 
                                                             >> 0x14U)))
                                                         ? vlTOPp->CSR__DOT___GEN_2
                                                         : 
                                                        ((0xb00U 
                                                          == 
                                                          (0xfffU 
                                                           & (vlTOPp->io_ex_inst 
                                                              >> 0x14U)))
                                                          ? (QData)((IData)(vlTOPp->CSR__DOT__csr_write_data))
                                                          : vlTOPp->CSR__DOT___GEN_2))))))
                                                    : vlTOPp->CSR__DOT___GEN_2)))));
    vlTOPp->CSR__DOT__minstreth = ((IData)(vlTOPp->reset)
                                    ? 0U : (IData)(
                                                   ((IData)(vlTOPp->CSR__DOT___T_95)
                                                     ? vlTOPp->CSR__DOT___GEN_13
                                                     : 
                                                    ((7U 
                                                      == (IData)(vlTOPp->io_ex_Write_CSR))
                                                      ? vlTOPp->CSR__DOT___GEN_13
                                                      : 
                                                     ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                       ? 
                                                      ((0x300U 
                                                        == 
                                                        (0xfffU 
                                                         & (vlTOPp->io_ex_inst 
                                                            >> 0x14U)))
                                                        ? vlTOPp->CSR__DOT___GEN_13
                                                        : 
                                                       ((0x341U 
                                                         == 
                                                         (0xfffU 
                                                          & (vlTOPp->io_ex_inst 
                                                             >> 0x14U)))
                                                         ? vlTOPp->CSR__DOT___GEN_13
                                                         : 
                                                        ((0x342U 
                                                          == 
                                                          (0xfffU 
                                                           & (vlTOPp->io_ex_inst 
                                                              >> 0x14U)))
                                                          ? vlTOPp->CSR__DOT___GEN_13
                                                          : 
                                                         ((0x344U 
                                                           == 
                                                           (0xfffU 
                                                            & (vlTOPp->io_ex_inst 
                                                               >> 0x14U)))
                                                           ? vlTOPp->CSR__DOT___GEN_13
                                                           : 
                                                          ((0x304U 
                                                            == 
                                                            (0xfffU 
                                                             & (vlTOPp->io_ex_inst 
                                                                >> 0x14U)))
                                                            ? vlTOPp->CSR__DOT___GEN_13
                                                            : 
                                                           ((0xb00U 
                                                             == 
                                                             (0xfffU 
                                                              & (vlTOPp->io_ex_inst 
                                                                 >> 0x14U)))
                                                             ? vlTOPp->CSR__DOT___GEN_13
                                                             : 
                                                            ((0xb80U 
                                                              == 
                                                              (0xfffU 
                                                               & (vlTOPp->io_ex_inst 
                                                                  >> 0x14U)))
                                                              ? vlTOPp->CSR__DOT___GEN_13
                                                              : 
                                                             ((0xb02U 
                                                               == 
                                                               (0xfffU 
                                                                & (vlTOPp->io_ex_inst 
                                                                   >> 0x14U)))
                                                               ? vlTOPp->CSR__DOT___GEN_13
                                                               : 
                                                              ((0xb82U 
                                                                == 
                                                                (0xfffU 
                                                                 & (vlTOPp->io_ex_inst 
                                                                    >> 0x14U)))
                                                                ? (QData)((IData)(vlTOPp->CSR__DOT__csr_write_data))
                                                                : vlTOPp->CSR__DOT___GEN_13)))))))))
                                                       : vlTOPp->CSR__DOT___GEN_13)))));
    vlTOPp->CSR__DOT__minstret = ((IData)(vlTOPp->reset)
                                   ? 0U : (IData)(((IData)(vlTOPp->CSR__DOT___T_95)
                                                    ? vlTOPp->CSR__DOT___GEN_12
                                                    : 
                                                   ((7U 
                                                     == (IData)(vlTOPp->io_ex_Write_CSR))
                                                     ? vlTOPp->CSR__DOT___GEN_12
                                                     : 
                                                    ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                      ? 
                                                     ((0x300U 
                                                       == 
                                                       (0xfffU 
                                                        & (vlTOPp->io_ex_inst 
                                                           >> 0x14U)))
                                                       ? vlTOPp->CSR__DOT___GEN_12
                                                       : 
                                                      ((0x341U 
                                                        == 
                                                        (0xfffU 
                                                         & (vlTOPp->io_ex_inst 
                                                            >> 0x14U)))
                                                        ? vlTOPp->CSR__DOT___GEN_12
                                                        : 
                                                       ((0x342U 
                                                         == 
                                                         (0xfffU 
                                                          & (vlTOPp->io_ex_inst 
                                                             >> 0x14U)))
                                                         ? vlTOPp->CSR__DOT___GEN_12
                                                         : 
                                                        ((0x344U 
                                                          == 
                                                          (0xfffU 
                                                           & (vlTOPp->io_ex_inst 
                                                              >> 0x14U)))
                                                          ? vlTOPp->CSR__DOT___GEN_12
                                                          : 
                                                         ((0x304U 
                                                           == 
                                                           (0xfffU 
                                                            & (vlTOPp->io_ex_inst 
                                                               >> 0x14U)))
                                                           ? vlTOPp->CSR__DOT___GEN_12
                                                           : 
                                                          ((0xb00U 
                                                            == 
                                                            (0xfffU 
                                                             & (vlTOPp->io_ex_inst 
                                                                >> 0x14U)))
                                                            ? vlTOPp->CSR__DOT___GEN_12
                                                            : 
                                                           ((0xb80U 
                                                             == 
                                                             (0xfffU 
                                                              & (vlTOPp->io_ex_inst 
                                                                 >> 0x14U)))
                                                             ? vlTOPp->CSR__DOT___GEN_12
                                                             : 
                                                            ((0xb02U 
                                                              == 
                                                              (0xfffU 
                                                               & (vlTOPp->io_ex_inst 
                                                                  >> 0x14U)))
                                                              ? (QData)((IData)(vlTOPp->CSR__DOT__csr_write_data))
                                                              : vlTOPp->CSR__DOT___GEN_12))))))))
                                                      : vlTOPp->CSR__DOT___GEN_12)))));
    if (vlTOPp->reset) {
        vlTOPp->CSR__DOT__mtval = 0U;
    } else {
        if (vlTOPp->CSR__DOT___T_95) {
            if (vlTOPp->CSR__DOT__InstructionAddressMisaligned_con) {
                vlTOPp->CSR__DOT__mtval = vlTOPp->io_ex_branch_addr;
            } else {
                if (vlTOPp->io_ex_is_Illegal) {
                    vlTOPp->CSR__DOT__mtval = vlTOPp->io_ex_inst;
                } else {
                    if (((IData)(vlTOPp->CSR__DOT__LoadAddressMisaligned_con) 
                         | (IData)(vlTOPp->CSR__DOT__StoreAddressMisaligned_con))) {
                        vlTOPp->CSR__DOT__mtval = vlTOPp->io_ex_addr;
                    }
                }
            }
        }
    }
    vlTOPp->CSR__DOT__MTIE = ((IData)(vlTOPp->reset) 
                              | (IData)(vlTOPp->CSR__DOT___GEN_152));
    vlTOPp->CSR__DOT__mtimeh = ((IData)(vlTOPp->reset)
                                 ? 0U : (IData)(vlTOPp->CSR__DOT___GEN_7));
    vlTOPp->CSR__DOT__mtime = ((IData)(vlTOPp->reset)
                                ? 0U : (IData)(vlTOPp->CSR__DOT___GEN_6));
    if (vlTOPp->reset) {
        vlTOPp->CSR__DOT__mtimecmph = 0U;
    } else {
        if ((1U & (~ (IData)(vlTOPp->CSR__DOT___T_95)))) {
            if ((7U != (IData)(vlTOPp->io_ex_Write_CSR))) {
                if (vlTOPp->CSR__DOT__is_CSR_Instruction) {
                    if ((0x300U != (0xfffU & (vlTOPp->io_ex_inst 
                                              >> 0x14U)))) {
                        if ((0x341U != (0xfffU & (vlTOPp->io_ex_inst 
                                                  >> 0x14U)))) {
                            if ((0x342U != (0xfffU 
                                            & (vlTOPp->io_ex_inst 
                                               >> 0x14U)))) {
                                if ((0x344U != (0xfffU 
                                                & (vlTOPp->io_ex_inst 
                                                   >> 0x14U)))) {
                                    if ((0x304U != 
                                         (0xfffU & 
                                          (vlTOPp->io_ex_inst 
                                           >> 0x14U)))) {
                                        if ((0xb00U 
                                             != (0xfffU 
                                                 & (vlTOPp->io_ex_inst 
                                                    >> 0x14U)))) {
                                            if ((0xb80U 
                                                 != 
                                                 (0xfffU 
                                                  & (vlTOPp->io_ex_inst 
                                                     >> 0x14U)))) {
                                                if (
                                                    (0xb02U 
                                                     != 
                                                     (0xfffU 
                                                      & (vlTOPp->io_ex_inst 
                                                         >> 0x14U)))) {
                                                    if (
                                                        (0xb82U 
                                                         != 
                                                         (0xfffU 
                                                          & (vlTOPp->io_ex_inst 
                                                             >> 0x14U)))) {
                                                        if (
                                                            (0x702U 
                                                             != 
                                                             (0xfffU 
                                                              & (vlTOPp->io_ex_inst 
                                                                 >> 0x14U)))) {
                                                            if (
                                                                (0x703U 
                                                                 == 
                                                                 (0xfffU 
                                                                  & (vlTOPp->io_ex_inst 
                                                                     >> 0x14U)))) {
                                                                vlTOPp->CSR__DOT__mtimecmph 
                                                                    = 
                                                                    ((1U 
                                                                      == (IData)(vlTOPp->io_ex_Write_CSR))
                                                                      ? vlTOPp->io_csr_data_in
                                                                      : 
                                                                     ((2U 
                                                                       == (IData)(vlTOPp->io_ex_Write_CSR))
                                                                       ? 
                                                                      (0x1fU 
                                                                       & (vlTOPp->io_ex_inst 
                                                                          >> 0xfU))
                                                                       : 
                                                                      ((3U 
                                                                        == (IData)(vlTOPp->io_ex_Write_CSR))
                                                                        ? vlTOPp->CSR__DOT__s_val
                                                                        : 
                                                                       ((4U 
                                                                         == (IData)(vlTOPp->io_ex_Write_CSR))
                                                                         ? vlTOPp->CSR__DOT__si_val
                                                                         : 
                                                                        ((5U 
                                                                          == (IData)(vlTOPp->io_ex_Write_CSR))
                                                                          ? vlTOPp->CSR__DOT__c_val
                                                                          : 
                                                                         ((6U 
                                                                           == (IData)(vlTOPp->io_ex_Write_CSR))
                                                                           ? vlTOPp->CSR__DOT__ci_val
                                                                           : 0U))))));
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
        }
    }
    if (vlTOPp->reset) {
        vlTOPp->CSR__DOT__mtimecmp = 0U;
    } else {
        if ((1U & (~ (IData)(vlTOPp->CSR__DOT___T_95)))) {
            if ((7U != (IData)(vlTOPp->io_ex_Write_CSR))) {
                if (vlTOPp->CSR__DOT__is_CSR_Instruction) {
                    if ((0x300U != (0xfffU & (vlTOPp->io_ex_inst 
                                              >> 0x14U)))) {
                        if ((0x341U != (0xfffU & (vlTOPp->io_ex_inst 
                                                  >> 0x14U)))) {
                            if ((0x342U != (0xfffU 
                                            & (vlTOPp->io_ex_inst 
                                               >> 0x14U)))) {
                                if ((0x344U != (0xfffU 
                                                & (vlTOPp->io_ex_inst 
                                                   >> 0x14U)))) {
                                    if ((0x304U != 
                                         (0xfffU & 
                                          (vlTOPp->io_ex_inst 
                                           >> 0x14U)))) {
                                        if ((0xb00U 
                                             != (0xfffU 
                                                 & (vlTOPp->io_ex_inst 
                                                    >> 0x14U)))) {
                                            if ((0xb80U 
                                                 != 
                                                 (0xfffU 
                                                  & (vlTOPp->io_ex_inst 
                                                     >> 0x14U)))) {
                                                if (
                                                    (0xb02U 
                                                     != 
                                                     (0xfffU 
                                                      & (vlTOPp->io_ex_inst 
                                                         >> 0x14U)))) {
                                                    if (
                                                        (0xb82U 
                                                         != 
                                                         (0xfffU 
                                                          & (vlTOPp->io_ex_inst 
                                                             >> 0x14U)))) {
                                                        if (
                                                            (0x702U 
                                                             == 
                                                             (0xfffU 
                                                              & (vlTOPp->io_ex_inst 
                                                                 >> 0x14U)))) {
                                                            vlTOPp->CSR__DOT__mtimecmp 
                                                                = 
                                                                ((1U 
                                                                  == (IData)(vlTOPp->io_ex_Write_CSR))
                                                                  ? vlTOPp->io_csr_data_in
                                                                  : 
                                                                 ((2U 
                                                                   == (IData)(vlTOPp->io_ex_Write_CSR))
                                                                   ? 
                                                                  (0x1fU 
                                                                   & (vlTOPp->io_ex_inst 
                                                                      >> 0xfU))
                                                                   : 
                                                                  ((3U 
                                                                    == (IData)(vlTOPp->io_ex_Write_CSR))
                                                                    ? vlTOPp->CSR__DOT__s_val
                                                                    : 
                                                                   ((4U 
                                                                     == (IData)(vlTOPp->io_ex_Write_CSR))
                                                                     ? vlTOPp->CSR__DOT__si_val
                                                                     : 
                                                                    ((5U 
                                                                      == (IData)(vlTOPp->io_ex_Write_CSR))
                                                                      ? vlTOPp->CSR__DOT__c_val
                                                                      : 
                                                                     ((6U 
                                                                       == (IData)(vlTOPp->io_ex_Write_CSR))
                                                                       ? vlTOPp->CSR__DOT__ci_val
                                                                       : 0U))))));
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
    }
    if (vlTOPp->reset) {
        vlTOPp->CSR__DOT__mcause = 0U;
    } else {
        if (vlTOPp->CSR__DOT___T_95) {
            if (vlTOPp->CSR__DOT__InstructionAddressMisaligned_con) {
                vlTOPp->CSR__DOT__mcause = 0U;
            } else {
                if (vlTOPp->io_ex_is_Illegal) {
                    vlTOPp->CSR__DOT__mcause = 2U;
                } else {
                    if (vlTOPp->CSR__DOT__LoadAddressMisaligned_con) {
                        vlTOPp->CSR__DOT__mcause = 4U;
                    } else {
                        if (vlTOPp->CSR__DOT__StoreAddressMisaligned_con) {
                            vlTOPp->CSR__DOT__mcause = 6U;
                        } else {
                            if (vlTOPp->CSR__DOT__is_a_interrupt) {
                                vlTOPp->CSR__DOT__mcause = 7U;
                            }
                        }
                    }
                }
            }
        } else {
            if ((7U != (IData)(vlTOPp->io_ex_Write_CSR))) {
                if (vlTOPp->CSR__DOT__is_CSR_Instruction) {
                    if ((0x300U != (0xfffU & (vlTOPp->io_ex_inst 
                                              >> 0x14U)))) {
                        if ((0x341U != (0xfffU & (vlTOPp->io_ex_inst 
                                                  >> 0x14U)))) {
                            if ((0x342U == (0xfffU 
                                            & (vlTOPp->io_ex_inst 
                                               >> 0x14U)))) {
                                vlTOPp->CSR__DOT__mcause 
                                    = ((1U == (IData)(vlTOPp->io_ex_Write_CSR))
                                        ? vlTOPp->io_csr_data_in
                                        : ((2U == (IData)(vlTOPp->io_ex_Write_CSR))
                                            ? (0x1fU 
                                               & (vlTOPp->io_ex_inst 
                                                  >> 0xfU))
                                            : ((3U 
                                                == (IData)(vlTOPp->io_ex_Write_CSR))
                                                ? vlTOPp->CSR__DOT__s_val
                                                : (
                                                   (4U 
                                                    == (IData)(vlTOPp->io_ex_Write_CSR))
                                                    ? vlTOPp->CSR__DOT__si_val
                                                    : 
                                                   ((5U 
                                                     == (IData)(vlTOPp->io_ex_Write_CSR))
                                                     ? vlTOPp->CSR__DOT__c_val
                                                     : 
                                                    ((6U 
                                                      == (IData)(vlTOPp->io_ex_Write_CSR))
                                                      ? vlTOPp->CSR__DOT__ci_val
                                                      : 0U))))));
                            }
                        }
                    }
                }
            }
        }
    }
    vlTOPp->io_mepc_out = vlTOPp->CSR__DOT__mepc;
    vlTOPp->CSR__DOT___T_57 = ((0xffffffffU == vlTOPp->CSR__DOT__mcycle) 
                               & (0xffffffffU == vlTOPp->CSR__DOT__mcycleh));
    vlTOPp->CSR__DOT___T_89 = ((0xffffffffU == vlTOPp->CSR__DOT__minstret) 
                               & (0xffffffffU == vlTOPp->CSR__DOT__minstreth));
    vlTOPp->CSR__DOT___T_61 = (((QData)((IData)(vlTOPp->CSR__DOT__mtimeh)) 
                                << 0x20U) | (QData)((IData)(vlTOPp->CSR__DOT__mtime)));
    vlTOPp->CSR__DOT___T_62 = (((QData)((IData)(vlTOPp->CSR__DOT__mtimecmph)) 
                                << 0x20U) | (QData)((IData)(vlTOPp->CSR__DOT__mtimecmp)));
    vlTOPp->CSR__DOT___GEN_2 = ((IData)(vlTOPp->CSR__DOT___T_57)
                                 ? VL_ULL(0) : ((0xffffffffU 
                                                 == vlTOPp->CSR__DOT__mcycle)
                                                 ? VL_ULL(0)
                                                 : 
                                                (VL_ULL(0x1ffffffff) 
                                                 & (VL_ULL(1) 
                                                    + (QData)((IData)(vlTOPp->CSR__DOT__mcycle))))));
    vlTOPp->CSR__DOT___GEN_3 = ((IData)(vlTOPp->CSR__DOT___T_57)
                                 ? VL_ULL(0) : (VL_ULL(0x1ffffffff) 
                                                & ((0xffffffffU 
                                                    == vlTOPp->CSR__DOT__mcycle)
                                                    ? 
                                                   (VL_ULL(1) 
                                                    + (QData)((IData)(vlTOPp->CSR__DOT__mcycleh)))
                                                    : (QData)((IData)(vlTOPp->CSR__DOT__mcycleh)))));
    vlTOPp->CSR__DOT__is_a_interrupt = ((VL_ULL(0) 
                                         != vlTOPp->CSR__DOT___T_62) 
                                        & (vlTOPp->CSR__DOT___T_61 
                                           > vlTOPp->CSR__DOT___T_62));
}

VL_INLINE_OPT void VCSR::_combo__TOP__5(VCSR__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VCSR::_combo__TOP__5\n"); );
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->CSR__DOT__is_CSR_Instruction = ((((((1U 
                                                 == (IData)(vlTOPp->io_ex_Write_CSR)) 
                                                | (3U 
                                                   == (IData)(vlTOPp->io_ex_Write_CSR))) 
                                               | (5U 
                                                  == (IData)(vlTOPp->io_ex_Write_CSR))) 
                                              | (2U 
                                                 == (IData)(vlTOPp->io_ex_Write_CSR))) 
                                             | (4U 
                                                == (IData)(vlTOPp->io_ex_Write_CSR))) 
                                            | (6U == (IData)(vlTOPp->io_ex_Write_CSR)));
    vlTOPp->CSR__DOT__InstructionAddressMisaligned_con 
        = ((0U != (3U & vlTOPp->io_ex_branch_addr)) 
           & (IData)(vlTOPp->io_ex_Branch));
    vlTOPp->CSR__DOT__LoadAddressMisaligned_con = (
                                                   (0U 
                                                    != 
                                                    (3U 
                                                     & vlTOPp->io_ex_addr)) 
                                                   & (IData)(vlTOPp->io_ex_Mem_Read));
    vlTOPp->CSR__DOT__StoreAddressMisaligned_con = 
        ((0U != (3U & vlTOPp->io_ex_addr)) & (IData)(vlTOPp->io_ex_Mem_Write));
    vlTOPp->CSR__DOT___T_24 = ((0x304U == (0xfffU & 
                                           (vlTOPp->io_ex_inst 
                                            >> 0x14U)))
                                ? (((IData)(vlTOPp->CSR__DOT__MEIE) 
                                    << 0xbU) | (((IData)(vlTOPp->CSR__DOT__MTIE) 
                                                 << 7U) 
                                                | ((IData)(vlTOPp->CSR__DOT__MSIE) 
                                                   << 3U)))
                                : ((0x344U == (0xfffU 
                                               & (vlTOPp->io_ex_inst 
                                                  >> 0x14U)))
                                    ? (((IData)(vlTOPp->CSR__DOT__MEIP) 
                                        << 0xbU) | 
                                       (((IData)(vlTOPp->CSR__DOT__MTIP) 
                                         << 7U) | ((IData)(vlTOPp->CSR__DOT__MSIP) 
                                                   << 3U)))
                                    : ((0x342U == (0xfffU 
                                                   & (vlTOPp->io_ex_inst 
                                                      >> 0x14U)))
                                        ? vlTOPp->CSR__DOT__mcause
                                        : ((0xb00U 
                                            == (0xfffU 
                                                & (vlTOPp->io_ex_inst 
                                                   >> 0x14U)))
                                            ? vlTOPp->CSR__DOT__mcycle
                                            : ((0xb80U 
                                                == 
                                                (0xfffU 
                                                 & (vlTOPp->io_ex_inst 
                                                    >> 0x14U)))
                                                ? vlTOPp->CSR__DOT__mcycleh
                                                : (
                                                   (0x700U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? vlTOPp->CSR__DOT__mtime
                                                    : 
                                                   ((0x701U 
                                                     == 
                                                     (0xfffU 
                                                      & (vlTOPp->io_ex_inst 
                                                         >> 0x14U)))
                                                     ? vlTOPp->CSR__DOT__mtimeh
                                                     : 
                                                    ((0xb02U 
                                                      == 
                                                      (0xfffU 
                                                       & (vlTOPp->io_ex_inst 
                                                          >> 0x14U)))
                                                      ? vlTOPp->CSR__DOT__minstret
                                                      : 
                                                     ((0xb82U 
                                                       == 
                                                       (0xfffU 
                                                        & (vlTOPp->io_ex_inst 
                                                           >> 0x14U)))
                                                       ? vlTOPp->CSR__DOT__minstreth
                                                       : 
                                                      ((0x702U 
                                                        == 
                                                        (0xfffU 
                                                         & (vlTOPp->io_ex_inst 
                                                            >> 0x14U)))
                                                        ? vlTOPp->CSR__DOT__mtimecmp
                                                        : 
                                                       ((0x703U 
                                                         == 
                                                         (0xfffU 
                                                          & (vlTOPp->io_ex_inst 
                                                             >> 0x14U)))
                                                         ? vlTOPp->CSR__DOT__mtimecmph
                                                         : 0U)))))))))));
    vlTOPp->CSR__DOT___GEN_12 = (VL_ULL(0x1ffffffff) 
                                 & ((IData)(vlTOPp->CSR__DOT___T_88)
                                     ? ((IData)(vlTOPp->CSR__DOT___T_89)
                                         ? VL_ULL(0)
                                         : ((0xffffffffU 
                                             == vlTOPp->CSR__DOT__minstret)
                                             ? VL_ULL(0)
                                             : (VL_ULL(1) 
                                                + (QData)((IData)(vlTOPp->CSR__DOT__minstret)))))
                                     : (QData)((IData)(vlTOPp->CSR__DOT__minstret))));
    vlTOPp->CSR__DOT___GEN_13 = (VL_ULL(0x1ffffffff) 
                                 & ((IData)(vlTOPp->CSR__DOT___T_88)
                                     ? ((IData)(vlTOPp->CSR__DOT___T_89)
                                         ? VL_ULL(0)
                                         : ((0xffffffffU 
                                             == vlTOPp->CSR__DOT__minstret)
                                             ? (VL_ULL(1) 
                                                + (QData)((IData)(vlTOPp->CSR__DOT__minstreth)))
                                             : (QData)((IData)(vlTOPp->CSR__DOT__minstreth))))
                                     : (QData)((IData)(vlTOPp->CSR__DOT__minstreth))));
    vlTOPp->CSR__DOT__is_a_exception = ((((IData)(vlTOPp->CSR__DOT__InstructionAddressMisaligned_con) 
                                          | (IData)(vlTOPp->io_ex_is_Illegal)) 
                                         | (IData)(vlTOPp->CSR__DOT__LoadAddressMisaligned_con)) 
                                        | (IData)(vlTOPp->CSR__DOT__StoreAddressMisaligned_con));
    vlTOPp->io_csr_data_out = ((0x300U == (0xfffU & 
                                           (vlTOPp->io_ex_inst 
                                            >> 0x14U)))
                                ? (((IData)(vlTOPp->CSR__DOT__MPP) 
                                    << 0xbU) | (((IData)(vlTOPp->CSR__DOT__MPIE) 
                                                 << 7U) 
                                                | ((IData)(vlTOPp->CSR__DOT__MIE) 
                                                   << 3U)))
                                : ((0x341U == (0xfffU 
                                               & (vlTOPp->io_ex_inst 
                                                  >> 0x14U)))
                                    ? vlTOPp->CSR__DOT__mepc
                                    : ((0x305U == (0xfffU 
                                                   & (vlTOPp->io_ex_inst 
                                                      >> 0x14U)))
                                        ? 0xa4U : (
                                                   (0x343U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? vlTOPp->CSR__DOT__mtval
                                                    : vlTOPp->CSR__DOT___T_24))));
    vlTOPp->CSR__DOT__enable_exception = (((IData)(vlTOPp->CSR__DOT__MIE) 
                                           & ((IData)(vlTOPp->CSR__DOT__is_a_exception) 
                                              | ((IData)(vlTOPp->CSR__DOT__is_a_interrupt) 
                                                 & (IData)(vlTOPp->CSR__DOT__MTIE)))) 
                                          & (~ (IData)(vlTOPp->io_is_Waiting_Resolved)));
    vlTOPp->CSR__DOT__s_val = (vlTOPp->io_csr_data_out 
                               | vlTOPp->io_csr_data_in);
    vlTOPp->CSR__DOT__si_val = (vlTOPp->io_csr_data_out 
                                | (0x1fU & (vlTOPp->io_ex_inst 
                                            >> 0xfU)));
    vlTOPp->CSR__DOT__c_val = (vlTOPp->io_csr_data_out 
                               & (~ vlTOPp->io_csr_data_in));
    vlTOPp->CSR__DOT__ci_val = (vlTOPp->io_csr_data_out 
                                & (~ (0x1fU & (vlTOPp->io_ex_inst 
                                               >> 0xfU))));
    vlTOPp->CSR__DOT___T_83 = (((0xffffffffU == vlTOPp->CSR__DOT__mtime) 
                                & (0xffffffffU == vlTOPp->CSR__DOT__mtimeh)) 
                               | (vlTOPp->CSR__DOT___T_61 
                                  > (vlTOPp->CSR__DOT___T_62 
                                     & (QData)((IData)(vlTOPp->CSR__DOT__enable_exception)))));
    vlTOPp->CSR__DOT___T_95 = (((IData)(vlTOPp->CSR__DOT__is_a_exception) 
                                | (IData)(vlTOPp->CSR__DOT__is_a_interrupt)) 
                               & (IData)(vlTOPp->CSR__DOT__enable_exception));
    vlTOPp->CSR__DOT__csr_write_data = ((1U == (IData)(vlTOPp->io_ex_Write_CSR))
                                         ? vlTOPp->io_csr_data_in
                                         : ((2U == (IData)(vlTOPp->io_ex_Write_CSR))
                                             ? (0x1fU 
                                                & (vlTOPp->io_ex_inst 
                                                   >> 0xfU))
                                             : ((3U 
                                                 == (IData)(vlTOPp->io_ex_Write_CSR))
                                                 ? vlTOPp->CSR__DOT__s_val
                                                 : 
                                                ((4U 
                                                  == (IData)(vlTOPp->io_ex_Write_CSR))
                                                  ? vlTOPp->CSR__DOT__si_val
                                                  : 
                                                 ((5U 
                                                   == (IData)(vlTOPp->io_ex_Write_CSR))
                                                   ? vlTOPp->CSR__DOT__c_val
                                                   : 
                                                  ((6U 
                                                    == (IData)(vlTOPp->io_ex_Write_CSR))
                                                    ? vlTOPp->CSR__DOT__ci_val
                                                    : 0U))))));
    vlTOPp->CSR__DOT___GEN_6 = ((IData)(vlTOPp->CSR__DOT___T_83)
                                 ? VL_ULL(0) : ((0xffffffffU 
                                                 == vlTOPp->CSR__DOT__mtime)
                                                 ? VL_ULL(0)
                                                 : 
                                                (VL_ULL(0x1ffffffff) 
                                                 & (VL_ULL(1) 
                                                    + (QData)((IData)(vlTOPp->CSR__DOT__mtime))))));
    vlTOPp->CSR__DOT___GEN_7 = ((IData)(vlTOPp->CSR__DOT___T_83)
                                 ? VL_ULL(0) : (VL_ULL(0x1ffffffff) 
                                                & ((0xffffffffU 
                                                    == vlTOPp->CSR__DOT__mtime)
                                                    ? 
                                                   (VL_ULL(1) 
                                                    + (QData)((IData)(vlTOPp->CSR__DOT__mtimeh)))
                                                    : (QData)((IData)(vlTOPp->CSR__DOT__mtimeh)))));
    vlTOPp->io_IF_ID_Flush = ((IData)(vlTOPp->CSR__DOT___T_95) 
                              | (7U == (IData)(vlTOPp->io_ex_Write_CSR)));
    vlTOPp->io_ID_EX_Flush = ((IData)(vlTOPp->CSR__DOT___T_95) 
                              | (7U == (IData)(vlTOPp->io_ex_Write_CSR)));
    vlTOPp->io_is_Exception = ((IData)(vlTOPp->CSR__DOT___T_95)
                                ? 2U : ((7U == (IData)(vlTOPp->io_ex_Write_CSR))
                                         ? 1U : 0U));
    vlTOPp->io_Exception_Flush = ((IData)(vlTOPp->CSR__DOT___T_95) 
                                  & (IData)(vlTOPp->CSR__DOT__is_a_exception));
    vlTOPp->CSR__DOT___GEN_151 = (1U & ((IData)(vlTOPp->CSR__DOT___T_95)
                                         ? (IData)(vlTOPp->CSR__DOT__MSIE)
                                         : ((7U == (IData)(vlTOPp->io_ex_Write_CSR))
                                             ? (IData)(vlTOPp->CSR__DOT__MSIE)
                                             : ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                 ? 
                                                ((0x300U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlTOPp->io_ex_inst 
                                                      >> 0x14U)))
                                                  ? (IData)(vlTOPp->CSR__DOT__MSIE)
                                                  : 
                                                 ((0x341U 
                                                   == 
                                                   (0xfffU 
                                                    & (vlTOPp->io_ex_inst 
                                                       >> 0x14U)))
                                                   ? (IData)(vlTOPp->CSR__DOT__MSIE)
                                                   : 
                                                  ((0x342U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? (IData)(vlTOPp->CSR__DOT__MSIE)
                                                    : 
                                                   ((0x344U 
                                                     == 
                                                     (0xfffU 
                                                      & (vlTOPp->io_ex_inst 
                                                         >> 0x14U)))
                                                     ? (IData)(vlTOPp->CSR__DOT__MSIE)
                                                     : 
                                                    ((0x304U 
                                                      == 
                                                      (0xfffU 
                                                       & (vlTOPp->io_ex_inst 
                                                          >> 0x14U)))
                                                      ? 
                                                     (vlTOPp->CSR__DOT__csr_write_data 
                                                      >> 3U)
                                                      : (IData)(vlTOPp->CSR__DOT__MSIE))))))
                                                 : (IData)(vlTOPp->CSR__DOT__MSIE)))));
    vlTOPp->CSR__DOT___GEN_152 = (1U & ((IData)(vlTOPp->CSR__DOT___T_95)
                                         ? (IData)(vlTOPp->CSR__DOT__MTIE)
                                         : ((7U == (IData)(vlTOPp->io_ex_Write_CSR))
                                             ? (IData)(vlTOPp->CSR__DOT__MTIE)
                                             : ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                 ? 
                                                ((0x300U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlTOPp->io_ex_inst 
                                                      >> 0x14U)))
                                                  ? (IData)(vlTOPp->CSR__DOT__MTIE)
                                                  : 
                                                 ((0x341U 
                                                   == 
                                                   (0xfffU 
                                                    & (vlTOPp->io_ex_inst 
                                                       >> 0x14U)))
                                                   ? (IData)(vlTOPp->CSR__DOT__MTIE)
                                                   : 
                                                  ((0x342U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? (IData)(vlTOPp->CSR__DOT__MTIE)
                                                    : 
                                                   ((0x344U 
                                                     == 
                                                     (0xfffU 
                                                      & (vlTOPp->io_ex_inst 
                                                         >> 0x14U)))
                                                     ? (IData)(vlTOPp->CSR__DOT__MTIE)
                                                     : 
                                                    ((0x304U 
                                                      == 
                                                      (0xfffU 
                                                       & (vlTOPp->io_ex_inst 
                                                          >> 0x14U)))
                                                      ? 
                                                     (vlTOPp->CSR__DOT__csr_write_data 
                                                      >> 7U)
                                                      : (IData)(vlTOPp->CSR__DOT__MTIE))))))
                                                 : (IData)(vlTOPp->CSR__DOT__MTIE)))));
    vlTOPp->CSR__DOT___GEN_153 = (1U & ((IData)(vlTOPp->CSR__DOT___T_95)
                                         ? (IData)(vlTOPp->CSR__DOT__MEIE)
                                         : ((7U == (IData)(vlTOPp->io_ex_Write_CSR))
                                             ? (IData)(vlTOPp->CSR__DOT__MEIE)
                                             : ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                 ? 
                                                ((0x300U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlTOPp->io_ex_inst 
                                                      >> 0x14U)))
                                                  ? (IData)(vlTOPp->CSR__DOT__MEIE)
                                                  : 
                                                 ((0x341U 
                                                   == 
                                                   (0xfffU 
                                                    & (vlTOPp->io_ex_inst 
                                                       >> 0x14U)))
                                                   ? (IData)(vlTOPp->CSR__DOT__MEIE)
                                                   : 
                                                  ((0x342U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? (IData)(vlTOPp->CSR__DOT__MEIE)
                                                    : 
                                                   ((0x344U 
                                                     == 
                                                     (0xfffU 
                                                      & (vlTOPp->io_ex_inst 
                                                         >> 0x14U)))
                                                     ? (IData)(vlTOPp->CSR__DOT__MEIE)
                                                     : 
                                                    ((0x304U 
                                                      == 
                                                      (0xfffU 
                                                       & (vlTOPp->io_ex_inst 
                                                          >> 0x14U)))
                                                      ? 
                                                     (vlTOPp->CSR__DOT__csr_write_data 
                                                      >> 0xbU)
                                                      : (IData)(vlTOPp->CSR__DOT__MEIE))))))
                                                 : (IData)(vlTOPp->CSR__DOT__MEIE)))));
    vlTOPp->CSR__DOT___GEN_145 = (1U & ((IData)(vlTOPp->CSR__DOT___T_95)
                                         ? (IData)(vlTOPp->CSR__DOT__MIE)
                                         : ((7U == (IData)(vlTOPp->io_ex_Write_CSR)) 
                                            | ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                ? (
                                                   (0x300U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? 
                                                   (vlTOPp->CSR__DOT__csr_write_data 
                                                    >> 7U)
                                                    : (IData)(vlTOPp->CSR__DOT__MPIE))
                                                : (IData)(vlTOPp->CSR__DOT__MPIE)))));
    vlTOPp->CSR__DOT___GEN_147 = (1U & ((~ (IData)(vlTOPp->CSR__DOT___T_95)) 
                                        & ((7U == (IData)(vlTOPp->io_ex_Write_CSR))
                                            ? (IData)(vlTOPp->CSR__DOT__MPIE)
                                            : ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                ? (
                                                   (0x300U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->io_ex_inst 
                                                        >> 0x14U)))
                                                    ? 
                                                   (vlTOPp->CSR__DOT__csr_write_data 
                                                    >> 3U)
                                                    : (IData)(vlTOPp->CSR__DOT__MIE))
                                                : (IData)(vlTOPp->CSR__DOT__MIE)))));
    vlTOPp->CSR__DOT___GEN_142 = (VL_ULL(0x1ffffffff) 
                                  & ((IData)(vlTOPp->CSR__DOT___T_95)
                                      ? ((IData)(vlTOPp->CSR__DOT__is_a_exception)
                                          ? ((QData)((IData)(vlTOPp->io_ex_pc_4)) 
                                             - VL_ULL(4))
                                          : (QData)((IData)(vlTOPp->io_ex_pc_4)))
                                      : (QData)((IData)(
                                                        ((7U 
                                                          == (IData)(vlTOPp->io_ex_Write_CSR))
                                                          ? vlTOPp->CSR__DOT__mepc
                                                          : 
                                                         ((IData)(vlTOPp->CSR__DOT__is_CSR_Instruction)
                                                           ? 
                                                          ((0x300U 
                                                            == 
                                                            (0xfffU 
                                                             & (vlTOPp->io_ex_inst 
                                                                >> 0x14U)))
                                                            ? vlTOPp->CSR__DOT__mepc
                                                            : 
                                                           ((0x341U 
                                                             == 
                                                             (0xfffU 
                                                              & (vlTOPp->io_ex_inst 
                                                                 >> 0x14U)))
                                                             ? vlTOPp->CSR__DOT__csr_write_data
                                                             : vlTOPp->CSR__DOT__mepc))
                                                           : vlTOPp->CSR__DOT__mepc))))));
}

void VCSR::_eval(VCSR__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VCSR::_eval\n"); );
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__2(vlSymsp);
    vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
    if (((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock)))) {
        vlTOPp->_sequent__TOP__4(vlSymsp);
        vlTOPp->__Vm_traceActivity = (4U | vlTOPp->__Vm_traceActivity);
    }
    vlTOPp->_combo__TOP__5(vlSymsp);
    // Final
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void VCSR::_eval_initial(VCSR__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VCSR::_eval_initial\n"); );
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_initial__TOP__1(vlSymsp);
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void VCSR::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VCSR::final\n"); );
    // Variables
    VCSR__Syms* __restrict vlSymsp = this->__VlSymsp;
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VCSR::_eval_settle(VCSR__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VCSR::_eval_settle\n"); );
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__3(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
}

VL_INLINE_OPT QData VCSR::_change_request(VCSR__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VCSR::_change_request\n"); );
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VCSR::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VCSR::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((io_ex_Mem_Read & 0xfeU))) {
        Verilated::overWidthError("io_ex_Mem_Read");}
    if (VL_UNLIKELY((io_ex_Mem_Write & 0xfeU))) {
        Verilated::overWidthError("io_ex_Mem_Write");}
    if (VL_UNLIKELY((io_ex_Write_CSR & 0xf8U))) {
        Verilated::overWidthError("io_ex_Write_CSR");}
    if (VL_UNLIKELY((io_ex_is_Illegal & 0xfeU))) {
        Verilated::overWidthError("io_ex_is_Illegal");}
    if (VL_UNLIKELY((io_ex_Branch & 0xfeU))) {
        Verilated::overWidthError("io_ex_Branch");}
    if (VL_UNLIKELY((io_PC_Sel & 0xfcU))) {
        Verilated::overWidthError("io_PC_Sel");}
    if (VL_UNLIKELY((io_Bubble & 0xfeU))) {
        Verilated::overWidthError("io_Bubble");}
    if (VL_UNLIKELY((io_is_Waiting_Resolved & 0xfeU))) {
        Verilated::overWidthError("io_is_Waiting_Resolved");}
}
#endif  // VL_DEBUG

void VCSR::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VCSR::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_ex_Mem_Read = VL_RAND_RESET_I(1);
    io_ex_Mem_Write = VL_RAND_RESET_I(1);
    io_ex_branch_addr = VL_RAND_RESET_I(32);
    io_ex_addr = VL_RAND_RESET_I(32);
    io_ex_inst = VL_RAND_RESET_I(32);
    io_csr_data_in = VL_RAND_RESET_I(32);
    io_ex_pc_4 = VL_RAND_RESET_I(32);
    io_ex_Write_CSR = VL_RAND_RESET_I(3);
    io_ex_is_Illegal = VL_RAND_RESET_I(1);
    io_ex_Branch = VL_RAND_RESET_I(1);
    io_PC_Sel = VL_RAND_RESET_I(2);
    io_new_addr = VL_RAND_RESET_I(32);
    io_pc_recover = VL_RAND_RESET_I(32);
    io_Bubble = VL_RAND_RESET_I(1);
    io_if_inst = VL_RAND_RESET_I(32);
    io_is_Waiting_Resolved = VL_RAND_RESET_I(1);
    io_mepc_out = VL_RAND_RESET_I(32);
    io_mtvec_out = VL_RAND_RESET_I(32);
    io_csr_data_out = VL_RAND_RESET_I(32);
    io_IF_ID_Flush = VL_RAND_RESET_I(1);
    io_ID_EX_Flush = VL_RAND_RESET_I(1);
    io_is_Exception = VL_RAND_RESET_I(2);
    io_Exception_Flush = VL_RAND_RESET_I(1);
    CSR__DOT__is_CSR_Instruction = VL_RAND_RESET_I(1);
    CSR__DOT__MPP = VL_RAND_RESET_I(2);
    CSR__DOT__MPIE = VL_RAND_RESET_I(1);
    CSR__DOT__MIE = VL_RAND_RESET_I(1);
    CSR__DOT__mepc = VL_RAND_RESET_I(32);
    CSR__DOT__mtval = VL_RAND_RESET_I(32);
    CSR__DOT__MEIE = VL_RAND_RESET_I(1);
    CSR__DOT__MTIE = VL_RAND_RESET_I(1);
    CSR__DOT__MSIE = VL_RAND_RESET_I(1);
    CSR__DOT__MEIP = VL_RAND_RESET_I(1);
    CSR__DOT__MTIP = VL_RAND_RESET_I(1);
    CSR__DOT__MSIP = VL_RAND_RESET_I(1);
    CSR__DOT__mcause = VL_RAND_RESET_I(32);
    CSR__DOT__mcycle = VL_RAND_RESET_I(32);
    CSR__DOT__mcycleh = VL_RAND_RESET_I(32);
    CSR__DOT__mtime = VL_RAND_RESET_I(32);
    CSR__DOT__mtimeh = VL_RAND_RESET_I(32);
    CSR__DOT__minstret = VL_RAND_RESET_I(32);
    CSR__DOT__minstreth = VL_RAND_RESET_I(32);
    CSR__DOT__mtimecmp = VL_RAND_RESET_I(32);
    CSR__DOT__mtimecmph = VL_RAND_RESET_I(32);
    CSR__DOT___T_24 = VL_RAND_RESET_I(32);
    CSR__DOT___T_57 = VL_RAND_RESET_I(1);
    CSR__DOT___GEN_2 = VL_RAND_RESET_Q(33);
    CSR__DOT___GEN_3 = VL_RAND_RESET_Q(33);
    CSR__DOT___T_61 = VL_RAND_RESET_Q(64);
    CSR__DOT___T_62 = VL_RAND_RESET_Q(64);
    CSR__DOT__InstructionAddressMisaligned_con = VL_RAND_RESET_I(1);
    CSR__DOT__LoadAddressMisaligned_con = VL_RAND_RESET_I(1);
    CSR__DOT__StoreAddressMisaligned_con = VL_RAND_RESET_I(1);
    CSR__DOT__is_a_exception = VL_RAND_RESET_I(1);
    CSR__DOT__is_a_interrupt = VL_RAND_RESET_I(1);
    CSR__DOT__enable_exception = VL_RAND_RESET_I(1);
    CSR__DOT___T_83 = VL_RAND_RESET_I(1);
    CSR__DOT___GEN_6 = VL_RAND_RESET_Q(33);
    CSR__DOT___GEN_7 = VL_RAND_RESET_Q(33);
    CSR__DOT___T_88 = VL_RAND_RESET_I(1);
    CSR__DOT___T_89 = VL_RAND_RESET_I(1);
    CSR__DOT___GEN_12 = VL_RAND_RESET_Q(33);
    CSR__DOT___GEN_13 = VL_RAND_RESET_Q(33);
    CSR__DOT___T_95 = VL_RAND_RESET_I(1);
    CSR__DOT__s_val = VL_RAND_RESET_I(32);
    CSR__DOT__si_val = VL_RAND_RESET_I(32);
    CSR__DOT__c_val = VL_RAND_RESET_I(32);
    CSR__DOT__ci_val = VL_RAND_RESET_I(32);
    CSR__DOT__csr_write_data = VL_RAND_RESET_I(32);
    CSR__DOT___GEN_142 = VL_RAND_RESET_Q(33);
    CSR__DOT___GEN_145 = VL_RAND_RESET_I(1);
    CSR__DOT___GEN_147 = VL_RAND_RESET_I(1);
    CSR__DOT___GEN_151 = VL_RAND_RESET_I(1);
    CSR__DOT___GEN_152 = VL_RAND_RESET_I(1);
    CSR__DOT___GEN_153 = VL_RAND_RESET_I(1);
    __Vm_traceActivity = 0;
}
