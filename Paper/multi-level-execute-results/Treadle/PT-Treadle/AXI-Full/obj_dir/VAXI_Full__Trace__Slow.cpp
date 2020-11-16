// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VAXI_Full__Syms.h"


//======================

void VAXI_Full::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback(&VAXI_Full::traceInit, &VAXI_Full::traceFull, &VAXI_Full::traceChg, this);
}
void VAXI_Full::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    VAXI_Full* t = (VAXI_Full*)userthis;
    VAXI_Full__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vcdp->scopeEscape(' ');
    t->traceInitThis(vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void VAXI_Full::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VAXI_Full* t = (VAXI_Full*)userthis;
    VAXI_Full__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    t->traceFullThis(vlSymsp, vcdp, code);
}

//======================


void VAXI_Full::traceInitThis(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    vcdp->module(vlSymsp->name());  // Setup signal names
    // Body
    {
        vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void VAXI_Full::traceFullThis(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VAXI_Full::traceInitThis__1(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->declBit(c+89,"clock",-1);
        vcdp->declBit(c+90,"reset",-1);
        vcdp->declBit(c+91,"io_INIT_AXI_TXN",-1);
        vcdp->declBit(c+92,"io_TXN_DONE",-1);
        vcdp->declBit(c+93,"io_ERROR",-1);
        vcdp->declBit(c+89,"AXI_Full clock",-1);
        vcdp->declBit(c+90,"AXI_Full reset",-1);
        vcdp->declBit(c+91,"AXI_Full io_INIT_AXI_TXN",-1);
        vcdp->declBit(c+92,"AXI_Full io_TXN_DONE",-1);
        vcdp->declBit(c+93,"AXI_Full io_ERROR",-1);
        vcdp->declBit(c+89,"AXI_Full master_clock",-1);
        vcdp->declBit(c+90,"AXI_Full master_reset",-1);
        vcdp->declBit(c+91,"AXI_Full master_io_INIT_AXI_TXN",-1);
        vcdp->declBit(c+6,"AXI_Full master_io_TXN_DONE",-1);
        vcdp->declBit(c+7,"AXI_Full master_io_ERROR",-1);
        vcdp->declBus(c+8,"AXI_Full master_io_M_AXI_AWADDR",-1,31,0);
        vcdp->declBit(c+9,"AXI_Full master_io_M_AXI_AWVALID",-1);
        vcdp->declBit(c+10,"AXI_Full master_io_M_AXI_AWREADY",-1);
        vcdp->declBus(c+11,"AXI_Full master_io_M_AXI_WDATA",-1,31,0);
        vcdp->declBit(c+12,"AXI_Full master_io_M_AXI_WLAST",-1);
        vcdp->declBit(c+13,"AXI_Full master_io_M_AXI_WVALID",-1);
        vcdp->declBit(c+14,"AXI_Full master_io_M_AXI_WREADY",-1);
        vcdp->declBit(c+15,"AXI_Full master_io_M_AXI_BVALID",-1);
        vcdp->declBit(c+16,"AXI_Full master_io_M_AXI_BREADY",-1);
        vcdp->declBus(c+17,"AXI_Full master_io_M_AXI_ARADDR",-1,31,0);
        vcdp->declBit(c+18,"AXI_Full master_io_M_AXI_ARVALID",-1);
        vcdp->declBit(c+19,"AXI_Full master_io_M_AXI_ARREADY",-1);
        vcdp->declBus(c+1,"AXI_Full master_io_M_AXI_RDATA",-1,31,0);
        vcdp->declBit(c+20,"AXI_Full master_io_M_AXI_RLAST",-1);
        vcdp->declBit(c+21,"AXI_Full master_io_M_AXI_RVALID",-1);
        vcdp->declBit(c+22,"AXI_Full master_io_M_AXI_RREADY",-1);
        vcdp->declBit(c+89,"AXI_Full slave_clock",-1);
        vcdp->declBit(c+90,"AXI_Full slave_reset",-1);
        vcdp->declBus(c+8,"AXI_Full slave_io_S_AXI_AWADDR",-1,31,0);
        vcdp->declBit(c+9,"AXI_Full slave_io_S_AXI_AWVALID",-1);
        vcdp->declBit(c+10,"AXI_Full slave_io_S_AXI_AWREADY",-1);
        vcdp->declBus(c+11,"AXI_Full slave_io_S_AXI_WDATA",-1,31,0);
        vcdp->declBit(c+12,"AXI_Full slave_io_S_AXI_WLAST",-1);
        vcdp->declBit(c+13,"AXI_Full slave_io_S_AXI_WVALID",-1);
        vcdp->declBit(c+14,"AXI_Full slave_io_S_AXI_WREADY",-1);
        vcdp->declBit(c+15,"AXI_Full slave_io_S_AXI_BVALID",-1);
        vcdp->declBit(c+16,"AXI_Full slave_io_S_AXI_BREADY",-1);
        vcdp->declBus(c+17,"AXI_Full slave_io_S_AXI_ARADDR",-1,31,0);
        vcdp->declBit(c+18,"AXI_Full slave_io_S_AXI_ARVALID",-1);
        vcdp->declBit(c+19,"AXI_Full slave_io_S_AXI_ARREADY",-1);
        vcdp->declBus(c+1,"AXI_Full slave_io_S_AXI_RDATA",-1,31,0);
        vcdp->declBit(c+20,"AXI_Full slave_io_S_AXI_RLAST",-1);
        vcdp->declBit(c+21,"AXI_Full slave_io_S_AXI_RVALID",-1);
        vcdp->declBit(c+22,"AXI_Full slave_io_S_AXI_RREADY",-1);
        vcdp->declBit(c+89,"AXI_Full master clock",-1);
        vcdp->declBit(c+90,"AXI_Full master reset",-1);
        vcdp->declBit(c+91,"AXI_Full master io_INIT_AXI_TXN",-1);
        vcdp->declBit(c+6,"AXI_Full master io_TXN_DONE",-1);
        vcdp->declBit(c+7,"AXI_Full master io_ERROR",-1);
        vcdp->declBus(c+8,"AXI_Full master io_M_AXI_AWADDR",-1,31,0);
        vcdp->declBit(c+9,"AXI_Full master io_M_AXI_AWVALID",-1);
        vcdp->declBit(c+10,"AXI_Full master io_M_AXI_AWREADY",-1);
        vcdp->declBus(c+11,"AXI_Full master io_M_AXI_WDATA",-1,31,0);
        vcdp->declBit(c+12,"AXI_Full master io_M_AXI_WLAST",-1);
        vcdp->declBit(c+13,"AXI_Full master io_M_AXI_WVALID",-1);
        vcdp->declBit(c+14,"AXI_Full master io_M_AXI_WREADY",-1);
        vcdp->declBit(c+15,"AXI_Full master io_M_AXI_BVALID",-1);
        vcdp->declBit(c+16,"AXI_Full master io_M_AXI_BREADY",-1);
        vcdp->declBus(c+17,"AXI_Full master io_M_AXI_ARADDR",-1,31,0);
        vcdp->declBit(c+18,"AXI_Full master io_M_AXI_ARVALID",-1);
        vcdp->declBit(c+19,"AXI_Full master io_M_AXI_ARREADY",-1);
        vcdp->declBus(c+1,"AXI_Full master io_M_AXI_RDATA",-1,31,0);
        vcdp->declBit(c+20,"AXI_Full master io_M_AXI_RLAST",-1);
        vcdp->declBit(c+21,"AXI_Full master io_M_AXI_RVALID",-1);
        vcdp->declBit(c+22,"AXI_Full master io_M_AXI_RREADY",-1);
        vcdp->declBit(c+7,"AXI_Full master error_reg",-1);
        // Tracing: AXI_Full master _RAND_0 // Ignored: Inlined leading underscore at AXI_Full.v:25
        vcdp->declBus(c+23,"AXI_Full master axi_awaddr",-1,31,0);
        // Tracing: AXI_Full master _RAND_1 // Ignored: Inlined leading underscore at AXI_Full.v:27
        // Tracing: AXI_Full master _T // Ignored: Inlined leading underscore at AXI_Full.v:28
        vcdp->declBit(c+9,"AXI_Full master axi_awvalid",-1);
        // Tracing: AXI_Full master _RAND_2 // Ignored: Inlined leading underscore at AXI_Full.v:30
        vcdp->declBus(c+11,"AXI_Full master axi_wdata",-1,31,0);
        // Tracing: AXI_Full master _RAND_3 // Ignored: Inlined leading underscore at AXI_Full.v:32
        vcdp->declBit(c+12,"AXI_Full master axi_wlast",-1);
        // Tracing: AXI_Full master _RAND_4 // Ignored: Inlined leading underscore at AXI_Full.v:34
        vcdp->declBit(c+13,"AXI_Full master axi_wvalid",-1);
        // Tracing: AXI_Full master _RAND_5 // Ignored: Inlined leading underscore at AXI_Full.v:36
        vcdp->declBit(c+16,"AXI_Full master axi_bready",-1);
        // Tracing: AXI_Full master _RAND_6 // Ignored: Inlined leading underscore at AXI_Full.v:38
        vcdp->declBus(c+24,"AXI_Full master axi_araddr",-1,31,0);
        // Tracing: AXI_Full master _RAND_7 // Ignored: Inlined leading underscore at AXI_Full.v:40
        // Tracing: AXI_Full master _T_1 // Ignored: Inlined leading underscore at AXI_Full.v:41
        vcdp->declBit(c+18,"AXI_Full master axi_arvalid",-1);
        // Tracing: AXI_Full master _RAND_8 // Ignored: Inlined leading underscore at AXI_Full.v:43
        vcdp->declBit(c+22,"AXI_Full master axi_rready",-1);
        // Tracing: AXI_Full master _RAND_9 // Ignored: Inlined leading underscore at AXI_Full.v:45
        vcdp->declBit(c+6,"AXI_Full master compare_done",-1);
        // Tracing: AXI_Full master _RAND_10 // Ignored: Inlined leading underscore at AXI_Full.v:47
        vcdp->declBit(c+25,"AXI_Full master init_txn_ff",-1);
        // Tracing: AXI_Full master _RAND_11 // Ignored: Inlined leading underscore at AXI_Full.v:49
        vcdp->declBit(c+26,"AXI_Full master init_txn_ff2",-1);
        // Tracing: AXI_Full master _RAND_12 // Ignored: Inlined leading underscore at AXI_Full.v:51
        // Tracing: AXI_Full master _T_2 // Ignored: Inlined leading underscore at AXI_Full.v:52
        vcdp->declBit(c+2,"AXI_Full master init_txn_pulse",-1);
        vcdp->declBus(c+27,"AXI_Full master read_index",-1,4,0);
        // Tracing: AXI_Full master _RAND_13 // Ignored: Inlined leading underscore at AXI_Full.v:55
        vcdp->declBit(c+28,"AXI_Full master read_mismatch",-1);
        // Tracing: AXI_Full master _RAND_14 // Ignored: Inlined leading underscore at AXI_Full.v:57
        vcdp->declBus(c+29,"AXI_Full master expected_rdata",-1,31,0);
        // Tracing: AXI_Full master _RAND_15 // Ignored: Inlined leading underscore at AXI_Full.v:59
        vcdp->declBus(c+30,"AXI_Full master write_burst_counter",-1,1,0);
        // Tracing: AXI_Full master _RAND_16 // Ignored: Inlined leading underscore at AXI_Full.v:61
        vcdp->declBus(c+31,"AXI_Full master read_burst_counter",-1,1,0);
        // Tracing: AXI_Full master _RAND_17 // Ignored: Inlined leading underscore at AXI_Full.v:63
        vcdp->declBit(c+32,"AXI_Full master burst_write_active",-1);
        // Tracing: AXI_Full master _RAND_18 // Ignored: Inlined leading underscore at AXI_Full.v:65
        vcdp->declBit(c+33,"AXI_Full master writes_done",-1);
        // Tracing: AXI_Full master _RAND_19 // Ignored: Inlined leading underscore at AXI_Full.v:67
        vcdp->declBit(c+34,"AXI_Full master burst_read_active",-1);
        // Tracing: AXI_Full master _RAND_20 // Ignored: Inlined leading underscore at AXI_Full.v:69
        vcdp->declBit(c+35,"AXI_Full master reads_done",-1);
        // Tracing: AXI_Full master _RAND_21 // Ignored: Inlined leading underscore at AXI_Full.v:71
        vcdp->declBus(c+36,"AXI_Full master write_index",-1,4,0);
        // Tracing: AXI_Full master _RAND_22 // Ignored: Inlined leading underscore at AXI_Full.v:73
        // Tracing: AXI_Full master _GEN_13 // Ignored: Inlined leading underscore at AXI_Full.v:74
        // Tracing: AXI_Full master _GEN_14 // Ignored: Inlined leading underscore at AXI_Full.v:75
        // Tracing: AXI_Full master _GEN_15 // Ignored: Inlined leading underscore at AXI_Full.v:76
        // Tracing: AXI_Full master _GEN_17 // Ignored: Inlined leading underscore at AXI_Full.v:77
        // Tracing: AXI_Full master _T_4 // Ignored: Inlined leading underscore at AXI_Full.v:78
        vcdp->declBit(c+37,"AXI_Full master start_single_burst_write",-1);
        // Tracing: AXI_Full master _RAND_23 // Ignored: Inlined leading underscore at AXI_Full.v:80
        // Tracing: AXI_Full master _T_5 // Ignored: Inlined leading underscore at AXI_Full.v:81
        // Tracing: AXI_Full master _T_6 // Ignored: Inlined leading underscore at AXI_Full.v:82
        // Tracing: AXI_Full master _GEN_20 // Ignored: Inlined leading underscore at AXI_Full.v:83
        // Tracing: AXI_Full master _GEN_21 // Ignored: Inlined leading underscore at AXI_Full.v:84
        // Tracing: AXI_Full master _T_8 // Ignored: Inlined leading underscore at AXI_Full.v:85
        // Tracing: AXI_Full master _GEN_22 // Ignored: Inlined leading underscore at AXI_Full.v:86
        // Tracing: AXI_Full master _T_9 // Ignored: Inlined leading underscore at AXI_Full.v:87
        // Tracing: AXI_Full master _T_10 // Ignored: Inlined leading underscore at AXI_Full.v:88
        vcdp->declBit(c+3,"AXI_Full master wnext",-1);
        // Tracing: AXI_Full master _T_11 // Ignored: Inlined leading underscore at AXI_Full.v:90
        // Tracing: AXI_Full master _GEN_23 // Ignored: Inlined leading underscore at AXI_Full.v:91
        // Tracing: AXI_Full master _GEN_24 // Ignored: Inlined leading underscore at AXI_Full.v:92
        // Tracing: AXI_Full master _T_12 // Ignored: Inlined leading underscore at AXI_Full.v:93
        // Tracing: AXI_Full master _T_14 // Ignored: Inlined leading underscore at AXI_Full.v:94
        // Tracing: AXI_Full master _GEN_26 // Ignored: Inlined leading underscore at AXI_Full.v:95
        // Tracing: AXI_Full master _GEN_27 // Ignored: Inlined leading underscore at AXI_Full.v:96
        // Tracing: AXI_Full master _T_18 // Ignored: Inlined leading underscore at AXI_Full.v:97
        // Tracing: AXI_Full master _T_19 // Ignored: Inlined leading underscore at AXI_Full.v:98
        // Tracing: AXI_Full master _T_20 // Ignored: Inlined leading underscore at AXI_Full.v:99
        // Tracing: AXI_Full master _GEN_28 // Ignored: Inlined leading underscore at AXI_Full.v:100
        // Tracing: AXI_Full master _GEN_29 // Ignored: Inlined leading underscore at AXI_Full.v:101
        // Tracing: AXI_Full master _T_21 // Ignored: Inlined leading underscore at AXI_Full.v:102
        // Tracing: AXI_Full master _GEN_30 // Ignored: Inlined leading underscore at AXI_Full.v:103
        // Tracing: AXI_Full master _T_22 // Ignored: Inlined leading underscore at AXI_Full.v:104
        // Tracing: AXI_Full master _T_23 // Ignored: Inlined leading underscore at AXI_Full.v:105
        // Tracing: AXI_Full master _GEN_31 // Ignored: Inlined leading underscore at AXI_Full.v:106
        // Tracing: AXI_Full master _GEN_32 // Ignored: Inlined leading underscore at AXI_Full.v:107
        // Tracing: AXI_Full master _T_24 // Ignored: Inlined leading underscore at AXI_Full.v:108
        vcdp->declBit(c+38,"AXI_Full master start_single_burst_read",-1);
        // Tracing: AXI_Full master _RAND_24 // Ignored: Inlined leading underscore at AXI_Full.v:110
        // Tracing: AXI_Full master _T_25 // Ignored: Inlined leading underscore at AXI_Full.v:111
        // Tracing: AXI_Full master _T_26 // Ignored: Inlined leading underscore at AXI_Full.v:112
        // Tracing: AXI_Full master _GEN_33 // Ignored: Inlined leading underscore at AXI_Full.v:113
        // Tracing: AXI_Full master _GEN_34 // Ignored: Inlined leading underscore at AXI_Full.v:114
        // Tracing: AXI_Full master _T_28 // Ignored: Inlined leading underscore at AXI_Full.v:115
        // Tracing: AXI_Full master _GEN_35 // Ignored: Inlined leading underscore at AXI_Full.v:116
        vcdp->declBit(c+4,"AXI_Full master rnext",-1);
        // Tracing: AXI_Full master _T_30 // Ignored: Inlined leading underscore at AXI_Full.v:118
        // Tracing: AXI_Full master _T_31 // Ignored: Inlined leading underscore at AXI_Full.v:119
        // Tracing: AXI_Full master _T_32 // Ignored: Inlined leading underscore at AXI_Full.v:120
        // Tracing: AXI_Full master _GEN_36 // Ignored: Inlined leading underscore at AXI_Full.v:121
        // Tracing: AXI_Full master _GEN_37 // Ignored: Inlined leading underscore at AXI_Full.v:122
        // Tracing: AXI_Full master _T_33 // Ignored: Inlined leading underscore at AXI_Full.v:123
        // Tracing: AXI_Full master _T_34 // Ignored: Inlined leading underscore at AXI_Full.v:124
        // Tracing: AXI_Full master _T_35 // Ignored: Inlined leading underscore at AXI_Full.v:125
        // Tracing: AXI_Full master _T_37 // Ignored: Inlined leading underscore at AXI_Full.v:126
        // Tracing: AXI_Full master _GEN_41 // Ignored: Inlined leading underscore at AXI_Full.v:127
        // Tracing: AXI_Full master _GEN_42 // Ignored: Inlined leading underscore at AXI_Full.v:128
        // Tracing: AXI_Full master _T_45 // Ignored: Inlined leading underscore at AXI_Full.v:129
        // Tracing: AXI_Full master _T_46 // Ignored: Inlined leading underscore at AXI_Full.v:130
        // Tracing: AXI_Full master _T_47 // Ignored: Inlined leading underscore at AXI_Full.v:131
        // Tracing: AXI_Full master _GEN_43 // Ignored: Inlined leading underscore at AXI_Full.v:132
        // Tracing: AXI_Full master _GEN_44 // Ignored: Inlined leading underscore at AXI_Full.v:133
        // Tracing: AXI_Full master _T_49 // Ignored: Inlined leading underscore at AXI_Full.v:134
        // Tracing: AXI_Full master _T_50 // Ignored: Inlined leading underscore at AXI_Full.v:135
        // Tracing: AXI_Full master _T_51 // Ignored: Inlined leading underscore at AXI_Full.v:136
        // Tracing: AXI_Full master _GEN_45 // Ignored: Inlined leading underscore at AXI_Full.v:137
        // Tracing: AXI_Full master _GEN_46 // Ignored: Inlined leading underscore at AXI_Full.v:138
        vcdp->declBus(c+39,"AXI_Full master mst_exec_state",-1,1,0);
        // Tracing: AXI_Full master _RAND_25 // Ignored: Inlined leading underscore at AXI_Full.v:140
        // Tracing: AXI_Full master _T_52 // Ignored: Inlined leading underscore at AXI_Full.v:141
        // Tracing: AXI_Full master _T_54 // Ignored: Inlined leading underscore at AXI_Full.v:142
        // Tracing: AXI_Full master _T_60 // Ignored: Inlined leading underscore at AXI_Full.v:143
        // Tracing: AXI_Full master _T_66 // Ignored: Inlined leading underscore at AXI_Full.v:144
        // Tracing: AXI_Full master _T_56 // Ignored: Inlined leading underscore at AXI_Full.v:145
        // Tracing: AXI_Full master _T_57 // Ignored: Inlined leading underscore at AXI_Full.v:146
        // Tracing: AXI_Full master _T_58 // Ignored: Inlined leading underscore at AXI_Full.v:147
        // Tracing: AXI_Full master _T_59 // Ignored: Inlined leading underscore at AXI_Full.v:148
        // Tracing: AXI_Full master _T_62 // Ignored: Inlined leading underscore at AXI_Full.v:149
        // Tracing: AXI_Full master _T_63 // Ignored: Inlined leading underscore at AXI_Full.v:150
        // Tracing: AXI_Full master _T_64 // Ignored: Inlined leading underscore at AXI_Full.v:151
        // Tracing: AXI_Full master _T_65 // Ignored: Inlined leading underscore at AXI_Full.v:152
        // Tracing: AXI_Full master _GEN_57 // Ignored: Inlined leading underscore at AXI_Full.v:153
        // Tracing: AXI_Full master _T_67 // Ignored: Inlined leading underscore at AXI_Full.v:154
        // Tracing: AXI_Full master _GEN_70 // Ignored: Inlined leading underscore at AXI_Full.v:155
        // Tracing: AXI_Full master _GEN_71 // Ignored: Inlined leading underscore at AXI_Full.v:156
        // Tracing: AXI_Full master _T_69 // Ignored: Inlined leading underscore at AXI_Full.v:157
        // Tracing: AXI_Full master _T_70 // Ignored: Inlined leading underscore at AXI_Full.v:158
        // Tracing: AXI_Full master _GEN_72 // Ignored: Inlined leading underscore at AXI_Full.v:159
        // Tracing: AXI_Full master _T_72 // Ignored: Inlined leading underscore at AXI_Full.v:160
        // Tracing: AXI_Full master _GEN_73 // Ignored: Inlined leading underscore at AXI_Full.v:161
        // Tracing: AXI_Full master _GEN_74 // Ignored: Inlined leading underscore at AXI_Full.v:162
        // Tracing: AXI_Full master _T_74 // Ignored: Inlined leading underscore at AXI_Full.v:163
        // Tracing: AXI_Full master _T_75 // Ignored: Inlined leading underscore at AXI_Full.v:164
        // Tracing: AXI_Full master _T_77 // Ignored: Inlined leading underscore at AXI_Full.v:165
        // Tracing: AXI_Full master _GEN_75 // Ignored: Inlined leading underscore at AXI_Full.v:166
        vcdp->declBit(c+89,"AXI_Full slave clock",-1);
        vcdp->declBit(c+90,"AXI_Full slave reset",-1);
        vcdp->declBus(c+8,"AXI_Full slave io_S_AXI_AWADDR",-1,31,0);
        vcdp->declBit(c+9,"AXI_Full slave io_S_AXI_AWVALID",-1);
        vcdp->declBit(c+10,"AXI_Full slave io_S_AXI_AWREADY",-1);
        vcdp->declBus(c+11,"AXI_Full slave io_S_AXI_WDATA",-1,31,0);
        vcdp->declBit(c+12,"AXI_Full slave io_S_AXI_WLAST",-1);
        vcdp->declBit(c+13,"AXI_Full slave io_S_AXI_WVALID",-1);
        vcdp->declBit(c+14,"AXI_Full slave io_S_AXI_WREADY",-1);
        vcdp->declBit(c+15,"AXI_Full slave io_S_AXI_BVALID",-1);
        vcdp->declBit(c+16,"AXI_Full slave io_S_AXI_BREADY",-1);
        vcdp->declBus(c+17,"AXI_Full slave io_S_AXI_ARADDR",-1,31,0);
        vcdp->declBit(c+18,"AXI_Full slave io_S_AXI_ARVALID",-1);
        vcdp->declBit(c+19,"AXI_Full slave io_S_AXI_ARREADY",-1);
        vcdp->declBus(c+1,"AXI_Full slave io_S_AXI_RDATA",-1,31,0);
        vcdp->declBit(c+20,"AXI_Full slave io_S_AXI_RLAST",-1);
        vcdp->declBit(c+21,"AXI_Full slave io_S_AXI_RVALID",-1);
        vcdp->declBit(c+22,"AXI_Full slave io_S_AXI_RREADY",-1);
        vcdp->declBit(c+10,"AXI_Full slave axi_awready",-1);
        // Tracing: AXI_Full slave _RAND_0 // Ignored: Inlined leading underscore at AXI_Full.v:607
        vcdp->declBit(c+14,"AXI_Full slave axi_wready",-1);
        // Tracing: AXI_Full slave _RAND_1 // Ignored: Inlined leading underscore at AXI_Full.v:609
        vcdp->declBit(c+15,"AXI_Full slave axi_bvalid",-1);
        // Tracing: AXI_Full slave _RAND_2 // Ignored: Inlined leading underscore at AXI_Full.v:611
        vcdp->declBit(c+19,"AXI_Full slave axi_arready",-1);
        // Tracing: AXI_Full slave _RAND_3 // Ignored: Inlined leading underscore at AXI_Full.v:613
        vcdp->declBit(c+20,"AXI_Full slave axi_rlast",-1);
        // Tracing: AXI_Full slave _RAND_4 // Ignored: Inlined leading underscore at AXI_Full.v:615
        vcdp->declBit(c+21,"AXI_Full slave axi_rvalid",-1);
        // Tracing: AXI_Full slave _RAND_5 // Ignored: Inlined leading underscore at AXI_Full.v:617
        // Tracing: AXI_Full slave _T // Ignored: Inlined leading underscore at AXI_Full.v:618
        // Tracing: AXI_Full slave _T_1 // Ignored: Inlined leading underscore at AXI_Full.v:619
        vcdp->declBit(c+40,"AXI_Full slave axi_awv_awr_flag",-1);
        // Tracing: AXI_Full slave _RAND_6 // Ignored: Inlined leading underscore at AXI_Full.v:621
        // Tracing: AXI_Full slave _T_2 // Ignored: Inlined leading underscore at AXI_Full.v:622
        // Tracing: AXI_Full slave _T_3 // Ignored: Inlined leading underscore at AXI_Full.v:623
        vcdp->declBit(c+41,"AXI_Full slave axi_arv_arr_flag",-1);
        // Tracing: AXI_Full slave _RAND_7 // Ignored: Inlined leading underscore at AXI_Full.v:625
        // Tracing: AXI_Full slave _T_4 // Ignored: Inlined leading underscore at AXI_Full.v:626
        // Tracing: AXI_Full slave _T_5 // Ignored: Inlined leading underscore at AXI_Full.v:627
        // Tracing: AXI_Full slave _T_6 // Ignored: Inlined leading underscore at AXI_Full.v:628
        // Tracing: AXI_Full slave _GEN_0 // Ignored: Inlined leading underscore at AXI_Full.v:629
        // Tracing: AXI_Full slave _GEN_1 // Ignored: Inlined leading underscore at AXI_Full.v:630
        // Tracing: AXI_Full slave _GEN_2 // Ignored: Inlined leading underscore at AXI_Full.v:631
        // Tracing: AXI_Full slave _GEN_3 // Ignored: Inlined leading underscore at AXI_Full.v:632
        vcdp->declBus(c+42,"AXI_Full slave axi_awaddr",-1,31,0);
        // Tracing: AXI_Full slave _RAND_8 // Ignored: Inlined leading underscore at AXI_Full.v:634
        vcdp->declBus(c+43,"AXI_Full slave axi_awburst",-1,1,0);
        // Tracing: AXI_Full slave _RAND_9 // Ignored: Inlined leading underscore at AXI_Full.v:636
        vcdp->declBus(c+44,"AXI_Full slave axi_awlen",-1,7,0);
        // Tracing: AXI_Full slave _RAND_10 // Ignored: Inlined leading underscore at AXI_Full.v:638
        vcdp->declBus(c+45,"AXI_Full slave axi_awlen_cntr",-1,7,0);
        // Tracing: AXI_Full slave _RAND_11 // Ignored: Inlined leading underscore at AXI_Full.v:640
        // Tracing: AXI_Full slave _T_12 // Ignored: Inlined leading underscore at AXI_Full.v:641
        // Tracing: AXI_Full slave _T_13 // Ignored: Inlined leading underscore at AXI_Full.v:642
        // Tracing: AXI_Full slave _T_14 // Ignored: Inlined leading underscore at AXI_Full.v:643
        vcdp->declBus(c+46,"AXI_Full slave aw_wrap_size",-1,10,0);
        // Tracing: AXI_Full slave _GEN_135 // Ignored: Inlined leading underscore at AXI_Full.v:645
        // Tracing: AXI_Full slave _T_26 // Ignored: Inlined leading underscore at AXI_Full.v:646
        vcdp->declBit(c+47,"AXI_Full slave aw_wrap_en",-1);
        // Tracing: AXI_Full slave _T_15 // Ignored: Inlined leading underscore at AXI_Full.v:648
        // Tracing: AXI_Full slave _T_17 // Ignored: Inlined leading underscore at AXI_Full.v:649
        // Tracing: AXI_Full slave _T_19 // Ignored: Inlined leading underscore at AXI_Full.v:650
        // Tracing: AXI_Full slave _T_20 // Ignored: Inlined leading underscore at AXI_Full.v:651
        // Tracing: AXI_Full slave _T_21 // Ignored: Inlined leading underscore at AXI_Full.v:652
        // Tracing: AXI_Full slave _T_22 // Ignored: Inlined leading underscore at AXI_Full.v:653
        // Tracing: AXI_Full slave _T_24 // Ignored: Inlined leading underscore at AXI_Full.v:654
        // Tracing: AXI_Full slave _T_28 // Ignored: Inlined leading underscore at AXI_Full.v:655
        // Tracing: AXI_Full slave _T_25 // Ignored: Inlined leading underscore at AXI_Full.v:656
        // Tracing: AXI_Full slave _T_23 // Ignored: Inlined leading underscore at AXI_Full.v:657
        // Tracing: AXI_Full slave _T_18 // Ignored: Inlined leading underscore at AXI_Full.v:658
        // Tracing: AXI_Full slave _T_16 // Ignored: Inlined leading underscore at AXI_Full.v:659
        // Tracing: AXI_Full slave _GEN_4 // Ignored: Inlined leading underscore at AXI_Full.v:660
        // Tracing: AXI_Full slave _GEN_5 // Ignored: Inlined leading underscore at AXI_Full.v:661
        // Tracing: AXI_Full slave _GEN_6 // Ignored: Inlined leading underscore at AXI_Full.v:662
        // Tracing: AXI_Full slave _GEN_9 // Ignored: Inlined leading underscore at AXI_Full.v:663
        // Tracing: AXI_Full slave _T_34 // Ignored: Inlined leading underscore at AXI_Full.v:664
        // Tracing: AXI_Full slave _T_35 // Ignored: Inlined leading underscore at AXI_Full.v:665
        // Tracing: AXI_Full slave _T_36 // Ignored: Inlined leading underscore at AXI_Full.v:666
        // Tracing: AXI_Full slave _GEN_10 // Ignored: Inlined leading underscore at AXI_Full.v:667
        // Tracing: AXI_Full slave _GEN_11 // Ignored: Inlined leading underscore at AXI_Full.v:668
        // Tracing: AXI_Full slave _T_38 // Ignored: Inlined leading underscore at AXI_Full.v:669
        // Tracing: AXI_Full slave _T_39 // Ignored: Inlined leading underscore at AXI_Full.v:670
        // Tracing: AXI_Full slave _T_40 // Ignored: Inlined leading underscore at AXI_Full.v:671
        // Tracing: AXI_Full slave _T_41 // Ignored: Inlined leading underscore at AXI_Full.v:672
        // Tracing: AXI_Full slave _T_42 // Ignored: Inlined leading underscore at AXI_Full.v:673
        // Tracing: AXI_Full slave _T_43 // Ignored: Inlined leading underscore at AXI_Full.v:674
        // Tracing: AXI_Full slave _GEN_12 // Ignored: Inlined leading underscore at AXI_Full.v:675
        // Tracing: AXI_Full slave _GEN_13 // Ignored: Inlined leading underscore at AXI_Full.v:676
        // Tracing: AXI_Full slave _T_44 // Ignored: Inlined leading underscore at AXI_Full.v:677
        // Tracing: AXI_Full slave _T_45 // Ignored: Inlined leading underscore at AXI_Full.v:678
        // Tracing: AXI_Full slave _T_47 // Ignored: Inlined leading underscore at AXI_Full.v:679
        // Tracing: AXI_Full slave _T_49 // Ignored: Inlined leading underscore at AXI_Full.v:680
        // Tracing: AXI_Full slave _T_50 // Ignored: Inlined leading underscore at AXI_Full.v:681
        vcdp->declBus(c+48,"AXI_Full slave axi_arlen_cntr",-1,7,0);
        // Tracing: AXI_Full slave _RAND_12 // Ignored: Inlined leading underscore at AXI_Full.v:683
        vcdp->declBus(c+49,"AXI_Full slave axi_arlen",-1,7,0);
        // Tracing: AXI_Full slave _RAND_13 // Ignored: Inlined leading underscore at AXI_Full.v:685
        // Tracing: AXI_Full slave _T_51 // Ignored: Inlined leading underscore at AXI_Full.v:686
        // Tracing: AXI_Full slave _T_52 // Ignored: Inlined leading underscore at AXI_Full.v:687
        // Tracing: AXI_Full slave _GEN_15 // Ignored: Inlined leading underscore at AXI_Full.v:688
        // Tracing: AXI_Full slave _GEN_16 // Ignored: Inlined leading underscore at AXI_Full.v:689
        // Tracing: AXI_Full slave _GEN_17 // Ignored: Inlined leading underscore at AXI_Full.v:690
        // Tracing: AXI_Full slave _GEN_18 // Ignored: Inlined leading underscore at AXI_Full.v:691
        // Tracing: AXI_Full slave _T_56 // Ignored: Inlined leading underscore at AXI_Full.v:692
        vcdp->declBus(c+50,"AXI_Full slave axi_araddr",-1,31,0);
        // Tracing: AXI_Full slave _RAND_14 // Ignored: Inlined leading underscore at AXI_Full.v:694
        vcdp->declBus(c+51,"AXI_Full slave axi_arburst",-1,1,0);
        // Tracing: AXI_Full slave _RAND_15 // Ignored: Inlined leading underscore at AXI_Full.v:696
        // Tracing: AXI_Full slave _T_58 // Ignored: Inlined leading underscore at AXI_Full.v:697
        // Tracing: AXI_Full slave _T_59 // Ignored: Inlined leading underscore at AXI_Full.v:698
        // Tracing: AXI_Full slave _T_60 // Ignored: Inlined leading underscore at AXI_Full.v:699
        vcdp->declBus(c+52,"AXI_Full slave ar_wrap_size",-1,10,0);
        // Tracing: AXI_Full slave _GEN_138 // Ignored: Inlined leading underscore at AXI_Full.v:701
        // Tracing: AXI_Full slave _T_72 // Ignored: Inlined leading underscore at AXI_Full.v:702
        vcdp->declBit(c+53,"AXI_Full slave ar_wrap_en",-1);
        // Tracing: AXI_Full slave _T_81 // Ignored: Inlined leading underscore at AXI_Full.v:704
        // Tracing: AXI_Full slave _T_82 // Ignored: Inlined leading underscore at AXI_Full.v:705
        // Tracing: AXI_Full slave _T_83 // Ignored: Inlined leading underscore at AXI_Full.v:706
        // Tracing: AXI_Full slave _T_61 // Ignored: Inlined leading underscore at AXI_Full.v:707
        // Tracing: AXI_Full slave _T_63 // Ignored: Inlined leading underscore at AXI_Full.v:708
        // Tracing: AXI_Full slave _T_65 // Ignored: Inlined leading underscore at AXI_Full.v:709
        // Tracing: AXI_Full slave _T_66 // Ignored: Inlined leading underscore at AXI_Full.v:710
        // Tracing: AXI_Full slave _T_67 // Ignored: Inlined leading underscore at AXI_Full.v:711
        // Tracing: AXI_Full slave _T_68 // Ignored: Inlined leading underscore at AXI_Full.v:712
        // Tracing: AXI_Full slave _T_70 // Ignored: Inlined leading underscore at AXI_Full.v:713
        // Tracing: AXI_Full slave _T_74 // Ignored: Inlined leading underscore at AXI_Full.v:714
        // Tracing: AXI_Full slave _T_71 // Ignored: Inlined leading underscore at AXI_Full.v:715
        // Tracing: AXI_Full slave _T_69 // Ignored: Inlined leading underscore at AXI_Full.v:716
        // Tracing: AXI_Full slave _T_64 // Ignored: Inlined leading underscore at AXI_Full.v:717
        // Tracing: AXI_Full slave _T_62 // Ignored: Inlined leading underscore at AXI_Full.v:718
        // Tracing: AXI_Full slave _GEN_19 // Ignored: Inlined leading underscore at AXI_Full.v:719
        // Tracing: AXI_Full slave _GEN_20 // Ignored: Inlined leading underscore at AXI_Full.v:720
        // Tracing: AXI_Full slave _GEN_21 // Ignored: Inlined leading underscore at AXI_Full.v:721
        // Tracing: AXI_Full slave _GEN_23 // Ignored: Inlined leading underscore at AXI_Full.v:722
        // Tracing: AXI_Full slave _GEN_24 // Ignored: Inlined leading underscore at AXI_Full.v:723
        // Tracing: AXI_Full slave _GEN_27 // Ignored: Inlined leading underscore at AXI_Full.v:724
        // Tracing: AXI_Full slave _T_84 // Ignored: Inlined leading underscore at AXI_Full.v:725
        // Tracing: AXI_Full slave _T_85 // Ignored: Inlined leading underscore at AXI_Full.v:726
        // Tracing: AXI_Full slave _GEN_29 // Ignored: Inlined leading underscore at AXI_Full.v:727
        // Tracing: AXI_Full slave _GEN_30 // Ignored: Inlined leading underscore at AXI_Full.v:728
        vcdp->declBit(c+3,"AXI_Full slave mem_wren",-1);
        // Tracing: AXI_Full slave _T_87 // Ignored: Inlined leading underscore at AXI_Full.v:730
        vcdp->declBus(c+54,"AXI_Full slave byte_ram_0",-1,31,0);
        // Tracing: AXI_Full slave _RAND_16 // Ignored: Inlined leading underscore at AXI_Full.v:732
        vcdp->declBus(c+55,"AXI_Full slave byte_ram_1",-1,31,0);
        // Tracing: AXI_Full slave _RAND_17 // Ignored: Inlined leading underscore at AXI_Full.v:734
        vcdp->declBus(c+56,"AXI_Full slave byte_ram_2",-1,31,0);
        // Tracing: AXI_Full slave _RAND_18 // Ignored: Inlined leading underscore at AXI_Full.v:736
        vcdp->declBus(c+57,"AXI_Full slave byte_ram_3",-1,31,0);
        // Tracing: AXI_Full slave _RAND_19 // Ignored: Inlined leading underscore at AXI_Full.v:738
        vcdp->declBus(c+58,"AXI_Full slave byte_ram_4",-1,31,0);
        // Tracing: AXI_Full slave _RAND_20 // Ignored: Inlined leading underscore at AXI_Full.v:740
        vcdp->declBus(c+59,"AXI_Full slave byte_ram_5",-1,31,0);
        // Tracing: AXI_Full slave _RAND_21 // Ignored: Inlined leading underscore at AXI_Full.v:742
        vcdp->declBus(c+60,"AXI_Full slave byte_ram_6",-1,31,0);
        // Tracing: AXI_Full slave _RAND_22 // Ignored: Inlined leading underscore at AXI_Full.v:744
        vcdp->declBus(c+61,"AXI_Full slave byte_ram_7",-1,31,0);
        // Tracing: AXI_Full slave _RAND_23 // Ignored: Inlined leading underscore at AXI_Full.v:746
        vcdp->declBus(c+62,"AXI_Full slave byte_ram_8",-1,31,0);
        // Tracing: AXI_Full slave _RAND_24 // Ignored: Inlined leading underscore at AXI_Full.v:748
        vcdp->declBus(c+63,"AXI_Full slave byte_ram_9",-1,31,0);
        // Tracing: AXI_Full slave _RAND_25 // Ignored: Inlined leading underscore at AXI_Full.v:750
        vcdp->declBus(c+64,"AXI_Full slave byte_ram_10",-1,31,0);
        // Tracing: AXI_Full slave _RAND_26 // Ignored: Inlined leading underscore at AXI_Full.v:752
        vcdp->declBus(c+65,"AXI_Full slave byte_ram_11",-1,31,0);
        // Tracing: AXI_Full slave _RAND_27 // Ignored: Inlined leading underscore at AXI_Full.v:754
        vcdp->declBus(c+66,"AXI_Full slave byte_ram_12",-1,31,0);
        // Tracing: AXI_Full slave _RAND_28 // Ignored: Inlined leading underscore at AXI_Full.v:756
        vcdp->declBus(c+67,"AXI_Full slave byte_ram_13",-1,31,0);
        // Tracing: AXI_Full slave _RAND_29 // Ignored: Inlined leading underscore at AXI_Full.v:758
        vcdp->declBus(c+68,"AXI_Full slave byte_ram_14",-1,31,0);
        // Tracing: AXI_Full slave _RAND_30 // Ignored: Inlined leading underscore at AXI_Full.v:760
        vcdp->declBus(c+69,"AXI_Full slave byte_ram_15",-1,31,0);
        // Tracing: AXI_Full slave _RAND_31 // Ignored: Inlined leading underscore at AXI_Full.v:762
        vcdp->declBus(c+70,"AXI_Full slave byte_ram_16",-1,31,0);
        // Tracing: AXI_Full slave _RAND_32 // Ignored: Inlined leading underscore at AXI_Full.v:764
        vcdp->declBus(c+71,"AXI_Full slave byte_ram_17",-1,31,0);
        // Tracing: AXI_Full slave _RAND_33 // Ignored: Inlined leading underscore at AXI_Full.v:766
        vcdp->declBus(c+72,"AXI_Full slave byte_ram_18",-1,31,0);
        // Tracing: AXI_Full slave _RAND_34 // Ignored: Inlined leading underscore at AXI_Full.v:768
        vcdp->declBus(c+73,"AXI_Full slave byte_ram_19",-1,31,0);
        // Tracing: AXI_Full slave _RAND_35 // Ignored: Inlined leading underscore at AXI_Full.v:770
        vcdp->declBus(c+74,"AXI_Full slave byte_ram_20",-1,31,0);
        // Tracing: AXI_Full slave _RAND_36 // Ignored: Inlined leading underscore at AXI_Full.v:772
        vcdp->declBus(c+75,"AXI_Full slave byte_ram_21",-1,31,0);
        // Tracing: AXI_Full slave _RAND_37 // Ignored: Inlined leading underscore at AXI_Full.v:774
        vcdp->declBus(c+76,"AXI_Full slave byte_ram_22",-1,31,0);
        // Tracing: AXI_Full slave _RAND_38 // Ignored: Inlined leading underscore at AXI_Full.v:776
        vcdp->declBus(c+77,"AXI_Full slave byte_ram_23",-1,31,0);
        // Tracing: AXI_Full slave _RAND_39 // Ignored: Inlined leading underscore at AXI_Full.v:778
        vcdp->declBus(c+78,"AXI_Full slave byte_ram_24",-1,31,0);
        // Tracing: AXI_Full slave _RAND_40 // Ignored: Inlined leading underscore at AXI_Full.v:780
        vcdp->declBus(c+79,"AXI_Full slave byte_ram_25",-1,31,0);
        // Tracing: AXI_Full slave _RAND_41 // Ignored: Inlined leading underscore at AXI_Full.v:782
        vcdp->declBus(c+80,"AXI_Full slave byte_ram_26",-1,31,0);
        // Tracing: AXI_Full slave _RAND_42 // Ignored: Inlined leading underscore at AXI_Full.v:784
        vcdp->declBus(c+81,"AXI_Full slave byte_ram_27",-1,31,0);
        // Tracing: AXI_Full slave _RAND_43 // Ignored: Inlined leading underscore at AXI_Full.v:786
        vcdp->declBus(c+82,"AXI_Full slave byte_ram_28",-1,31,0);
        // Tracing: AXI_Full slave _RAND_44 // Ignored: Inlined leading underscore at AXI_Full.v:788
        vcdp->declBus(c+83,"AXI_Full slave byte_ram_29",-1,31,0);
        // Tracing: AXI_Full slave _RAND_45 // Ignored: Inlined leading underscore at AXI_Full.v:790
        vcdp->declBus(c+84,"AXI_Full slave byte_ram_30",-1,31,0);
        // Tracing: AXI_Full slave _RAND_46 // Ignored: Inlined leading underscore at AXI_Full.v:792
        vcdp->declBus(c+85,"AXI_Full slave byte_ram_31",-1,31,0);
        // Tracing: AXI_Full slave _RAND_47 // Ignored: Inlined leading underscore at AXI_Full.v:794
        // Tracing: AXI_Full slave _T_88 // Ignored: Inlined leading underscore at AXI_Full.v:795
        // Tracing: AXI_Full slave _T_90 // Ignored: Inlined leading underscore at AXI_Full.v:796
        // Tracing: AXI_Full slave _T_89 // Ignored: Inlined leading underscore at AXI_Full.v:797
        vcdp->declBus(c+86,"AXI_Full slave mem_address",-1,3,0);
        // Tracing: AXI_Full slave _T_91 // Ignored: Inlined leading underscore at AXI_Full.v:799
        // Tracing: AXI_Full slave _T_93 // Ignored: Inlined leading underscore at AXI_Full.v:800
        // Tracing: AXI_Full slave _T_92 // Ignored: Inlined leading underscore at AXI_Full.v:801
        vcdp->declBus(c+5,"AXI_Full slave mem_select",-1,1,0);
        // Tracing: AXI_Full slave _GEN_141 // Ignored: Inlined leading underscore at AXI_Full.v:803
        // Tracing: AXI_Full slave _T_94 // Ignored: Inlined leading underscore at AXI_Full.v:804
        // Tracing: AXI_Full slave _GEN_142 // Ignored: Inlined leading underscore at AXI_Full.v:805
        // Tracing: AXI_Full slave _T_95 // Ignored: Inlined leading underscore at AXI_Full.v:806
        vcdp->declBus(c+87,"AXI_Full slave mem_data_out_0",-1,31,0);
        // Tracing: AXI_Full slave _RAND_48 // Ignored: Inlined leading underscore at AXI_Full.v:808
        vcdp->declBus(c+88,"AXI_Full slave mem_data_out_1",-1,31,0);
        // Tracing: AXI_Full slave _RAND_49 // Ignored: Inlined leading underscore at AXI_Full.v:810
        // Tracing: AXI_Full slave _GEN_133 // Ignored: Inlined leading underscore at AXI_Full.v:811
    }
}

void VAXI_Full::traceFullThis__1(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Full* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->fullBus(c+1,(((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid)
                             ? ((1U == (IData)(vlTOPp->AXI_Full__DOT__slave__DOT__mem_select))
                                 ? vlTOPp->AXI_Full__DOT__slave__DOT__mem_data_out_1
                                 : vlTOPp->AXI_Full__DOT__slave__DOT__mem_data_out_0)
                             : 0U)),32);
        vcdp->fullBit(c+2,(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_pulse));
        vcdp->fullBit(c+3,(vlTOPp->AXI_Full__DOT__master__DOT__wnext));
        vcdp->fullBit(c+4,(vlTOPp->AXI_Full__DOT__slave__DOT___T_50));
        vcdp->fullBus(c+5,(vlTOPp->AXI_Full__DOT__slave__DOT__mem_select),2);
        vcdp->fullBit(c+6,(vlTOPp->AXI_Full__DOT__master__DOT__compare_done));
        vcdp->fullBit(c+7,(vlTOPp->AXI_Full__DOT__master__DOT__error_reg));
        vcdp->fullBus(c+8,(((IData)(0x40000000U) + vlTOPp->AXI_Full__DOT__master__DOT__axi_awaddr)),32);
        vcdp->fullBit(c+9,(vlTOPp->AXI_Full__DOT__master__DOT__axi_awvalid));
        vcdp->fullBit(c+10,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awready));
        vcdp->fullBus(c+11,(vlTOPp->AXI_Full__DOT__master__DOT__axi_wdata),32);
        vcdp->fullBit(c+12,(vlTOPp->AXI_Full__DOT__master__DOT__axi_wlast));
        vcdp->fullBit(c+13,(vlTOPp->AXI_Full__DOT__master__DOT__axi_wvalid));
        vcdp->fullBit(c+14,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_wready));
        vcdp->fullBit(c+15,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_bvalid));
        vcdp->fullBit(c+16,(vlTOPp->AXI_Full__DOT__master__DOT__axi_bready));
        vcdp->fullBus(c+17,(((IData)(0x40000000U) + vlTOPp->AXI_Full__DOT__master__DOT__axi_araddr)),32);
        vcdp->fullBit(c+18,(vlTOPp->AXI_Full__DOT__master__DOT__axi_arvalid));
        vcdp->fullBit(c+19,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arready));
        vcdp->fullBit(c+20,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rlast));
        vcdp->fullBit(c+21,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_rvalid));
        vcdp->fullBit(c+22,(vlTOPp->AXI_Full__DOT__master__DOT__axi_rready));
        vcdp->fullBus(c+23,(vlTOPp->AXI_Full__DOT__master__DOT__axi_awaddr),32);
        vcdp->fullBus(c+24,(vlTOPp->AXI_Full__DOT__master__DOT__axi_araddr),32);
        vcdp->fullBit(c+25,(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_ff));
        vcdp->fullBit(c+26,(vlTOPp->AXI_Full__DOT__master__DOT__init_txn_ff2));
        vcdp->fullBus(c+27,(vlTOPp->AXI_Full__DOT__master__DOT__read_index),5);
        vcdp->fullBit(c+28,(vlTOPp->AXI_Full__DOT__master__DOT__read_mismatch));
        vcdp->fullBus(c+29,(vlTOPp->AXI_Full__DOT__master__DOT__expected_rdata),32);
        vcdp->fullBus(c+30,(vlTOPp->AXI_Full__DOT__master__DOT__write_burst_counter),2);
        vcdp->fullBus(c+31,(vlTOPp->AXI_Full__DOT__master__DOT__read_burst_counter),2);
        vcdp->fullBit(c+32,(vlTOPp->AXI_Full__DOT__master__DOT__burst_write_active));
        vcdp->fullBit(c+33,(vlTOPp->AXI_Full__DOT__master__DOT__writes_done));
        vcdp->fullBit(c+34,(vlTOPp->AXI_Full__DOT__master__DOT__burst_read_active));
        vcdp->fullBit(c+35,(vlTOPp->AXI_Full__DOT__master__DOT__reads_done));
        vcdp->fullBus(c+36,(vlTOPp->AXI_Full__DOT__master__DOT__write_index),5);
        vcdp->fullBit(c+37,(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_write));
        vcdp->fullBit(c+38,(vlTOPp->AXI_Full__DOT__master__DOT__start_single_burst_read));
        vcdp->fullBus(c+39,(vlTOPp->AXI_Full__DOT__master__DOT__mst_exec_state),2);
        vcdp->fullBit(c+40,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag));
        vcdp->fullBit(c+41,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag));
        vcdp->fullBus(c+42,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr),32);
        vcdp->fullBus(c+43,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awburst),2);
        vcdp->fullBus(c+44,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen),8);
        vcdp->fullBus(c+45,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen_cntr),8);
        vcdp->fullBus(c+46,((0x7ffU & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen) 
                                       << 2U))),11);
        vcdp->fullBit(c+47,(((0x7ffU & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                        & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen) 
                                           << 2U))) 
                             == (0x7ffU & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awlen) 
                                           << 2U)))));
        vcdp->fullBus(c+48,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen_cntr),8);
        vcdp->fullBus(c+49,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen),8);
        vcdp->fullBus(c+50,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr),32);
        vcdp->fullBus(c+51,(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arburst),2);
        vcdp->fullBus(c+52,((0x7ffU & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen) 
                                       << 2U))),11);
        vcdp->fullBit(c+53,(((0x7ffU & (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                        & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen) 
                                           << 2U))) 
                             == (0x7ffU & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arlen) 
                                           << 2U)))));
        vcdp->fullBus(c+54,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_0),32);
        vcdp->fullBus(c+55,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_1),32);
        vcdp->fullBus(c+56,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_2),32);
        vcdp->fullBus(c+57,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_3),32);
        vcdp->fullBus(c+58,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_4),32);
        vcdp->fullBus(c+59,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_5),32);
        vcdp->fullBus(c+60,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_6),32);
        vcdp->fullBus(c+61,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_7),32);
        vcdp->fullBus(c+62,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_8),32);
        vcdp->fullBus(c+63,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_9),32);
        vcdp->fullBus(c+64,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_10),32);
        vcdp->fullBus(c+65,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_11),32);
        vcdp->fullBus(c+66,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_12),32);
        vcdp->fullBus(c+67,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_13),32);
        vcdp->fullBus(c+68,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_14),32);
        vcdp->fullBus(c+69,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_15),32);
        vcdp->fullBus(c+70,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_16),32);
        vcdp->fullBus(c+71,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_17),32);
        vcdp->fullBus(c+72,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_18),32);
        vcdp->fullBus(c+73,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_19),32);
        vcdp->fullBus(c+74,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_20),32);
        vcdp->fullBus(c+75,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_21),32);
        vcdp->fullBus(c+76,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_22),32);
        vcdp->fullBus(c+77,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_23),32);
        vcdp->fullBus(c+78,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_24),32);
        vcdp->fullBus(c+79,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_25),32);
        vcdp->fullBus(c+80,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_26),32);
        vcdp->fullBus(c+81,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_27),32);
        vcdp->fullBus(c+82,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_28),32);
        vcdp->fullBus(c+83,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_29),32);
        vcdp->fullBus(c+84,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_30),32);
        vcdp->fullBus(c+85,(vlTOPp->AXI_Full__DOT__slave__DOT__byte_ram_31),32);
        vcdp->fullBus(c+86,((0xfU & ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_arv_arr_flag)
                                      ? (vlTOPp->AXI_Full__DOT__slave__DOT__axi_araddr 
                                         >> 2U) : ((IData)(vlTOPp->AXI_Full__DOT__slave__DOT__axi_awv_awr_flag)
                                                    ? 
                                                   (vlTOPp->AXI_Full__DOT__slave__DOT__axi_awaddr 
                                                    >> 2U)
                                                    : 0U)))),4);
        vcdp->fullBus(c+87,(vlTOPp->AXI_Full__DOT__slave__DOT__mem_data_out_0),32);
        vcdp->fullBus(c+88,(vlTOPp->AXI_Full__DOT__slave__DOT__mem_data_out_1),32);
        vcdp->fullBit(c+89,(vlTOPp->clock));
        vcdp->fullBit(c+90,(vlTOPp->reset));
        vcdp->fullBit(c+91,(vlTOPp->io_INIT_AXI_TXN));
        vcdp->fullBit(c+92,(vlTOPp->io_TXN_DONE));
        vcdp->fullBit(c+93,(vlTOPp->io_ERROR));
    }
}
