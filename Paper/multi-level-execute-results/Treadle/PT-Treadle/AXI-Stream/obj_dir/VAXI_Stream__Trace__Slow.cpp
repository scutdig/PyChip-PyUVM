// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VAXI_Stream__Syms.h"


//======================

void VAXI_Stream::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback(&VAXI_Stream::traceInit, &VAXI_Stream::traceFull, &VAXI_Stream::traceChg, this);
}
void VAXI_Stream::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    VAXI_Stream* t = (VAXI_Stream*)userthis;
    VAXI_Stream__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vcdp->scopeEscape(' ');
    t->traceInitThis(vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void VAXI_Stream::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VAXI_Stream* t = (VAXI_Stream*)userthis;
    VAXI_Stream__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    t->traceFullThis(vlSymsp, vcdp, code);
}

//======================


void VAXI_Stream::traceInitThis(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    vcdp->module(vlSymsp->name());  // Setup signal names
    // Body
    {
        vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void VAXI_Stream::traceFullThis(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VAXI_Stream::traceInitThis__1(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->declBit(c+15,"clock",-1);
        vcdp->declBit(c+16,"reset",-1);
        vcdp->declBit(c+17,"io_AXIS_TVALID",-1);
        vcdp->declBit(c+15,"AXI_Stream clock",-1);
        vcdp->declBit(c+16,"AXI_Stream reset",-1);
        vcdp->declBit(c+17,"AXI_Stream io_AXIS_TVALID",-1);
        vcdp->declBit(c+15,"AXI_Stream slave_clock",-1);
        vcdp->declBit(c+16,"AXI_Stream slave_reset",-1);
        vcdp->declBit(c+4,"AXI_Stream slave_io_S_AXIS_TVALID",-1);
        vcdp->declBit(c+5,"AXI_Stream slave_io_S_AXIS_TLAST",-1);
        vcdp->declBit(c+6,"AXI_Stream slave_io_S_AXIS_TREADY",-1);
        vcdp->declBit(c+15,"AXI_Stream master_clock",-1);
        vcdp->declBit(c+16,"AXI_Stream master_reset",-1);
        vcdp->declBit(c+4,"AXI_Stream master_io_M_AXIS_TVALID",-1);
        vcdp->declBit(c+5,"AXI_Stream master_io_M_AXIS_TLAST",-1);
        vcdp->declBit(c+6,"AXI_Stream master_io_M_AXIS_TREADY",-1);
        vcdp->declBit(c+15,"AXI_Stream slave clock",-1);
        vcdp->declBit(c+16,"AXI_Stream slave reset",-1);
        vcdp->declBit(c+4,"AXI_Stream slave io_S_AXIS_TVALID",-1);
        vcdp->declBit(c+5,"AXI_Stream slave io_S_AXIS_TLAST",-1);
        vcdp->declBit(c+6,"AXI_Stream slave io_S_AXIS_TREADY",-1);
        vcdp->declBus(c+7,"AXI_Stream slave mst_exec_state",-1,1,0);
        // Tracing: AXI_Stream slave _RAND_0 // Ignored: Inlined leading underscore at AXI_Stream.v:9
        // Tracing: AXI_Stream slave _T // Ignored: Inlined leading underscore at AXI_Stream.v:10
        vcdp->declBus(c+8,"AXI_Stream slave write_pointer",-1,4,0);
        // Tracing: AXI_Stream slave _RAND_1 // Ignored: Inlined leading underscore at AXI_Stream.v:12
        // Tracing: AXI_Stream slave _T_1 // Ignored: Inlined leading underscore at AXI_Stream.v:13
        vcdp->declBit(c+6,"AXI_Stream slave axis_tready",-1);
        // Tracing: AXI_Stream slave _T_2 // Ignored: Inlined leading underscore at AXI_Stream.v:15
        vcdp->declBit(c+9,"AXI_Stream slave writes_done",-1);
        // Tracing: AXI_Stream slave _RAND_2 // Ignored: Inlined leading underscore at AXI_Stream.v:17
        vcdp->declBit(c+1,"AXI_Stream slave fifo_wren",-1);
        // Tracing: AXI_Stream slave _T_5 // Ignored: Inlined leading underscore at AXI_Stream.v:19
        // Tracing: AXI_Stream slave _GEN_4 // Ignored: Inlined leading underscore at AXI_Stream.v:20
        // Tracing: AXI_Stream slave _GEN_5 // Ignored: Inlined leading underscore at AXI_Stream.v:21
        // Tracing: AXI_Stream slave _T_6 // Ignored: Inlined leading underscore at AXI_Stream.v:22
        // Tracing: AXI_Stream slave _T_7 // Ignored: Inlined leading underscore at AXI_Stream.v:23
        // Tracing: AXI_Stream slave _GEN_6 // Ignored: Inlined leading underscore at AXI_Stream.v:24
        // Tracing: AXI_Stream slave _GEN_7 // Ignored: Inlined leading underscore at AXI_Stream.v:25
        vcdp->declBit(c+15,"AXI_Stream master clock",-1);
        vcdp->declBit(c+16,"AXI_Stream master reset",-1);
        vcdp->declBit(c+4,"AXI_Stream master io_M_AXIS_TVALID",-1);
        vcdp->declBit(c+5,"AXI_Stream master io_M_AXIS_TLAST",-1);
        vcdp->declBit(c+6,"AXI_Stream master io_M_AXIS_TREADY",-1);
        vcdp->declBit(c+4,"AXI_Stream master axis_tvalid_delay",-1);
        // Tracing: AXI_Stream master _RAND_0 // Ignored: Inlined leading underscore at AXI_Stream.v:121
        vcdp->declBit(c+5,"AXI_Stream master axis_tlast_delay",-1);
        // Tracing: AXI_Stream master _RAND_1 // Ignored: Inlined leading underscore at AXI_Stream.v:123
        vcdp->declBus(c+10,"AXI_Stream master mst_exec_state",-1,1,0);
        // Tracing: AXI_Stream master _RAND_2 // Ignored: Inlined leading underscore at AXI_Stream.v:125
        // Tracing: AXI_Stream master _T // Ignored: Inlined leading underscore at AXI_Stream.v:126
        // Tracing: AXI_Stream master _T_1 // Ignored: Inlined leading underscore at AXI_Stream.v:127
        vcdp->declBus(c+11,"AXI_Stream master count",-1,5,0);
        // Tracing: AXI_Stream master _RAND_3 // Ignored: Inlined leading underscore at AXI_Stream.v:129
        // Tracing: AXI_Stream master _T_4 // Ignored: Inlined leading underscore at AXI_Stream.v:130
        vcdp->declBit(c+12,"AXI_Stream master tx_done",-1);
        // Tracing: AXI_Stream master _RAND_4 // Ignored: Inlined leading underscore at AXI_Stream.v:132
        // Tracing: AXI_Stream master _T_2 // Ignored: Inlined leading underscore at AXI_Stream.v:133
        // Tracing: AXI_Stream master _T_3 // Ignored: Inlined leading underscore at AXI_Stream.v:134
        // Tracing: AXI_Stream master _GEN_1 // Ignored: Inlined leading underscore at AXI_Stream.v:135
        // Tracing: AXI_Stream master _GEN_5 // Ignored: Inlined leading underscore at AXI_Stream.v:136
        // Tracing: AXI_Stream master _GEN_7 // Ignored: Inlined leading underscore at AXI_Stream.v:137
        vcdp->declBus(c+13,"AXI_Stream master read_pointer",-1,4,0);
        // Tracing: AXI_Stream master _RAND_5 // Ignored: Inlined leading underscore at AXI_Stream.v:139
        // Tracing: AXI_Stream master _T_6 // Ignored: Inlined leading underscore at AXI_Stream.v:140
        vcdp->declBit(c+2,"AXI_Stream master axis_tvalid",-1);
        vcdp->declBit(c+14,"AXI_Stream master axis_tlast",-1);
        // Tracing: AXI_Stream master _T_7 // Ignored: Inlined leading underscore at AXI_Stream.v:143
        vcdp->declBit(c+3,"AXI_Stream master tx_en",-1);
        // Tracing: AXI_Stream master _T_9 // Ignored: Inlined leading underscore at AXI_Stream.v:145
        // Tracing: AXI_Stream master _T_8 // Ignored: Inlined leading underscore at AXI_Stream.v:146
        // Tracing: AXI_Stream master _GEN_8 // Ignored: Inlined leading underscore at AXI_Stream.v:147
        // Tracing: AXI_Stream master _GEN_9 // Ignored: Inlined leading underscore at AXI_Stream.v:148
        // Tracing: AXI_Stream master _GEN_11 // Ignored: Inlined leading underscore at AXI_Stream.v:149
    }
}

void VAXI_Stream::traceFullThis__1(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VAXI_Stream* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->fullBit(c+1,(vlTOPp->AXI_Stream__DOT__slave__DOT__fifo_wren));
        vcdp->fullBit(c+2,(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid));
        vcdp->fullBit(c+3,(vlTOPp->AXI_Stream__DOT__master__DOT__tx_en));
        vcdp->fullBit(c+4,(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tvalid_delay));
        vcdp->fullBit(c+5,(vlTOPp->AXI_Stream__DOT__master__DOT__axis_tlast_delay));
        vcdp->fullBit(c+6,(((1U == (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state)) 
                            & (8U >= (IData)(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer)))));
        vcdp->fullBus(c+7,(vlTOPp->AXI_Stream__DOT__slave__DOT__mst_exec_state),2);
        vcdp->fullBus(c+8,(vlTOPp->AXI_Stream__DOT__slave__DOT__write_pointer),5);
        vcdp->fullBit(c+9,(vlTOPp->AXI_Stream__DOT__slave__DOT__writes_done));
        vcdp->fullBus(c+10,(vlTOPp->AXI_Stream__DOT__master__DOT__mst_exec_state),2);
        vcdp->fullBus(c+11,(vlTOPp->AXI_Stream__DOT__master__DOT__count),6);
        vcdp->fullBit(c+12,(vlTOPp->AXI_Stream__DOT__master__DOT__tx_done));
        vcdp->fullBus(c+13,(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer),5);
        vcdp->fullBit(c+14,((7U == (IData)(vlTOPp->AXI_Stream__DOT__master__DOT__read_pointer))));
        vcdp->fullBit(c+15,(vlTOPp->clock));
        vcdp->fullBit(c+16,(vlTOPp->reset));
        vcdp->fullBit(c+17,(vlTOPp->io_AXIS_TVALID));
    }
}
