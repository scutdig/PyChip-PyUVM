// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VTILE_H_
#define _VTILE_H_  // guard

#include "verilated.h"

//==========

class VTile__Syms;
class VTile_VerilatedVcd;


//----------

VL_MODULE(VTile) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_OUT8(io_id_rs1,4,0);
    VL_OUT8(io_id_rs2,4,0);
    VL_OUT8(io_ex_alu_conflag,0,0);
    VL_OUT8(io_ex_rd,4,0);
    VL_OUT8(io_mem_rd,4,0);
    VL_OUT8(io_wb_rd,4,0);
    VL_OUT8(io_Forward_A,1,0);
    VL_OUT8(io_Forward_B,1,0);
    VL_OUT8(io_MemWrite_Src,0,0);
    VL_OUT8(io_mo_biu_cmd_valid,0,0);
    VL_OUT8(io_mo_biu_cmd_read,0,0);
    VL_OUT8(io_mo_biu_cmd_wmask,3,0);
    VL_OUT8(io_mo_biu_cmd_burst,1,0);
    VL_OUT8(io_mo_biu_cmd_beat,1,0);
    VL_OUT8(io_mo_biu_cmd_lock,1,0);
    VL_OUT8(io_mo_biu_cmd_excl,0,0);
    VL_OUT8(io_mo_biu_cmd_size,1,0);
    VL_OUT8(io_mo_biu_rsp_ready,0,0);
    VL_OUT8(io_mo_lsu2biu_icb_cmd_ready,0,0);
    VL_OUT8(io_mo_lsu2biu_icb_rsp_valid,0,0);
    VL_OUT8(io_mo_lsu2biu_icb_rsp_err,0,0);
    VL_OUT8(io_mo_lsu2biu_icb_rsp_excl_ok,0,0);
    VL_OUT(io_if_pc_out,31,0);
    VL_OUT(io_if_next_pc,31,0);
    VL_OUT(io_id_rs1_out,31,0);
    VL_OUT(io_id_rs2_out,31,0);
    VL_OUT(io_ex_rs1_out,31,0);
    VL_OUT(io_ex_rs2_out,31,0);
    VL_OUT(io_ex_alu_sum,31,0);
    VL_OUT(io_mem_alu_sum,31,0);
    VL_OUT(io_mem_writedata,31,0);
    VL_OUT(io_mem_dataout,31,0);
    VL_OUT(io_wb_registerwrite,31,0);
    VL_OUT(io_mo_biu_addr,31,0);
    VL_OUT(io_mo_biu_write_data,31,0);
    VL_OUT(io_mo_lsu2biu_icb_rsp_rdata,31,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ Tile__DOT__datapath_io_PC_Src;
        CData/*1:0*/ Tile__DOT__branch_predictor_io_PC_Sel;
        CData/*1:0*/ Tile__DOT__csr_io_is_Exception;
        CData/*0:0*/ Tile__DOT__csr_io_Exception_Flush;
        CData/*0:0*/ Tile__DOT__if_id_register_io_IF_ID_Flush;
        CData/*2:0*/ Tile__DOT__control_io_Imm_Sel;
        CData/*1:0*/ Tile__DOT__forward_io_Forward_A;
        CData/*1:0*/ Tile__DOT__forward_io_Forward_B;
        CData/*0:0*/ Tile__DOT__forward_io_MemWrite_Src;
        CData/*0:0*/ Tile__DOT__biuinf_io_biu_cmd_valid;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer_io_flush;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer_io_record;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT___T_99;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT___T_48;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT___T;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT___T_187;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT___T_139;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT__is_conditional_jump;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT___T_280;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT__wait_for_resolving;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT__noncon_flush;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT__con_addr_is_resolved;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT___T_287;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT___GEN_1;
        CData/*1:0*/ Tile__DOT__branch_predictor__DOT__resolving_processed;
        CData/*2:0*/ Tile__DOT__branch_predictor__DOT___GEN_3;
        CData/*1:0*/ Tile__DOT__branch_predictor__DOT__dynamic_counter_status;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT___T_304;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT___T_306;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT___T_308;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT___T_310;
        CData/*1:0*/ Tile__DOT__branch_predictor__DOT__update_status;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT__predict_fail;
        CData/*1:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer__DOT__write_index;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer__DOT___T_22;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer__DOT___T_39;
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer__DOT___T_51;
        CData/*2:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer__DOT___T_60;
        CData/*2:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer__DOT___T_71;
        CData/*2:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer__DOT___T_82;
        CData/*0:0*/ Tile__DOT__csr__DOT__is_CSR_Instruction;
        CData/*1:0*/ Tile__DOT__csr__DOT__MPP;
        CData/*0:0*/ Tile__DOT__csr__DOT__MPIE;
        CData/*0:0*/ Tile__DOT__csr__DOT__MIE;
        CData/*0:0*/ Tile__DOT__csr__DOT__MEIE;
        CData/*0:0*/ Tile__DOT__csr__DOT__MTIE;
        CData/*0:0*/ Tile__DOT__csr__DOT__MSIE;
        CData/*0:0*/ Tile__DOT__csr__DOT__MEIP;
        CData/*0:0*/ Tile__DOT__csr__DOT__MTIP;
        CData/*0:0*/ Tile__DOT__csr__DOT__MSIP;
        CData/*0:0*/ Tile__DOT__csr__DOT__biu_rsp_valid;
        CData/*0:0*/ Tile__DOT__csr__DOT___T_57;
        CData/*0:0*/ Tile__DOT__csr__DOT___T_63;
        CData/*0:0*/ Tile__DOT__csr__DOT__InstructionAddressMisaligned_con;
        CData/*0:0*/ Tile__DOT__csr__DOT__LoadAddressMisaligned_con;
        CData/*0:0*/ Tile__DOT__csr__DOT__StoreAddressMisaligned_con;
        CData/*0:0*/ Tile__DOT__csr__DOT__is_a_exception;
        CData/*0:0*/ Tile__DOT__csr__DOT__MachineTimerInterrupt_con;
        CData/*0:0*/ Tile__DOT__csr__DOT__ExternalInterrupt_con;
        CData/*0:0*/ Tile__DOT__csr__DOT__enable_exception;
        CData/*0:0*/ Tile__DOT__csr__DOT___T_84;
        CData/*0:0*/ Tile__DOT__csr__DOT___T_89;
        CData/*0:0*/ Tile__DOT__csr__DOT___T_90;
        CData/*0:0*/ Tile__DOT__csr__DOT___T_97;
    };
    struct {
        CData/*0:0*/ Tile__DOT__csr__DOT___GEN_145;
        CData/*0:0*/ Tile__DOT__csr__DOT___GEN_147;
        CData/*0:0*/ Tile__DOT__csr__DOT___GEN_151;
        CData/*0:0*/ Tile__DOT__csr__DOT___GEN_152;
        CData/*0:0*/ Tile__DOT__csr__DOT___GEN_153;
        CData/*0:0*/ Tile__DOT__hazard_detection__DOT__rs1_con;
        CData/*0:0*/ Tile__DOT__hazard_detection__DOT__rs2_con;
        CData/*0:0*/ Tile__DOT__hazard_detection__DOT__stall_con;
        CData/*4:0*/ Tile__DOT__mem_wb_register__DOT__rd;
        CData/*2:0*/ Tile__DOT__mem_wb_register__DOT__mem_to_reg;
        CData/*0:0*/ Tile__DOT__mem_wb_register__DOT__reg_write;
        CData/*2:0*/ Tile__DOT__control__DOT___T_87;
        CData/*2:0*/ Tile__DOT__control__DOT___T_42;
        CData/*0:0*/ Tile__DOT__control__DOT___T_210;
        CData/*0:0*/ Tile__DOT__control__DOT___T_159;
        CData/*4:0*/ Tile__DOT__control__DOT___T_342;
        CData/*4:0*/ Tile__DOT__control__DOT___T_297;
        CData/*0:0*/ Tile__DOT__control__DOT___T_513;
        CData/*0:0*/ Tile__DOT__control__DOT___T_462;
        CData/*0:0*/ Tile__DOT__control__DOT___T_603;
        CData/*0:0*/ Tile__DOT__control__DOT___T_738;
        CData/*0:0*/ Tile__DOT__control__DOT___T_894;
        CData/*0:0*/ Tile__DOT__control__DOT___T_843;
        CData/*0:0*/ Tile__DOT__control__DOT___T_987;
        CData/*1:0*/ Tile__DOT__control__DOT___T_1140;
        CData/*0:0*/ Tile__DOT__control__DOT___T_1257;
        CData/*0:0*/ Tile__DOT__control__DOT___T_1503;
        CData/*0:0*/ Tile__DOT__control__DOT___T_1449;
        CData/*0:0*/ Tile__DOT__control__DOT___T_1398;
        CData/*2:0*/ Tile__DOT__control__DOT___T_1608;
        CData/*2:0*/ Tile__DOT__control__DOT___T_1563;
        CData/*0:0*/ Tile__DOT__control__DOT___T_1737;
        CData/*0:0*/ Tile__DOT__control__DOT___T_1686;
        CData/*0:0*/ Tile__DOT__control__DOT___T_1863;
        CData/*0:0*/ Tile__DOT__control__DOT___T_1812;
        CData/*2:0*/ Tile__DOT__control__DOT___T_2019;
        CData/*2:0*/ Tile__DOT__control__DOT___T_1974;
        CData/*4:0*/ Tile__DOT__id_ex_register__DOT__rs1;
        CData/*4:0*/ Tile__DOT__id_ex_register__DOT__rs2;
        CData/*0:0*/ Tile__DOT__id_ex_register__DOT__alu_src;
        CData/*4:0*/ Tile__DOT__id_ex_register__DOT__aluop;
        CData/*0:0*/ Tile__DOT__id_ex_register__DOT__branch;
        CData/*0:0*/ Tile__DOT__id_ex_register__DOT__branch_src;
        CData/*0:0*/ Tile__DOT__id_ex_register__DOT__jump_type;
        CData/*0:0*/ Tile__DOT__id_ex_register__DOT__mem_read;
        CData/*0:0*/ Tile__DOT__id_ex_register__DOT__mem_write;
        CData/*1:0*/ Tile__DOT__id_ex_register__DOT__data_size;
        CData/*0:0*/ Tile__DOT__id_ex_register__DOT__load_type;
        CData/*0:0*/ Tile__DOT__id_ex_register__DOT__reg_write;
        CData/*2:0*/ Tile__DOT__id_ex_register__DOT__mem_to_reg;
        CData/*2:0*/ Tile__DOT__id_ex_register__DOT__imm_sel;
        CData/*0:0*/ Tile__DOT__id_ex_register__DOT__csr_src;
        CData/*2:0*/ Tile__DOT__id_ex_register__DOT__write_csr;
        CData/*0:0*/ Tile__DOT__id_ex_register__DOT__is_illegal;
        CData/*0:0*/ Tile__DOT__alu__DOT___T_30;
        CData/*0:0*/ Tile__DOT__alu__DOT___T_33;
        CData/*0:0*/ Tile__DOT__alu__DOT___T_34;
        CData/*4:0*/ Tile__DOT__ex_mem_register__DOT__rd;
        CData/*4:0*/ Tile__DOT__ex_mem_register__DOT__rs2;
        CData/*0:0*/ Tile__DOT__ex_mem_register__DOT__mem_read;
        CData/*0:0*/ Tile__DOT__ex_mem_register__DOT__mem_write;
        CData/*1:0*/ Tile__DOT__ex_mem_register__DOT__data_size;
        CData/*0:0*/ Tile__DOT__ex_mem_register__DOT__load_type;
        CData/*0:0*/ Tile__DOT__ex_mem_register__DOT__reg_write;
    };
    struct {
        CData/*2:0*/ Tile__DOT__ex_mem_register__DOT__mem_to_reg;
        CData/*0:0*/ Tile__DOT__forward__DOT___T_2;
        CData/*0:0*/ Tile__DOT__forward__DOT__ex_mem_a_con;
        CData/*0:0*/ Tile__DOT__forward__DOT___T_6;
        CData/*0:0*/ Tile__DOT__forward__DOT__ex_mem_b_con;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_arbt_io_o_icb_cmd_valid;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_arbt_io_o_icb_rsp_ready;
        CData/*1:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_arbt_io_i_bus_icb_rsp_valid;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_splt_io_i_icb_cmd_ready;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_splt_io_i_icb_rsp_valid;
        CData/*2:0*/ Tile__DOT__e203biu__DOT___T_73;
        CData/*2:0*/ Tile__DOT__e203biu__DOT___T_98;
        CData/*2:0*/ Tile__DOT__e203biu__DOT___T_120;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_arbt__DOT__i_bus_icb_cmd_sel_1;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_arbt__DOT__o_icb_cmd_ready_real;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_arbt__DOT__o_icb_rsp_valid_pre;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_arbt__DOT__o_icb_rsp_port_id;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_arbt__DOT__u_sirv_gnrl_rspid_fifo__DOT__vld_set;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_arbt__DOT__u_sirv_gnrl_rspid_fifo__DOT__vld_clr;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_arbt__DOT__u_sirv_gnrl_rspid_fifo__DOT__vld_dfflr__DOT__qout_r;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_arbt__DOT__u_sirv_gnrl_rspid_fifo__DOT__dat_dfflr__DOT__qout_r;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__outs_cnt_inc;
        CData/*1:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__outs_cnt_nxt;
        CData/*1:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_cmd_fifo__DOT__vec_r;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_cmd_fifo__DOT__wen;
        CData/*1:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_cmd_fifo__DOT__vec_nxt;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_cmd_fifo__DOT__rptr_vec_0_dfflrs__DOT__qout_r;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_cmd_fifo__DOT__rptr_vec_0_dfflrs__DOT___T;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_cmd_fifo__DOT__wptr_vec_0_dfflrs__DOT__qout_r;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_cmd_fifo__DOT__wptr_vec_0_dfflrs__DOT___T;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_cmd_fifo__DOT__vec_0_dfflrs__DOT__qout_r;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_cmd_fifo__DOT__vec_0_dfflrs__DOT___T;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_cmd_fifo__DOT__vec_31_dfflr__DOT__qout_r;
        CData/*1:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_rsp_fifo__DOT__vec_r;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_rsp_fifo__DOT__ren;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_rsp_fifo__DOT__wen;
        CData/*1:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_rsp_fifo__DOT__vec_nxt;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_rsp_fifo__DOT__rptr_vec_0_dfflrs__DOT__qout_r;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_rsp_fifo__DOT__rptr_vec_0_dfflrs__DOT___T;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_rsp_fifo__DOT__wptr_vec_0_dfflrs__DOT__qout_r;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_rsp_fifo__DOT__wptr_vec_0_dfflrs__DOT___T;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_rsp_fifo__DOT__vec_0_dfflrs__DOT__qout_r;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_rsp_fifo__DOT__vec_0_dfflrs__DOT___T;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_rsp_fifo__DOT__vec_31_dfflr__DOT__qout_r;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__outs_cnt_dfflr__DOT__qout_r;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_splt__DOT__u_sirv_gnrl_rspid_fifo_io_i_vld;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_splt__DOT__cmd_diff_branch;
        CData/*5:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_splt__DOT__o_icb_rsp_port_id;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_splt__DOT__rspid_fifo_wen;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_splt__DOT__rspid_fifo_bypass;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_splt__DOT__i_icb_cmd_valid_pre;
        CData/*5:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_splt__DOT__mid_temp;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_splt__DOT__u_sirv_gnrl_rspid_fifo__DOT__vld_set;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_splt__DOT__u_sirv_gnrl_rspid_fifo__DOT__vld_clr;
        CData/*0:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_splt__DOT__u_sirv_gnrl_rspid_fifo__DOT__vld_dfflr__DOT__qout_r;
        CData/*5:0*/ Tile__DOT__e203biu__DOT__u_biu_icb_splt__DOT__u_sirv_gnrl_rspid_fifo__DOT__dat_dfflr__DOT__qout_r;
        CData/*0:0*/ Tile__DOT__biuinf__DOT__biu_interact;
        CData/*0:0*/ Tile__DOT__biuinf__DOT___T_8;
        CData/*0:0*/ Tile__DOT__biuinf__DOT___T_10;
        CData/*0:0*/ Tile__DOT__biuinf__DOT__write_counter;
        CData/*0:0*/ Tile__DOT__biuinf__DOT___GEN_8;
        CData/*1:0*/ Tile__DOT__biuinf__DOT___GEN_15;
        CData/*2:0*/ Tile__DOT__datacache__DOT___T_15;
        IData/*31:0*/ Tile__DOT__datapath_io_alu_a_src;
    };
    struct {
        IData/*31:0*/ Tile__DOT__datapath_io_alu_b_src;
        IData/*31:0*/ Tile__DOT__datapath_io_mem_writedata;
        IData/*31:0*/ Tile__DOT__datapath_io_wb_reg_writedata;
        IData/*31:0*/ Tile__DOT__datapath_io_csr_data_in;
        IData/*31:0*/ Tile__DOT__csr_io_csr_data_out;
        IData/*31:0*/ Tile__DOT__instcache_io_inst;
        IData/*31:0*/ Tile__DOT__regfile_io_rs1_out;
        IData/*31:0*/ Tile__DOT__regfile_io_rs2_out;
        IData/*31:0*/ Tile__DOT__biuinf_io_DC_addr;
        IData/*31:0*/ Tile__DOT__biuinf_io_biu_addr;
        IData/*31:0*/ Tile__DOT__biuinf_io_biu_write_data;
        IData/*31:0*/ Tile__DOT__datapath__DOT___T;
        IData/*31:0*/ Tile__DOT__datapath__DOT__mem_forward_value;
        IData/*31:0*/ Tile__DOT__datapath__DOT___T_70;
        IData/*31:0*/ Tile__DOT__pc__DOT__pc_reg;
        IData/*31:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer__DOT___T_96;
        IData/*31:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer__DOT___T_108;
        IData/*31:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer__DOT___T_120;
        IData/*31:0*/ Tile__DOT__csr__DOT__mepc;
        IData/*31:0*/ Tile__DOT__csr__DOT__mtval;
        IData/*31:0*/ Tile__DOT__csr__DOT__mcause;
        IData/*31:0*/ Tile__DOT__csr__DOT__mcycle;
        IData/*31:0*/ Tile__DOT__csr__DOT__mcycleh;
        IData/*31:0*/ Tile__DOT__csr__DOT__mtime;
        IData/*31:0*/ Tile__DOT__csr__DOT__mtimeh;
        IData/*31:0*/ Tile__DOT__csr__DOT__minstret;
        IData/*31:0*/ Tile__DOT__csr__DOT__minstreth;
        IData/*31:0*/ Tile__DOT__csr__DOT__mtimecmp;
        IData/*31:0*/ Tile__DOT__csr__DOT__mtimecmph;
        IData/*31:0*/ Tile__DOT__csr__DOT___T_24;
        IData/*31:0*/ Tile__DOT__csr__DOT__s_val;
        IData/*31:0*/ Tile__DOT__csr__DOT__si_val;
        IData/*31:0*/ Tile__DOT__csr__DOT__c_val;
        IData/*31:0*/ Tile__DOT__csr__DOT__ci_val;
        IData/*31:0*/ Tile__DOT__csr__DOT__csr_write_data;
        IData/*31:0*/ Tile__DOT__if_id_register__DOT__pc;
        IData/*31:0*/ Tile__DOT__if_id_register__DOT__pc_4;
        IData/*31:0*/ Tile__DOT__if_id_register__DOT__inst;
        IData/*31:0*/ Tile__DOT__regfile__DOT__regfile___05FT_8_data;
        IData/*31:0*/ Tile__DOT__mem_wb_register__DOT__dataout;
        IData/*31:0*/ Tile__DOT__mem_wb_register__DOT__alu_sum;
        IData/*31:0*/ Tile__DOT__mem_wb_register__DOT__pc_4;
        IData/*31:0*/ Tile__DOT__mem_wb_register__DOT__imm;
        IData/*31:0*/ Tile__DOT__mem_wb_register__DOT__aui_pc;
        IData/*31:0*/ Tile__DOT__mem_wb_register__DOT__csr_data_out;
        IData/*31:0*/ Tile__DOT__immgen__DOT___T_2;
        IData/*31:0*/ Tile__DOT__id_ex_register__DOT__pc;
        IData/*31:0*/ Tile__DOT__id_ex_register__DOT__pc_4;
        IData/*31:0*/ Tile__DOT__id_ex_register__DOT__rs1_out;
        IData/*31:0*/ Tile__DOT__id_ex_register__DOT__rs2_out;
        IData/*31:0*/ Tile__DOT__id_ex_register__DOT__imm;
        IData/*31:0*/ Tile__DOT__id_ex_register__DOT__inst;
        WData/*94:0*/ Tile__DOT__alu__DOT___T[3];
        IData/*31:0*/ Tile__DOT__ex_mem_register__DOT__alu_sum;
        IData/*31:0*/ Tile__DOT__ex_mem_register__DOT__rs2_out;
        IData/*31:0*/ Tile__DOT__ex_mem_register__DOT__pc_4;
        IData/*31:0*/ Tile__DOT__ex_mem_register__DOT__imm;
        IData/*31:0*/ Tile__DOT__ex_mem_register__DOT__aui_pc;
        IData/*31:0*/ Tile__DOT__ex_mem_register__DOT__csr_data_out;
        WData/*77:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_cmd_fifo_io_o_dat[3];
        WData/*77:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_cmd_fifo__DOT___T_19__DOT__qout_r[3];
        IData/*31:0*/ Tile__DOT__biuinf__DOT__biu_data;
        IData/*31:0*/ Tile__DOT__datacache__DOT__cache___05FT_data;
        QData/*33:0*/ Tile__DOT__datapath__DOT__ex_branch_addr;
    };
    struct {
        QData/*32:0*/ Tile__DOT__datapath__DOT__normal_pc;
        QData/*32:0*/ Tile__DOT__datapath__DOT___T_13;
        QData/*32:0*/ Tile__DOT__csr__DOT___GEN_2;
        QData/*32:0*/ Tile__DOT__csr__DOT___GEN_3;
        QData/*63:0*/ Tile__DOT__csr__DOT___T_62;
        QData/*32:0*/ Tile__DOT__csr__DOT___GEN_6;
        QData/*32:0*/ Tile__DOT__csr__DOT___GEN_7;
        QData/*32:0*/ Tile__DOT__csr__DOT___GEN_12;
        QData/*32:0*/ Tile__DOT__csr__DOT___GEN_13;
        QData/*32:0*/ Tile__DOT__csr__DOT___GEN_142;
        QData/*34:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_rsp_fifo_io_o_dat;
        QData/*34:0*/ Tile__DOT__e203biu__DOT__u_sirv_gnrl_icb_buffer__DOT__u_sirv_gnrl_rsp_fifo__DOT___T_19__DOT__qout_r;
        QData/*46:0*/ Tile__DOT__datacache__DOT___T_18;
        QData/*46:0*/ Tile__DOT__datacache__DOT___T_13;
        CData/*1:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer__DOT__counter[3];
        IData/*31:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer__DOT__buffer[3];
        CData/*0:0*/ Tile__DOT__branch_predictor__DOT__addr_buffer__DOT__is_used[3];
        CData/*7:0*/ Tile__DOT__instcache__DOT__cache[4096];
        IData/*31:0*/ Tile__DOT__regfile__DOT__regfile[32];
        IData/*31:0*/ Tile__DOT__datacache__DOT__cache[32];
    };
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__clock;
    IData/*31:0*/ __Vm_traceActivity;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VTile__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VTile);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VTile(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VTile();
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
    static void _eval_initial_loop(VTile__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VTile__Syms* symsp, bool first);
  private:
    static QData _change_request(VTile__Syms* __restrict vlSymsp);
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VTile__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(VTile__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VTile__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _initial__TOP__1(VTile__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__2(VTile__Syms* __restrict vlSymsp);
    static void _settle__TOP__3(VTile__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceChgThis(VTile__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(VTile__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(VTile__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__4(VTile__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(VTile__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceFullThis__1(VTile__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis(VTile__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis__1(VTile__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
