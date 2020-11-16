// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VAXI_Lite__Syms.h"


//======================

void VAXI_Lite::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback(&VAXI_Lite::traceInit, &VAXI_Lite::traceFull, &VAXI_Lite::traceChg, this);
}
void VAXI_Lite::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    VAXI_Lite* t = (VAXI_Lite*)userthis;
    VAXI_Lite__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vcdp->scopeEscape(' ');
    t->traceInitThis(vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void VAXI_Lite::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VAXI_Lite* t = (VAXI_Lite*)userthis;
    VAXI_Lite__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    t->traceFullThis(vlSymsp, vcdp, code);
}

//======================


void VAXI_Lite::traceInitThis(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    vcdp->module(vlSymsp->name());  // Setup signal names
    // Body
    {
        vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void VAXI_Lite::traceFullThis(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VAXI_Lite::traceInitThis__1(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->declBit(c+43,"clock",-1);
        vcdp->declBit(c+44,"reset",-1);
        vcdp->declBit(c+45,"io_INIT_AXI_TXN",-1);
        vcdp->declBit(c+46,"io_TXN_DONE",-1);
        vcdp->declBit(c+47,"io_ERROR",-1);
        vcdp->declBit(c+43,"AXI_Lite clock",-1);
        vcdp->declBit(c+44,"AXI_Lite reset",-1);
        vcdp->declBit(c+45,"AXI_Lite io_INIT_AXI_TXN",-1);
        vcdp->declBit(c+46,"AXI_Lite io_TXN_DONE",-1);
        vcdp->declBit(c+47,"AXI_Lite io_ERROR",-1);
        vcdp->declBit(c+43,"AXI_Lite master_clock",-1);
        vcdp->declBit(c+44,"AXI_Lite master_reset",-1);
        vcdp->declBit(c+45,"AXI_Lite master_io_INIT_AXI_TXN",-1);
        vcdp->declBit(c+3,"AXI_Lite master_io_ERROR",-1);
        vcdp->declBit(c+4,"AXI_Lite master_io_TXN_DONE",-1);
        vcdp->declBus(c+5,"AXI_Lite master_io_M_AXI_AWADDR",-1,31,0);
        vcdp->declBit(c+6,"AXI_Lite master_io_M_AXI_AWVALID",-1);
        vcdp->declBit(c+7,"AXI_Lite master_io_M_AXI_AWREADY",-1);
        vcdp->declBus(c+8,"AXI_Lite master_io_M_AXI_WDATA",-1,31,0);
        vcdp->declBit(c+9,"AXI_Lite master_io_M_AXI_WVALID",-1);
        vcdp->declBit(c+10,"AXI_Lite master_io_M_AXI_WREADY",-1);
        vcdp->declBit(c+11,"AXI_Lite master_io_M_AXI_BVALID",-1);
        vcdp->declBit(c+12,"AXI_Lite master_io_M_AXI_BREADY",-1);
        vcdp->declBus(c+13,"AXI_Lite master_io_M_AXI_ARADDR",-1,31,0);
        vcdp->declBit(c+14,"AXI_Lite master_io_M_AXI_ARVALID",-1);
        vcdp->declBit(c+15,"AXI_Lite master_io_M_AXI_ARREADY",-1);
        vcdp->declBus(c+16,"AXI_Lite master_io_M_AXI_RDATA",-1,31,0);
        vcdp->declBit(c+17,"AXI_Lite master_io_M_AXI_RVALID",-1);
        vcdp->declBit(c+18,"AXI_Lite master_io_M_AXI_RREADY",-1);
        vcdp->declBit(c+43,"AXI_Lite slave_clock",-1);
        vcdp->declBit(c+44,"AXI_Lite slave_reset",-1);
        vcdp->declBus(c+5,"AXI_Lite slave_io_S_AXI_AWADDR",-1,31,0);
        vcdp->declBit(c+6,"AXI_Lite slave_io_S_AXI_AWVALID",-1);
        vcdp->declBit(c+7,"AXI_Lite slave_io_S_AXI_AWREADY",-1);
        vcdp->declBus(c+8,"AXI_Lite slave_io_S_AXI_WDATA",-1,31,0);
        vcdp->declBit(c+9,"AXI_Lite slave_io_S_AXI_WVALID",-1);
        vcdp->declBit(c+10,"AXI_Lite slave_io_S_AXI_WREADY",-1);
        vcdp->declBit(c+11,"AXI_Lite slave_io_S_AXI_BVALID",-1);
        vcdp->declBit(c+12,"AXI_Lite slave_io_S_AXI_BREADY",-1);
        vcdp->declBus(c+13,"AXI_Lite slave_io_S_AXI_ARADDR",-1,31,0);
        vcdp->declBit(c+14,"AXI_Lite slave_io_S_AXI_ARVALID",-1);
        vcdp->declBit(c+15,"AXI_Lite slave_io_S_AXI_ARREADY",-1);
        vcdp->declBus(c+16,"AXI_Lite slave_io_S_AXI_RDATA",-1,31,0);
        vcdp->declBit(c+17,"AXI_Lite slave_io_S_AXI_RVALID",-1);
        vcdp->declBit(c+18,"AXI_Lite slave_io_S_AXI_RREADY",-1);
        vcdp->declBit(c+43,"AXI_Lite master clock",-1);
        vcdp->declBit(c+44,"AXI_Lite master reset",-1);
        vcdp->declBit(c+45,"AXI_Lite master io_INIT_AXI_TXN",-1);
        vcdp->declBit(c+3,"AXI_Lite master io_ERROR",-1);
        vcdp->declBit(c+4,"AXI_Lite master io_TXN_DONE",-1);
        vcdp->declBus(c+5,"AXI_Lite master io_M_AXI_AWADDR",-1,31,0);
        vcdp->declBit(c+6,"AXI_Lite master io_M_AXI_AWVALID",-1);
        vcdp->declBit(c+7,"AXI_Lite master io_M_AXI_AWREADY",-1);
        vcdp->declBus(c+8,"AXI_Lite master io_M_AXI_WDATA",-1,31,0);
        vcdp->declBit(c+9,"AXI_Lite master io_M_AXI_WVALID",-1);
        vcdp->declBit(c+10,"AXI_Lite master io_M_AXI_WREADY",-1);
        vcdp->declBit(c+11,"AXI_Lite master io_M_AXI_BVALID",-1);
        vcdp->declBit(c+12,"AXI_Lite master io_M_AXI_BREADY",-1);
        vcdp->declBus(c+13,"AXI_Lite master io_M_AXI_ARADDR",-1,31,0);
        vcdp->declBit(c+14,"AXI_Lite master io_M_AXI_ARVALID",-1);
        vcdp->declBit(c+15,"AXI_Lite master io_M_AXI_ARREADY",-1);
        vcdp->declBus(c+16,"AXI_Lite master io_M_AXI_RDATA",-1,31,0);
        vcdp->declBit(c+17,"AXI_Lite master io_M_AXI_RVALID",-1);
        vcdp->declBit(c+18,"AXI_Lite master io_M_AXI_RREADY",-1);
        vcdp->declBus(c+19,"AXI_Lite master mst_exec_state",-1,1,0);
        // Tracing: AXI_Lite master _RAND_0 // Ignored: Inlined leading underscore at AXI_Lite.v:23
        vcdp->declBus(c+20,"AXI_Lite master read_index",-1,2,0);
        // Tracing: AXI_Lite master _RAND_1 // Ignored: Inlined leading underscore at AXI_Lite.v:25
        vcdp->declBit(c+21,"AXI_Lite master last_read",-1);
        // Tracing: AXI_Lite master _RAND_2 // Ignored: Inlined leading underscore at AXI_Lite.v:27
        vcdp->declBit(c+22,"AXI_Lite master start_single_read",-1);
        // Tracing: AXI_Lite master _RAND_3 // Ignored: Inlined leading underscore at AXI_Lite.v:29
        vcdp->declBit(c+23,"AXI_Lite master read_issued",-1);
        // Tracing: AXI_Lite master _RAND_4 // Ignored: Inlined leading underscore at AXI_Lite.v:31
        vcdp->declBit(c+3,"AXI_Lite master error_reg",-1);
        // Tracing: AXI_Lite master _RAND_5 // Ignored: Inlined leading underscore at AXI_Lite.v:33
        vcdp->declBus(c+24,"AXI_Lite master axi_awaddr",-1,31,0);
        // Tracing: AXI_Lite master _RAND_6 // Ignored: Inlined leading underscore at AXI_Lite.v:35
        // Tracing: AXI_Lite master _T // Ignored: Inlined leading underscore at AXI_Lite.v:36
        vcdp->declBus(c+8,"AXI_Lite master axi_wdata",-1,31,0);
        // Tracing: AXI_Lite master _RAND_7 // Ignored: Inlined leading underscore at AXI_Lite.v:38
        vcdp->declBit(c+6,"AXI_Lite master axi_awvalid",-1);
        // Tracing: AXI_Lite master _RAND_8 // Ignored: Inlined leading underscore at AXI_Lite.v:40
        vcdp->declBit(c+9,"AXI_Lite master axi_wvalid",-1);
        // Tracing: AXI_Lite master _RAND_9 // Ignored: Inlined leading underscore at AXI_Lite.v:42
        vcdp->declBit(c+12,"AXI_Lite master axi_bready",-1);
        // Tracing: AXI_Lite master _RAND_10 // Ignored: Inlined leading underscore at AXI_Lite.v:44
        vcdp->declBus(c+25,"AXI_Lite master axi_araddr",-1,31,0);
        // Tracing: AXI_Lite master _RAND_11 // Ignored: Inlined leading underscore at AXI_Lite.v:46
        // Tracing: AXI_Lite master _T_1 // Ignored: Inlined leading underscore at AXI_Lite.v:47
        vcdp->declBit(c+14,"AXI_Lite master axi_arvalid",-1);
        // Tracing: AXI_Lite master _RAND_12 // Ignored: Inlined leading underscore at AXI_Lite.v:49
        vcdp->declBit(c+18,"AXI_Lite master axi_rready",-1);
        // Tracing: AXI_Lite master _RAND_13 // Ignored: Inlined leading underscore at AXI_Lite.v:51
        vcdp->declBit(c+4,"AXI_Lite master compare_done",-1);
        // Tracing: AXI_Lite master _RAND_14 // Ignored: Inlined leading underscore at AXI_Lite.v:53
        vcdp->declBit(c+26,"AXI_Lite master init_txn_ff",-1);
        // Tracing: AXI_Lite master _RAND_15 // Ignored: Inlined leading underscore at AXI_Lite.v:55
        vcdp->declBit(c+27,"AXI_Lite master init_txn_ff2",-1);
        // Tracing: AXI_Lite master _RAND_16 // Ignored: Inlined leading underscore at AXI_Lite.v:57
        vcdp->declBit(c+28,"AXI_Lite master start_single_write",-1);
        // Tracing: AXI_Lite master _RAND_17 // Ignored: Inlined leading underscore at AXI_Lite.v:59
        vcdp->declBus(c+29,"AXI_Lite master write_index",-1,2,0);
        // Tracing: AXI_Lite master _RAND_18 // Ignored: Inlined leading underscore at AXI_Lite.v:61
        // Tracing: AXI_Lite master _T_3 // Ignored: Inlined leading underscore at AXI_Lite.v:62
        // Tracing: AXI_Lite master _T_2 // Ignored: Inlined leading underscore at AXI_Lite.v:63
        // Tracing: AXI_Lite master _GEN_0 // Ignored: Inlined leading underscore at AXI_Lite.v:64
        // Tracing: AXI_Lite master _GEN_1 // Ignored: Inlined leading underscore at AXI_Lite.v:65
        // Tracing: AXI_Lite master _GEN_2 // Ignored: Inlined leading underscore at AXI_Lite.v:66
        // Tracing: AXI_Lite master _GEN_3 // Ignored: Inlined leading underscore at AXI_Lite.v:67
        // Tracing: AXI_Lite master _T_4 // Ignored: Inlined leading underscore at AXI_Lite.v:68
        vcdp->declBit(c+1,"AXI_Lite master init_txn_pulse",-1);
        vcdp->declBus(c+30,"AXI_Lite master expected_rdata",-1,31,0);
        // Tracing: AXI_Lite master _RAND_19 // Ignored: Inlined leading underscore at AXI_Lite.v:71
        vcdp->declBit(c+31,"AXI_Lite master last_write",-1);
        // Tracing: AXI_Lite master _RAND_20 // Ignored: Inlined leading underscore at AXI_Lite.v:73
        vcdp->declBit(c+32,"AXI_Lite master writes_done",-1);
        // Tracing: AXI_Lite master _RAND_21 // Ignored: Inlined leading underscore at AXI_Lite.v:75
        vcdp->declBit(c+33,"AXI_Lite master reads_done",-1);
        // Tracing: AXI_Lite master _RAND_22 // Ignored: Inlined leading underscore at AXI_Lite.v:77
        vcdp->declBit(c+34,"AXI_Lite master read_mismatch",-1);
        // Tracing: AXI_Lite master _RAND_23 // Ignored: Inlined leading underscore at AXI_Lite.v:79
        // Tracing: AXI_Lite master _GEN_6 // Ignored: Inlined leading underscore at AXI_Lite.v:80
        // Tracing: AXI_Lite master _GEN_7 // Ignored: Inlined leading underscore at AXI_Lite.v:81
        // Tracing: AXI_Lite master _GEN_9 // Ignored: Inlined leading underscore at AXI_Lite.v:82
        // Tracing: AXI_Lite master _GEN_10 // Ignored: Inlined leading underscore at AXI_Lite.v:83
        // Tracing: AXI_Lite master _GEN_11 // Ignored: Inlined leading underscore at AXI_Lite.v:84
        // Tracing: AXI_Lite master _GEN_13 // Ignored: Inlined leading underscore at AXI_Lite.v:85
        // Tracing: AXI_Lite master _T_6 // Ignored: Inlined leading underscore at AXI_Lite.v:86
        // Tracing: AXI_Lite master _T_7 // Ignored: Inlined leading underscore at AXI_Lite.v:87
        // Tracing: AXI_Lite master _T_8 // Ignored: Inlined leading underscore at AXI_Lite.v:88
        // Tracing: AXI_Lite master _GEN_22 // Ignored: Inlined leading underscore at AXI_Lite.v:89
        // Tracing: AXI_Lite master _GEN_23 // Ignored: Inlined leading underscore at AXI_Lite.v:90
        // Tracing: AXI_Lite master _T_13 // Ignored: Inlined leading underscore at AXI_Lite.v:91
        // Tracing: AXI_Lite master _T_12 // Ignored: Inlined leading underscore at AXI_Lite.v:92
        // Tracing: AXI_Lite master _GEN_24 // Ignored: Inlined leading underscore at AXI_Lite.v:93
        // Tracing: AXI_Lite master _GEN_25 // Ignored: Inlined leading underscore at AXI_Lite.v:94
        // Tracing: AXI_Lite master _GEN_26 // Ignored: Inlined leading underscore at AXI_Lite.v:95
        // Tracing: AXI_Lite master _T_14 // Ignored: Inlined leading underscore at AXI_Lite.v:96
        // Tracing: AXI_Lite master _T_15 // Ignored: Inlined leading underscore at AXI_Lite.v:97
        // Tracing: AXI_Lite master _GEN_27 // Ignored: Inlined leading underscore at AXI_Lite.v:98
        // Tracing: AXI_Lite master _GEN_28 // Ignored: Inlined leading underscore at AXI_Lite.v:99
        // Tracing: AXI_Lite master _T_20 // Ignored: Inlined leading underscore at AXI_Lite.v:100
        // Tracing: AXI_Lite master _GEN_29 // Ignored: Inlined leading underscore at AXI_Lite.v:101
        // Tracing: AXI_Lite master _T_21 // Ignored: Inlined leading underscore at AXI_Lite.v:102
        // Tracing: AXI_Lite master _GEN_75 // Ignored: Inlined leading underscore at AXI_Lite.v:103
        // Tracing: AXI_Lite master _T_22 // Ignored: Inlined leading underscore at AXI_Lite.v:104
        // Tracing: AXI_Lite master _T_24 // Ignored: Inlined leading underscore at AXI_Lite.v:105
        // Tracing: AXI_Lite master _GEN_31 // Ignored: Inlined leading underscore at AXI_Lite.v:106
        // Tracing: AXI_Lite master _T_25 // Ignored: Inlined leading underscore at AXI_Lite.v:107
        // Tracing: AXI_Lite master _GEN_76 // Ignored: Inlined leading underscore at AXI_Lite.v:108
        // Tracing: AXI_Lite master _T_26 // Ignored: Inlined leading underscore at AXI_Lite.v:109
        // Tracing: AXI_Lite master _T_27 // Ignored: Inlined leading underscore at AXI_Lite.v:110
        // Tracing: AXI_Lite master _T_28 // Ignored: Inlined leading underscore at AXI_Lite.v:111
        // Tracing: AXI_Lite master _T_31 // Ignored: Inlined leading underscore at AXI_Lite.v:112
        vcdp->declBit(c+35,"AXI_Lite master write_issued",-1);
        // Tracing: AXI_Lite master _RAND_24 // Ignored: Inlined leading underscore at AXI_Lite.v:114
        // Tracing: AXI_Lite master _T_44 // Ignored: Inlined leading underscore at AXI_Lite.v:115
        // Tracing: AXI_Lite master _T_55 // Ignored: Inlined leading underscore at AXI_Lite.v:116
        // Tracing: AXI_Lite master _T_32 // Ignored: Inlined leading underscore at AXI_Lite.v:117
        // Tracing: AXI_Lite master _T_33 // Ignored: Inlined leading underscore at AXI_Lite.v:118
        // Tracing: AXI_Lite master _T_34 // Ignored: Inlined leading underscore at AXI_Lite.v:119
        // Tracing: AXI_Lite master _T_35 // Ignored: Inlined leading underscore at AXI_Lite.v:120
        // Tracing: AXI_Lite master _T_36 // Ignored: Inlined leading underscore at AXI_Lite.v:121
        // Tracing: AXI_Lite master _T_37 // Ignored: Inlined leading underscore at AXI_Lite.v:122
        // Tracing: AXI_Lite master _T_38 // Ignored: Inlined leading underscore at AXI_Lite.v:123
        // Tracing: AXI_Lite master _T_39 // Ignored: Inlined leading underscore at AXI_Lite.v:124
        // Tracing: AXI_Lite master _T_40 // Ignored: Inlined leading underscore at AXI_Lite.v:125
        // Tracing: AXI_Lite master _T_41 // Ignored: Inlined leading underscore at AXI_Lite.v:126
        // Tracing: AXI_Lite master _T_42 // Ignored: Inlined leading underscore at AXI_Lite.v:127
        // Tracing: AXI_Lite master _GEN_36 // Ignored: Inlined leading underscore at AXI_Lite.v:128
        // Tracing: AXI_Lite master _GEN_37 // Ignored: Inlined leading underscore at AXI_Lite.v:129
        // Tracing: AXI_Lite master _GEN_38 // Ignored: Inlined leading underscore at AXI_Lite.v:130
        // Tracing: AXI_Lite master _GEN_39 // Ignored: Inlined leading underscore at AXI_Lite.v:131
        // Tracing: AXI_Lite master _T_45 // Ignored: Inlined leading underscore at AXI_Lite.v:132
        // Tracing: AXI_Lite master _T_46 // Ignored: Inlined leading underscore at AXI_Lite.v:133
        // Tracing: AXI_Lite master _T_47 // Ignored: Inlined leading underscore at AXI_Lite.v:134
        // Tracing: AXI_Lite master _T_48 // Ignored: Inlined leading underscore at AXI_Lite.v:135
        // Tracing: AXI_Lite master _T_49 // Ignored: Inlined leading underscore at AXI_Lite.v:136
        // Tracing: AXI_Lite master _T_50 // Ignored: Inlined leading underscore at AXI_Lite.v:137
        // Tracing: AXI_Lite master _T_51 // Ignored: Inlined leading underscore at AXI_Lite.v:138
        // Tracing: AXI_Lite master _T_52 // Ignored: Inlined leading underscore at AXI_Lite.v:139
        // Tracing: AXI_Lite master _T_53 // Ignored: Inlined leading underscore at AXI_Lite.v:140
        // Tracing: AXI_Lite master _GEN_43 // Ignored: Inlined leading underscore at AXI_Lite.v:141
        // Tracing: AXI_Lite master _GEN_44 // Ignored: Inlined leading underscore at AXI_Lite.v:142
        // Tracing: AXI_Lite master _GEN_45 // Ignored: Inlined leading underscore at AXI_Lite.v:143
        // Tracing: AXI_Lite master _GEN_46 // Ignored: Inlined leading underscore at AXI_Lite.v:144
        // Tracing: AXI_Lite master _GEN_51 // Ignored: Inlined leading underscore at AXI_Lite.v:145
        // Tracing: AXI_Lite master _T_56 // Ignored: Inlined leading underscore at AXI_Lite.v:146
        // Tracing: AXI_Lite master _T_57 // Ignored: Inlined leading underscore at AXI_Lite.v:147
        // Tracing: AXI_Lite master _GEN_69 // Ignored: Inlined leading underscore at AXI_Lite.v:148
        // Tracing: AXI_Lite master _T_58 // Ignored: Inlined leading underscore at AXI_Lite.v:149
        // Tracing: AXI_Lite master _T_59 // Ignored: Inlined leading underscore at AXI_Lite.v:150
        // Tracing: AXI_Lite master _GEN_70 // Ignored: Inlined leading underscore at AXI_Lite.v:151
        // Tracing: AXI_Lite master _T_60 // Ignored: Inlined leading underscore at AXI_Lite.v:152
        // Tracing: AXI_Lite master _T_61 // Ignored: Inlined leading underscore at AXI_Lite.v:153
        // Tracing: AXI_Lite master _GEN_71 // Ignored: Inlined leading underscore at AXI_Lite.v:154
        // Tracing: AXI_Lite master _T_62 // Ignored: Inlined leading underscore at AXI_Lite.v:155
        // Tracing: AXI_Lite master _T_63 // Ignored: Inlined leading underscore at AXI_Lite.v:156
        // Tracing: AXI_Lite master _GEN_72 // Ignored: Inlined leading underscore at AXI_Lite.v:157
        // Tracing: AXI_Lite master _T_65 // Ignored: Inlined leading underscore at AXI_Lite.v:158
        // Tracing: AXI_Lite master _T_66 // Ignored: Inlined leading underscore at AXI_Lite.v:159
        // Tracing: AXI_Lite master _GEN_73 // Ignored: Inlined leading underscore at AXI_Lite.v:160
        // Tracing: AXI_Lite master _GEN_74 // Ignored: Inlined leading underscore at AXI_Lite.v:161
        vcdp->declBit(c+43,"AXI_Lite slave clock",-1);
        vcdp->declBit(c+44,"AXI_Lite slave reset",-1);
        vcdp->declBus(c+5,"AXI_Lite slave io_S_AXI_AWADDR",-1,31,0);
        vcdp->declBit(c+6,"AXI_Lite slave io_S_AXI_AWVALID",-1);
        vcdp->declBit(c+7,"AXI_Lite slave io_S_AXI_AWREADY",-1);
        vcdp->declBus(c+8,"AXI_Lite slave io_S_AXI_WDATA",-1,31,0);
        vcdp->declBit(c+9,"AXI_Lite slave io_S_AXI_WVALID",-1);
        vcdp->declBit(c+10,"AXI_Lite slave io_S_AXI_WREADY",-1);
        vcdp->declBit(c+11,"AXI_Lite slave io_S_AXI_BVALID",-1);
        vcdp->declBit(c+12,"AXI_Lite slave io_S_AXI_BREADY",-1);
        vcdp->declBus(c+13,"AXI_Lite slave io_S_AXI_ARADDR",-1,31,0);
        vcdp->declBit(c+14,"AXI_Lite slave io_S_AXI_ARVALID",-1);
        vcdp->declBit(c+15,"AXI_Lite slave io_S_AXI_ARREADY",-1);
        vcdp->declBus(c+16,"AXI_Lite slave io_S_AXI_RDATA",-1,31,0);
        vcdp->declBit(c+17,"AXI_Lite slave io_S_AXI_RVALID",-1);
        vcdp->declBit(c+18,"AXI_Lite slave io_S_AXI_RREADY",-1);
        vcdp->declBit(c+7,"AXI_Lite slave axi_awready",-1);
        // Tracing: AXI_Lite slave _RAND_0 // Ignored: Inlined leading underscore at AXI_Lite.v:597
        vcdp->declBit(c+10,"AXI_Lite slave axi_wready",-1);
        // Tracing: AXI_Lite slave _RAND_1 // Ignored: Inlined leading underscore at AXI_Lite.v:599
        vcdp->declBit(c+11,"AXI_Lite slave axi_bvalid",-1);
        // Tracing: AXI_Lite slave _RAND_2 // Ignored: Inlined leading underscore at AXI_Lite.v:601
        vcdp->declBit(c+15,"AXI_Lite slave axi_arready",-1);
        // Tracing: AXI_Lite slave _RAND_3 // Ignored: Inlined leading underscore at AXI_Lite.v:603
        vcdp->declBus(c+16,"AXI_Lite slave axi_rdata",-1,31,0);
        // Tracing: AXI_Lite slave _RAND_4 // Ignored: Inlined leading underscore at AXI_Lite.v:605
        vcdp->declBit(c+17,"AXI_Lite slave axi_rvalid",-1);
        // Tracing: AXI_Lite slave _RAND_5 // Ignored: Inlined leading underscore at AXI_Lite.v:607
        // Tracing: AXI_Lite slave _T // Ignored: Inlined leading underscore at AXI_Lite.v:608
        // Tracing: AXI_Lite slave _T_1 // Ignored: Inlined leading underscore at AXI_Lite.v:609
        // Tracing: AXI_Lite slave _T_2 // Ignored: Inlined leading underscore at AXI_Lite.v:610
        vcdp->declBit(c+36,"AXI_Lite slave aw_en",-1);
        // Tracing: AXI_Lite slave _RAND_6 // Ignored: Inlined leading underscore at AXI_Lite.v:612
        // Tracing: AXI_Lite slave _T_3 // Ignored: Inlined leading underscore at AXI_Lite.v:613
        // Tracing: AXI_Lite slave _T_4 // Ignored: Inlined leading underscore at AXI_Lite.v:614
        // Tracing: AXI_Lite slave _GEN_0 // Ignored: Inlined leading underscore at AXI_Lite.v:615
        // Tracing: AXI_Lite slave _GEN_3 // Ignored: Inlined leading underscore at AXI_Lite.v:616
        vcdp->declBus(c+37,"AXI_Lite slave axi_awaddr",-1,31,0);
        // Tracing: AXI_Lite slave _RAND_7 // Ignored: Inlined leading underscore at AXI_Lite.v:618
        // Tracing: AXI_Lite slave _T_9 // Ignored: Inlined leading underscore at AXI_Lite.v:619
        // Tracing: AXI_Lite slave _T_10 // Ignored: Inlined leading underscore at AXI_Lite.v:620
        // Tracing: AXI_Lite slave _T_11 // Ignored: Inlined leading underscore at AXI_Lite.v:621
        // Tracing: AXI_Lite slave _T_12 // Ignored: Inlined leading underscore at AXI_Lite.v:622
        // Tracing: AXI_Lite slave _T_13 // Ignored: Inlined leading underscore at AXI_Lite.v:623
        // Tracing: AXI_Lite slave _T_14 // Ignored: Inlined leading underscore at AXI_Lite.v:624
        vcdp->declBit(c+2,"AXI_Lite slave slv_reg_wren",-1);
        vcdp->declBus(c+38,"AXI_Lite slave slv_reg0",-1,31,0);
        // Tracing: AXI_Lite slave _RAND_8 // Ignored: Inlined leading underscore at AXI_Lite.v:627
        vcdp->declBus(c+39,"AXI_Lite slave slv_reg1",-1,31,0);
        // Tracing: AXI_Lite slave _RAND_9 // Ignored: Inlined leading underscore at AXI_Lite.v:629
        vcdp->declBus(c+40,"AXI_Lite slave slv_reg2",-1,31,0);
        // Tracing: AXI_Lite slave _RAND_10 // Ignored: Inlined leading underscore at AXI_Lite.v:631
        vcdp->declBus(c+41,"AXI_Lite slave slv_reg3",-1,31,0);
        // Tracing: AXI_Lite slave _RAND_11 // Ignored: Inlined leading underscore at AXI_Lite.v:633
        // Tracing: AXI_Lite slave _T_15 // Ignored: Inlined leading underscore at AXI_Lite.v:634
        // Tracing: AXI_Lite slave _T_16 // Ignored: Inlined leading underscore at AXI_Lite.v:635
        // Tracing: AXI_Lite slave _T_26 // Ignored: Inlined leading underscore at AXI_Lite.v:636
        // Tracing: AXI_Lite slave _T_36 // Ignored: Inlined leading underscore at AXI_Lite.v:637
        // Tracing: AXI_Lite slave _T_46 // Ignored: Inlined leading underscore at AXI_Lite.v:638
        // Tracing: AXI_Lite slave _T_55 // Ignored: Inlined leading underscore at AXI_Lite.v:639
        // Tracing: AXI_Lite slave _T_56 // Ignored: Inlined leading underscore at AXI_Lite.v:640
        // Tracing: AXI_Lite slave _T_57 // Ignored: Inlined leading underscore at AXI_Lite.v:641
        // Tracing: AXI_Lite slave _T_58 // Ignored: Inlined leading underscore at AXI_Lite.v:642
        // Tracing: AXI_Lite slave _T_59 // Ignored: Inlined leading underscore at AXI_Lite.v:643
        // Tracing: AXI_Lite slave _GEN_42 // Ignored: Inlined leading underscore at AXI_Lite.v:644
        // Tracing: AXI_Lite slave _GEN_43 // Ignored: Inlined leading underscore at AXI_Lite.v:645
        // Tracing: AXI_Lite slave _T_61 // Ignored: Inlined leading underscore at AXI_Lite.v:646
        // Tracing: AXI_Lite slave _T_62 // Ignored: Inlined leading underscore at AXI_Lite.v:647
        vcdp->declBus(c+42,"AXI_Lite slave axi_araddr",-1,31,0);
        // Tracing: AXI_Lite slave _RAND_12 // Ignored: Inlined leading underscore at AXI_Lite.v:649
        // Tracing: AXI_Lite slave _T_63 // Ignored: Inlined leading underscore at AXI_Lite.v:650
        // Tracing: AXI_Lite slave _T_64 // Ignored: Inlined leading underscore at AXI_Lite.v:651
        // Tracing: AXI_Lite slave _T_65 // Ignored: Inlined leading underscore at AXI_Lite.v:652
        // Tracing: AXI_Lite slave _T_66 // Ignored: Inlined leading underscore at AXI_Lite.v:653
        // Tracing: AXI_Lite slave _GEN_47 // Ignored: Inlined leading underscore at AXI_Lite.v:654
        // Tracing: AXI_Lite slave _GEN_48 // Ignored: Inlined leading underscore at AXI_Lite.v:655
        // Tracing: AXI_Lite slave _T_69 // Ignored: Inlined leading underscore at AXI_Lite.v:656
        // Tracing: AXI_Lite slave _T_70 // Ignored: Inlined leading underscore at AXI_Lite.v:657
        // Tracing: AXI_Lite slave _T_72 // Ignored: Inlined leading underscore at AXI_Lite.v:658
        // Tracing: AXI_Lite slave _T_74 // Ignored: Inlined leading underscore at AXI_Lite.v:659
        // Tracing: AXI_Lite slave _T_76 // Ignored: Inlined leading underscore at AXI_Lite.v:660
    }
}

void VAXI_Lite::traceFullThis__1(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Lite* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->fullBit(c+1,(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_pulse));
        vcdp->fullBit(c+2,(vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg_wren));
        vcdp->fullBit(c+3,(vlTOPp->AXI_Lite__DOT__master__DOT__error_reg));
        vcdp->fullBit(c+4,(vlTOPp->AXI_Lite__DOT__master__DOT__compare_done));
        vcdp->fullBus(c+5,(((IData)(0x40000000U) + vlTOPp->AXI_Lite__DOT__master__DOT__axi_awaddr)),32);
        vcdp->fullBit(c+6,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awvalid));
        vcdp->fullBit(c+7,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awready));
        vcdp->fullBus(c+8,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wdata),32);
        vcdp->fullBit(c+9,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_wvalid));
        vcdp->fullBit(c+10,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_wready));
        vcdp->fullBit(c+11,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_bvalid));
        vcdp->fullBit(c+12,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_bready));
        vcdp->fullBus(c+13,(((IData)(0x40000000U) + vlTOPp->AXI_Lite__DOT__master__DOT__axi_araddr)),32);
        vcdp->fullBit(c+14,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_arvalid));
        vcdp->fullBit(c+15,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_arready));
        vcdp->fullBus(c+16,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rdata),32);
        vcdp->fullBit(c+17,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_rvalid));
        vcdp->fullBit(c+18,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_rready));
        vcdp->fullBus(c+19,(vlTOPp->AXI_Lite__DOT__master__DOT__mst_exec_state),2);
        vcdp->fullBus(c+20,(vlTOPp->AXI_Lite__DOT__master__DOT__read_index),3);
        vcdp->fullBit(c+21,(vlTOPp->AXI_Lite__DOT__master__DOT__last_read));
        vcdp->fullBit(c+22,(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_read));
        vcdp->fullBit(c+23,(vlTOPp->AXI_Lite__DOT__master__DOT__read_issued));
        vcdp->fullBus(c+24,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_awaddr),32);
        vcdp->fullBus(c+25,(vlTOPp->AXI_Lite__DOT__master__DOT__axi_araddr),32);
        vcdp->fullBit(c+26,(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_ff));
        vcdp->fullBit(c+27,(vlTOPp->AXI_Lite__DOT__master__DOT__init_txn_ff2));
        vcdp->fullBit(c+28,(vlTOPp->AXI_Lite__DOT__master__DOT__start_single_write));
        vcdp->fullBus(c+29,(vlTOPp->AXI_Lite__DOT__master__DOT__write_index),3);
        vcdp->fullBus(c+30,(vlTOPp->AXI_Lite__DOT__master__DOT__expected_rdata),32);
        vcdp->fullBit(c+31,(vlTOPp->AXI_Lite__DOT__master__DOT__last_write));
        vcdp->fullBit(c+32,(vlTOPp->AXI_Lite__DOT__master__DOT__writes_done));
        vcdp->fullBit(c+33,(vlTOPp->AXI_Lite__DOT__master__DOT__reads_done));
        vcdp->fullBit(c+34,(vlTOPp->AXI_Lite__DOT__master__DOT__read_mismatch));
        vcdp->fullBit(c+35,(vlTOPp->AXI_Lite__DOT__master__DOT__write_issued));
        vcdp->fullBit(c+36,(vlTOPp->AXI_Lite__DOT__slave__DOT__aw_en));
        vcdp->fullBus(c+37,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_awaddr),32);
        vcdp->fullBus(c+38,(vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg0),32);
        vcdp->fullBus(c+39,(vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg1),32);
        vcdp->fullBus(c+40,(vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg2),32);
        vcdp->fullBus(c+41,(vlTOPp->AXI_Lite__DOT__slave__DOT__slv_reg3),32);
        vcdp->fullBus(c+42,(vlTOPp->AXI_Lite__DOT__slave__DOT__axi_araddr),32);
        vcdp->fullBit(c+43,(vlTOPp->clock));
        vcdp->fullBit(c+44,(vlTOPp->reset));
        vcdp->fullBit(c+45,(vlTOPp->io_INIT_AXI_TXN));
        vcdp->fullBit(c+46,(vlTOPp->io_TXN_DONE));
        vcdp->fullBit(c+47,(vlTOPp->io_ERROR));
    }
}
