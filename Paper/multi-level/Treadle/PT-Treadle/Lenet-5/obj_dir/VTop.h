// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VTOP_H_
#define _VTOP_H_  // guard

#include "verilated.h"

//==========

class VTop__Syms;
class VTop_VerilatedVcd;
class VTop_Node;
class VTop_ShiftRegister;
class VTop_ConvC3;


//----------

VL_MODULE(VTop) {
  public:
    // CELLS
    // Public to allow access to /*verilator_public*/ items;
    // otherwise the application code can consider these internals.
    VTop_Node* __PVT__Top__DOT__t1__DOT__convc1__DOT___T;
    VTop_Node* __PVT__Top__DOT__t1__DOT__convc1__DOT___T_1;
    VTop_Node* __PVT__Top__DOT__t1__DOT__convc1__DOT___T_2;
    VTop_Node* __PVT__Top__DOT__t1__DOT__convc1__DOT___T_3;
    VTop_Node* __PVT__Top__DOT__t1__DOT__convc1__DOT___T_4;
    VTop_Node* __PVT__Top__DOT__t1__DOT__convc1__DOT___T_5;
    VTop_ShiftRegister* __PVT__Top__DOT__t2__DOT___T;
    VTop_ConvC3* __PVT__Top__DOT__t2__DOT___T_1;
    VTop_ShiftRegister* __PVT__Top__DOT__t2__DOT___T_2;
    VTop_ConvC3* __PVT__Top__DOT__t2__DOT___T_3;
    VTop_ShiftRegister* __PVT__Top__DOT__t2__DOT___T_4;
    VTop_ConvC3* __PVT__Top__DOT__t2__DOT___T_5;
    VTop_ShiftRegister* __PVT__Top__DOT__t2__DOT___T_6;
    VTop_ConvC3* __PVT__Top__DOT__t2__DOT___T_7;
    VTop_ShiftRegister* __PVT__Top__DOT__t2__DOT___T_8;
    VTop_ConvC3* __PVT__Top__DOT__t2__DOT___T_9;
    VTop_ShiftRegister* __PVT__Top__DOT__t2__DOT___T_10;
    VTop_ConvC3* __PVT__Top__DOT__t2__DOT___T_11;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_1;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_2;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_4;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_5;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_8;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_9;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_11;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_12;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_16;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_17;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_19;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_20;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_23;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_24;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_26;
    VTop_ShiftRegister* __PVT__Top__DOT__f1__DOT___T_27;
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_rdy,0,0);
    VL_OUT8(io_v,0,0);
    VL_OUT8(io_c3_v,0,0);
    VL_OUT8(io_pool_v,0,0);
    VL_IN8(io_fc1_rom_rdy,0,0);
    VL_OUT8(io_fc1_v,0,0);
    VL_OUT8(io_fc1_fc_v,0,0);
    VL_IN8(io_fc2_rom_rdy,0,0);
    VL_OUT8(io_fc2_v,0,0);
    VL_OUT8(io_fc2_fc_v,0,0);
    VL_IN8(io_fc3_rom_rdy,0,0);
    VL_OUT8(io_fc3_v,0,0);
    VL_OUT8(io_fc3_fc_v,0,0);
    VL_IN16(io_fc1_bias,15,0);
    VL_IN16(io_fc2_bias,15,0);
    VL_IN16(io_fc3_bias,15,0);
    VL_OUT16(io_fc3_d_out,15,0);
    VL_INW(io_d_in,399,0,13);
    VL_INW(io_w_in_0,399,0,13);
    VL_INW(io_w_in_1,399,0,13);
    VL_INW(io_w_in_2,399,0,13);
    VL_INW(io_w_in_3,399,0,13);
    VL_INW(io_w_in_4,399,0,13);
    VL_INW(io_w_in_5,399,0,13);
    VL_INW(io_bias,95,0,3);
    VL_INW(io_fc1_wa_in,3199,0,100);
    VL_INW(io_fc1_wb_in,3199,0,100);
    VL_INW(io_fc2_w_in,1919,0,60);
    VL_INW(io_fc3_w_in,1343,0,42);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ Top__DOT__t1_io_pool_v;
        CData/*0:0*/ Top__DOT__c2mp_io_pool_v;
        CData/*0:0*/ Top__DOT__delay_c3;
        CData/*0:0*/ Top__DOT__t1__DOT__convc1_io_v;
        CData/*2:0*/ Top__DOT__t1__DOT___T__DOT__counter;
        CData/*3:0*/ Top__DOT__t1__DOT___T__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__t1__DOT___T_1__DOT__counter;
        CData/*3:0*/ Top__DOT__t1__DOT___T_1__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__t1__DOT___T_2__DOT__counter;
        CData/*3:0*/ Top__DOT__t1__DOT___T_2__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__t1__DOT___T_3__DOT__counter;
        CData/*3:0*/ Top__DOT__t1__DOT___T_3__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__t1__DOT___T_4__DOT__counter;
        CData/*3:0*/ Top__DOT__t1__DOT___T_4__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__t1__DOT___T_5__DOT__counter;
        CData/*3:0*/ Top__DOT__t1__DOT___T_5__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_1__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_1__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_2__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_2__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_3__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_3__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_4__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_4__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_5__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_5__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_6__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_6__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_7__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_7__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_8__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_8__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_9__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_9__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_10__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_10__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_11__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_11__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_12__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_12__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_13__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_13__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_14__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_14__DOT___GEN_2;
        CData/*2:0*/ Top__DOT__c2mp__DOT___T_15__DOT__counter;
        CData/*3:0*/ Top__DOT__c2mp__DOT___T_15__DOT___GEN_2;
        CData/*0:0*/ Top__DOT__f1__DOT__first_rdy;
        CData/*0:0*/ Top__DOT__f1__DOT__is_done;
        CData/*0:0*/ Top__DOT__f1__DOT___GEN_4;
        CData/*0:0*/ Top__DOT__f1__DOT__rdy;
        CData/*0:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc_io_v;
        CData/*0:0*/ Top__DOT__f2__DOT__rdy;
        CData/*0:0*/ Top__DOT__f2__DOT__first_rdy;
        CData/*0:0*/ Top__DOT__f2__DOT__is_done;
        CData/*0:0*/ Top__DOT__f2__DOT___GEN_4;
        CData/*0:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc_io_v;
        CData/*6:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT__i;
        CData/*7:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_247;
        CData/*0:0*/ Top__DOT__f3__DOT__rdy;
        CData/*0:0*/ Top__DOT__f3__DOT__first_rdy;
        CData/*0:0*/ Top__DOT__f3__DOT__is_done;
        CData/*0:0*/ Top__DOT__f3__DOT___GEN_4;
    };
    struct {
        CData/*0:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc_io_v;
        CData/*6:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT__i;
        CData/*7:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___GEN_175;
        SData/*15:0*/ Top__DOT__fc3_counter;
        SData/*15:0*/ Top__DOT__t1__DOT___T__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__t1__DOT___T__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__t1__DOT___T_1__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__t1__DOT___T_1__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__t1__DOT___T_2__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__t1__DOT___T_2__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__t1__DOT___T_3__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__t1__DOT___T_3__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__t1__DOT___T_4__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__t1__DOT___T_4__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__t1__DOT___T_5__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__t1__DOT___T_5__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__t2__DOT__C1_counter;
        SData/*15:0*/ Top__DOT__t2__DOT___T_19;
        SData/*15:0*/ Top__DOT__t2__DOT___T_27;
        SData/*15:0*/ Top__DOT__t2__DOT___T_35;
        SData/*15:0*/ Top__DOT__t2__DOT___T_43;
        SData/*15:0*/ Top__DOT__t2__DOT___T_51;
        SData/*15:0*/ Top__DOT__t2__DOT___T_59;
        SData/*15:0*/ Top__DOT__t2__DOT___T_67;
        SData/*15:0*/ Top__DOT__t2__DOT___T_75;
        SData/*15:0*/ Top__DOT__t2__DOT___T_83;
        SData/*15:0*/ Top__DOT__t2__DOT___T_91;
        SData/*15:0*/ Top__DOT__t2__DOT___T_99;
        SData/*15:0*/ Top__DOT__t2__DOT___T_107;
        SData/*15:0*/ Top__DOT__t2__DOT___T_115;
        SData/*15:0*/ Top__DOT__t2__DOT___T_123;
        SData/*15:0*/ Top__DOT__t2__DOT___T_131;
        SData/*15:0*/ Top__DOT__t2__DOT___T_139;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_1__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_1__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_2__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_2__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_3__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_3__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_4__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_4__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_5__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_5__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_6__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_6__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_7__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_7__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_8__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_8__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_9__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_9__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_10__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_10__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_11__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_11__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_12__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_12__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_13__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_13__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_14__DOT__maxpool__DOT___GEN_0;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_14__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_15__DOT__maxpool__DOT___GEN_0;
    };
    struct {
        SData/*15:0*/ Top__DOT__c2mp__DOT___T_15__DOT__maxpool__DOT___GEN_1;
        SData/*15:0*/ Top__DOT__f1__DOT__channel_counter;
        SData/*8:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT__i;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_13;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_26;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_39;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_52;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_65;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_78;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_91;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_104;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_117;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_130;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_143;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_156;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_169;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_182;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_195;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_208;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_221;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_234;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_247;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_260;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_273;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_286;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_299;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_312;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_325;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_338;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_351;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_364;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_377;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_390;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_413;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_426;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_439;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_452;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_465;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_478;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_491;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_504;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_517;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_530;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_543;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_556;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_569;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_582;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_595;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_608;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_621;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_634;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_647;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_660;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_673;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_686;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_699;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_712;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_725;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_738;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_751;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_764;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_777;
        SData/*15:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_790;
        SData/*9:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___GEN_807;
    };
    struct {
        SData/*15:0*/ Top__DOT__f2__DOT__in_counter;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_1;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_2;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_3;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_4;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_5;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_6;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_7;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_8;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_9;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_10;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_11;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_12;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_13;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_14;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_15;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_16;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_17;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_18;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_19;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_20;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_21;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_22;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_23;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_24;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_25;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_26;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_27;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_28;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_29;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_30;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_31;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_32;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_33;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_34;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_35;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_36;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_37;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_38;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_39;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_40;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_41;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_42;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_43;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_44;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_45;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_46;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_47;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_48;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_49;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_50;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_51;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_52;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_53;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_54;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_55;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_56;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_57;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_58;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_59;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_60;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_61;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_62;
    };
    struct {
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_63;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_64;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_65;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_66;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_67;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_68;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_69;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_70;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_71;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_72;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_73;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_74;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_75;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_76;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_77;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_78;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_79;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_80;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_81;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_82;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_83;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_84;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_85;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_86;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_87;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_88;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_89;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_90;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_91;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_92;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_93;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_94;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_95;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_96;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_97;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_98;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_99;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_100;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_101;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_102;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_103;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_104;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_105;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_106;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_107;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_108;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_109;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_110;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_111;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_112;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_113;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_114;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_115;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_116;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_117;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_118;
        SData/*15:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_119;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_13;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_26;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_39;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_52;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_65;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_78;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_91;
    };
    struct {
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_104;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_117;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_133;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_146;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_159;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_172;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_185;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_198;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_211;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_224;
        SData/*15:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___GEN_237;
        SData/*15:0*/ Top__DOT__f3__DOT__in_counter;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_1;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_2;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_3;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_4;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_5;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_6;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_7;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_8;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_9;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_10;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_11;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_12;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_13;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_14;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_15;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_16;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_17;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_18;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_19;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_20;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_21;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_22;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_23;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_24;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_25;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_26;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_27;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_28;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_29;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_30;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_31;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_32;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_33;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_34;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_35;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_36;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_37;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_38;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_39;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_40;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_41;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_42;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_43;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_44;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_45;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_46;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_47;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_48;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_49;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_50;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_51;
    };
    struct {
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_52;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_53;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_54;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_55;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_56;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_57;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_58;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_59;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_60;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_61;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_62;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_63;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_64;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_65;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_66;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_67;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_68;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_69;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_70;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_71;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_72;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_73;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_74;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_75;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_76;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_77;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_78;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_79;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_80;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_81;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_82;
        SData/*15:0*/ Top__DOT__f3__DOT__in_channel__DOT___T_83;
        SData/*15:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___GEN_13;
        SData/*15:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___GEN_26;
        SData/*15:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___GEN_39;
        SData/*15:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___GEN_52;
        SData/*15:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___GEN_65;
        SData/*15:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___GEN_78;
        SData/*15:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___GEN_97;
        SData/*15:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___GEN_110;
        SData/*15:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___GEN_123;
        SData/*15:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___GEN_136;
        SData/*15:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___GEN_149;
        SData/*15:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___GEN_162;
        IData/*16:0*/ Top__DOT___GEN_1;
        WData/*271:0*/ Top__DOT__t1__DOT___T__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__t1__DOT___T_1__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__t1__DOT___T_2__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__t1__DOT___T_3__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__t1__DOT___T_4__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__t1__DOT___T_5__DOT___T_4[9];
        IData/*16:0*/ Top__DOT__t2__DOT___GEN_1;
        WData/*271:0*/ Top__DOT__c2mp__DOT___T__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_1__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_2__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_3__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_4__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_5__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_6__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_7__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_8__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_9__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_10__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_11__DOT___T_4[9];
    };
    struct {
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_12__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_13__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_14__DOT___T_4[9];
        WData/*271:0*/ Top__DOT__c2mp__DOT___T_15__DOT___T_4[9];
        WData/*6399:0*/ Top__DOT__f1__DOT__conv_node_io_w[200];
        WData/*6399:0*/ Top__DOT__f1__DOT__din[200];
        IData/*16:0*/ Top__DOT__f1__DOT___GEN_1;
        IData/*31:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT__sum;
        IData/*31:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___T_800;
        IData/*16:0*/ Top__DOT__f1__DOT__conv_node__DOT__act__DOT___T_2;
        WData/*1919:0*/ Top__DOT__f2__DOT__store[60];
        IData/*16:0*/ Top__DOT__f2__DOT___GEN_1;
        WData/*959:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_178[30];
        WData/*959:0*/ Top__DOT__f2__DOT__in_channel__DOT___T_237[30];
        IData/*31:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT__sum;
        IData/*16:0*/ Top__DOT__f2__DOT__conv_node2__DOT__act__DOT___T_2;
        WData/*1343:0*/ Top__DOT__f3__DOT__store[42];
        IData/*16:0*/ Top__DOT__f3__DOT___GEN_1;
        IData/*31:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT__sum;
        IData/*16:0*/ Top__DOT__f3__DOT__conv_node3__DOT__act__DOT___T_2;
        QData/*63:0*/ Top__DOT__t1__DOT___T__DOT__pool;
        QData/*63:0*/ Top__DOT__t1__DOT___T_1__DOT__pool;
        QData/*63:0*/ Top__DOT__t1__DOT___T_2__DOT__pool;
        QData/*63:0*/ Top__DOT__t1__DOT___T_3__DOT__pool;
        QData/*63:0*/ Top__DOT__t1__DOT___T_4__DOT__pool;
        QData/*63:0*/ Top__DOT__t1__DOT___T_5__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_1__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_2__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_3__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_4__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_5__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_6__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_7__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_8__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_9__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_10__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_11__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_12__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_13__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_14__DOT__pool;
        QData/*63:0*/ Top__DOT__c2mp__DOT___T_15__DOT__pool;
        QData/*32:0*/ Top__DOT__f1__DOT__conv_node__DOT__muladdc__DOT___T_801;
        QData/*32:0*/ Top__DOT__f2__DOT__conv_node2__DOT__muladdc__DOT___T_241;
        QData/*32:0*/ Top__DOT__f3__DOT__conv_node3__DOT__muladdc__DOT___T_169;
    };
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__clock;
    IData/*31:0*/ __Vm_traceActivity;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VTop__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VTop);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VTop(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VTop();
    /// Trace signals in the model; called by application code
    void trace(VerilatedVcdC* tfp, int levels, int options = 0);
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(VTop__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VTop__Syms* symsp, bool first);
  private:
    static QData _change_request(VTop__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__3(VTop__Syms* __restrict vlSymsp);
    static void _combo__TOP__4(VTop__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VTop__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__1(VTop__Syms* __restrict vlSymsp);
    static void _sequent__TOP__2(VTop__Syms* __restrict vlSymsp);
    static void _settle__TOP__5(VTop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceChgThis(VTop__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(VTop__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(VTop__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__4(VTop__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__5(VTop__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__6(VTop__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(VTop__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceFullThis__1(VTop__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis(VTop__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis__1(VTop__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
