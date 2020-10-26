// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VPICORV32_H_
#define _VPICORV32_H_  // guard

#include "verilated.h"

//==========

class VPicoRV32__Syms;
class VPicoRV32_VerilatedVcd;


//----------

VL_MODULE(VPicoRV32) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_OUT8(io_trap,0,0);
    VL_OUT8(io_mem_valid,0,0);
    VL_OUT8(io_mem_instr,0,0);
    VL_IN8(io_mem_ready,0,0);
    VL_OUT8(io_mem_wstrb,3,0);
    VL_OUT8(io_mem_la_read,0,0);
    VL_OUT8(io_mem_la_write,0,0);
    VL_OUT8(io_mem_la_wstrb,3,0);
    VL_OUT8(io_pcpi_valid,0,0);
    VL_IN8(io_pcpi_wr,0,0);
    VL_IN8(io_pcpi_wait,0,0);
    VL_IN8(io_pcpi_ready,0,0);
    VL_OUT8(io_trace_valid,0,0);
    VL_OUT(io_mem_addr,31,0);
    VL_OUT(io_mem_wdata,31,0);
    VL_IN(io_mem_rdata,31,0);
    VL_OUT(io_mem_la_addr,31,0);
    VL_OUT(io_mem_la_wdata,31,0);
    VL_OUT(io_pcpi_insn,31,0);
    VL_OUT(io_pcpi_rs1,31,0);
    VL_OUT(io_pcpi_rs2,31,0);
    VL_IN(io_pcpi_rd,31,0);
    VL_IN(io_irq,31,0);
    VL_OUT(io_eoi,31,0);
    VL_OUT64(io_trace_data,35,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ PicoRV32__DOT__trap;
        CData/*0:0*/ PicoRV32__DOT__mem_valid;
        CData/*0:0*/ PicoRV32__DOT__mem_instr;
        CData/*3:0*/ PicoRV32__DOT__mem_wstrb;
        CData/*3:0*/ PicoRV32__DOT__mem_la_wstrb;
        CData/*0:0*/ PicoRV32__DOT__mem_do_rinst;
        CData/*0:0*/ PicoRV32__DOT__latched_store;
        CData/*0:0*/ PicoRV32__DOT__latched_branch;
        CData/*0:0*/ PicoRV32__DOT__mem_xfer;
        CData/*0:0*/ PicoRV32__DOT__mem_do_rdata;
        CData/*0:0*/ PicoRV32__DOT___T_48;
        CData/*0:0*/ PicoRV32__DOT__mem_do_wdata;
        CData/*1:0*/ PicoRV32__DOT__mem_state;
        CData/*0:0*/ PicoRV32__DOT___T_52;
        CData/*0:0*/ PicoRV32__DOT__mem_done;
        CData/*1:0*/ PicoRV32__DOT__mem_wordsize;
        CData/*0:0*/ PicoRV32__DOT___T_482;
        CData/*0:0*/ PicoRV32__DOT___T_486;
        CData/*3:0*/ PicoRV32__DOT___T_490;
        CData/*0:0*/ PicoRV32__DOT___T_491;
        CData/*0:0*/ PicoRV32__DOT___T_496;
        CData/*0:0*/ PicoRV32__DOT___T_511;
        CData/*0:0*/ PicoRV32__DOT___T_512;
        CData/*0:0*/ PicoRV32__DOT___GEN_60;
        CData/*0:0*/ PicoRV32__DOT__instr_lui;
        CData/*0:0*/ PicoRV32__DOT__instr_auipc;
        CData/*0:0*/ PicoRV32__DOT__instr_jal;
        CData/*0:0*/ PicoRV32__DOT__instr_jalr;
        CData/*0:0*/ PicoRV32__DOT__instr_beq;
        CData/*0:0*/ PicoRV32__DOT__instr_bne;
        CData/*0:0*/ PicoRV32__DOT__instr_blt;
        CData/*0:0*/ PicoRV32__DOT__instr_bge;
        CData/*0:0*/ PicoRV32__DOT__instr_bltu;
        CData/*0:0*/ PicoRV32__DOT__instr_bgeu;
        CData/*0:0*/ PicoRV32__DOT__instr_lb;
        CData/*0:0*/ PicoRV32__DOT__instr_lh;
        CData/*0:0*/ PicoRV32__DOT__instr_lw;
        CData/*0:0*/ PicoRV32__DOT__instr_lbu;
        CData/*0:0*/ PicoRV32__DOT__instr_lhu;
        CData/*0:0*/ PicoRV32__DOT__instr_sb;
        CData/*0:0*/ PicoRV32__DOT__instr_sh;
        CData/*0:0*/ PicoRV32__DOT__instr_sw;
        CData/*0:0*/ PicoRV32__DOT__instr_addi;
        CData/*0:0*/ PicoRV32__DOT__instr_slti;
        CData/*0:0*/ PicoRV32__DOT__instr_sltiu;
        CData/*0:0*/ PicoRV32__DOT__instr_xori;
        CData/*0:0*/ PicoRV32__DOT__instr_ori;
        CData/*0:0*/ PicoRV32__DOT__instr_andi;
        CData/*0:0*/ PicoRV32__DOT__instr_slli;
        CData/*0:0*/ PicoRV32__DOT__instr_srli;
        CData/*0:0*/ PicoRV32__DOT__instr_srai;
        CData/*0:0*/ PicoRV32__DOT__instr_add;
        CData/*0:0*/ PicoRV32__DOT__instr_sub;
        CData/*0:0*/ PicoRV32__DOT__instr_sll;
        CData/*0:0*/ PicoRV32__DOT__instr_slt;
        CData/*0:0*/ PicoRV32__DOT__instr_sltu;
        CData/*0:0*/ PicoRV32__DOT__instr_xor;
        CData/*0:0*/ PicoRV32__DOT__instr_srl;
        CData/*0:0*/ PicoRV32__DOT__instr_sra;
        CData/*0:0*/ PicoRV32__DOT__instr_or;
        CData/*0:0*/ PicoRV32__DOT__instr_and;
        CData/*0:0*/ PicoRV32__DOT__instr_rdcycle;
        CData/*0:0*/ PicoRV32__DOT__instr_rdcycleh;
        CData/*0:0*/ PicoRV32__DOT__instr_rdinstr;
    };
    struct {
        CData/*0:0*/ PicoRV32__DOT__instr_rdinstrh;
        CData/*0:0*/ PicoRV32__DOT__is_rdcycle_rdcycleh_rdinstr_rdinstrh;
        CData/*0:0*/ PicoRV32__DOT__is_lui_auipc_jal;
        CData/*0:0*/ PicoRV32__DOT___T_564;
        CData/*0:0*/ PicoRV32__DOT__is_lbu_lhu_lw;
        CData/*0:0*/ PicoRV32__DOT__is_beq_bne_blt_bge_bltu_bgeu;
        CData/*0:0*/ PicoRV32__DOT___T_582;
        CData/*0:0*/ PicoRV32__DOT__is_lb_lh_lw_lbu_lhu;
        CData/*0:0*/ PicoRV32__DOT__is_sb_sh_sw;
        CData/*0:0*/ PicoRV32__DOT__is_alu_reg_imm;
        CData/*0:0*/ PicoRV32__DOT__is_alu_reg_reg;
        CData/*4:0*/ PicoRV32__DOT__decoded_rs1;
        CData/*4:0*/ PicoRV32__DOT__decoded_rs2;
        CData/*0:0*/ PicoRV32__DOT__decoder_trigger;
        CData/*0:0*/ PicoRV32__DOT__decoder_pseudo_trigger;
        CData/*0:0*/ PicoRV32__DOT___T_837;
        CData/*0:0*/ PicoRV32__DOT__is_slli_srli_srai;
        CData/*0:0*/ PicoRV32__DOT__is_jalr_addi_slti_sltiu_xori_ori_andi;
        CData/*0:0*/ PicoRV32__DOT__is_sll_srl_sra;
        CData/*0:0*/ PicoRV32__DOT___T_907;
        CData/*0:0*/ PicoRV32__DOT___T_919;
        CData/*0:0*/ PicoRV32__DOT___T_955;
        CData/*0:0*/ PicoRV32__DOT___T_1070;
        CData/*0:0*/ PicoRV32__DOT__alu_out_0;
        CData/*0:0*/ PicoRV32__DOT__cpuregs_write;
        CData/*7:0*/ PicoRV32__DOT__cpu_state;
        CData/*0:0*/ PicoRV32__DOT___T_1179;
        CData/*0:0*/ PicoRV32__DOT___T_1184;
        CData/*4:0*/ PicoRV32__DOT__latched_rd;
        CData/*4:0*/ PicoRV32__DOT__reg_sh;
        CData/*0:0*/ PicoRV32__DOT__set_mem_do_rinst;
        CData/*0:0*/ PicoRV32__DOT__set_mem_do_rdata;
        CData/*0:0*/ PicoRV32__DOT__set_mem_do_wdata;
        CData/*0:0*/ PicoRV32__DOT__latched_is_lu;
        CData/*0:0*/ PicoRV32__DOT__latched_is_lh;
        CData/*0:0*/ PicoRV32__DOT__latched_is_lb;
        CData/*0:0*/ PicoRV32__DOT___T_1233;
        CData/*0:0*/ PicoRV32__DOT___T_1359;
        CData/*0:0*/ PicoRV32__DOT___T_1418;
        CData/*0:0*/ PicoRV32__DOT___T_1437;
        CData/*0:0*/ PicoRV32__DOT___T_1448;
        CData/*0:0*/ PicoRV32__DOT___T_1470;
        CData/*0:0*/ PicoRV32__DOT___T_1484;
        CData/*0:0*/ PicoRV32__DOT___T_1404;
        CData/*0:0*/ PicoRV32__DOT___GEN_486;
        CData/*0:0*/ PicoRV32__DOT___GEN_595;
        CData/*7:0*/ PicoRV32__DOT___GEN_653;
        CData/*0:0*/ PicoRV32__DOT___T_1452;
        CData/*0:0*/ PicoRV32__DOT___T_1454;
        CData/*0:0*/ PicoRV32__DOT___T_1456;
        CData/*0:0*/ PicoRV32__DOT___GEN_698;
        CData/*0:0*/ PicoRV32__DOT___GEN_766;
        CData/*5:0*/ PicoRV32__DOT___GEN_952;
        CData/*5:0*/ PicoRV32__DOT___GEN_966;
        CData/*0:0*/ PicoRV32__DOT___T_1560;
        CData/*0:0*/ PicoRV32__DOT___GEN_993;
        CData/*0:0*/ PicoRV32__DOT___GEN_994;
        CData/*0:0*/ PicoRV32__DOT___GEN_995;
        IData/*31:0*/ PicoRV32__DOT__mem_addr;
        IData/*31:0*/ PicoRV32__DOT__mem_wdata;
        IData/*31:0*/ PicoRV32__DOT__mem_la_wdata;
        IData/*31:0*/ PicoRV32__DOT__reg_op1;
        IData/*31:0*/ PicoRV32__DOT__reg_op2;
        IData/*31:0*/ PicoRV32__DOT__reg_out;
    };
    struct {
        IData/*31:0*/ PicoRV32__DOT__reg_next_pc;
        IData/*31:0*/ PicoRV32__DOT__mem_rdata_q;
        IData/*31:0*/ PicoRV32__DOT__mem_rdata_latched_noshuffle;
        IData/*31:0*/ PicoRV32__DOT__mem_rdata_word;
        IData/*31:0*/ PicoRV32__DOT__decoded_imm_j;
        IData/*31:0*/ PicoRV32__DOT__decoded_imm;
        IData/*31:0*/ PicoRV32__DOT__cpuregs_wrdata;
        IData/*31:0*/ PicoRV32__DOT___T_1196;
        IData/*31:0*/ PicoRV32__DOT__cpuregs_rs1;
        IData/*31:0*/ PicoRV32__DOT__cpuregs_rs2;
        WData/*64:0*/ PicoRV32__DOT___T_1218[3];
        WData/*64:0*/ PicoRV32__DOT___GEN_935[3];
        QData/*46:0*/ PicoRV32__DOT__all_instr;
        QData/*63:0*/ PicoRV32__DOT__count_cycle;
        QData/*63:0*/ PicoRV32__DOT__count_instr;
        QData/*32:0*/ PicoRV32__DOT___T_1478;
        QData/*32:0*/ PicoRV32__DOT___GEN_816;
        QData/*32:0*/ PicoRV32__DOT___GEN_831;
        QData/*32:0*/ PicoRV32__DOT___GEN_934;
        QData/*32:0*/ PicoRV32__DOT___GEN_964;
    };
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__clock;
    IData/*31:0*/ __Vm_traceActivity;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VPicoRV32__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VPicoRV32);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VPicoRV32(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VPicoRV32();
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
    static void _eval_initial_loop(VPicoRV32__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VPicoRV32__Syms* symsp, bool first);
  private:
    static QData _change_request(VPicoRV32__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__4(VPicoRV32__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VPicoRV32__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(VPicoRV32__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VPicoRV32__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _initial__TOP__1(VPicoRV32__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__2(VPicoRV32__Syms* __restrict vlSymsp);
    static void _settle__TOP__3(VPicoRV32__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceChgThis(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__4(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__5(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceFullThis__1(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis__1(VPicoRV32__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
