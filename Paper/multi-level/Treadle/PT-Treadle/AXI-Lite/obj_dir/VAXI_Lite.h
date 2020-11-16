// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VAXI_Lite_H_
#define _VAXI_Lite_H_

#include "verilated.h"

class VAXI_Lite__Syms;
class VerilatedVcd;

//----------

VL_MODULE(VAXI_Lite) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    // Begin mtask footprint all: 
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_INIT_AXI_TXN,0,0);
    VL_OUT8(io_TXN_DONE,0,0);
    VL_OUT8(io_ERROR,0,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        // Begin mtask footprint all: 
        VL_SIG8(AXI_Lite__DOT__master__DOT__mst_exec_state,1,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__read_index,2,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__last_read,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__start_single_read,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__read_issued,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__error_reg,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__axi_awvalid,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__axi_wvalid,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__axi_bready,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__axi_arvalid,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__axi_rready,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__compare_done,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__init_txn_ff,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__init_txn_ff2,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__start_single_write,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__write_index,2,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_1,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_2,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__init_txn_pulse,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__last_write,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__writes_done,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__reads_done,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__read_mismatch,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_7,3,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___T_6,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_23,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___T_13,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_25,3,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_26,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_28,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___T_25,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___T_28,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___T_31,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT__write_issued,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___T_44,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___T_42,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_38,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_39,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___T_53,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_45,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_46,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_51,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_69,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_70,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_71,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_72,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_73,0,0);
        VL_SIG8(AXI_Lite__DOT__master__DOT___GEN_74,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT__axi_awready,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT__axi_wready,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT__axi_bvalid,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT__axi_arready,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT__axi_rvalid,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT__aw_en,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT___T_3,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT___T_4,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT___GEN_3,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT___T_12,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT__slv_reg_wren,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT___GEN_43,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT___T_62,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT___T_65,0,0);
        VL_SIG8(AXI_Lite__DOT__slave__DOT___GEN_48,0,0);
        VL_SIG(AXI_Lite__DOT__master__DOT__axi_awaddr,31,0);
    };
    struct {
        VL_SIG(AXI_Lite__DOT__master__DOT__axi_wdata,31,0);
        VL_SIG(AXI_Lite__DOT__master__DOT__axi_araddr,31,0);
        VL_SIG(AXI_Lite__DOT__master__DOT__expected_rdata,31,0);
        VL_SIG(AXI_Lite__DOT__slave__DOT__axi_rdata,31,0);
        VL_SIG(AXI_Lite__DOT__slave__DOT__axi_awaddr,31,0);
        VL_SIG(AXI_Lite__DOT__slave__DOT__slv_reg0,31,0);
        VL_SIG(AXI_Lite__DOT__slave__DOT__slv_reg1,31,0);
        VL_SIG(AXI_Lite__DOT__slave__DOT__slv_reg2,31,0);
        VL_SIG(AXI_Lite__DOT__slave__DOT__slv_reg3,31,0);
        VL_SIG(AXI_Lite__DOT__slave__DOT__axi_araddr,31,0);
        VL_SIG64(AXI_Lite__DOT__master__DOT___GEN_29,32,0);
        VL_SIG64(AXI_Lite__DOT__master__DOT___GEN_31,32,0);
    };
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    // Begin mtask footprint all: 
    VL_SIG8(__Vclklast__TOP__clock,0,0);
    VL_SIG(__Vm_traceActivity,31,0);
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VAXI_Lite__Syms* __VlSymsp;  // Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VAXI_Lite);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VAXI_Lite(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VAXI_Lite();
    /// Trace signals in the model; called by application code
    void trace(VerilatedVcdC* tfp, int levels, int options=0);
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(VAXI_Lite__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VAXI_Lite__Syms* symsp, bool first);
  private:
    static QData _change_request(VAXI_Lite__Syms* __restrict vlSymsp);
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VAXI_Lite__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif // VL_DEBUG
  public:
    static void _eval_initial(VAXI_Lite__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VAXI_Lite__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__1(VAXI_Lite__Syms* __restrict vlSymsp);
    static void _settle__TOP__2(VAXI_Lite__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceChgThis(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__4(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceFullThis__1(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis__1(VAXI_Lite__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(128);

#endif // guard
