// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VAXI_Lite__Syms.h"


//======================

void VAXI_Lite::traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VAXI_Lite* t = (VAXI_Lite*)userthis;
    VAXI_Lite__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (vlSymsp->getClearActivity()) {
        t->traceChgThis(vlSymsp, vcdp, code);
    }
}

//======================


void VAXI_Lite::traceChgThis(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        if (VL_UNLIKELY((1U & (vlTOPp->__Vm_traceActivity 
                               | (vlTOPp->__Vm_traceActivity 
                                  >> 1U))))) {
            vlTOPp->traceChgThis__2(vlSymsp, vcdp, code);
        }
        if (VL_UNLIKELY((2U & vlTOPp->__Vm_traceActivity))) {
            vlTOPp->traceChgThis__3(vlSymsp, vcdp, code);
        }
        vlTOPp->traceChgThis__4(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VAXI_Lite::traceChgThis__2(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(c+1,(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse));
        vcdp->chgBit(c+2,(vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg_wren));
    }
}

void VAXI_Lite::traceChgThis__3(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(c+3,(vlTOPp->AXI_Lite__DOT__master__DOT__error_reg));
        vcdp->chgBit(c+4,(vlTOPp->AXI_Lite__DOT__master__DOT__compare_done));
        vcdp->chgBus(c+5,(((IData)(0x40000000U) + vlTOPp->AXI_Lite__DOT__master__DOT__axi_awaddr)),32);
        vcdp->chgBit(c+6,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid));
        vcdp->chgBit(c+7,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awready));
        vcdp->chgBus(c+8,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wdata),32);
        vcdp->chgBit(c+9,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid));
        vcdp->chgBit(c+10,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_wready));
        vcdp->chgBit(c+11,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid));
        vcdp->chgBit(c+12,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready));
        vcdp->chgBus(c+13,(((IData)(0x40000000U) + vlTOPp->AXI_Lite__DOT__master__DOT__axi_araddr)),32);
        vcdp->chgBit(c+14,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_arvalid));
        vcdp->chgBit(c+15,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_arready));
        vcdp->chgBus(c+16,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rdata),32);
        vcdp->chgBit(c+17,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid));
        vcdp->chgBit(c+18,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready));
        vcdp->chgBus(c+19,(vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state),2);
        vcdp->chgBus(c+20,(vlTOPp->AXI_Lite__DOT__master__DOT__read_index),3);
        vcdp->chgBit(c+21,(vlTOPp->AXI_Lite__DOT__master__DOT__last_read));
        vcdp->chgBit(c+22,(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_read));
        vcdp->chgBit(c+23,(vlTOPp->AXI_Lite__DOT__master__DOT__read_issued));
        vcdp->chgBus(c+24,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awaddr),32);
        vcdp->chgBus(c+25,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_araddr),32);
        vcdp->chgBit(c+26,(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_ff));
        vcdp->chgBit(c+27,(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_ff2));
        vcdp->chgBit(c+28,(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write));
        vcdp->chgBus(c+29,(vlTOPp->AXI_Lite__DOT__master__DOT__write_index),3);
        vcdp->chgBus(c+30,(vlTOPp->AXI_Lite__DOT__master__DOT__expected_rdata),32);
        vcdp->chgBit(c+31,(vlTOPp->AXI_Lite__DOT__master__DOT__last_write));
        vcdp->chgBit(c+32,(vlTOPp->AXI_Lite__DOT__master__DOT__writes_done));
        vcdp->chgBit(c+33,(vlTOPp->AXI_Lite__DOT__master__DOT__reads_done));
        vcdp->chgBit(c+34,(vlTOPp->AXI_Lite__DOT__master__DOT__read_mismatch));
        vcdp->chgBit(c+35,(vlTOPp->AXI_Lite__DOT__master__DOT__write_issued));
        vcdp->chgBit(c+36,(vlTOPp->AXI_Lite__DOT__slave__DOT__aw_en));
        vcdp->chgBus(c+37,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr),32);
        vcdp->chgBus(c+38,(vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg0),32);
        vcdp->chgBus(c+39,(vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg1),32);
        vcdp->chgBus(c+40,(vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg2),32);
        vcdp->chgBus(c+41,(vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg3),32);
        vcdp->chgBus(c+42,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_araddr),32);
    }
}

void VAXI_Lite::traceChgThis__4(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(c+43,(vlTOPp->clock));
        vcdp->chgBit(c+44,(vlTOPp->reset));
        vcdp->chgBit(c+45,(vlTOPp->io_INIT_AXI_TXN));
        vcdp->chgBit(c+46,(vlTOPp->io_TXN_DONE));
        vcdp->chgBit(c+47,(vlTOPp->io_ERROR));
    }
}
