// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VTop.h for the primary calling header

#include "VTop_ConvC3.h"
#include "VTop__Syms.h"

//==========

VL_CTOR_IMP(VTop_ConvC3) {
    VL_CELL(__PVT___T, VTop_Node);
    VL_CELL(__PVT___T_1, VTop_Node);
    VL_CELL(__PVT___T_2, VTop_Node);
    VL_CELL(__PVT___T_3, VTop_Node);
    VL_CELL(__PVT___T_4, VTop_Node);
    VL_CELL(__PVT___T_5, VTop_Node);
    VL_CELL(__PVT___T_6, VTop_Node);
    VL_CELL(__PVT___T_7, VTop_Node);
    VL_CELL(__PVT___T_8, VTop_Node);
    VL_CELL(__PVT___T_9, VTop_Node);
    VL_CELL(__PVT___T_10, VTop_Node);
    VL_CELL(__PVT___T_11, VTop_Node);
    VL_CELL(__PVT___T_12, VTop_Node);
    VL_CELL(__PVT___T_13, VTop_Node);
    VL_CELL(__PVT___T_14, VTop_Node);
    VL_CELL(__PVT___T_15, VTop_Node);
    // Reset internal values
    // Reset structure values
    _ctor_var_reset();
}

void VTop_ConvC3::__Vconfigure(VTop__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
}

VTop_ConvC3::~VTop_ConvC3() {
}

void VTop_ConvC3::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VTop_ConvC3::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(400, io_d_in);
    VL_RAND_RESET_W(400, io_w_in_0);
    VL_RAND_RESET_W(400, io_w_in_1);
    VL_RAND_RESET_W(400, io_w_in_2);
    VL_RAND_RESET_W(400, io_w_in_3);
    VL_RAND_RESET_W(400, io_w_in_4);
    VL_RAND_RESET_W(400, io_w_in_5);
    VL_RAND_RESET_W(400, io_w_in_6);
    VL_RAND_RESET_W(400, io_w_in_7);
    VL_RAND_RESET_W(400, io_w_in_8);
    VL_RAND_RESET_W(400, io_w_in_9);
    VL_RAND_RESET_W(400, io_w_in_10);
    VL_RAND_RESET_W(400, io_w_in_11);
    VL_RAND_RESET_W(400, io_w_in_12);
    VL_RAND_RESET_W(400, io_w_in_13);
    VL_RAND_RESET_W(400, io_w_in_14);
    VL_RAND_RESET_W(400, io_w_in_15);
    io_rdy = VL_RAND_RESET_I(1);
    io_d_out_0 = VL_RAND_RESET_I(16);
    io_d_out_1 = VL_RAND_RESET_I(16);
    io_d_out_2 = VL_RAND_RESET_I(16);
    io_d_out_3 = VL_RAND_RESET_I(16);
    io_d_out_4 = VL_RAND_RESET_I(16);
    io_d_out_5 = VL_RAND_RESET_I(16);
    io_d_out_6 = VL_RAND_RESET_I(16);
    io_d_out_7 = VL_RAND_RESET_I(16);
    io_d_out_8 = VL_RAND_RESET_I(16);
    io_d_out_9 = VL_RAND_RESET_I(16);
    io_d_out_10 = VL_RAND_RESET_I(16);
    io_d_out_11 = VL_RAND_RESET_I(16);
    io_d_out_12 = VL_RAND_RESET_I(16);
    io_d_out_13 = VL_RAND_RESET_I(16);
    io_d_out_14 = VL_RAND_RESET_I(16);
    io_d_out_15 = VL_RAND_RESET_I(16);
    io_v = VL_RAND_RESET_I(1);
}
