`timescale 1ns/1ns

module AXIStreamSlave(
  input   clock,
  input   reset,
  input   io_S_AXIS_TVALID,
  input   io_S_AXIS_TLAST,
  output  io_S_AXIS_TREADY
);
  reg [1:0] mst_exec_state;
  reg [31:0] _RAND_0;
  wire  _T;
  reg [4:0] write_pointer;
  reg [31:0] _RAND_1;
  wire  _T_1;
  wire  axis_tready;
  wire  _T_2;
  reg  writes_done;
  reg [31:0] _RAND_2;
  wire  fifo_wren;
  wire [5:0] _T_5;
  wire [5:0] _GEN_4;
  wire  _GEN_5;
  wire  _T_6;
  wire  _T_7;
  wire  _GEN_6;
  wire [5:0] _GEN_7;
  assign _T = mst_exec_state == 2'h1;
  assign _T_1 = write_pointer <= 5'h8;
  assign axis_tready = _T & _T_1;
  assign _T_2 = mst_exec_state == 2'h0;
  assign fifo_wren = io_S_AXIS_TVALID & axis_tready;
  assign _T_5 = write_pointer + 5'h1;
  assign _GEN_4 = fifo_wren ? _T_5 : {{1'd0}, write_pointer};
  assign _GEN_5 = fifo_wren ? 1'h0 : writes_done;
  assign _T_6 = write_pointer == 5'h8;
  assign _T_7 = _T_6 | io_S_AXIS_TLAST;
  assign _GEN_6 = _T_7 | _GEN_5;
  assign _GEN_7 = _T_1 ? _GEN_4 : {{1'd0}, write_pointer};
  assign io_S_AXIS_TREADY = _T & _T_1;
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
  write_pointer = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  writes_done = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      mst_exec_state <= 2'h0;
    end else if (_T_2) begin
      if (io_S_AXIS_TVALID) begin
        mst_exec_state <= 2'h1;
      end else begin
        mst_exec_state <= 2'h0;
      end
    end else if (_T) begin
      if (writes_done) begin
        mst_exec_state <= 2'h0;
      end else begin
        mst_exec_state <= 2'h1;
      end
    end
    if (reset) begin
      write_pointer <= 5'h0;
    end else begin
      write_pointer <= _GEN_7[4:0];
    end
    if (reset) begin
      writes_done <= 1'h0;
    end else if (_T_1) begin
      writes_done <= _GEN_6;
    end
  end
endmodule
module AXIStreamMaster(
  input   clock,
  input   reset,
  output  io_M_AXIS_TVALID,
  output  io_M_AXIS_TLAST,
  input   io_M_AXIS_TREADY
);
  reg  axis_tvalid_delay;
  reg [31:0] _RAND_0;
  reg  axis_tlast_delay;
  reg [31:0] _RAND_1;
  reg [1:0] mst_exec_state;
  reg [31:0] _RAND_2;
  wire  _T;
  wire  _T_1;
  reg [5:0] count;
  reg [31:0] _RAND_3;
  wire  _T_4;
  reg  tx_done;
  reg [31:0] _RAND_4;
  wire  _T_2;
  wire [6:0] _T_3;
  wire [6:0] _GEN_1;
  wire [6:0] _GEN_5;
  wire [6:0] _GEN_7;
  reg [4:0] read_pointer;
  reg [31:0] _RAND_5;
  wire  _T_6;
  wire  axis_tvalid;
  wire  axis_tlast;
  wire  _T_7;
  wire  tx_en;
  wire  _T_9;
  wire [5:0] _T_8;
  wire  _GEN_8;
  wire [5:0] _GEN_9;
  wire [5:0] _GEN_11;
  assign _T = mst_exec_state == 2'h0;
  assign _T_1 = mst_exec_state == 2'h1;
  assign _T_4 = mst_exec_state == 2'h2;
  assign _T_2 = count == 6'h1f;
  assign _T_3 = count + 6'h1;
  assign _GEN_1 = _T_2 ? {{1'd0}, count} : _T_3;
  assign _GEN_5 = _T_1 ? _GEN_1 : {{1'd0}, count};
  assign _GEN_7 = _T ? {{1'd0}, count} : _GEN_5;
  assign _T_6 = read_pointer < 5'h8;
  assign axis_tvalid = _T_4 & _T_6;
  assign axis_tlast = read_pointer == 5'h7;
  assign _T_7 = read_pointer <= 5'h7;
  assign tx_en = io_M_AXIS_TREADY & axis_tvalid;
  assign _T_9 = read_pointer == 5'h8;
  assign _T_8 = read_pointer + 5'h1;
  assign _GEN_8 = _T_9 | tx_done;
  assign _GEN_9 = tx_en ? _T_8 : {{1'd0}, read_pointer};
  assign _GEN_11 = _T_7 ? _GEN_9 : {{1'd0}, read_pointer};
  assign io_M_AXIS_TVALID = axis_tvalid_delay;
  assign io_M_AXIS_TLAST = axis_tlast_delay;
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
  axis_tvalid_delay = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  axis_tlast_delay = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  mst_exec_state = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  count = _RAND_3[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  tx_done = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  read_pointer = _RAND_5[4:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      axis_tvalid_delay <= 1'h0;
    end else begin
      axis_tvalid_delay <= axis_tvalid;
    end
    if (reset) begin
      axis_tlast_delay <= 1'h0;
    end else begin
      axis_tlast_delay <= axis_tlast;
    end
    if (reset) begin
      mst_exec_state <= 2'h0;
    end else if (_T) begin
      mst_exec_state <= 2'h1;
    end else if (_T_1) begin
      if (_T_2) begin
        mst_exec_state <= 2'h2;
      end else begin
        mst_exec_state <= 2'h1;
      end
    end else if (_T_4) begin
      if (tx_done) begin
        mst_exec_state <= 2'h0;
      end else begin
        mst_exec_state <= 2'h2;
      end
    end
    if (reset) begin
      count <= 6'h0;
    end else begin
      count <= _GEN_7[5:0];
    end
    if (reset) begin
      tx_done <= 1'h0;
    end else if (_T_7) begin
      if (tx_en) begin
        tx_done <= 1'h0;
      end else begin
        tx_done <= _GEN_8;
      end
    end
    if (reset) begin
      read_pointer <= 5'h0;
    end else begin
      read_pointer <= _GEN_11[4:0];
    end
  end
endmodule
module AXI_Stream(
  input   clock,
  input   reset,
  output  io_AXIS_TVALID
);
  wire  slave_clock;
  wire  slave_reset;
  wire  slave_io_S_AXIS_TVALID;
  wire  slave_io_S_AXIS_TLAST;
  wire  slave_io_S_AXIS_TREADY;
  wire  master_clock;
  wire  master_reset;
  wire  master_io_M_AXIS_TVALID;
  wire  master_io_M_AXIS_TLAST;
  wire  master_io_M_AXIS_TREADY;
  AXIStreamSlave slave (
    .clock(slave_clock),
    .reset(slave_reset),
    .io_S_AXIS_TVALID(slave_io_S_AXIS_TVALID),
    .io_S_AXIS_TLAST(slave_io_S_AXIS_TLAST),
    .io_S_AXIS_TREADY(slave_io_S_AXIS_TREADY)
  );
  AXIStreamMaster master (
    .clock(master_clock),
    .reset(master_reset),
    .io_M_AXIS_TVALID(master_io_M_AXIS_TVALID),
    .io_M_AXIS_TLAST(master_io_M_AXIS_TLAST),
    .io_M_AXIS_TREADY(master_io_M_AXIS_TREADY)
  );
  assign io_AXIS_TVALID = master_io_M_AXIS_TVALID;
  assign slave_clock = clock;
  assign slave_reset = reset;
  assign slave_io_S_AXIS_TVALID = master_io_M_AXIS_TVALID;
  assign slave_io_S_AXIS_TLAST = master_io_M_AXIS_TLAST;
  assign master_clock = clock;
  assign master_reset = reset;
  assign master_io_M_AXIS_TREADY = slave_io_S_AXIS_TREADY;
endmodule
