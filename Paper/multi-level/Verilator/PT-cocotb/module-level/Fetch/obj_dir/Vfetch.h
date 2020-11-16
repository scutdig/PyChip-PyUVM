// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VFETCH_H_
#define _VFETCH_H_  // guard

#include "verilated.h"

//==========

class Vfetch__Syms;
class Vfetch_VerilatedVcd;


//----------

VL_MODULE(Vfetch) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_launch,0,0);
    VL_OUT8(io_vme_rd_cmd_valid,0,0);
    VL_IN8(io_vme_rd_cmd_ready,0,0);
    VL_OUT8(io_vme_rd_cmd_bits_len,7,0);
    VL_IN8(io_vme_rd_data_valid,0,0);
    VL_OUT8(io_vme_rd_data_ready,0,0);
    VL_OUT8(io_inst_ld_valid,0,0);
    VL_IN8(io_inst_ld_ready,0,0);
    VL_OUT8(io_inst_co_valid,0,0);
    VL_IN8(io_inst_co_ready,0,0);
    VL_OUT8(io_inst_st_valid,0,0);
    VL_IN8(io_inst_st_ready,0,0);
    VL_IN(io_ins_baddr,31,0);
    VL_IN(io_ins_count,31,0);
    VL_OUT(io_vme_rd_cmd_bits_addr,31,0);
    VL_OUTW(io_inst_ld_bits,127,0,4);
    VL_OUTW(io_inst_co_bits,127,0,4);
    VL_OUTW(io_inst_st_bits,127,0,4);
    VL_IN64(io_vme_rd_data_bits,63,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    CData/*0:0*/ Fetch__DOT__dec_io_isLoad;
    CData/*0:0*/ Fetch__DOT__dec_io_isCompute;
    CData/*0:0*/ Fetch__DOT__dec_io_isStore;
    CData/*0:0*/ Fetch__DOT__s1_launch;
    CData/*0:0*/ Fetch__DOT__state;
    CData/*0:0*/ Fetch__DOT___T;
    CData/*0:0*/ Fetch__DOT__pulse;
    CData/*7:0*/ Fetch__DOT__rlen;
    CData/*0:0*/ Fetch__DOT___GEN_3;
    CData/*2:0*/ Fetch__DOT___T_42;
    CData/*6:0*/ Fetch__DOT__inst_q__DOT___T;
    CData/*7:0*/ Fetch__DOT__inst_q__DOT___GEN_6;
    CData/*6:0*/ Fetch__DOT__inst_q__DOT___T_4;
    CData/*7:0*/ Fetch__DOT__inst_q__DOT___GEN_8;
    CData/*0:0*/ Fetch__DOT__inst_q__DOT__maybe_full;
    CData/*0:0*/ Fetch__DOT__inst_q__DOT__ptr_match;
    CData/*0:0*/ Fetch__DOT__inst_q__DOT__empty;
    CData/*7:0*/ Fetch__DOT__inst_q__DOT___T_14;
    CData/*0:0*/ Fetch__DOT__dec__DOT__cs_val_inst;
    CData/*2:0*/ Fetch__DOT__dec__DOT__cs_op_type;
    IData/*31:0*/ Fetch__DOT__xrem;
    IData/*31:0*/ Fetch__DOT__raddr;
    WData/*127:0*/ Fetch__DOT__inst_q__DOT__ram___05FT_11_data[4];
    QData/*32:0*/ Fetch__DOT___GEN_38;
    QData/*32:0*/ Fetch__DOT___GEN_40;
    QData/*63:0*/ Fetch__DOT__lsb;
    WData/*127:0*/ Fetch__DOT__inst_q__DOT__ram[128][4];
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__clock;
    IData/*31:0*/ __Vm_traceActivity;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vfetch__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vfetch);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vfetch(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vfetch();
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
    static void _eval_initial_loop(Vfetch__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vfetch__Syms* symsp, bool first);
  private:
    static QData _change_request(Vfetch__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__3(Vfetch__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vfetch__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vfetch__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vfetch__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__2(Vfetch__Syms* __restrict vlSymsp);
    static void _settle__TOP__1(Vfetch__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceChgThis(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__4(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__5(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceFullThis__1(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis__1(Vfetch__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
