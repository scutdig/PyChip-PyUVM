// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VWALLACE_H_
#define _VWALLACE_H_  // guard

#include "verilated.h"

//==========

class VWallace__Syms;
class VWallace_VerilatedVcd;


//----------

VL_MODULE(VWallace) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_x,3,0);
    VL_IN8(io_y,3,0);
    VL_OUT8(io_c,7,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    CData/*0:0*/ Wallace__DOT___T_12_io_a;
    CData/*0:0*/ Wallace__DOT___T_12_io_b;
    CData/*0:0*/ Wallace__DOT___T_12_io_s;
    CData/*0:0*/ Wallace__DOT___T_12_io_cout;
    CData/*0:0*/ Wallace__DOT___T_19_io_a;
    CData/*0:0*/ Wallace__DOT___T_19_io_b;
    CData/*0:0*/ Wallace__DOT___T_19_io_s;
    CData/*0:0*/ Wallace__DOT___T_19_io_cout;
    CData/*0:0*/ Wallace__DOT___T_26_io_a;
    CData/*0:0*/ Wallace__DOT___T_26_io_b;
    CData/*0:0*/ Wallace__DOT___T_33_io_a;
    CData/*0:0*/ Wallace__DOT___T_33_io_b;
    CData/*0:0*/ Wallace__DOT___T_40_io_a;
    CData/*0:0*/ Wallace__DOT___T_44_io_a;
    CData/*0:0*/ Wallace__DOT___T_44_io_b;
    CData/*6:0*/ Wallace__DOT___T_66_io_a;
    CData/*6:0*/ Wallace__DOT___T_66_io_b;
    CData/*6:0*/ Wallace__DOT___T_66_io_s;
    CData/*0:0*/ Wallace__DOT___T_66__DOT___T_3_io_cout;
    CData/*0:0*/ Wallace__DOT___T_66__DOT___T_6_io_cout;
    CData/*0:0*/ Wallace__DOT___T_66__DOT___T_9_io_cout;
    CData/*0:0*/ Wallace__DOT___T_66__DOT___T_12_io_cout;
    CData/*0:0*/ Wallace__DOT___T_66__DOT___T_15_io_cout;
    CData/*0:0*/ Wallace__DOT___T_66__DOT___T__DOT___T_2;
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    IData/*31:0*/ __Vm_traceActivity;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VWallace__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VWallace);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VWallace(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VWallace();
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
    static void _eval_initial_loop(VWallace__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VWallace__Syms* symsp, bool first);
  private:
    static QData _change_request(VWallace__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__1(VWallace__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VWallace__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(VWallace__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VWallace__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceChgThis(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceFullThis__1(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis__1(VWallace__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
