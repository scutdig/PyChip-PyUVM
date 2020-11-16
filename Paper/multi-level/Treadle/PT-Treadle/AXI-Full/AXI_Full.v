module AXIFullMaster(
  input         clock,
  input         reset,
  input         io_INIT_AXI_TXN,
  output        io_TXN_DONE,
  output        io_ERROR,
  output [31:0] io_M_AXI_AWADDR,
  output        io_M_AXI_AWVALID,
  input         io_M_AXI_AWREADY,
  output [31:0] io_M_AXI_WDATA,
  output        io_M_AXI_WLAST,
  output        io_M_AXI_WVALID,
  input         io_M_AXI_WREADY,
  input         io_M_AXI_BVALID,
  output        io_M_AXI_BREADY,
  output [31:0] io_M_AXI_ARADDR,
  output        io_M_AXI_ARVALID,
  input         io_M_AXI_ARREADY,
  input  [31:0] io_M_AXI_RDATA,
  input         io_M_AXI_RLAST,
  input         io_M_AXI_RVALID,
  output        io_M_AXI_RREADY
);
  reg  error_reg;
  reg [31:0] _RAND_0;
  reg [31:0] axi_awaddr;
  reg [31:0] _RAND_1;
  wire [32:0] _T;
  reg  axi_awvalid;
  reg [31:0] _RAND_2;
  reg [31:0] axi_wdata;
  reg [31:0] _RAND_3;
  reg  axi_wlast;
  reg [31:0] _RAND_4;
  reg  axi_wvalid;
  reg [31:0] _RAND_5;
  reg  axi_bready;
  reg [31:0] _RAND_6;
  reg [31:0] axi_araddr;
  reg [31:0] _RAND_7;
  wire [32:0] _T_1;
  reg  axi_arvalid;
  reg [31:0] _RAND_8;
  reg  axi_rready;
  reg [31:0] _RAND_9;
  reg  compare_done;
  reg [31:0] _RAND_10;
  reg  init_txn_ff;
  reg [31:0] _RAND_11;
  reg  init_txn_ff2;
  reg [31:0] _RAND_12;
  wire  _T_2;
  wire  init_txn_pulse;
  reg [4:0] read_index;
  reg [31:0] _RAND_13;
  reg  read_mismatch;
  reg [31:0] _RAND_14;
  reg [31:0] expected_rdata;
  reg [31:0] _RAND_15;
  reg [1:0] write_burst_counter;
  reg [31:0] _RAND_16;
  reg [1:0] read_burst_counter;
  reg [31:0] _RAND_17;
  reg  burst_write_active;
  reg [31:0] _RAND_18;
  reg  writes_done;
  reg [31:0] _RAND_19;
  reg  burst_read_active;
  reg [31:0] _RAND_20;
  reg  reads_done;
  reg [31:0] _RAND_21;
  reg [4:0] write_index;
  reg [31:0] _RAND_22;
  wire [1:0] _GEN_13;
  wire [1:0] _GEN_14;
  wire  _GEN_15;
  wire  _GEN_17;
  wire  _T_4;
  reg  start_single_burst_write;
  reg [31:0] _RAND_23;
  wire  _T_5;
  wire  _T_6;
  wire  _GEN_20;
  wire  _GEN_21;
  wire [32:0] _T_8;
  wire [32:0] _GEN_22;
  wire  _T_9;
  wire  _T_10;
  wire  wnext;
  wire  _T_11;
  wire  _GEN_23;
  wire  _GEN_24;
  wire  _T_12;
  wire  _T_14;
  wire  _GEN_26;
  wire  _GEN_27;
  wire  _T_18;
  wire  _T_19;
  wire [5:0] _T_20;
  wire [5:0] _GEN_28;
  wire [5:0] _GEN_29;
  wire [32:0] _T_21;
  wire [32:0] _GEN_30;
  wire  _T_22;
  wire  _T_23;
  wire  _GEN_31;
  wire  _GEN_32;
  wire  _T_24;
  reg  start_single_burst_read;
  reg [31:0] _RAND_24;
  wire  _T_25;
  wire  _T_26;
  wire  _GEN_33;
  wire  _GEN_34;
  wire [32:0] _T_28;
  wire [32:0] _GEN_35;
  wire  rnext;
  wire  _T_30;
  wire  _T_31;
  wire [5:0] _T_32;
  wire [5:0] _GEN_36;
  wire [5:0] _GEN_37;
  wire  _T_33;
  wire  _T_34;
  wire  _T_35;
  wire [32:0] _T_37;
  wire [32:0] _GEN_41;
  wire  _GEN_42;
  wire  _T_45;
  wire  _T_46;
  wire [2:0] _T_47;
  wire [2:0] _GEN_43;
  wire [2:0] _GEN_44;
  wire  _T_49;
  wire  _T_50;
  wire [2:0] _T_51;
  wire [2:0] _GEN_45;
  wire [2:0] _GEN_46;
  reg [1:0] mst_exec_state;
  reg [31:0] _RAND_25;
  wire  _T_52;
  wire  _T_54;
  wire  _T_60;
  wire  _T_66;
  wire  _T_56;
  wire  _T_57;
  wire  _T_58;
  wire  _T_59;
  wire  _T_62;
  wire  _T_63;
  wire  _T_64;
  wire  _T_65;
  wire  _GEN_57;
  wire  _T_67;
  wire  _GEN_70;
  wire  _GEN_71;
  wire  _T_69;
  wire  _T_70;
  wire  _GEN_72;
  wire  _T_72;
  wire  _GEN_73;
  wire  _GEN_74;
  wire  _T_74;
  wire  _T_75;
  wire  _T_77;
  wire  _GEN_75;
  assign _T = 32'h40000000 + axi_awaddr;
  assign _T_1 = 32'h40000000 + axi_araddr;
  assign _T_2 = ~ init_txn_ff2;
  assign init_txn_pulse = _T_2 & init_txn_ff;
  assign _GEN_13 = init_txn_pulse ? 2'h0 : write_burst_counter;
  assign _GEN_14 = init_txn_pulse ? 2'h0 : read_burst_counter;
  assign _GEN_15 = init_txn_pulse ? 1'h0 : burst_write_active;
  assign _GEN_17 = init_txn_pulse ? 1'h0 : burst_read_active;
  assign _T_4 = ~ axi_awvalid;
  assign _T_5 = _T_4 & start_single_burst_write;
  assign _T_6 = io_M_AXI_AWREADY & axi_awvalid;
  assign _GEN_20 = _T_6 ? 1'h0 : axi_awvalid;
  assign _GEN_21 = _T_5 | _GEN_20;
  assign _T_8 = axi_awaddr + 32'h40;
  assign _GEN_22 = _T_6 ? _T_8 : {{1'd0}, axi_awaddr};
  assign _T_9 = ~ axi_wvalid;
  assign _T_10 = _T_9 & start_single_burst_write;
  assign wnext = io_M_AXI_WREADY & axi_wvalid;
  assign _T_11 = wnext & axi_wlast;
  assign _GEN_23 = _T_11 ? 1'h0 : axi_wvalid;
  assign _GEN_24 = _T_10 | _GEN_23;
  assign _T_12 = write_index == 5'he;
  assign _T_14 = _T_12 & wnext;
  assign _GEN_26 = wnext ? 1'h0 : axi_wlast;
  assign _GEN_27 = _T_14 | _GEN_26;
  assign _T_18 = write_index != 5'hf;
  assign _T_19 = wnext & _T_18;
  assign _T_20 = write_index + 5'h1;
  assign _GEN_28 = _T_19 ? _T_20 : {{1'd0}, write_index};
  assign _GEN_29 = start_single_burst_write ? 6'h0 : _GEN_28;
  assign _T_21 = 32'h1 + axi_wdata;
  assign _GEN_30 = wnext ? _T_21 : {{1'd0}, axi_wdata};
  assign _T_22 = ~ axi_bready;
  assign _T_23 = io_M_AXI_BVALID & _T_22;
  assign _GEN_31 = axi_bready ? 1'h0 : axi_bready;
  assign _GEN_32 = _T_23 | _GEN_31;
  assign _T_24 = ~ axi_arvalid;
  assign _T_25 = _T_24 & start_single_burst_read;
  assign _T_26 = io_M_AXI_ARREADY & axi_arvalid;
  assign _GEN_33 = _T_26 ? 1'h0 : axi_arvalid;
  assign _GEN_34 = _T_25 | _GEN_33;
  assign _T_28 = axi_araddr + 32'h40;
  assign _GEN_35 = _T_26 ? _T_28 : {{1'd0}, axi_araddr};
  assign rnext = io_M_AXI_RVALID & axi_rready;
  assign _T_30 = read_index != 5'hf;
  assign _T_31 = rnext & _T_30;
  assign _T_32 = read_index + 5'h1;
  assign _GEN_36 = _T_31 ? _T_32 : {{1'd0}, read_index};
  assign _GEN_37 = start_single_burst_read ? 6'h0 : _GEN_36;
  assign _T_33 = io_M_AXI_RLAST & axi_rready;
  assign _T_34 = io_M_AXI_RDATA != expected_rdata;
  assign _T_35 = rnext & _T_34;
  assign _T_37 = expected_rdata + 32'h1;
  assign _GEN_41 = rnext ? _T_37 : {{1'd0}, expected_rdata};
  assign _GEN_42 = read_mismatch | error_reg;
  assign _T_45 = write_burst_counter[1];
  assign _T_46 = _T_45 == 1'h0;
  assign _T_47 = write_burst_counter + 2'h1;
  assign _GEN_43 = _T_46 ? _T_47 : {{1'd0}, _GEN_13};
  assign _GEN_44 = _T_6 ? _GEN_43 : {{1'd0}, write_burst_counter};
  assign _T_49 = read_burst_counter[1];
  assign _T_50 = _T_49 == 1'h0;
  assign _T_51 = read_burst_counter + 2'h1;
  assign _GEN_45 = _T_50 ? _T_51 : {{1'd0}, _GEN_14};
  assign _GEN_46 = _T_26 ? _GEN_45 : {{1'd0}, read_burst_counter};
  assign _T_52 = mst_exec_state == 2'h0;
  assign _T_54 = mst_exec_state == 2'h1;
  assign _T_60 = mst_exec_state == 2'h2;
  assign _T_66 = mst_exec_state == 2'h3;
  assign _T_56 = ~ start_single_burst_write;
  assign _T_57 = _T_4 & _T_56;
  assign _T_58 = ~ burst_write_active;
  assign _T_59 = _T_57 & _T_58;
  assign _T_62 = ~ burst_read_active;
  assign _T_63 = _T_24 & _T_62;
  assign _T_64 = ~ start_single_burst_read;
  assign _T_65 = _T_63 & _T_64;
  assign _GEN_57 = _T_66 | compare_done;
  assign _T_67 = io_M_AXI_BVALID & axi_bready;
  assign _GEN_70 = _T_67 ? 1'h0 : _GEN_15;
  assign _GEN_71 = start_single_burst_write | _GEN_70;
  assign _T_69 = io_M_AXI_BVALID & _T_45;
  assign _T_70 = _T_69 & axi_bready;
  assign _GEN_72 = _T_70 | writes_done;
  assign _T_72 = rnext & io_M_AXI_RLAST;
  assign _GEN_73 = _T_72 ? 1'h0 : _GEN_17;
  assign _GEN_74 = start_single_burst_read | _GEN_73;
  assign _T_74 = read_index == 5'hf;
  assign _T_75 = rnext & _T_74;
  assign _T_77 = _T_75 & _T_49;
  assign _GEN_75 = _T_77 | reads_done;
  assign io_TXN_DONE = compare_done;
  assign io_ERROR = error_reg;
  assign io_M_AXI_AWADDR = _T[31:0];
  assign io_M_AXI_AWVALID = axi_awvalid;
  assign io_M_AXI_WDATA = axi_wdata;
  assign io_M_AXI_WLAST = axi_wlast;
  assign io_M_AXI_WVALID = axi_wvalid;
  assign io_M_AXI_BREADY = axi_bready;
  assign io_M_AXI_ARADDR = _T_1[31:0];
  assign io_M_AXI_ARVALID = axi_arvalid;
  assign io_M_AXI_RREADY = axi_rready;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  error_reg = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  axi_awaddr = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  axi_awvalid = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  axi_wdata = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  axi_wlast = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  axi_wvalid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  axi_bready = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  axi_araddr = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  axi_arvalid = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  axi_rready = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  compare_done = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  init_txn_ff = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  init_txn_ff2 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  read_index = _RAND_13[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  read_mismatch = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  expected_rdata = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  write_burst_counter = _RAND_16[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  read_burst_counter = _RAND_17[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  burst_write_active = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  writes_done = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  burst_read_active = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  reads_done = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  write_index = _RAND_22[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  start_single_burst_write = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  start_single_burst_read = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  mst_exec_state = _RAND_25[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      error_reg <= 1'h0;
    end else if (_T_52) begin
      if (init_txn_pulse) begin
        error_reg <= 1'h0;
      end else begin
        error_reg <= _GEN_42;
      end
    end else begin
      error_reg <= _GEN_42;
    end
    if (reset) begin
      axi_awaddr <= 32'h0;
    end else begin
      axi_awaddr <= _GEN_22[31:0];
    end
    if (reset) begin
      axi_awvalid <= 1'h0;
    end else begin
      axi_awvalid <= _GEN_21;
    end
    if (reset) begin
      axi_wdata <= 32'h1;
    end else begin
      axi_wdata <= _GEN_30[31:0];
    end
    if (reset) begin
      axi_wlast <= 1'h0;
    end else begin
      axi_wlast <= _GEN_27;
    end
    if (reset) begin
      axi_wvalid <= 1'h0;
    end else begin
      axi_wvalid <= _GEN_24;
    end
    if (reset) begin
      axi_bready <= 1'h0;
    end else begin
      axi_bready <= _GEN_32;
    end
    if (reset) begin
      axi_araddr <= 32'h0;
    end else begin
      axi_araddr <= _GEN_35[31:0];
    end
    if (reset) begin
      axi_arvalid <= 1'h0;
    end else begin
      axi_arvalid <= _GEN_34;
    end
    if (reset) begin
      axi_rready <= 1'h0;
    end else if (io_M_AXI_RVALID) begin
      if (_T_33) begin
        axi_rready <= 1'h0;
      end else begin
        axi_rready <= 1'h1;
      end
    end else if (init_txn_pulse) begin
      axi_rready <= 1'h0;
    end
    if (reset) begin
      compare_done <= 1'h0;
    end else if (_T_52) begin
      if (init_txn_pulse) begin
        compare_done <= 1'h0;
      end
    end else if (!(_T_54)) begin
      if (!(_T_60)) begin
        compare_done <= _GEN_57;
      end
    end
    if (reset) begin
      init_txn_ff <= 1'h0;
    end else begin
      init_txn_ff <= io_INIT_AXI_TXN;
    end
    if (reset) begin
      init_txn_ff2 <= 1'h0;
    end else begin
      init_txn_ff2 <= init_txn_ff;
    end
    if (reset) begin
      read_index <= 5'h0;
    end else begin
      read_index <= _GEN_37[4:0];
    end
    if (reset) begin
      read_mismatch <= 1'h0;
    end else begin
      read_mismatch <= _T_35;
    end
    if (reset) begin
      expected_rdata <= 32'h1;
    end else begin
      expected_rdata <= _GEN_41[31:0];
    end
    if (reset) begin
      write_burst_counter <= 2'h0;
    end else begin
      write_burst_counter <= _GEN_44[1:0];
    end
    if (reset) begin
      read_burst_counter <= 2'h0;
    end else begin
      read_burst_counter <= _GEN_46[1:0];
    end
    if (reset) begin
      burst_write_active <= 1'h0;
    end else begin
      burst_write_active <= _GEN_71;
    end
    if (reset) begin
      writes_done <= 1'h0;
    end else begin
      writes_done <= _GEN_72;
    end
    if (reset) begin
      burst_read_active <= 1'h0;
    end else begin
      burst_read_active <= _GEN_74;
    end
    if (reset) begin
      reads_done <= 1'h0;
    end else begin
      reads_done <= _GEN_75;
    end
    if (reset) begin
      write_index <= 5'h0;
    end else begin
      write_index <= _GEN_29[4:0];
    end
    if (reset) begin
      start_single_burst_write <= 1'h0;
    end else if (!(_T_52)) begin
      if (_T_54) begin
        if (!(writes_done)) begin
          start_single_burst_write <= _T_59;
        end
      end
    end
    if (reset) begin
      start_single_burst_read <= 1'h0;
    end else if (!(_T_52)) begin
      if (!(_T_54)) begin
        if (_T_60) begin
          if (!(reads_done)) begin
            start_single_burst_read <= _T_65;
          end
        end
      end
    end
    if (reset) begin
      mst_exec_state <= 2'h0;
    end else if (_T_52) begin
      if (init_txn_pulse) begin
        mst_exec_state <= 2'h1;
      end else begin
        mst_exec_state <= 2'h0;
      end
    end else if (_T_54) begin
      if (writes_done) begin
        mst_exec_state <= 2'h2;
      end else begin
        mst_exec_state <= 2'h1;
      end
    end else if (_T_60) begin
      if (reads_done) begin
        mst_exec_state <= 2'h3;
      end else begin
        mst_exec_state <= 2'h2;
      end
    end else begin
      mst_exec_state <= 2'h0;
    end
  end
endmodule
module AXIFullSlave(
  input         clock,
  input         reset,
  input  [31:0] io_S_AXI_AWADDR,
  input         io_S_AXI_AWVALID,
  output        io_S_AXI_AWREADY,
  input  [31:0] io_S_AXI_WDATA,
  input         io_S_AXI_WLAST,
  input         io_S_AXI_WVALID,
  output        io_S_AXI_WREADY,
  output        io_S_AXI_BVALID,
  input         io_S_AXI_BREADY,
  input  [31:0] io_S_AXI_ARADDR,
  input         io_S_AXI_ARVALID,
  output        io_S_AXI_ARREADY,
  output [31:0] io_S_AXI_RDATA,
  output        io_S_AXI_RLAST,
  output        io_S_AXI_RVALID,
  input         io_S_AXI_RREADY
);
  reg  axi_awready;
  reg [31:0] _RAND_0;
  reg  axi_wready;
  reg [31:0] _RAND_1;
  reg  axi_bvalid;
  reg [31:0] _RAND_2;
  reg  axi_arready;
  reg [31:0] _RAND_3;
  reg  axi_rlast;
  reg [31:0] _RAND_4;
  reg  axi_rvalid;
  reg [31:0] _RAND_5;
  wire  _T;
  wire  _T_1;
  reg  axi_awv_awr_flag;
  reg [31:0] _RAND_6;
  wire  _T_2;
  wire  _T_3;
  reg  axi_arv_arr_flag;
  reg [31:0] _RAND_7;
  wire  _T_4;
  wire  _T_5;
  wire  _T_6;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire  _GEN_3;
  reg [31:0] axi_awaddr;
  reg [31:0] _RAND_8;
  reg [1:0] axi_awburst;
  reg [31:0] _RAND_9;
  reg [7:0] axi_awlen;
  reg [31:0] _RAND_10;
  reg [7:0] axi_awlen_cntr;
  reg [31:0] _RAND_11;
  wire  _T_12;
  wire  _T_13;
  wire  _T_14;
  wire [10:0] aw_wrap_size;
  wire [31:0] _GEN_135;
  wire [31:0] _T_26;
  wire  aw_wrap_en;
  wire [8:0] _T_15;
  wire  _T_17;
  wire  _T_19;
  wire [29:0] _T_20;
  wire [30:0] _T_21;
  wire [32:0] _T_22;
  wire  _T_24;
  wire [32:0] _T_28;
  wire [32:0] _T_25;
  wire [32:0] _T_23;
  wire [32:0] _T_18;
  wire [32:0] _T_16;
  wire [8:0] _GEN_4;
  wire [32:0] _GEN_5;
  wire [32:0] _GEN_6;
  wire [8:0] _GEN_9;
  wire  _T_34;
  wire  _T_35;
  wire  _T_36;
  wire  _GEN_10;
  wire  _GEN_11;
  wire  _T_38;
  wire  _T_39;
  wire  _T_40;
  wire  _T_41;
  wire  _T_42;
  wire  _T_43;
  wire  _GEN_12;
  wire  _GEN_13;
  wire  _T_44;
  wire  _T_45;
  wire  _T_47;
  wire  _T_49;
  wire  _T_50;
  reg [7:0] axi_arlen_cntr;
  reg [31:0] _RAND_12;
  reg [7:0] axi_arlen;
  reg [31:0] _RAND_13;
  wire  _T_51;
  wire  _T_52;
  wire  _GEN_15;
  wire  _GEN_16;
  wire  _GEN_17;
  wire  _GEN_18;
  wire  _T_56;
  reg [31:0] axi_araddr;
  reg [31:0] _RAND_14;
  reg [1:0] axi_arburst;
  reg [31:0] _RAND_15;
  wire  _T_58;
  wire  _T_59;
  wire  _T_60;
  wire [10:0] ar_wrap_size;
  wire [31:0] _GEN_138;
  wire [31:0] _T_72;
  wire  ar_wrap_en;
  wire  _T_81;
  wire  _T_82;
  wire  _T_83;
  wire [8:0] _T_61;
  wire  _T_63;
  wire  _T_65;
  wire [29:0] _T_66;
  wire [30:0] _T_67;
  wire [32:0] _T_68;
  wire  _T_70;
  wire [32:0] _T_74;
  wire [32:0] _T_71;
  wire [32:0] _T_69;
  wire [32:0] _T_64;
  wire [32:0] _T_62;
  wire  _GEN_19;
  wire  _GEN_20;
  wire [8:0] _GEN_21;
  wire [32:0] _GEN_23;
  wire [32:0] _GEN_24;
  wire [8:0] _GEN_27;
  wire  _T_84;
  wire  _T_85;
  wire  _GEN_29;
  wire  _GEN_30;
  wire  mem_wren;
  wire [3:0] _T_87;
  reg [31:0] byte_ram_0;
  reg [31:0] _RAND_16;
  reg [31:0] byte_ram_1;
  reg [31:0] _RAND_17;
  reg [31:0] byte_ram_2;
  reg [31:0] _RAND_18;
  reg [31:0] byte_ram_3;
  reg [31:0] _RAND_19;
  reg [31:0] byte_ram_4;
  reg [31:0] _RAND_20;
  reg [31:0] byte_ram_5;
  reg [31:0] _RAND_21;
  reg [31:0] byte_ram_6;
  reg [31:0] _RAND_22;
  reg [31:0] byte_ram_7;
  reg [31:0] _RAND_23;
  reg [31:0] byte_ram_8;
  reg [31:0] _RAND_24;
  reg [31:0] byte_ram_9;
  reg [31:0] _RAND_25;
  reg [31:0] byte_ram_10;
  reg [31:0] _RAND_26;
  reg [31:0] byte_ram_11;
  reg [31:0] _RAND_27;
  reg [31:0] byte_ram_12;
  reg [31:0] _RAND_28;
  reg [31:0] byte_ram_13;
  reg [31:0] _RAND_29;
  reg [31:0] byte_ram_14;
  reg [31:0] _RAND_30;
  reg [31:0] byte_ram_15;
  reg [31:0] _RAND_31;
  reg [31:0] byte_ram_16;
  reg [31:0] _RAND_32;
  reg [31:0] byte_ram_17;
  reg [31:0] _RAND_33;
  reg [31:0] byte_ram_18;
  reg [31:0] _RAND_34;
  reg [31:0] byte_ram_19;
  reg [31:0] _RAND_35;
  reg [31:0] byte_ram_20;
  reg [31:0] _RAND_36;
  reg [31:0] byte_ram_21;
  reg [31:0] _RAND_37;
  reg [31:0] byte_ram_22;
  reg [31:0] _RAND_38;
  reg [31:0] byte_ram_23;
  reg [31:0] _RAND_39;
  reg [31:0] byte_ram_24;
  reg [31:0] _RAND_40;
  reg [31:0] byte_ram_25;
  reg [31:0] _RAND_41;
  reg [31:0] byte_ram_26;
  reg [31:0] _RAND_42;
  reg [31:0] byte_ram_27;
  reg [31:0] _RAND_43;
  reg [31:0] byte_ram_28;
  reg [31:0] _RAND_44;
  reg [31:0] byte_ram_29;
  reg [31:0] _RAND_45;
  reg [31:0] byte_ram_30;
  reg [31:0] _RAND_46;
  reg [31:0] byte_ram_31;
  reg [31:0] _RAND_47;
  wire [3:0] _T_88;
  wire [3:0] _T_90;
  wire [3:0] _T_89;
  wire [3:0] mem_address;
  wire [1:0] _T_91;
  wire [1:0] _T_93;
  wire [1:0] _T_92;
  wire [1:0] mem_select;
  wire [4:0] _GEN_141;
  wire [6:0] _T_94;
  wire [6:0] _GEN_142;
  wire [7:0] _T_95;
  reg [31:0] mem_data_out_0;
  reg [31:0] _RAND_48;
  reg [31:0] mem_data_out_1;
  reg [31:0] _RAND_49;
  wire [31:0] _GEN_133;
  assign _T = ~ axi_awready;
  assign _T_1 = _T & io_S_AXI_AWVALID;
  assign _T_2 = ~ axi_awv_awr_flag;
  assign _T_3 = _T_1 & _T_2;
  assign _T_4 = ~ axi_arv_arr_flag;
  assign _T_5 = _T_3 & _T_4;
  assign _T_6 = io_S_AXI_WLAST & axi_wready;
  assign _GEN_0 = _T_6 ? 1'h0 : axi_awv_awr_flag;
  assign _GEN_1 = _T_6 & axi_awready;
  assign _GEN_2 = _T_5 | _GEN_1;
  assign _GEN_3 = _T_5 | _GEN_0;
  assign _T_12 = axi_awlen_cntr <= axi_awlen;
  assign _T_13 = _T_12 & axi_wready;
  assign _T_14 = _T_13 & io_S_AXI_WVALID;
  assign aw_wrap_size = 8'h4 * axi_awlen;
  assign _GEN_135 = {{21'd0}, aw_wrap_size};
  assign _T_26 = axi_awaddr & _GEN_135;
  assign aw_wrap_en = _T_26 == _GEN_135;
  assign _T_15 = axi_awlen_cntr + 8'h1;
  assign _T_17 = 2'h0 == axi_awburst;
  assign _T_19 = 2'h1 == axi_awburst;
  assign _T_20 = axi_awaddr[31:2];
  assign _T_21 = _T_20 + 30'h1;
  assign _T_22 = {_T_21,2'h0};
  assign _T_24 = 2'h2 == axi_awburst;
  assign _T_28 = axi_awaddr - _GEN_135;
  assign _T_25 = aw_wrap_en ? _T_28 : _T_22;
  assign _T_23 = _T_24 ? _T_25 : {{2'd0}, _T_21};
  assign _T_18 = _T_19 ? _T_22 : _T_23;
  assign _T_16 = _T_17 ? {{1'd0}, axi_awaddr} : _T_18;
  assign _GEN_4 = _T_14 ? _T_15 : {{1'd0}, axi_awlen_cntr};
  assign _GEN_5 = _T_14 ? _T_16 : {{1'd0}, axi_awaddr};
  assign _GEN_6 = _T_3 ? {{1'd0}, io_S_AXI_AWADDR} : _GEN_5;
  assign _GEN_9 = _T_3 ? 9'h0 : _GEN_4;
  assign _T_34 = ~ axi_wready;
  assign _T_35 = _T_34 & io_S_AXI_WVALID;
  assign _T_36 = _T_35 & axi_awv_awr_flag;
  assign _GEN_10 = _T_6 ? 1'h0 : axi_wready;
  assign _GEN_11 = _T_36 | _GEN_10;
  assign _T_38 = axi_awv_awr_flag & axi_wready;
  assign _T_39 = _T_38 & io_S_AXI_WVALID;
  assign _T_40 = ~ axi_bvalid;
  assign _T_41 = _T_39 & _T_40;
  assign _T_42 = _T_41 & io_S_AXI_WLAST;
  assign _T_43 = io_S_AXI_BREADY & axi_bvalid;
  assign _GEN_12 = _T_43 ? 1'h0 : axi_bvalid;
  assign _GEN_13 = _T_42 | _GEN_12;
  assign _T_44 = ~ axi_arready;
  assign _T_45 = _T_44 & io_S_AXI_ARVALID;
  assign _T_47 = _T_45 & _T_2;
  assign _T_49 = _T_47 & _T_4;
  assign _T_50 = axi_rvalid & io_S_AXI_RREADY;
  assign _T_51 = axi_arlen_cntr == axi_arlen;
  assign _T_52 = _T_50 & _T_51;
  assign _GEN_15 = _T_52 ? 1'h0 : axi_arv_arr_flag;
  assign _GEN_16 = _T_52 & axi_arready;
  assign _GEN_17 = _T_49 | _GEN_16;
  assign _GEN_18 = _T_49 | _GEN_15;
  assign _T_56 = _T_45 & _T_4;
  assign _T_58 = axi_arlen_cntr <= axi_arlen;
  assign _T_59 = _T_58 & axi_rvalid;
  assign _T_60 = _T_59 & io_S_AXI_RREADY;
  assign ar_wrap_size = 8'h4 * axi_arlen;
  assign _GEN_138 = {{21'd0}, ar_wrap_size};
  assign _T_72 = axi_araddr & _GEN_138;
  assign ar_wrap_en = _T_72 == _GEN_138;
  assign _T_81 = ~ axi_rlast;
  assign _T_82 = _T_51 & _T_81;
  assign _T_83 = _T_82 & axi_arv_arr_flag;
  assign _T_61 = axi_arlen_cntr + 8'h1;
  assign _T_63 = 2'h0 == axi_arburst;
  assign _T_65 = 2'h1 == axi_arburst;
  assign _T_66 = axi_araddr[31:2];
  assign _T_67 = _T_66 + 30'h1;
  assign _T_68 = {_T_67,2'h0};
  assign _T_70 = 2'h2 == axi_arburst;
  assign _T_74 = axi_araddr - _GEN_138;
  assign _T_71 = ar_wrap_en ? _T_74 : _T_68;
  assign _T_69 = _T_70 ? _T_71 : {{2'd0}, _T_67};
  assign _T_64 = _T_65 ? _T_68 : _T_69;
  assign _T_62 = _T_63 ? {{1'd0}, axi_araddr} : _T_64;
  assign _GEN_19 = io_S_AXI_RREADY ? 1'h0 : axi_rlast;
  assign _GEN_20 = _T_83 | _GEN_19;
  assign _GEN_21 = _T_60 ? _T_61 : {{1'd0}, axi_arlen_cntr};
  assign _GEN_23 = _T_60 ? _T_62 : {{1'd0}, axi_araddr};
  assign _GEN_24 = _T_56 ? {{1'd0}, io_S_AXI_ARADDR} : _GEN_23;
  assign _GEN_27 = _T_56 ? 9'h0 : _GEN_21;
  assign _T_84 = ~ axi_rvalid;
  assign _T_85 = axi_arv_arr_flag & _T_84;
  assign _GEN_29 = _T_50 ? 1'h0 : axi_rvalid;
  assign _GEN_30 = _T_85 | _GEN_29;
  assign mem_wren = axi_wready & io_S_AXI_WVALID;
  assign _T_87 = {{3'd0}, mem_wren};
  assign _T_88 = axi_araddr[5:2];
  assign _T_90 = axi_awaddr[5:2];
  assign _T_89 = axi_awv_awr_flag ? _T_90 : 4'h0;
  assign mem_address = axi_arv_arr_flag ? _T_88 : _T_89;
  assign _T_91 = axi_araddr[7:6];
  assign _T_93 = axi_awaddr[7:6];
  assign _T_92 = axi_awv_awr_flag ? _T_93 : 2'h0;
  assign mem_select = axi_arv_arr_flag ? _T_91 : _T_92;
  assign _GEN_141 = {{3'd0}, mem_select};
  assign _T_94 = _GEN_141 * 5'h10;
  assign _GEN_142 = {{3'd0}, mem_address};
  assign _T_95 = _GEN_142 + _T_94;
  assign _GEN_133 = 2'h1 == mem_select ? mem_data_out_1 : mem_data_out_0;
  assign io_S_AXI_AWREADY = axi_awready;
  assign io_S_AXI_WREADY = axi_wready;
  assign io_S_AXI_BVALID = axi_bvalid;
  assign io_S_AXI_ARREADY = axi_arready;
  assign io_S_AXI_RDATA = axi_rvalid ? _GEN_133 : 32'h0;
  assign io_S_AXI_RLAST = axi_rlast;
  assign io_S_AXI_RVALID = axi_rvalid;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  axi_awready = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  axi_wready = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  axi_bvalid = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  axi_arready = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  axi_rlast = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  axi_rvalid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  axi_awv_awr_flag = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  axi_arv_arr_flag = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  axi_awaddr = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  axi_awburst = _RAND_9[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  axi_awlen = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  axi_awlen_cntr = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  axi_arlen_cntr = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  axi_arlen = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  axi_araddr = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  axi_arburst = _RAND_15[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  byte_ram_0 = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  byte_ram_1 = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  byte_ram_2 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  byte_ram_3 = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  byte_ram_4 = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  byte_ram_5 = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  byte_ram_6 = _RAND_22[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  byte_ram_7 = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  byte_ram_8 = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  byte_ram_9 = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  byte_ram_10 = _RAND_26[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  byte_ram_11 = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  byte_ram_12 = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  byte_ram_13 = _RAND_29[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  byte_ram_14 = _RAND_30[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  byte_ram_15 = _RAND_31[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  byte_ram_16 = _RAND_32[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  byte_ram_17 = _RAND_33[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  byte_ram_18 = _RAND_34[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  byte_ram_19 = _RAND_35[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  byte_ram_20 = _RAND_36[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  byte_ram_21 = _RAND_37[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  byte_ram_22 = _RAND_38[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  byte_ram_23 = _RAND_39[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  byte_ram_24 = _RAND_40[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  byte_ram_25 = _RAND_41[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  byte_ram_26 = _RAND_42[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  byte_ram_27 = _RAND_43[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  byte_ram_28 = _RAND_44[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  byte_ram_29 = _RAND_45[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  byte_ram_30 = _RAND_46[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  byte_ram_31 = _RAND_47[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  mem_data_out_0 = _RAND_48[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  mem_data_out_1 = _RAND_49[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      axi_awready <= 1'h0;
    end else begin
      axi_awready <= _GEN_2;
    end
    if (reset) begin
      axi_wready <= 1'h0;
    end else begin
      axi_wready <= _GEN_11;
    end
    if (reset) begin
      axi_bvalid <= 1'h0;
    end else begin
      axi_bvalid <= _GEN_13;
    end
    if (reset) begin
      axi_arready <= 1'h0;
    end else begin
      axi_arready <= _GEN_17;
    end
    if (reset) begin
      axi_rlast <= 1'h0;
    end else if (_T_56) begin
      axi_rlast <= 1'h0;
    end else if (_T_60) begin
      axi_rlast <= 1'h0;
    end else begin
      axi_rlast <= _GEN_20;
    end
    if (reset) begin
      axi_rvalid <= 1'h0;
    end else begin
      axi_rvalid <= _GEN_30;
    end
    if (reset) begin
      axi_awv_awr_flag <= 1'h0;
    end else begin
      axi_awv_awr_flag <= _GEN_3;
    end
    if (reset) begin
      axi_arv_arr_flag <= 1'h0;
    end else begin
      axi_arv_arr_flag <= _GEN_18;
    end
    if (reset) begin
      axi_awaddr <= 32'h0;
    end else begin
      axi_awaddr <= _GEN_6[31:0];
    end
    if (reset) begin
      axi_awburst <= 2'h0;
    end else if (_T_3) begin
      axi_awburst <= 2'h1;
    end
    if (reset) begin
      axi_awlen <= 8'h0;
    end else if (_T_3) begin
      axi_awlen <= 8'hf;
    end
    if (reset) begin
      axi_awlen_cntr <= 8'h0;
    end else begin
      axi_awlen_cntr <= _GEN_9[7:0];
    end
    if (reset) begin
      axi_arlen_cntr <= 8'h0;
    end else begin
      axi_arlen_cntr <= _GEN_27[7:0];
    end
    if (reset) begin
      axi_arlen <= 8'h0;
    end else if (_T_56) begin
      axi_arlen <= 8'hf;
    end
    if (reset) begin
      axi_araddr <= 32'h0;
    end else begin
      axi_araddr <= _GEN_24[31:0];
    end
    if (reset) begin
      axi_arburst <= 2'h0;
    end else if (_T_56) begin
      axi_arburst <= 2'h1;
    end
    if (_T_87) begin
      if (8'h0 == _T_95) begin
        byte_ram_0 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h1 == _T_95) begin
        byte_ram_1 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h2 == _T_95) begin
        byte_ram_2 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h3 == _T_95) begin
        byte_ram_3 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h4 == _T_95) begin
        byte_ram_4 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h5 == _T_95) begin
        byte_ram_5 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h6 == _T_95) begin
        byte_ram_6 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h7 == _T_95) begin
        byte_ram_7 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h8 == _T_95) begin
        byte_ram_8 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h9 == _T_95) begin
        byte_ram_9 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'ha == _T_95) begin
        byte_ram_10 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'hb == _T_95) begin
        byte_ram_11 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'hc == _T_95) begin
        byte_ram_12 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'hd == _T_95) begin
        byte_ram_13 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'he == _T_95) begin
        byte_ram_14 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'hf == _T_95) begin
        byte_ram_15 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h10 == _T_95) begin
        byte_ram_16 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h11 == _T_95) begin
        byte_ram_17 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h12 == _T_95) begin
        byte_ram_18 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h13 == _T_95) begin
        byte_ram_19 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h14 == _T_95) begin
        byte_ram_20 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h15 == _T_95) begin
        byte_ram_21 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h16 == _T_95) begin
        byte_ram_22 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h17 == _T_95) begin
        byte_ram_23 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h18 == _T_95) begin
        byte_ram_24 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h19 == _T_95) begin
        byte_ram_25 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h1a == _T_95) begin
        byte_ram_26 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h1b == _T_95) begin
        byte_ram_27 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h1c == _T_95) begin
        byte_ram_28 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h1d == _T_95) begin
        byte_ram_29 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h1e == _T_95) begin
        byte_ram_30 <= io_S_AXI_WDATA;
      end
    end
    if (_T_87) begin
      if (8'h1f == _T_95) begin
        byte_ram_31 <= io_S_AXI_WDATA;
      end
    end
    if (axi_arv_arr_flag) begin
      if (2'h0 == mem_select) begin
        if (8'h1f == _T_95) begin
          mem_data_out_0 <= byte_ram_31;
        end else if (8'h1e == _T_95) begin
          mem_data_out_0 <= byte_ram_30;
        end else if (8'h1d == _T_95) begin
          mem_data_out_0 <= byte_ram_29;
        end else if (8'h1c == _T_95) begin
          mem_data_out_0 <= byte_ram_28;
        end else if (8'h1b == _T_95) begin
          mem_data_out_0 <= byte_ram_27;
        end else if (8'h1a == _T_95) begin
          mem_data_out_0 <= byte_ram_26;
        end else if (8'h19 == _T_95) begin
          mem_data_out_0 <= byte_ram_25;
        end else if (8'h18 == _T_95) begin
          mem_data_out_0 <= byte_ram_24;
        end else if (8'h17 == _T_95) begin
          mem_data_out_0 <= byte_ram_23;
        end else if (8'h16 == _T_95) begin
          mem_data_out_0 <= byte_ram_22;
        end else if (8'h15 == _T_95) begin
          mem_data_out_0 <= byte_ram_21;
        end else if (8'h14 == _T_95) begin
          mem_data_out_0 <= byte_ram_20;
        end else if (8'h13 == _T_95) begin
          mem_data_out_0 <= byte_ram_19;
        end else if (8'h12 == _T_95) begin
          mem_data_out_0 <= byte_ram_18;
        end else if (8'h11 == _T_95) begin
          mem_data_out_0 <= byte_ram_17;
        end else if (8'h10 == _T_95) begin
          mem_data_out_0 <= byte_ram_16;
        end else if (8'hf == _T_95) begin
          mem_data_out_0 <= byte_ram_15;
        end else if (8'he == _T_95) begin
          mem_data_out_0 <= byte_ram_14;
        end else if (8'hd == _T_95) begin
          mem_data_out_0 <= byte_ram_13;
        end else if (8'hc == _T_95) begin
          mem_data_out_0 <= byte_ram_12;
        end else if (8'hb == _T_95) begin
          mem_data_out_0 <= byte_ram_11;
        end else if (8'ha == _T_95) begin
          mem_data_out_0 <= byte_ram_10;
        end else if (8'h9 == _T_95) begin
          mem_data_out_0 <= byte_ram_9;
        end else if (8'h8 == _T_95) begin
          mem_data_out_0 <= byte_ram_8;
        end else if (8'h7 == _T_95) begin
          mem_data_out_0 <= byte_ram_7;
        end else if (8'h6 == _T_95) begin
          mem_data_out_0 <= byte_ram_6;
        end else if (8'h5 == _T_95) begin
          mem_data_out_0 <= byte_ram_5;
        end else if (8'h4 == _T_95) begin
          mem_data_out_0 <= byte_ram_4;
        end else if (8'h3 == _T_95) begin
          mem_data_out_0 <= byte_ram_3;
        end else if (8'h2 == _T_95) begin
          mem_data_out_0 <= byte_ram_2;
        end else if (8'h1 == _T_95) begin
          mem_data_out_0 <= byte_ram_1;
        end else begin
          mem_data_out_0 <= byte_ram_0;
        end
      end
    end
    if (axi_arv_arr_flag) begin
      if (2'h1 == mem_select) begin
        if (8'h1f == _T_95) begin
          mem_data_out_1 <= byte_ram_31;
        end else if (8'h1e == _T_95) begin
          mem_data_out_1 <= byte_ram_30;
        end else if (8'h1d == _T_95) begin
          mem_data_out_1 <= byte_ram_29;
        end else if (8'h1c == _T_95) begin
          mem_data_out_1 <= byte_ram_28;
        end else if (8'h1b == _T_95) begin
          mem_data_out_1 <= byte_ram_27;
        end else if (8'h1a == _T_95) begin
          mem_data_out_1 <= byte_ram_26;
        end else if (8'h19 == _T_95) begin
          mem_data_out_1 <= byte_ram_25;
        end else if (8'h18 == _T_95) begin
          mem_data_out_1 <= byte_ram_24;
        end else if (8'h17 == _T_95) begin
          mem_data_out_1 <= byte_ram_23;
        end else if (8'h16 == _T_95) begin
          mem_data_out_1 <= byte_ram_22;
        end else if (8'h15 == _T_95) begin
          mem_data_out_1 <= byte_ram_21;
        end else if (8'h14 == _T_95) begin
          mem_data_out_1 <= byte_ram_20;
        end else if (8'h13 == _T_95) begin
          mem_data_out_1 <= byte_ram_19;
        end else if (8'h12 == _T_95) begin
          mem_data_out_1 <= byte_ram_18;
        end else if (8'h11 == _T_95) begin
          mem_data_out_1 <= byte_ram_17;
        end else if (8'h10 == _T_95) begin
          mem_data_out_1 <= byte_ram_16;
        end else if (8'hf == _T_95) begin
          mem_data_out_1 <= byte_ram_15;
        end else if (8'he == _T_95) begin
          mem_data_out_1 <= byte_ram_14;
        end else if (8'hd == _T_95) begin
          mem_data_out_1 <= byte_ram_13;
        end else if (8'hc == _T_95) begin
          mem_data_out_1 <= byte_ram_12;
        end else if (8'hb == _T_95) begin
          mem_data_out_1 <= byte_ram_11;
        end else if (8'ha == _T_95) begin
          mem_data_out_1 <= byte_ram_10;
        end else if (8'h9 == _T_95) begin
          mem_data_out_1 <= byte_ram_9;
        end else if (8'h8 == _T_95) begin
          mem_data_out_1 <= byte_ram_8;
        end else if (8'h7 == _T_95) begin
          mem_data_out_1 <= byte_ram_7;
        end else if (8'h6 == _T_95) begin
          mem_data_out_1 <= byte_ram_6;
        end else if (8'h5 == _T_95) begin
          mem_data_out_1 <= byte_ram_5;
        end else if (8'h4 == _T_95) begin
          mem_data_out_1 <= byte_ram_4;
        end else if (8'h3 == _T_95) begin
          mem_data_out_1 <= byte_ram_3;
        end else if (8'h2 == _T_95) begin
          mem_data_out_1 <= byte_ram_2;
        end else if (8'h1 == _T_95) begin
          mem_data_out_1 <= byte_ram_1;
        end else begin
          mem_data_out_1 <= byte_ram_0;
        end
      end
    end
  end
endmodule
module AXI_Full(
  input   clock,
  input   reset,
  input   io_INIT_AXI_TXN,
  output  io_TXN_DONE,
  output  io_ERROR
);
  wire  master_clock;
  wire  master_reset;
  wire  master_io_INIT_AXI_TXN;
  wire  master_io_TXN_DONE;
  wire  master_io_ERROR;
  wire [31:0] master_io_M_AXI_AWADDR;
  wire  master_io_M_AXI_AWVALID;
  wire  master_io_M_AXI_AWREADY;
  wire [31:0] master_io_M_AXI_WDATA;
  wire  master_io_M_AXI_WLAST;
  wire  master_io_M_AXI_WVALID;
  wire  master_io_M_AXI_WREADY;
  wire  master_io_M_AXI_BVALID;
  wire  master_io_M_AXI_BREADY;
  wire [31:0] master_io_M_AXI_ARADDR;
  wire  master_io_M_AXI_ARVALID;
  wire  master_io_M_AXI_ARREADY;
  wire [31:0] master_io_M_AXI_RDATA;
  wire  master_io_M_AXI_RLAST;
  wire  master_io_M_AXI_RVALID;
  wire  master_io_M_AXI_RREADY;
  wire  slave_clock;
  wire  slave_reset;
  wire [31:0] slave_io_S_AXI_AWADDR;
  wire  slave_io_S_AXI_AWVALID;
  wire  slave_io_S_AXI_AWREADY;
  wire [31:0] slave_io_S_AXI_WDATA;
  wire  slave_io_S_AXI_WLAST;
  wire  slave_io_S_AXI_WVALID;
  wire  slave_io_S_AXI_WREADY;
  wire  slave_io_S_AXI_BVALID;
  wire  slave_io_S_AXI_BREADY;
  wire [31:0] slave_io_S_AXI_ARADDR;
  wire  slave_io_S_AXI_ARVALID;
  wire  slave_io_S_AXI_ARREADY;
  wire [31:0] slave_io_S_AXI_RDATA;
  wire  slave_io_S_AXI_RLAST;
  wire  slave_io_S_AXI_RVALID;
  wire  slave_io_S_AXI_RREADY;
  AXIFullMaster master (
    .clock(master_clock),
    .reset(master_reset),
    .io_INIT_AXI_TXN(master_io_INIT_AXI_TXN),
    .io_TXN_DONE(master_io_TXN_DONE),
    .io_ERROR(master_io_ERROR),
    .io_M_AXI_AWADDR(master_io_M_AXI_AWADDR),
    .io_M_AXI_AWVALID(master_io_M_AXI_AWVALID),
    .io_M_AXI_AWREADY(master_io_M_AXI_AWREADY),
    .io_M_AXI_WDATA(master_io_M_AXI_WDATA),
    .io_M_AXI_WLAST(master_io_M_AXI_WLAST),
    .io_M_AXI_WVALID(master_io_M_AXI_WVALID),
    .io_M_AXI_WREADY(master_io_M_AXI_WREADY),
    .io_M_AXI_BVALID(master_io_M_AXI_BVALID),
    .io_M_AXI_BREADY(master_io_M_AXI_BREADY),
    .io_M_AXI_ARADDR(master_io_M_AXI_ARADDR),
    .io_M_AXI_ARVALID(master_io_M_AXI_ARVALID),
    .io_M_AXI_ARREADY(master_io_M_AXI_ARREADY),
    .io_M_AXI_RDATA(master_io_M_AXI_RDATA),
    .io_M_AXI_RLAST(master_io_M_AXI_RLAST),
    .io_M_AXI_RVALID(master_io_M_AXI_RVALID),
    .io_M_AXI_RREADY(master_io_M_AXI_RREADY)
  );
  AXIFullSlave slave (
    .clock(slave_clock),
    .reset(slave_reset),
    .io_S_AXI_AWADDR(slave_io_S_AXI_AWADDR),
    .io_S_AXI_AWVALID(slave_io_S_AXI_AWVALID),
    .io_S_AXI_AWREADY(slave_io_S_AXI_AWREADY),
    .io_S_AXI_WDATA(slave_io_S_AXI_WDATA),
    .io_S_AXI_WLAST(slave_io_S_AXI_WLAST),
    .io_S_AXI_WVALID(slave_io_S_AXI_WVALID),
    .io_S_AXI_WREADY(slave_io_S_AXI_WREADY),
    .io_S_AXI_BVALID(slave_io_S_AXI_BVALID),
    .io_S_AXI_BREADY(slave_io_S_AXI_BREADY),
    .io_S_AXI_ARADDR(slave_io_S_AXI_ARADDR),
    .io_S_AXI_ARVALID(slave_io_S_AXI_ARVALID),
    .io_S_AXI_ARREADY(slave_io_S_AXI_ARREADY),
    .io_S_AXI_RDATA(slave_io_S_AXI_RDATA),
    .io_S_AXI_RLAST(slave_io_S_AXI_RLAST),
    .io_S_AXI_RVALID(slave_io_S_AXI_RVALID),
    .io_S_AXI_RREADY(slave_io_S_AXI_RREADY)
  );
  assign io_TXN_DONE = master_io_TXN_DONE;
  assign io_ERROR = master_io_ERROR;
  assign master_clock = clock;
  assign master_reset = reset;
  assign master_io_INIT_AXI_TXN = io_INIT_AXI_TXN;
  assign master_io_M_AXI_AWREADY = slave_io_S_AXI_AWREADY;
  assign master_io_M_AXI_WREADY = slave_io_S_AXI_WREADY;
  assign master_io_M_AXI_BVALID = slave_io_S_AXI_BVALID;
  assign master_io_M_AXI_ARREADY = slave_io_S_AXI_ARREADY;
  assign master_io_M_AXI_RDATA = slave_io_S_AXI_RDATA;
  assign master_io_M_AXI_RLAST = slave_io_S_AXI_RLAST;
  assign master_io_M_AXI_RVALID = slave_io_S_AXI_RVALID;
  assign slave_clock = clock;
  assign slave_reset = reset;
  assign slave_io_S_AXI_AWADDR = master_io_M_AXI_AWADDR;
  assign slave_io_S_AXI_AWVALID = master_io_M_AXI_AWVALID;
  assign slave_io_S_AXI_WDATA = master_io_M_AXI_WDATA;
  assign slave_io_S_AXI_WLAST = master_io_M_AXI_WLAST;
  assign slave_io_S_AXI_WVALID = master_io_M_AXI_WVALID;
  assign slave_io_S_AXI_BREADY = master_io_M_AXI_BREADY;
  assign slave_io_S_AXI_ARADDR = master_io_M_AXI_ARADDR;
  assign slave_io_S_AXI_ARVALID = master_io_M_AXI_ARVALID;
  assign slave_io_S_AXI_RREADY = master_io_M_AXI_RREADY;
endmodule
