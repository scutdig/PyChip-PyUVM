`timescale 1ns/1ns

module AXILiteMaster(
  input         clock,
  input         reset,
  input         io_INIT_AXI_TXN,
  output        io_ERROR,
  output        io_TXN_DONE,
  output [31:0] io_M_AXI_AWADDR,
  output        io_M_AXI_AWVALID,
  input         io_M_AXI_AWREADY,
  output [31:0] io_M_AXI_WDATA,
  output        io_M_AXI_WVALID,
  input         io_M_AXI_WREADY,
  input         io_M_AXI_BVALID,
  output        io_M_AXI_BREADY,
  output [31:0] io_M_AXI_ARADDR,
  output        io_M_AXI_ARVALID,
  input         io_M_AXI_ARREADY,
  input  [31:0] io_M_AXI_RDATA,
  input         io_M_AXI_RVALID,
  output        io_M_AXI_RREADY
);
  reg [1:0] mst_exec_state;
  reg [31:0] _RAND_0;
  reg [2:0] read_index;
  reg [31:0] _RAND_1;
  reg  last_read;
  reg [31:0] _RAND_2;
  reg  start_single_read;
  reg [31:0] _RAND_3;
  reg  read_issued;
  reg [31:0] _RAND_4;
  reg  error_reg;
  reg [31:0] _RAND_5;
  reg [31:0] axi_awaddr;
  reg [31:0] _RAND_6;
  wire [32:0] _T;
  reg [31:0] axi_wdata;
  reg [31:0] _RAND_7;
  reg  axi_awvalid;
  reg [31:0] _RAND_8;
  reg  axi_wvalid;
  reg [31:0] _RAND_9;
  reg  axi_bready;
  reg [31:0] _RAND_10;
  reg [31:0] axi_araddr;
  reg [31:0] _RAND_11;
  wire [32:0] _T_1;
  reg  axi_arvalid;
  reg [31:0] _RAND_12;
  reg  axi_rready;
  reg [31:0] _RAND_13;
  reg  compare_done;
  reg [31:0] _RAND_14;
  reg  init_txn_ff;
  reg [31:0] _RAND_15;
  reg  init_txn_ff2;
  reg [31:0] _RAND_16;
  reg  start_single_write;
  reg [31:0] _RAND_17;
  reg [2:0] write_index;
  reg [31:0] _RAND_18;
  wire  _T_3;
  wire [3:0] _T_2;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [3:0] _GEN_3;
  wire  _T_4;
  wire  init_txn_pulse;
  reg [31:0] expected_rdata;
  reg [31:0] _RAND_19;
  reg  last_write;
  reg [31:0] _RAND_20;
  reg  writes_done;
  reg [31:0] _RAND_21;
  reg  reads_done;
  reg [31:0] _RAND_22;
  reg  read_mismatch;
  reg [31:0] _RAND_23;
  wire  _GEN_6;
  wire [3:0] _GEN_7;
  wire [2:0] _GEN_9;
  wire  _GEN_10;
  wire [31:0] _GEN_11;
  wire [31:0] _GEN_13;
  wire  _T_6;
  wire  _T_7;
  wire  _T_8;
  wire  _GEN_22;
  wire  _GEN_23;
  wire  _T_13;
  wire [3:0] _T_12;
  wire  _GEN_24;
  wire [3:0] _GEN_25;
  wire  _GEN_26;
  wire  _T_14;
  wire  _T_15;
  wire  _GEN_27;
  wire  _GEN_28;
  wire [32:0] _T_20;
  wire [32:0] _GEN_29;
  wire  _T_21;
  wire [10:0] _GEN_75;
  wire [11:0] _T_22;
  wire [32:0] _T_24;
  wire [32:0] _GEN_31;
  wire  _T_25;
  wire [10:0] _GEN_76;
  wire [11:0] _T_26;
  wire [1:0] _T_27;
  wire  _T_28;
  wire  _T_31;
  reg  write_issued;
  reg [31:0] _RAND_24;
  wire  _T_44;
  wire  _T_55;
  wire  _T_32;
  wire  _T_33;
  wire  _T_34;
  wire  _T_35;
  wire  _T_36;
  wire  _T_37;
  wire  _T_38;
  wire  _T_39;
  wire  _T_40;
  wire  _T_41;
  wire  _T_42;
  wire  _GEN_36;
  wire  _GEN_37;
  wire  _GEN_38;
  wire  _GEN_39;
  wire  _T_45;
  wire  _T_46;
  wire  _T_47;
  wire  _T_48;
  wire  _T_49;
  wire  _T_50;
  wire  _T_51;
  wire  _T_52;
  wire  _T_53;
  wire  _GEN_43;
  wire  _GEN_44;
  wire  _GEN_45;
  wire  _GEN_46;
  wire  _GEN_51;
  wire  _T_56;
  wire  _T_57;
  wire  _GEN_69;
  wire  _T_58;
  wire  _T_59;
  wire  _GEN_70;
  wire  _T_60;
  wire  _T_61;
  wire  _GEN_71;
  wire  _T_62;
  wire  _T_63;
  wire  _GEN_72;
  wire  _T_65;
  wire  _T_66;
  wire  _GEN_73;
  wire  _GEN_74;
  assign _T = 32'h40000000 + axi_awaddr;
  assign _T_1 = 32'h40000000 + axi_araddr;
  assign _T_3 = io_M_AXI_WREADY & axi_awvalid;
  assign _T_2 = write_index + 3'h1;
  assign _GEN_0 = _T_3 ? 1'h0 : axi_wvalid;
  assign _GEN_1 = start_single_write | axi_awvalid;
  assign _GEN_2 = start_single_write | _GEN_0;
  assign _GEN_3 = start_single_write ? _T_2 : {{1'd0}, write_index};
  assign _T_4 = ~ init_txn_ff2;
  assign init_txn_pulse = _T_4 & init_txn_ff;
  assign _GEN_6 = init_txn_pulse ? 1'h0 : axi_arvalid;
  assign _GEN_7 = init_txn_pulse ? 4'h0 : _GEN_3;
  assign _GEN_9 = init_txn_pulse ? 3'h0 : read_index;
  assign _GEN_10 = init_txn_pulse ? 1'h0 : axi_rready;
  assign _GEN_11 = init_txn_pulse ? 32'h0 : axi_awaddr;
  assign _GEN_13 = init_txn_pulse ? 32'h0 : axi_araddr;
  assign _T_6 = io_M_AXI_AWREADY & axi_awvalid;
  assign _T_7 = ~ axi_bready;
  assign _T_8 = io_M_AXI_BVALID & _T_7;
  assign _GEN_22 = axi_bready ? 1'h0 : axi_bready;
  assign _GEN_23 = _T_8 | _GEN_22;
  assign _T_13 = io_M_AXI_ARREADY & axi_arvalid;
  assign _T_12 = read_index + 3'h1;
  assign _GEN_24 = _T_13 ? 1'h0 : _GEN_6;
  assign _GEN_25 = start_single_read ? _T_12 : {{1'd0}, _GEN_9};
  assign _GEN_26 = start_single_read | _GEN_24;
  assign _T_14 = ~ axi_rready;
  assign _T_15 = io_M_AXI_RVALID & _T_14;
  assign _GEN_27 = axi_rready ? 1'h0 : _GEN_10;
  assign _GEN_28 = _T_15 | _GEN_27;
  assign _T_20 = axi_awaddr + 32'h4;
  assign _GEN_29 = _T_6 ? _T_20 : {{1'd0}, _GEN_11};
  assign _T_21 = io_M_AXI_WREADY & axi_wvalid;
  assign _GEN_75 = {{8'd0}, write_index};
  assign _T_22 = 11'h666 + _GEN_75;
  assign _T_24 = axi_araddr + 32'h4;
  assign _GEN_31 = _T_13 ? _T_24 : {{1'd0}, _GEN_13};
  assign _T_25 = io_M_AXI_RVALID & axi_rready;
  assign _GEN_76 = {{8'd0}, read_index};
  assign _T_26 = _GEN_76 + 11'h666;
  assign _T_27 = $unsigned(mst_exec_state);
  assign _T_28 = _T_27 == 2'h0;
  assign _T_31 = _T_27 == 2'h1;
  assign _T_44 = _T_27 == 2'h2;
  assign _T_55 = _T_27 == 2'h3;
  assign _T_32 = ~ axi_awvalid;
  assign _T_33 = ~ axi_wvalid;
  assign _T_34 = _T_32 & _T_33;
  assign _T_35 = ~ io_M_AXI_BVALID;
  assign _T_36 = _T_34 & _T_35;
  assign _T_37 = ~ last_write;
  assign _T_38 = _T_36 & _T_37;
  assign _T_39 = ~ start_single_write;
  assign _T_40 = _T_38 & _T_39;
  assign _T_41 = ~ write_issued;
  assign _T_42 = _T_40 & _T_41;
  assign _GEN_36 = axi_bready ? 1'h0 : write_issued;
  assign _GEN_37 = axi_bready & start_single_write;
  assign _GEN_38 = _T_42 | _GEN_37;
  assign _GEN_39 = _T_42 | _GEN_36;
  assign _T_45 = ~ axi_arvalid;
  assign _T_46 = ~ io_M_AXI_RVALID;
  assign _T_47 = _T_45 & _T_46;
  assign _T_48 = ~ last_read;
  assign _T_49 = _T_47 & _T_48;
  assign _T_50 = ~ start_single_read;
  assign _T_51 = _T_49 & _T_50;
  assign _T_52 = ~ read_issued;
  assign _T_53 = _T_51 & _T_52;
  assign _GEN_43 = axi_rready ? 1'h0 : read_issued;
  assign _GEN_44 = axi_rready & start_single_read;
  assign _GEN_45 = _T_53 | _GEN_44;
  assign _GEN_46 = _T_53 | _GEN_43;
  assign _GEN_51 = _T_55 | compare_done;
  assign _T_56 = write_index == 3'h4;
  assign _T_57 = _T_56 & io_M_AXI_AWREADY;
  assign _GEN_69 = _T_57 | last_write;
  assign _T_58 = last_write & io_M_AXI_BVALID;
  assign _T_59 = _T_58 & axi_bready;
  assign _GEN_70 = _T_59 | writes_done;
  assign _T_60 = read_index == 3'h4;
  assign _T_61 = _T_60 & io_M_AXI_ARREADY;
  assign _GEN_71 = _T_61 | last_read;
  assign _T_62 = last_read & io_M_AXI_RVALID;
  assign _T_63 = _T_62 & axi_rready;
  assign _GEN_72 = _T_63 | reads_done;
  assign _T_65 = io_M_AXI_RDATA != expected_rdata;
  assign _T_66 = _T_25 & _T_65;
  assign _GEN_73 = _T_66 | read_mismatch;
  assign _GEN_74 = read_mismatch | error_reg;
  assign io_ERROR = error_reg;
  assign io_TXN_DONE = compare_done;
  assign io_M_AXI_AWADDR = _T[31:0];
  assign io_M_AXI_AWVALID = axi_awvalid;
  assign io_M_AXI_WDATA = axi_wdata;
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
  mst_exec_state = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  read_index = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  last_read = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  start_single_read = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  read_issued = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  error_reg = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  axi_awaddr = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  axi_wdata = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  axi_awvalid = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  axi_wvalid = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  axi_bready = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  axi_araddr = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  axi_arvalid = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  axi_rready = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  compare_done = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  init_txn_ff = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  init_txn_ff2 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  start_single_write = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  write_index = _RAND_18[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  expected_rdata = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  last_write = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  writes_done = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  reads_done = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  read_mismatch = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  write_issued = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      mst_exec_state <= 2'h0;
    end else if (_T_28) begin
      if (init_txn_pulse) begin
        mst_exec_state <= 2'h1;
      end else begin
        mst_exec_state <= 2'h0;
      end
    end else if (_T_31) begin
      if (writes_done) begin
        mst_exec_state <= 2'h2;
      end else begin
        mst_exec_state <= 2'h1;
      end
    end else if (_T_44) begin
      if (reads_done) begin
        mst_exec_state <= 2'h3;
      end else begin
        mst_exec_state <= 2'h2;
      end
    end else begin
      mst_exec_state <= 2'h0;
    end
    if (reset) begin
      read_index <= 3'h0;
    end else begin
      read_index <= _GEN_25[2:0];
    end
    if (reset) begin
      last_read <= 1'h0;
    end else begin
      last_read <= _GEN_71;
    end
    if (reset) begin
      start_single_read <= 1'h0;
    end else if (!(_T_28)) begin
      if (!(_T_31)) begin
        if (_T_44) begin
          if (!(reads_done)) begin
            start_single_read <= _GEN_45;
          end
        end
      end
    end
    if (reset) begin
      read_issued <= 1'h0;
    end else if (!(_T_28)) begin
      if (!(_T_31)) begin
        if (_T_44) begin
          if (!(reads_done)) begin
            read_issued <= _GEN_46;
          end
        end
      end
    end
    if (reset) begin
      error_reg <= 1'h0;
    end else begin
      error_reg <= _GEN_74;
    end
    if (reset) begin
      axi_awaddr <= 32'h0;
    end else begin
      axi_awaddr <= _GEN_29[31:0];
    end
    if (reset) begin
      axi_wdata <= 32'h0;
    end else if (_T_21) begin
      axi_wdata <= {{20'd0}, _T_22};
    end else if (init_txn_pulse) begin
      axi_wdata <= 32'h666;
    end
    if (reset) begin
      axi_awvalid <= 1'h0;
    end else if (_T_6) begin
      axi_awvalid <= 1'h0;
    end else if (init_txn_pulse) begin
      axi_awvalid <= 1'h0;
    end else begin
      axi_awvalid <= _GEN_1;
    end
    if (reset) begin
      axi_wvalid <= 1'h0;
    end else if (init_txn_pulse) begin
      axi_wvalid <= 1'h0;
    end else begin
      axi_wvalid <= _GEN_2;
    end
    if (reset) begin
      axi_bready <= 1'h0;
    end else begin
      axi_bready <= _GEN_23;
    end
    if (reset) begin
      axi_araddr <= 32'h0;
    end else begin
      axi_araddr <= _GEN_31[31:0];
    end
    if (reset) begin
      axi_arvalid <= 1'h0;
    end else begin
      axi_arvalid <= _GEN_26;
    end
    if (reset) begin
      axi_rready <= 1'h0;
    end else begin
      axi_rready <= _GEN_28;
    end
    if (reset) begin
      compare_done <= 1'h0;
    end else if (_T_28) begin
      if (init_txn_pulse) begin
        compare_done <= 1'h0;
      end
    end else if (!(_T_31)) begin
      if (!(_T_44)) begin
        compare_done <= _GEN_51;
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
      start_single_write <= 1'h0;
    end else if (!(_T_28)) begin
      if (_T_31) begin
        if (!(writes_done)) begin
          start_single_write <= _GEN_38;
        end
      end
    end
    if (reset) begin
      write_index <= 3'h0;
    end else begin
      write_index <= _GEN_7[2:0];
    end
    if (reset) begin
      expected_rdata <= 32'h0;
    end else if (_T_25) begin
      expected_rdata <= {{20'd0}, _T_26};
    end else if (init_txn_pulse) begin
      expected_rdata <= 32'h666;
    end
    if (reset) begin
      last_write <= 1'h0;
    end else begin
      last_write <= _GEN_69;
    end
    if (reset) begin
      writes_done <= 1'h0;
    end else begin
      writes_done <= _GEN_70;
    end
    if (reset) begin
      reads_done <= 1'h0;
    end else begin
      reads_done <= _GEN_72;
    end
    if (reset) begin
      read_mismatch <= 1'h0;
    end else begin
      read_mismatch <= _GEN_73;
    end
    if (reset) begin
      write_issued <= 1'h0;
    end else if (!(_T_28)) begin
      if (_T_31) begin
        if (!(writes_done)) begin
          write_issued <= _GEN_39;
        end
      end
    end
  end
endmodule
module AXILiteSlave(
  input         clock,
  input         reset,
  input  [31:0] io_S_AXI_AWADDR,
  input         io_S_AXI_AWVALID,
  output        io_S_AXI_AWREADY,
  input  [31:0] io_S_AXI_WDATA,
  input         io_S_AXI_WVALID,
  output        io_S_AXI_WREADY,
  output        io_S_AXI_BVALID,
  input         io_S_AXI_BREADY,
  input  [31:0] io_S_AXI_ARADDR,
  input         io_S_AXI_ARVALID,
  output        io_S_AXI_ARREADY,
  output [31:0] io_S_AXI_RDATA,
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
  reg [31:0] axi_rdata;
  reg [31:0] _RAND_4;
  reg  axi_rvalid;
  reg [31:0] _RAND_5;
  wire  _T;
  wire  _T_1;
  wire  _T_2;
  reg  aw_en;
  reg [31:0] _RAND_6;
  wire  _T_3;
  wire  _T_4;
  wire  _GEN_0;
  wire  _GEN_3;
  reg [31:0] axi_awaddr;
  reg [31:0] _RAND_7;
  wire  _T_9;
  wire  _T_10;
  wire  _T_11;
  wire  _T_12;
  wire  _T_13;
  wire  _T_14;
  wire  slv_reg_wren;
  reg [31:0] slv_reg0;
  reg [31:0] _RAND_8;
  reg [31:0] slv_reg1;
  reg [31:0] _RAND_9;
  reg [31:0] slv_reg2;
  reg [31:0] _RAND_10;
  reg [31:0] slv_reg3;
  reg [31:0] _RAND_11;
  wire [1:0] _T_15;
  wire  _T_16;
  wire  _T_26;
  wire  _T_36;
  wire  _T_46;
  wire  _T_55;
  wire  _T_56;
  wire  _T_57;
  wire  _T_58;
  wire  _T_59;
  wire  _GEN_42;
  wire  _GEN_43;
  wire  _T_61;
  wire  _T_62;
  reg [31:0] axi_araddr;
  reg [31:0] _RAND_12;
  wire  _T_63;
  wire  _T_64;
  wire  _T_65;
  wire  _T_66;
  wire  _GEN_47;
  wire  _GEN_48;
  wire [1:0] _T_69;
  wire  _T_70;
  wire  _T_72;
  wire  _T_74;
  wire  _T_76;
  assign _T = ~ axi_awready;
  assign _T_1 = _T & io_S_AXI_AWVALID;
  assign _T_2 = _T_1 & io_S_AXI_WVALID;
  assign _T_3 = _T_2 & aw_en;
  assign _T_4 = io_S_AXI_BREADY & axi_bvalid;
  assign _GEN_0 = _T_4 | aw_en;
  assign _GEN_3 = _T_3 ? 1'h0 : _GEN_0;
  assign _T_9 = ~ axi_wready;
  assign _T_10 = _T_9 & io_S_AXI_WVALID;
  assign _T_11 = _T_10 & io_S_AXI_AWVALID;
  assign _T_12 = _T_11 & aw_en;
  assign _T_13 = axi_wready & io_S_AXI_WVALID;
  assign _T_14 = _T_13 & axi_awready;
  assign slv_reg_wren = _T_14 & io_S_AXI_AWVALID;
  assign _T_15 = axi_awaddr[3:2];
  assign _T_16 = _T_15 == 2'h0;
  assign _T_26 = _T_15 == 2'h1;
  assign _T_36 = _T_15 == 2'h2;
  assign _T_46 = _T_15 == 2'h3;
  assign _T_55 = axi_awready & io_S_AXI_AWVALID;
  assign _T_56 = ~ axi_bvalid;
  assign _T_57 = _T_55 & _T_56;
  assign _T_58 = _T_57 & axi_wready;
  assign _T_59 = _T_58 & io_S_AXI_WVALID;
  assign _GEN_42 = _T_4 ? 1'h0 : axi_bvalid;
  assign _GEN_43 = _T_59 | _GEN_42;
  assign _T_61 = ~ axi_arready;
  assign _T_62 = _T_61 & io_S_AXI_ARVALID;
  assign _T_63 = axi_arready & io_S_AXI_ARVALID;
  assign _T_64 = ~ axi_rvalid;
  assign _T_65 = _T_63 & _T_64;
  assign _T_66 = axi_rvalid & io_S_AXI_RREADY;
  assign _GEN_47 = _T_66 ? 1'h0 : axi_rvalid;
  assign _GEN_48 = _T_65 | _GEN_47;
  assign _T_69 = axi_araddr[3:2];
  assign _T_70 = 2'h0 == _T_69;
  assign _T_72 = 2'h1 == _T_69;
  assign _T_74 = 2'h2 == _T_69;
  assign _T_76 = 2'h3 == _T_69;
  assign io_S_AXI_AWREADY = axi_awready;
  assign io_S_AXI_WREADY = axi_wready;
  assign io_S_AXI_BVALID = axi_bvalid;
  assign io_S_AXI_ARREADY = axi_arready;
  assign io_S_AXI_RDATA = axi_rdata;
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
  axi_rdata = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  axi_rvalid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  aw_en = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  axi_awaddr = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  slv_reg0 = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  slv_reg1 = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  slv_reg2 = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  slv_reg3 = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  axi_araddr = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      axi_awready <= 1'h0;
    end else begin
      axi_awready <= _T_3;
    end
    if (reset) begin
      axi_wready <= 1'h0;
    end else begin
      axi_wready <= _T_12;
    end
    if (reset) begin
      axi_bvalid <= 1'h0;
    end else begin
      axi_bvalid <= _GEN_43;
    end
    if (reset) begin
      axi_arready <= 1'h0;
    end else begin
      axi_arready <= _T_62;
    end
    if (reset) begin
      axi_rdata <= 32'h0;
    end else if (_T_65) begin
      if (_T_70) begin
        axi_rdata <= slv_reg0;
      end else if (_T_72) begin
        axi_rdata <= slv_reg1;
      end else if (_T_74) begin
        axi_rdata <= slv_reg2;
      end else if (_T_76) begin
        axi_rdata <= slv_reg3;
      end else begin
        axi_rdata <= 32'h0;
      end
    end
    if (reset) begin
      axi_rvalid <= 1'h0;
    end else begin
      axi_rvalid <= _GEN_48;
    end
    aw_en <= reset | _GEN_3;
    if (reset) begin
      axi_awaddr <= 32'h0;
    end else if (_T_3) begin
      axi_awaddr <= io_S_AXI_AWADDR;
    end
    if (reset) begin
      slv_reg0 <= 32'h0;
    end else if (slv_reg_wren) begin
      if (_T_16) begin
        slv_reg0 <= io_S_AXI_WDATA;
      end
    end
    if (reset) begin
      slv_reg1 <= 32'h0;
    end else if (slv_reg_wren) begin
      if (!(_T_16)) begin
        if (_T_26) begin
          slv_reg1 <= io_S_AXI_WDATA;
        end
      end
    end
    if (reset) begin
      slv_reg2 <= 32'h0;
    end else if (slv_reg_wren) begin
      if (!(_T_16)) begin
        if (!(_T_26)) begin
          if (_T_36) begin
            slv_reg2 <= io_S_AXI_WDATA;
          end
        end
      end
    end
    if (reset) begin
      slv_reg3 <= 32'h0;
    end else if (slv_reg_wren) begin
      if (!(_T_16)) begin
        if (!(_T_26)) begin
          if (!(_T_36)) begin
            if (_T_46) begin
              slv_reg3 <= io_S_AXI_WDATA;
            end
          end
        end
      end
    end
    if (reset) begin
      axi_araddr <= 32'h0;
    end else if (_T_62) begin
      axi_araddr <= io_S_AXI_ARADDR;
    end
  end
endmodule
module AXI_Lite(
  input   clock,
  input   reset,
  input   io_INIT_AXI_TXN,
  output  io_TXN_DONE,
  output  io_ERROR
);
  wire  master_clock;
  wire  master_reset;
  wire  master_io_INIT_AXI_TXN;
  wire  master_io_ERROR;
  wire  master_io_TXN_DONE;
  wire [31:0] master_io_M_AXI_AWADDR;
  wire  master_io_M_AXI_AWVALID;
  wire  master_io_M_AXI_AWREADY;
  wire [31:0] master_io_M_AXI_WDATA;
  wire  master_io_M_AXI_WVALID;
  wire  master_io_M_AXI_WREADY;
  wire  master_io_M_AXI_BVALID;
  wire  master_io_M_AXI_BREADY;
  wire [31:0] master_io_M_AXI_ARADDR;
  wire  master_io_M_AXI_ARVALID;
  wire  master_io_M_AXI_ARREADY;
  wire [31:0] master_io_M_AXI_RDATA;
  wire  master_io_M_AXI_RVALID;
  wire  master_io_M_AXI_RREADY;
  wire  slave_clock;
  wire  slave_reset;
  wire [31:0] slave_io_S_AXI_AWADDR;
  wire  slave_io_S_AXI_AWVALID;
  wire  slave_io_S_AXI_AWREADY;
  wire [31:0] slave_io_S_AXI_WDATA;
  wire  slave_io_S_AXI_WVALID;
  wire  slave_io_S_AXI_WREADY;
  wire  slave_io_S_AXI_BVALID;
  wire  slave_io_S_AXI_BREADY;
  wire [31:0] slave_io_S_AXI_ARADDR;
  wire  slave_io_S_AXI_ARVALID;
  wire  slave_io_S_AXI_ARREADY;
  wire [31:0] slave_io_S_AXI_RDATA;
  wire  slave_io_S_AXI_RVALID;
  wire  slave_io_S_AXI_RREADY;
  AXILiteMaster master (
    .clock(master_clock),
    .reset(master_reset),
    .io_INIT_AXI_TXN(master_io_INIT_AXI_TXN),
    .io_ERROR(master_io_ERROR),
    .io_TXN_DONE(master_io_TXN_DONE),
    .io_M_AXI_AWADDR(master_io_M_AXI_AWADDR),
    .io_M_AXI_AWVALID(master_io_M_AXI_AWVALID),
    .io_M_AXI_AWREADY(master_io_M_AXI_AWREADY),
    .io_M_AXI_WDATA(master_io_M_AXI_WDATA),
    .io_M_AXI_WVALID(master_io_M_AXI_WVALID),
    .io_M_AXI_WREADY(master_io_M_AXI_WREADY),
    .io_M_AXI_BVALID(master_io_M_AXI_BVALID),
    .io_M_AXI_BREADY(master_io_M_AXI_BREADY),
    .io_M_AXI_ARADDR(master_io_M_AXI_ARADDR),
    .io_M_AXI_ARVALID(master_io_M_AXI_ARVALID),
    .io_M_AXI_ARREADY(master_io_M_AXI_ARREADY),
    .io_M_AXI_RDATA(master_io_M_AXI_RDATA),
    .io_M_AXI_RVALID(master_io_M_AXI_RVALID),
    .io_M_AXI_RREADY(master_io_M_AXI_RREADY)
  );
  AXILiteSlave slave (
    .clock(slave_clock),
    .reset(slave_reset),
    .io_S_AXI_AWADDR(slave_io_S_AXI_AWADDR),
    .io_S_AXI_AWVALID(slave_io_S_AXI_AWVALID),
    .io_S_AXI_AWREADY(slave_io_S_AXI_AWREADY),
    .io_S_AXI_WDATA(slave_io_S_AXI_WDATA),
    .io_S_AXI_WVALID(slave_io_S_AXI_WVALID),
    .io_S_AXI_WREADY(slave_io_S_AXI_WREADY),
    .io_S_AXI_BVALID(slave_io_S_AXI_BVALID),
    .io_S_AXI_BREADY(slave_io_S_AXI_BREADY),
    .io_S_AXI_ARADDR(slave_io_S_AXI_ARADDR),
    .io_S_AXI_ARVALID(slave_io_S_AXI_ARVALID),
    .io_S_AXI_ARREADY(slave_io_S_AXI_ARREADY),
    .io_S_AXI_RDATA(slave_io_S_AXI_RDATA),
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
  assign master_io_M_AXI_RVALID = slave_io_S_AXI_RVALID;
  assign slave_clock = clock;
  assign slave_reset = reset;
  assign slave_io_S_AXI_AWADDR = master_io_M_AXI_AWADDR;
  assign slave_io_S_AXI_AWVALID = master_io_M_AXI_AWVALID;
  assign slave_io_S_AXI_WDATA = master_io_M_AXI_WDATA;
  assign slave_io_S_AXI_WVALID = master_io_M_AXI_WVALID;
  assign slave_io_S_AXI_BREADY = master_io_M_AXI_BREADY;
  assign slave_io_S_AXI_ARADDR = master_io_M_AXI_ARADDR;
  assign slave_io_S_AXI_ARVALID = master_io_M_AXI_ARVALID;
  assign slave_io_S_AXI_RREADY = master_io_M_AXI_RREADY;
endmodule
