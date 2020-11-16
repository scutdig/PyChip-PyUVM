// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VCSR__Syms.h"


//======================

void VCSR::traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VCSR* t = (VCSR*)userthis;
    VCSR__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (vlSymsp->getClearActivity()) {
        t->traceChgThis(vlSymsp, vcdp, code);
    }
}

//======================


void VCSR::traceChgThis(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    if (false && vcdp) {}  // Prevent unused
    // Body
    {
        if (VL_UNLIKELY((1U & (vlTOPp->__Vm_traceActivity 
                               | (vlTOPp->__Vm_traceActivity 
                                  >> 1U))))) {
            vlTOPp->traceChgThis__2(vlSymsp, vcdp, code);
        }
        if (VL_UNLIKELY((1U & ((vlTOPp->__Vm_traceActivity 
                                | (vlTOPp->__Vm_traceActivity 
                                   >> 1U)) | (vlTOPp->__Vm_traceActivity 
                                              >> 2U))))) {
            vlTOPp->traceChgThis__3(vlSymsp, vcdp, code);
        }
        if (VL_UNLIKELY((1U & (vlTOPp->__Vm_traceActivity 
                               | (vlTOPp->__Vm_traceActivity 
                                  >> 2U))))) {
            vlTOPp->traceChgThis__4(vlSymsp, vcdp, code);
        }
        if (VL_UNLIKELY((4U & vlTOPp->__Vm_traceActivity))) {
            vlTOPp->traceChgThis__5(vlSymsp, vcdp, code);
        }
        vlTOPp->traceChgThis__6(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VCSR::traceChgThis__2(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+1);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(oldp+0,(vlTOPp->CSR__DOT__is_CSR_Instruction));
        vcdp->chgBit(oldp+1,(vlTOPp->CSR__DOT__InstructionAddressMisaligned_con));
        vcdp->chgBit(oldp+2,(vlTOPp->CSR__DOT__LoadAddressMisaligned_con));
        vcdp->chgBit(oldp+3,(vlTOPp->CSR__DOT__StoreAddressMisaligned_con));
        vcdp->chgBit(oldp+4,(vlTOPp->CSR__DOT__is_a_exception));
        vcdp->chgBit(oldp+5,(vlTOPp->CSR__DOT__enable_exception));
        vcdp->chgIData(oldp+6,(vlTOPp->CSR__DOT__s_val),32);
        vcdp->chgIData(oldp+7,(vlTOPp->CSR__DOT__si_val),32);
        vcdp->chgIData(oldp+8,(vlTOPp->CSR__DOT__c_val),32);
        vcdp->chgIData(oldp+9,(vlTOPp->CSR__DOT__ci_val),32);
        vcdp->chgIData(oldp+10,(vlTOPp->CSR__DOT__csr_write_data),32);
    }
}

void VCSR::traceChgThis__3(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+12);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(oldp+0,(((IData)(vlTOPp->CSR__DOT__is_a_exception) 
                              | (IData)(vlTOPp->CSR__DOT__is_a_interrupt))));
    }
}

void VCSR::traceChgThis__4(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+13);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgQData(oldp+0,(vlTOPp->CSR__DOT___T_61),64);
        vcdp->chgQData(oldp+2,(vlTOPp->CSR__DOT___T_62),64);
        vcdp->chgBit(oldp+4,(vlTOPp->CSR__DOT__is_a_interrupt));
    }
}

void VCSR::traceChgThis__5(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+18);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgCData(oldp+0,(vlTOPp->CSR__DOT__MPP),2);
        vcdp->chgBit(oldp+1,(vlTOPp->CSR__DOT__MPIE));
        vcdp->chgBit(oldp+2,(vlTOPp->CSR__DOT__MIE));
        vcdp->chgIData(oldp+3,((((IData)(vlTOPp->CSR__DOT__MPP) 
                                 << 0xbU) | (((IData)(vlTOPp->CSR__DOT__MPIE) 
                                              << 7U) 
                                             | ((IData)(vlTOPp->CSR__DOT__MIE) 
                                                << 3U)))),32);
        vcdp->chgIData(oldp+4,(vlTOPp->CSR__DOT__mepc),32);
        vcdp->chgIData(oldp+5,(vlTOPp->CSR__DOT__mtval),32);
        vcdp->chgBit(oldp+6,(vlTOPp->CSR__DOT__MEIE));
        vcdp->chgBit(oldp+7,(vlTOPp->CSR__DOT__MTIE));
        vcdp->chgBit(oldp+8,(vlTOPp->CSR__DOT__MSIE));
        vcdp->chgIData(oldp+9,((((IData)(vlTOPp->CSR__DOT__MEIE) 
                                 << 0xbU) | (((IData)(vlTOPp->CSR__DOT__MTIE) 
                                              << 7U) 
                                             | ((IData)(vlTOPp->CSR__DOT__MSIE) 
                                                << 3U)))),32);
        vcdp->chgBit(oldp+10,(vlTOPp->CSR__DOT__MEIP));
        vcdp->chgBit(oldp+11,(vlTOPp->CSR__DOT__MTIP));
        vcdp->chgBit(oldp+12,(vlTOPp->CSR__DOT__MSIP));
        vcdp->chgIData(oldp+13,((((IData)(vlTOPp->CSR__DOT__MEIP) 
                                  << 0xbU) | (((IData)(vlTOPp->CSR__DOT__MTIP) 
                                               << 7U) 
                                              | ((IData)(vlTOPp->CSR__DOT__MSIP) 
                                                 << 3U)))),32);
        vcdp->chgIData(oldp+14,(vlTOPp->CSR__DOT__mcause),32);
        vcdp->chgIData(oldp+15,(vlTOPp->CSR__DOT__mcycle),32);
        vcdp->chgIData(oldp+16,(vlTOPp->CSR__DOT__mcycleh),32);
        vcdp->chgIData(oldp+17,(vlTOPp->CSR__DOT__mtime),32);
        vcdp->chgIData(oldp+18,(vlTOPp->CSR__DOT__mtimeh),32);
        vcdp->chgIData(oldp+19,(vlTOPp->CSR__DOT__minstret),32);
        vcdp->chgIData(oldp+20,(vlTOPp->CSR__DOT__minstreth),32);
        vcdp->chgIData(oldp+21,(vlTOPp->CSR__DOT__mtimecmp),32);
        vcdp->chgIData(oldp+22,(vlTOPp->CSR__DOT__mtimecmph),32);
        vcdp->chgBit(oldp+23,((0xffffffffU == vlTOPp->CSR__DOT__mcycle)));
        vcdp->chgBit(oldp+24,((0xffffffffU == vlTOPp->CSR__DOT__mcycleh)));
        vcdp->chgBit(oldp+25,((0xffffffffU == vlTOPp->CSR__DOT__mtime)));
        vcdp->chgBit(oldp+26,((0xffffffffU == vlTOPp->CSR__DOT__mtimeh)));
        vcdp->chgBit(oldp+27,((0xffffffffU == vlTOPp->CSR__DOT__minstret)));
        vcdp->chgBit(oldp+28,((0xffffffffU == vlTOPp->CSR__DOT__minstreth)));
    }
}

void VCSR::traceChgThis__6(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VCSR* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+47);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(oldp+0,(vlTOPp->clock));
        vcdp->chgBit(oldp+1,(vlTOPp->reset));
        vcdp->chgBit(oldp+2,(vlTOPp->io_ex_Mem_Read));
        vcdp->chgBit(oldp+3,(vlTOPp->io_ex_Mem_Write));
        vcdp->chgIData(oldp+4,(vlTOPp->io_ex_branch_addr),32);
        vcdp->chgIData(oldp+5,(vlTOPp->io_ex_addr),32);
        vcdp->chgIData(oldp+6,(vlTOPp->io_ex_inst),32);
        vcdp->chgIData(oldp+7,(vlTOPp->io_csr_data_in),32);
        vcdp->chgIData(oldp+8,(vlTOPp->io_ex_pc_4),32);
        vcdp->chgCData(oldp+9,(vlTOPp->io_ex_Write_CSR),3);
        vcdp->chgBit(oldp+10,(vlTOPp->io_ex_is_Illegal));
        vcdp->chgBit(oldp+11,(vlTOPp->io_ex_Branch));
        vcdp->chgCData(oldp+12,(vlTOPp->io_PC_Sel),2);
        vcdp->chgIData(oldp+13,(vlTOPp->io_new_addr),32);
        vcdp->chgIData(oldp+14,(vlTOPp->io_pc_recover),32);
        vcdp->chgBit(oldp+15,(vlTOPp->io_Bubble));
        vcdp->chgIData(oldp+16,(vlTOPp->io_if_inst),32);
        vcdp->chgBit(oldp+17,(vlTOPp->io_is_Waiting_Resolved));
        vcdp->chgIData(oldp+18,(vlTOPp->io_mepc_out),32);
        vcdp->chgIData(oldp+19,(vlTOPp->io_mtvec_out),32);
        vcdp->chgIData(oldp+20,(vlTOPp->io_csr_data_out),32);
        vcdp->chgBit(oldp+21,(vlTOPp->io_IF_ID_Flush));
        vcdp->chgBit(oldp+22,(vlTOPp->io_ID_EX_Flush));
        vcdp->chgCData(oldp+23,(vlTOPp->io_is_Exception),2);
        vcdp->chgBit(oldp+24,(vlTOPp->io_Exception_Flush));
        vcdp->chgSData(oldp+25,((0xfffU & (vlTOPp->io_ex_inst 
                                           >> 0x14U))),12);
        vcdp->chgQData(oldp+26,((VL_ULL(0x1ffffffff) 
                                 & ((IData)(vlTOPp->CSR__DOT__is_a_exception)
                                     ? ((QData)((IData)(vlTOPp->io_ex_pc_4)) 
                                        - VL_ULL(4))
                                     : (QData)((IData)(vlTOPp->io_ex_pc_4))))),33);
        vcdp->chgIData(oldp+28,((0x1fU & (vlTOPp->io_ex_inst 
                                          >> 0xfU))),32);
    }
}
