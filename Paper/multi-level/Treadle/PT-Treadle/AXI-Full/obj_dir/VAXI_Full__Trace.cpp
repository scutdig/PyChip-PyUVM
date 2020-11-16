// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VAXI_Full__Syms.h"


//======================

void VAXI_Full::traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VAXI_Full* t = (VAXI_Full*)userthis;
    VAXI_Full__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (vlSymsp->getClearActivity()) {
        t->traceChgThis(vlSymsp, vcdp, code);
    }
}

//======================


void VAXI_Full::traceChgThis(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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

void VAXI_Full::traceChgThis__2(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->chgBus(c+1,(((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid)
                            ? ((1U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__mem_select))
                                ? vlTOPp->AXI_Full__DOT__slave__DOT__mem_data_out_1
                                : vlTOPp->AXI_Full__DOT__slave__DOT__mem_data_out_0)
                            : 0U)),32);
        vcdp->chgBit(c+2,(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse));
        vcdp->chgBit(c+3,(vlTOPp->AXI_Full__DOT__master__DOT__wnext));
        vcdp->chgBit(c+4,(vlTOPp->AXI_Full__DOT__slave__DOT___T_50));
        vcdp->chgBus(c+5,(vlTOPp->AXI_Full__DOT__slave__DOT__mem_select),2);
    }
}

void VAXI_Full::traceChgThis__3(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(c+6,(vlTOPp->AXI_Full__DOT__master__DOT__compare_done));
        vcdp->chgBit(c+7,(vlTOPp->AXI_Full__DOT__master__DOT__error_reg));
        vcdp->chgBus(c+8,(((IData)(0x40000000U) + vlTOPp->AXI_Full__DOT__master__DOT__axi_awaddr)),32);
        vcdp->chgBit(c+9,(vlTOPp->AXI_Full__DOT__master__DOT__axi_awvalid));
        vcdp->chgBit(c+10,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awready));
        vcdp->chgBus(c+11,(vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata),32);
        vcdp->chgBit(c+12,(vlTOPp->AXI_Full__DOT__master__DOT__axi_wlast));
        vcdp->chgBit(c+13,(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid));
        vcdp->chgBit(c+14,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready));
        vcdp->chgBit(c+15,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid));
        vcdp->chgBit(c+16,(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready));
        vcdp->chgBus(c+17,(((IData)(0x40000000U) + vlTOPp->AXI_Full__DOT__master__DOT__axi_araddr)),32);
        vcdp->chgBit(c+18,(vlTOPp->AXI_Full__DOT__master__DOT__axi_arvalid));
        vcdp->chgBit(c+19,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arready));
        vcdp->chgBit(c+20,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rlast));
        vcdp->chgBit(c+21,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid));
        vcdp->chgBit(c+22,(vlTOPp->AXI_Full__DOT__master__DOT__axi_rready));
        vcdp->chgBus(c+23,(vlTOPp->AXI_Full__DOT__master__DOT__axi_awaddr),32);
        vcdp->chgBus(c+24,(vlTOPp->AXI_Full__DOT__master__DOT__axi_araddr),32);
        vcdp->chgBit(c+25,(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_ff));
        vcdp->chgBit(c+26,(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_ff2));
        vcdp->chgBus(c+27,(vlTOPp->AXI_Full__DOT__master__DOT__read_index),5);
        vcdp->chgBit(c+28,(vlTOPp->AXI_Full__DOT__master__DOT__read_mismatch));
        vcdp->chgBus(c+29,(vlTOPp->AXI_Full__DOT__master__DOT__expected_rdata),32);
        vcdp->chgBus(c+30,(vlTOPp->AXI_Full__DOT__master__DOT__write_burst_counter),2);
        vcdp->chgBus(c+31,(vlTOPp->AXI_Full__DOT__master__DOT__read_burst_counter),2);
        vcdp->chgBit(c+32,(vlTOPp->AXI_Full__DOT__master__DOT__burst_write_active));
        vcdp->chgBit(c+33,(vlTOPp->AXI_Full__DOT__master__DOT__writes_done));
        vcdp->chgBit(c+34,(vlTOPp->AXI_Full__DOT__master__DOT__burst_read_active));
        vcdp->chgBit(c+35,(vlTOPp->AXI_Full__DOT__master__DOT__reads_done));
        vcdp->chgBus(c+36,(vlTOPp->AXI_Full__DOT__master__DOT__write_index),5);
        vcdp->chgBit(c+37,(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write));
        vcdp->chgBit(c+38,(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_read));
        vcdp->chgBus(c+39,(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state),2);
        vcdp->chgBit(c+40,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag));
        vcdp->chgBit(c+41,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag));
        vcdp->chgBus(c+42,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr),32);
        vcdp->chgBus(c+43,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awburst),2);
        vcdp->chgBus(c+44,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen),8);
        vcdp->chgBus(c+45,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen_cntr),8);
        vcdp->chgBus(c+46,((0x7ffU & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen) 
                                      << 2U))),11);
        vcdp->chgBit(c+47,(((0x7ffU & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                       & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen) 
                                          << 2U))) 
                            == (0x7ffU & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen) 
                                          << 2U)))));
        vcdp->chgBus(c+48,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen_cntr),8);
        vcdp->chgBus(c+49,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen),8);
        vcdp->chgBus(c+50,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr),32);
        vcdp->chgBus(c+51,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arburst),2);
        vcdp->chgBus(c+52,((0x7ffU & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen) 
                                      << 2U))),11);
        vcdp->chgBit(c+53,(((0x7ffU & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                       & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen) 
                                          << 2U))) 
                            == (0x7ffU & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen) 
                                          << 2U)))));
        vcdp->chgBus(c+54,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_0),32);
        vcdp->chgBus(c+55,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_1),32);
        vcdp->chgBus(c+56,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_2),32);
        vcdp->chgBus(c+57,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_3),32);
        vcdp->chgBus(c+58,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_4),32);
        vcdp->chgBus(c+59,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_5),32);
        vcdp->chgBus(c+60,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_6),32);
        vcdp->chgBus(c+61,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_7),32);
        vcdp->chgBus(c+62,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_8),32);
        vcdp->chgBus(c+63,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_9),32);
        vcdp->chgBus(c+64,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_10),32);
        vcdp->chgBus(c+65,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_11),32);
        vcdp->chgBus(c+66,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_12),32);
        vcdp->chgBus(c+67,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_13),32);
        vcdp->chgBus(c+68,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_14),32);
        vcdp->chgBus(c+69,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_15),32);
        vcdp->chgBus(c+70,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_16),32);
        vcdp->chgBus(c+71,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_17),32);
        vcdp->chgBus(c+72,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_18),32);
        vcdp->chgBus(c+73,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_19),32);
        vcdp->chgBus(c+74,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_20),32);
        vcdp->chgBus(c+75,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_21),32);
        vcdp->chgBus(c+76,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_22),32);
        vcdp->chgBus(c+77,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_23),32);
        vcdp->chgBus(c+78,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_24),32);
        vcdp->chgBus(c+79,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_25),32);
        vcdp->chgBus(c+80,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_26),32);
        vcdp->chgBus(c+81,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_27),32);
        vcdp->chgBus(c+82,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_28),32);
        vcdp->chgBus(c+83,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_29),32);
        vcdp->chgBus(c+84,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_30),32);
        vcdp->chgBus(c+85,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_31),32);
        vcdp->chgBus(c+86,((0xfU & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)
                                     ? (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                        >> 2U) : ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag)
                                                   ? 
                                                  (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                                   >> 2U)
                                                   : 0U)))),4);
        vcdp->chgBus(c+87,(vlTOPp->AXI_Full__DOT__slave__DOT__mem_data_out_0),32);
        vcdp->chgBus(c+88,(vlTOPp->AXI_Full__DOT__slave__DOT__mem_data_out_1),32);
    }
}

void VAXI_Full::traceChgThis__4(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->chgBit(c+89,(vlTOPp->clock));
        vcdp->chgBit(c+90,(vlTOPp->reset));
        vcdp->chgBit(c+91,(vlTOPp->io_INIT_AXI_TXN));
        vcdp->chgBit(c+92,(vlTOPp->io_TXN_DONE));
        vcdp->chgBit(c+93,(vlTOPp->io_ERROR));
    }
}
