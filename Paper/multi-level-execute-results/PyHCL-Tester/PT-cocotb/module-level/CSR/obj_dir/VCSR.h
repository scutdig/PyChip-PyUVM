// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VCSR_H_
#define _VCSR_H_  // guard

#include "verilated.h"

//==========

class VCSR__Syms;
class VCSR_VerilatedVcd;


//----------

VL_MODULE(VCSR) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_ex_Mem_Read,0,0);
    VL_IN8(io_ex_Mem_Write,0,0);
    VL_IN8(io_ex_Write_CSR,2,0);
    VL_IN8(io_ex_is_Illegal,0,0);
    VL_IN8(io_ex_Branch,0,0);
    VL_IN8(io_PC_Sel,1,0);
    VL_IN8(io_Bubble,0,0);
    VL_IN8(io_is_Waiting_Resolved,0,0);
    VL_OUT8(io_IF_ID_Flush,0,0);
    VL_OUT8(io_ID_EX_Flush,0,0);
    VL_OUT8(io_is_Exception,1,0);
    VL_OUT8(io_Exception_Flush,0,0);
    VL_IN(io_ex_branch_addr,31,0);
    VL_IN(io_ex_addr,31,0);
    VL_IN(io_ex_inst,31,0);
    VL_IN(io_csr_data_in,31,0);
    VL_IN(io_ex_pc_4,31,0);
    VL_IN(io_new_addr,31,0);
    VL_IN(io_pc_recover,31,0);
    VL_IN(io_if_inst,31,0);
    VL_OUT(io_mepc_out,31,0);
    VL_OUT(io_mtvec_out,31,0);
    VL_OUT(io_csr_data_out,31,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    CData/*0:0*/ CSR__DOT__is_CSR_Instruction;
    CData/*1:0*/ CSR__DOT__MPP;
    CData/*0:0*/ CSR__DOT__MPIE;
    CData/*0:0*/ CSR__DOT__MIE;
    CData/*0:0*/ CSR__DOT__MEIE;
    CData/*0:0*/ CSR__DOT__MTIE;
    CData/*0:0*/ CSR__DOT__MSIE;
    CData/*0:0*/ CSR__DOT__MEIP;
    CData/*0:0*/ CSR__DOT__MTIP;
    CData/*0:0*/ CSR__DOT__MSIP;
    CData/*0:0*/ CSR__DOT___T_57;
    CData/*0:0*/ CSR__DOT__InstructionAddressMisaligned_con;
    CData/*0:0*/ CSR__DOT__LoadAddressMisaligned_con;
    CData/*0:0*/ CSR__DOT__StoreAddressMisaligned_con;
    CData/*0:0*/ CSR__DOT__is_a_exception;
    CData/*0:0*/ CSR__DOT__is_a_interrupt;
    CData/*0:0*/ CSR__DOT__enable_exception;
    CData/*0:0*/ CSR__DOT___T_83;
    CData/*0:0*/ CSR__DOT___T_88;
    CData/*0:0*/ CSR__DOT___T_89;
    CData/*0:0*/ CSR__DOT___T_95;
    CData/*0:0*/ CSR__DOT___GEN_145;
    CData/*0:0*/ CSR__DOT___GEN_147;
    CData/*0:0*/ CSR__DOT___GEN_151;
    CData/*0:0*/ CSR__DOT___GEN_152;
    CData/*0:0*/ CSR__DOT___GEN_153;
    IData/*31:0*/ CSR__DOT__mepc;
    IData/*31:0*/ CSR__DOT__mtval;
    IData/*31:0*/ CSR__DOT__mcause;
    IData/*31:0*/ CSR__DOT__mcycle;
    IData/*31:0*/ CSR__DOT__mcycleh;
    IData/*31:0*/ CSR__DOT__mtime;
    IData/*31:0*/ CSR__DOT__mtimeh;
    IData/*31:0*/ CSR__DOT__minstret;
    IData/*31:0*/ CSR__DOT__minstreth;
    IData/*31:0*/ CSR__DOT__mtimecmp;
    IData/*31:0*/ CSR__DOT__mtimecmph;
    IData/*31:0*/ CSR__DOT___T_24;
    IData/*31:0*/ CSR__DOT__s_val;
    IData/*31:0*/ CSR__DOT__si_val;
    IData/*31:0*/ CSR__DOT__c_val;
    IData/*31:0*/ CSR__DOT__ci_val;
    IData/*31:0*/ CSR__DOT__csr_write_data;
    QData/*32:0*/ CSR__DOT___GEN_2;
    QData/*32:0*/ CSR__DOT___GEN_3;
    QData/*63:0*/ CSR__DOT___T_61;
    QData/*63:0*/ CSR__DOT___T_62;
    QData/*32:0*/ CSR__DOT___GEN_6;
    QData/*32:0*/ CSR__DOT___GEN_7;
    QData/*32:0*/ CSR__DOT___GEN_12;
    QData/*32:0*/ CSR__DOT___GEN_13;
    QData/*32:0*/ CSR__DOT___GEN_142;
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__clock;
    IData/*31:0*/ __Vm_traceActivity;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VCSR__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VCSR);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VCSR(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VCSR();
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
    static void _eval_initial_loop(VCSR__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VCSR__Syms* symsp, bool first);
  private:
    static QData _change_request(VCSR__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__2(VCSR__Syms* __restrict vlSymsp);
    static void _combo__TOP__5(VCSR__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VCSR__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(VCSR__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VCSR__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _initial__TOP__1(VCSR__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__4(VCSR__Syms* __restrict vlSymsp);
    static void _settle__TOP__3(VCSR__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceChgThis(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__4(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__5(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__6(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceFullThis__1(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis__1(VCSR__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
