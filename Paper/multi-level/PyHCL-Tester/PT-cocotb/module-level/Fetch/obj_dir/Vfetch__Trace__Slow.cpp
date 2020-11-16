// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vfetch__Syms.h"


//======================

void Vfetch::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback(&Vfetch::traceInit, &Vfetch::traceFull, &Vfetch::traceChg, this);
}
void Vfetch::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    Vfetch* t = (Vfetch*)userthis;
    Vfetch__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
                        "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vcdp->scopeEscape(' ');
    t->traceInitThis(vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void Vfetch::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    Vfetch* t = (Vfetch*)userthis;
    Vfetch__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    t->traceFullThis(vlSymsp, vcdp, code);
}

//======================


void Vfetch::traceInitThis(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    if (false && vcdp) {}  // Prevent unused
    vcdp->module(vlSymsp->name());  // Setup signal names
    // Body
    {
        vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void Vfetch::traceFullThis(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    if (false && vcdp) {}  // Prevent unused
    // Body
    {
        vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void Vfetch::traceInitThis__1(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c = code;
    if (false && vcdp && c) {}  // Prevent unused
    // Body
    {
        vcdp->declBit(c+27,"clock", false,-1);
        vcdp->declBit(c+28,"reset", false,-1);
        vcdp->declBit(c+29,"io_launch", false,-1);
        vcdp->declBus(c+30,"io_ins_baddr", false,-1, 31,0);
        vcdp->declBus(c+31,"io_ins_count", false,-1, 31,0);
        vcdp->declBit(c+32,"io_vme_rd_cmd_valid", false,-1);
        vcdp->declBit(c+33,"io_vme_rd_cmd_ready", false,-1);
        vcdp->declBus(c+34,"io_vme_rd_cmd_bits_addr", false,-1, 31,0);
        vcdp->declBus(c+35,"io_vme_rd_cmd_bits_len", false,-1, 7,0);
        vcdp->declBit(c+36,"io_vme_rd_data_valid", false,-1);
        vcdp->declBit(c+37,"io_vme_rd_data_ready", false,-1);
        vcdp->declQuad(c+38,"io_vme_rd_data_bits", false,-1, 63,0);
        vcdp->declBit(c+40,"io_inst_ld_valid", false,-1);
        vcdp->declBit(c+41,"io_inst_ld_ready", false,-1);
        vcdp->declArray(c+42,"io_inst_ld_bits", false,-1, 127,0);
        vcdp->declBit(c+46,"io_inst_co_valid", false,-1);
        vcdp->declBit(c+47,"io_inst_co_ready", false,-1);
        vcdp->declArray(c+48,"io_inst_co_bits", false,-1, 127,0);
        vcdp->declBit(c+52,"io_inst_st_valid", false,-1);
        vcdp->declBit(c+53,"io_inst_st_ready", false,-1);
        vcdp->declArray(c+54,"io_inst_st_bits", false,-1, 127,0);
        vcdp->declBit(c+27,"Fetch clock", false,-1);
        vcdp->declBit(c+28,"Fetch reset", false,-1);
        vcdp->declBit(c+29,"Fetch io_launch", false,-1);
        vcdp->declBus(c+30,"Fetch io_ins_baddr", false,-1, 31,0);
        vcdp->declBus(c+31,"Fetch io_ins_count", false,-1, 31,0);
        vcdp->declBit(c+32,"Fetch io_vme_rd_cmd_valid", false,-1);
        vcdp->declBit(c+33,"Fetch io_vme_rd_cmd_ready", false,-1);
        vcdp->declBus(c+34,"Fetch io_vme_rd_cmd_bits_addr", false,-1, 31,0);
        vcdp->declBus(c+35,"Fetch io_vme_rd_cmd_bits_len", false,-1, 7,0);
        vcdp->declBit(c+36,"Fetch io_vme_rd_data_valid", false,-1);
        vcdp->declBit(c+37,"Fetch io_vme_rd_data_ready", false,-1);
        vcdp->declQuad(c+38,"Fetch io_vme_rd_data_bits", false,-1, 63,0);
        vcdp->declBit(c+40,"Fetch io_inst_ld_valid", false,-1);
        vcdp->declBit(c+41,"Fetch io_inst_ld_ready", false,-1);
        vcdp->declArray(c+42,"Fetch io_inst_ld_bits", false,-1, 127,0);
        vcdp->declBit(c+46,"Fetch io_inst_co_valid", false,-1);
        vcdp->declBit(c+47,"Fetch io_inst_co_ready", false,-1);
        vcdp->declArray(c+48,"Fetch io_inst_co_bits", false,-1, 127,0);
        vcdp->declBit(c+52,"Fetch io_inst_st_valid", false,-1);
        vcdp->declBit(c+53,"Fetch io_inst_st_ready", false,-1);
        vcdp->declArray(c+54,"Fetch io_inst_st_bits", false,-1, 127,0);
        vcdp->declBit(c+27,"Fetch inst_q_clock", false,-1);
        vcdp->declBit(c+28,"Fetch inst_q_reset", false,-1);
        vcdp->declBus(c+1,"Fetch inst_q_io_count", false,-1, 6,0);
        vcdp->declBit(c+65,"Fetch inst_q_io_enq_valid", false,-1);
        vcdp->declBit(c+2,"Fetch inst_q_io_enq_ready", false,-1);
        vcdp->declArray(c+58,"Fetch inst_q_io_enq_bits", false,-1, 127,0);
        vcdp->declBit(c+3,"Fetch inst_q_io_deq_valid", false,-1);
        vcdp->declBit(c+65,"Fetch inst_q_io_deq_ready", false,-1);
        vcdp->declArray(c+4,"Fetch inst_q_io_deq_bits", false,-1, 127,0);
        vcdp->declArray(c+4,"Fetch dec_io_inst", false,-1, 127,0);
        vcdp->declBit(c+8,"Fetch dec_io_isLoad", false,-1);
        vcdp->declBit(c+9,"Fetch dec_io_isCompute", false,-1);
        vcdp->declBit(c+10,"Fetch dec_io_isStore", false,-1);
        vcdp->declBit(c+18,"Fetch s1_launch", false,-1);
        vcdp->declBit(c+19,"Fetch state", false,-1);
        vcdp->declBit(c+17,"Fetch pulse", false,-1);
        vcdp->declQuad(c+62,"Fetch xsize", false,-1, 33,0);
        vcdp->declBus(c+20,"Fetch rlen", false,-1, 7,0);
        vcdp->declBus(c+21,"Fetch xrem", false,-1, 31,0);
        vcdp->declBus(c+22,"Fetch raddr", false,-1, 31,0);
        vcdp->declQuad(c+66,"Fetch lsb", false,-1, 63,0);
        vcdp->declBus(c+11,"Fetch deq_sel", false,-1, 2,0);
        vcdp->declBit(c+64,"Fetch deq_ready", false,-1);
        vcdp->declBit(c+27,"Fetch inst_q clock", false,-1);
        vcdp->declBit(c+28,"Fetch inst_q reset", false,-1);
        vcdp->declBus(c+1,"Fetch inst_q io_count", false,-1, 6,0);
        vcdp->declBit(c+65,"Fetch inst_q io_enq_valid", false,-1);
        vcdp->declBit(c+2,"Fetch inst_q io_enq_ready", false,-1);
        vcdp->declArray(c+58,"Fetch inst_q io_enq_bits", false,-1, 127,0);
        vcdp->declBit(c+3,"Fetch inst_q io_deq_valid", false,-1);
        vcdp->declBit(c+65,"Fetch inst_q io_deq_ready", false,-1);
        vcdp->declArray(c+4,"Fetch inst_q io_deq_bits", false,-1, 127,0);
        vcdp->declArray(c+4,"Fetch inst_q ram__T_11_data", false,-1, 127,0);
        vcdp->declBus(c+23,"Fetch inst_q ram__T_11_addr", false,-1, 6,0);
        vcdp->declArray(c+58,"Fetch inst_q ram__T_1_data", false,-1, 127,0);
        vcdp->declBus(c+24,"Fetch inst_q ram__T_1_addr", false,-1, 6,0);
        vcdp->declBit(c+68,"Fetch inst_q ram__T_1_mask", false,-1);
        vcdp->declBit(c+65,"Fetch inst_q ram__T_1_en", false,-1);
        vcdp->declBit(c+65,"Fetch inst_q do_enq", false,-1);
        vcdp->declBit(c+65,"Fetch inst_q do_deq", false,-1);
        vcdp->declBit(c+25,"Fetch inst_q maybe_full", false,-1);
        vcdp->declBit(c+12,"Fetch inst_q ptr_match", false,-1);
        vcdp->declBit(c+13,"Fetch inst_q empty", false,-1);
        vcdp->declBit(c+14,"Fetch inst_q full", false,-1);
        vcdp->declBus(c+26,"Fetch inst_q ptr_diff", false,-1, 7,0);
        vcdp->declArray(c+4,"Fetch dec io_inst", false,-1, 127,0);
        vcdp->declBit(c+8,"Fetch dec io_isLoad", false,-1);
        vcdp->declBit(c+9,"Fetch dec io_isCompute", false,-1);
        vcdp->declBit(c+10,"Fetch dec io_isStore", false,-1);
        vcdp->declBit(c+15,"Fetch dec cs_val_inst", false,-1);
        vcdp->declBus(c+16,"Fetch dec cs_op_type", false,-1, 2,0);
    }
}

void Vfetch::traceFullThis__1(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vfetch* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* oldp = vcdp->oldp(code+1);
    if (false && vcdp && oldp) {}  // Prevent unused
    // Variables
    WData/*127:0*/ __Vtemp135[4];
    // Body
    {
        vcdp->fullCData(oldp+0,((0x7fU & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T_14))),7);
        vcdp->fullBit(oldp+1,((1U & (~ ((IData)(vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match) 
                                        & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT__maybe_full))))));
        vcdp->fullBit(oldp+2,((1U & (~ (IData)(vlTOPp->Fetch__DOT__inst_q__DOT__empty)))));
        vcdp->fullWData(oldp+3,(vlTOPp->Fetch__DOT__inst_q__DOT__ram___05FT_11_data),128);
        vcdp->fullBit(oldp+7,(vlTOPp->Fetch__DOT__dec_io_isLoad));
        vcdp->fullBit(oldp+8,(vlTOPp->Fetch__DOT__dec_io_isCompute));
        vcdp->fullBit(oldp+9,(vlTOPp->Fetch__DOT__dec_io_isStore));
        vcdp->fullCData(oldp+10,(vlTOPp->Fetch__DOT___T_42),3);
        vcdp->fullBit(oldp+11,(vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match));
        vcdp->fullBit(oldp+12,(vlTOPp->Fetch__DOT__inst_q__DOT__empty));
        vcdp->fullBit(oldp+13,(((IData)(vlTOPp->Fetch__DOT__inst_q__DOT__ptr_match) 
                                & (IData)(vlTOPp->Fetch__DOT__inst_q__DOT__maybe_full))));
        vcdp->fullBit(oldp+14,(vlTOPp->Fetch__DOT__dec__DOT__cs_val_inst));
        vcdp->fullCData(oldp+15,(vlTOPp->Fetch__DOT__dec__DOT__cs_op_type),3);
        vcdp->fullBit(oldp+16,(vlTOPp->Fetch__DOT__pulse));
        vcdp->fullBit(oldp+17,(vlTOPp->Fetch__DOT__s1_launch));
        vcdp->fullBit(oldp+18,(vlTOPp->Fetch__DOT__state));
        vcdp->fullCData(oldp+19,(vlTOPp->Fetch__DOT__rlen),8);
        vcdp->fullIData(oldp+20,(vlTOPp->Fetch__DOT__xrem),32);
        vcdp->fullIData(oldp+21,(vlTOPp->Fetch__DOT__raddr),32);
        vcdp->fullCData(oldp+22,(vlTOPp->Fetch__DOT__inst_q__DOT___T_4),7);
        vcdp->fullCData(oldp+23,(vlTOPp->Fetch__DOT__inst_q__DOT___T),7);
        vcdp->fullBit(oldp+24,(vlTOPp->Fetch__DOT__inst_q__DOT__maybe_full));
        vcdp->fullCData(oldp+25,((0xffU & ((IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T) 
                                           - (IData)(vlTOPp->Fetch__DOT__inst_q__DOT___T_4)))),8);
        vcdp->fullBit(oldp+26,(vlTOPp->clock));
        vcdp->fullBit(oldp+27,(vlTOPp->reset));
        vcdp->fullBit(oldp+28,(vlTOPp->io_launch));
        vcdp->fullIData(oldp+29,(vlTOPp->io_ins_baddr),32);
        vcdp->fullIData(oldp+30,(vlTOPp->io_ins_count),32);
        vcdp->fullBit(oldp+31,(vlTOPp->io_vme_rd_cmd_valid));
        vcdp->fullBit(oldp+32,(vlTOPp->io_vme_rd_cmd_ready));
        vcdp->fullIData(oldp+33,(vlTOPp->io_vme_rd_cmd_bits_addr),32);
        vcdp->fullCData(oldp+34,(vlTOPp->io_vme_rd_cmd_bits_len),8);
        vcdp->fullBit(oldp+35,(vlTOPp->io_vme_rd_data_valid));
        vcdp->fullBit(oldp+36,(vlTOPp->io_vme_rd_data_ready));
        vcdp->fullQData(oldp+37,(vlTOPp->io_vme_rd_data_bits),64);
        vcdp->fullBit(oldp+39,(vlTOPp->io_inst_ld_valid));
        vcdp->fullBit(oldp+40,(vlTOPp->io_inst_ld_ready));
        vcdp->fullWData(oldp+41,(vlTOPp->io_inst_ld_bits),128);
        vcdp->fullBit(oldp+45,(vlTOPp->io_inst_co_valid));
        vcdp->fullBit(oldp+46,(vlTOPp->io_inst_co_ready));
        vcdp->fullWData(oldp+47,(vlTOPp->io_inst_co_bits),128);
        vcdp->fullBit(oldp+51,(vlTOPp->io_inst_st_valid));
        vcdp->fullBit(oldp+52,(vlTOPp->io_inst_st_ready));
        vcdp->fullWData(oldp+53,(vlTOPp->io_inst_st_bits),128);
        __Vtemp135[0U] = (IData)(vlTOPp->Fetch__DOT__lsb);
        __Vtemp135[1U] = (IData)((vlTOPp->Fetch__DOT__lsb 
                                  >> 0x20U));
        __Vtemp135[2U] = (IData)(vlTOPp->io_vme_rd_data_bits);
        __Vtemp135[3U] = (IData)((vlTOPp->io_vme_rd_data_bits 
                                  >> 0x20U));
        vcdp->fullWData(oldp+57,(__Vtemp135),128);
        vcdp->fullQData(oldp+61,((VL_ULL(0x3ffffffff) 
                                  & (((QData)((IData)(vlTOPp->io_ins_count)) 
                                      << 1U) - VL_ULL(1)))),34);
        vcdp->fullBit(oldp+63,(((1U == (IData)(vlTOPp->Fetch__DOT___T_42))
                                 ? (IData)(vlTOPp->io_inst_ld_ready)
                                 : ((2U == (IData)(vlTOPp->Fetch__DOT___T_42))
                                     ? (IData)(vlTOPp->io_inst_st_ready)
                                     : ((4U == (IData)(vlTOPp->Fetch__DOT___T_42)) 
                                        & (IData)(vlTOPp->io_inst_co_ready))))));
        vcdp->fullBit(oldp+64,(0U));
        vcdp->fullQData(oldp+65,(vlTOPp->Fetch__DOT__lsb),64);
        vcdp->fullBit(oldp+67,(1U));
    }
}
