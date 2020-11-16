// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VTop.h for the primary calling header

#ifndef _VTOP_CONVC3_H_
#define _VTOP_CONVC3_H_  // guard

#include "verilated.h"

//==========

class VTop__Syms;
class VTop_VerilatedVcd;
class VTop_Node;


//----------

VL_MODULE(VTop_ConvC3) {
  public:
    // CELLS
    VTop_Node* __PVT___T;
    VTop_Node* __PVT___T_1;
    VTop_Node* __PVT___T_2;
    VTop_Node* __PVT___T_3;
    VTop_Node* __PVT___T_4;
    VTop_Node* __PVT___T_5;
    VTop_Node* __PVT___T_6;
    VTop_Node* __PVT___T_7;
    VTop_Node* __PVT___T_8;
    VTop_Node* __PVT___T_9;
    VTop_Node* __PVT___T_10;
    VTop_Node* __PVT___T_11;
    VTop_Node* __PVT___T_12;
    VTop_Node* __PVT___T_13;
    VTop_Node* __PVT___T_14;
    VTop_Node* __PVT___T_15;
    
    // PORTS
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_rdy,0,0);
    VL_OUT8(io_v,0,0);
    VL_OUT16(io_d_out_0,15,0);
    VL_OUT16(io_d_out_1,15,0);
    VL_OUT16(io_d_out_2,15,0);
    VL_OUT16(io_d_out_3,15,0);
    VL_OUT16(io_d_out_4,15,0);
    VL_OUT16(io_d_out_5,15,0);
    VL_OUT16(io_d_out_6,15,0);
    VL_OUT16(io_d_out_7,15,0);
    VL_OUT16(io_d_out_8,15,0);
    VL_OUT16(io_d_out_9,15,0);
    VL_OUT16(io_d_out_10,15,0);
    VL_OUT16(io_d_out_11,15,0);
    VL_OUT16(io_d_out_12,15,0);
    VL_OUT16(io_d_out_13,15,0);
    VL_OUT16(io_d_out_14,15,0);
    VL_OUT16(io_d_out_15,15,0);
    VL_INW(io_d_in,399,0,13);
    VL_INW(io_w_in_0,399,0,13);
    VL_INW(io_w_in_1,399,0,13);
    VL_INW(io_w_in_2,399,0,13);
    VL_INW(io_w_in_3,399,0,13);
    VL_INW(io_w_in_4,399,0,13);
    VL_INW(io_w_in_5,399,0,13);
    VL_INW(io_w_in_6,399,0,13);
    VL_INW(io_w_in_7,399,0,13);
    VL_INW(io_w_in_8,399,0,13);
    VL_INW(io_w_in_9,399,0,13);
    VL_INW(io_w_in_10,399,0,13);
    VL_INW(io_w_in_11,399,0,13);
    VL_INW(io_w_in_12,399,0,13);
    VL_INW(io_w_in_13,399,0,13);
    VL_INW(io_w_in_14,399,0,13);
    VL_INW(io_w_in_15,399,0,13);
    
    // INTERNAL VARIABLES
  private:
    VTop__Syms* __VlSymsp;  // Symbol table
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VTop_ConvC3);  ///< Copying not allowed
  public:
    VTop_ConvC3(const char* name = "TOP");
    ~VTop_ConvC3();
    
    // INTERNAL METHODS
    void __Vconfigure(VTop__Syms* symsp, bool first);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
