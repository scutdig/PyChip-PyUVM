// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VAXI_Stream_H_
#define _VAXI_Stream_H_

#include "verilated.h"

class VAXI_Stream__Syms;
class VerilatedVcd;

//----------

VL_MODULE(VAXI_Stream) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    // Begin mtask footprint all: 
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_OUT8(io_AXIS_TVALID,0,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    // Begin mtask footprint all: 
    VL_SIG8(AXI_Stream__DOT__slave__DOT__mst_exec_state,1,0);
    VL_SIG8(AXI_Stream__DOT__slave__DOT___T,0,0);
    VL_SIG8(AXI_Stream__DOT__slave__DOT__write_pointer,4,0);
    VL_SIG8(AXI_Stream__DOT__slave__DOT___T_2,0,0);
    VL_SIG8(AXI_Stream__DOT__slave__DOT__writes_done,0,0);
    VL_SIG8(AXI_Stream__DOT__slave__DOT__fifo_wren,0,0);
    VL_SIG8(AXI_Stream__DOT__slave__DOT___GEN_6,0,0);
    VL_SIG8(AXI_Stream__DOT__slave__DOT___GEN_7,5,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT__axis_tvalid_delay,0,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT__axis_tlast_delay,0,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT__mst_exec_state,1,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT___T,0,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT___T_1,0,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT__count,5,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT___T_4,0,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT__tx_done,0,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT___GEN_7,6,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT__read_pointer,4,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT__axis_tvalid,0,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT__tx_en,0,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT___GEN_8,0,0);
    VL_SIG8(AXI_Stream__DOT__master__DOT___GEN_11,5,0);
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    // Begin mtask footprint all: 
    VL_SIG8(__Vclklast__TOP__clock,0,0);
    VL_SIG(__Vm_traceActivity,31,0);
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VAXI_Stream__Syms* __VlSymsp;  // Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VAXI_Stream);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VAXI_Stream(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VAXI_Stream();
    /// Trace signals in the model; called by application code
    void trace(VerilatedVcdC* tfp, int levels, int options=0);
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(VAXI_Stream__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VAXI_Stream__Syms* symsp, bool first);
  private:
    static QData _change_request(VAXI_Stream__Syms* __restrict vlSymsp);
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VAXI_Stream__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif // VL_DEBUG
  public:
    static void _eval_initial(VAXI_Stream__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VAXI_Stream__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__1(VAXI_Stream__Syms* __restrict vlSymsp);
    static void _settle__TOP__2(VAXI_Stream__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceChgThis(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__4(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceFullThis__1(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis__1(VAXI_Stream__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(128);

#endif // guard
