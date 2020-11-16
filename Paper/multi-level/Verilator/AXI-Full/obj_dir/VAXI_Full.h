// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VAXI_Full_H_
#define _VAXI_Full_H_

#include "verilated.h"

class VAXI_Full__Syms;
class VerilatedVcd;

//----------

VL_MODULE(VAXI_Full) {
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
        VL_SIG8(AXI_Full__DOT__master__DOT__error_reg,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__axi_awvalid,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__axi_wlast,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__axi_wvalid,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__axi_bready,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__axi_arvalid,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__axi_rready,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__compare_done,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__init_txn_ff,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__init_txn_ff2,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__init_txn_pulse,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__read_index,4,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__read_mismatch,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__write_burst_counter,1,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__read_burst_counter,1,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__burst_write_active,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__writes_done,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__burst_read_active,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__reads_done,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__write_index,4,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__start_single_burst_write,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___T_6,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_21,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__wnext,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_24,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_27,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_29,5,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_32,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__start_single_burst_read,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___T_26,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_34,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_37,5,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___T_33,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_42,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_44,2,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_46,2,0);
        VL_SIG8(AXI_Full__DOT__master__DOT__mst_exec_state,1,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___T_52,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___T_54,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___T_60,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___T_59,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___T_65,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_57,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_71,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_72,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_74,0,0);
        VL_SIG8(AXI_Full__DOT__master__DOT___GEN_75,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_awready,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_wready,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_bvalid,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_arready,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_rlast,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_rvalid,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_awv_awr_flag,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___T_3,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_arv_arr_flag,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___T_5,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___T_6,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___GEN_2,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___GEN_3,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_awburst,1,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_awlen,7,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_awlen_cntr,7,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___T_14,0,0);
    };
    struct {
        VL_SIG8(AXI_Full__DOT__slave__DOT___GEN_11,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___GEN_13,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___T_45,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___T_49,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___T_50,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_arlen_cntr,7,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_arlen,7,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___T_51,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___T_52,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___GEN_17,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___GEN_18,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___T_56,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__axi_arburst,1,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___T_60,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___GEN_20,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___GEN_30,0,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT__mem_select,1,0);
        VL_SIG8(AXI_Full__DOT__slave__DOT___T_95,7,0);
        VL_SIG16(AXI_Full__DOT__slave__DOT___GEN_9,8,0);
        VL_SIG16(AXI_Full__DOT__slave__DOT___GEN_27,8,0);
        VL_SIG(AXI_Full__DOT__master__DOT__axi_awaddr,31,0);
        VL_SIG(AXI_Full__DOT__master__DOT__axi_wdata,31,0);
        VL_SIG(AXI_Full__DOT__master__DOT__axi_araddr,31,0);
        VL_SIG(AXI_Full__DOT__master__DOT__expected_rdata,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__axi_awaddr,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__axi_araddr,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_0,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_1,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_2,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_3,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_4,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_5,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_6,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_7,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_8,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_9,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_10,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_11,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_12,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_13,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_14,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_15,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_16,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_17,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_18,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_19,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_20,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_21,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_22,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_23,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_24,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_25,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_26,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_27,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_28,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_29,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_30,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__byte_ram_31,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__mem_data_out_0,31,0);
        VL_SIG(AXI_Full__DOT__slave__DOT__mem_data_out_1,31,0);
        VL_SIG64(AXI_Full__DOT__master__DOT___GEN_22,32,0);
        VL_SIG64(AXI_Full__DOT__master__DOT___GEN_30,32,0);
        VL_SIG64(AXI_Full__DOT__master__DOT___GEN_35,32,0);
        VL_SIG64(AXI_Full__DOT__master__DOT___GEN_41,32,0);
    };
    struct {
        VL_SIG64(AXI_Full__DOT__slave__DOT___GEN_6,32,0);
        VL_SIG64(AXI_Full__DOT__slave__DOT___GEN_24,32,0);
    };
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    // Begin mtask footprint all: 
    VL_SIG8(__Vclklast__TOP__clock,0,0);
    VL_SIG(__Vm_traceActivity,31,0);
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VAXI_Full__Syms* __VlSymsp;  // Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VAXI_Full);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VAXI_Full(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VAXI_Full();
    /// Trace signals in the model; called by application code
    void trace(VerilatedVcdC* tfp, int levels, int options=0);
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(VAXI_Full__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VAXI_Full__Syms* symsp, bool first);
  private:
    static QData _change_request(VAXI_Full__Syms* __restrict vlSymsp);
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VAXI_Full__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif // VL_DEBUG
  public:
    static void _eval_initial(VAXI_Full__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VAXI_Full__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__1(VAXI_Full__Syms* __restrict vlSymsp);
    static void _settle__TOP__2(VAXI_Full__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceChgThis(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__4(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceFullThis__1(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis__1(VAXI_Full__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(128);

#endif // guard
