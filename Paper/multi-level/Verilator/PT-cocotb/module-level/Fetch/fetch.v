module Queue(
  input          clock,
  input          reset,
  output [6:0]   io_count,
  input          io_enq_valid,
  output         io_enq_ready,
  input  [127:0] io_enq_bits,
  output         io_deq_valid,
  input          io_deq_ready,
  output [127:0] io_deq_bits
);
  reg [127:0] ram [0:127];
  reg [127:0] _RAND_0;
  wire [127:0] ram__T_11_data;
  wire [6:0] ram__T_11_addr;
  wire [127:0] ram__T_1_data;
  wire [6:0] ram__T_1_addr;
  wire  ram__T_1_mask;
  wire  ram__T_1_en;
  wire  do_enq;
  reg [6:0] _T;
  reg [31:0] _RAND_1;
  wire [7:0] _T_2;
  wire  _T_3;
  wire [7:0] _GEN_0;
  wire [7:0] _GEN_6;
  wire  do_deq;
  reg [6:0] _T_4;
  reg [31:0] _RAND_2;
  wire [7:0] _T_5;
  wire  _T_6;
  wire [7:0] _GEN_7;
  wire [7:0] _GEN_8;
  wire  _T_7;
  reg  maybe_full;
  reg [31:0] _RAND_3;
  wire  ptr_match;
  wire  _T_8;
  wire  empty;
  wire  full;
  wire  _T_13;
  wire [7:0] _T_12;
  wire [7:0] ptr_diff;
  wire [7:0] _T_14;
  assign ram__T_11_addr = _T_4;
  assign ram__T_11_data = ram[ram__T_11_addr];
  assign ram__T_1_data = io_enq_bits;
  assign ram__T_1_addr = _T;
  assign ram__T_1_mask = 1'h1;
  assign ram__T_1_en = io_enq_valid & io_enq_ready;
  assign do_enq = io_enq_valid & io_enq_ready;
  assign _T_2 = _T + 7'h1;
  assign _T_3 = _T == 7'h7f;
  assign _GEN_0 = _T_3 ? 8'h0 : _T_2;
  assign _GEN_6 = do_enq ? _GEN_0 : {{1'd0}, _T};
  assign do_deq = io_deq_valid & io_deq_ready;
  assign _T_5 = _T_4 + 7'h1;
  assign _T_6 = _T_4 == 7'h7f;
  assign _GEN_7 = _T_6 ? 8'h0 : _T_5;
  assign _GEN_8 = do_deq ? _GEN_7 : {{1'd0}, _T_4};
  assign _T_7 = do_enq != do_deq;
  assign ptr_match = _T == _T_4;
  assign _T_8 = ~ maybe_full;
  assign empty = ptr_match & _T_8;
  assign full = ptr_match & maybe_full;
  assign _T_13 = maybe_full & ptr_match;
  assign _T_12 = _T_13 ? 8'h80 : 8'h0;
  assign ptr_diff = _T - _T_4;
  assign _T_14 = _T_12 | ptr_diff;
  assign io_count = _T_14[6:0];
  assign io_enq_ready = ~ full;
  assign io_deq_valid = ~ empty;
  assign io_deq_bits = ram__T_11_data;
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
  _RAND_0 = {4{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram[initvar] = _RAND_0[127:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T = _RAND_1[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_4 = _RAND_2[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  maybe_full = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram__T_1_en & ram__T_1_mask) begin
      ram[ram__T_1_addr] <= ram__T_1_data;
    end
    if (reset) begin
      _T <= 7'h0;
    end else begin
      _T <= _GEN_6[6:0];
    end
    if (reset) begin
      _T_4 <= 7'h0;
    end else begin
      _T_4 <= _GEN_8[6:0];
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_7) begin
      maybe_full <= do_enq;
    end
  end
endmodule
module FetchDecode(
  input  [127:0] io_inst,
  output         io_isLoad,
  output         io_isCompute,
  output         io_isStore
);
  wire [127:0] _T;
  wire  _T_1;
  wire  _T_4;
  wire  _T_7;
  wire  _T_10;
  wire [127:0] _T_12;
  wire  _T_13;
  wire  _T_16;
  wire  _T_19;
  wire [127:0] _T_21;
  wire  _T_22;
  wire  _T_25;
  wire  _T_28;
  wire  _T_31;
  wire  _T_26;
  wire  _T_23;
  wire  _T_20;
  wire  _T_17;
  wire  _T_14;
  wire  _T_11;
  wire  _T_8;
  wire  _T_5;
  wire  _T_2;
  wire  cs_val_inst;
  wire [2:0] _T_61;
  wire [2:0] _T_58;
  wire [2:0] _T_55;
  wire [2:0] _T_52;
  wire [2:0] _T_49;
  wire [2:0] _T_46;
  wire [2:0] _T_43;
  wire [2:0] _T_40;
  wire [2:0] _T_37;
  wire [2:0] _T_34;
  wire [2:0] cs_op_type;
  wire  _T_64;
  wire  _T_66;
  wire  _T_68;
  assign _T = io_inst & 128'h187;
  assign _T_1 = _T == 128'h0;
  assign _T_4 = _T == 128'h80;
  assign _T_7 = _T == 128'h100;
  assign _T_10 = _T == 128'h180;
  assign _T_12 = io_inst & 128'h7;
  assign _T_13 = _T_12 == 128'h1;
  assign _T_16 = _T_12 == 128'h2;
  assign _T_19 = _T_12 == 128'h3;
  assign _T_21 = io_inst & 128'h3000000000000000000000000007;
  assign _T_22 = _T_21 == 128'h4;
  assign _T_25 = _T_21 == 128'h1000000000000000000000000004;
  assign _T_28 = _T_21 == 128'h2000000000000000000000000004;
  assign _T_31 = _T_21 == 128'h3000000000000000000000000004;
  assign _T_26 = _T_28 | _T_31;
  assign _T_23 = _T_25 | _T_26;
  assign _T_20 = _T_22 | _T_23;
  assign _T_17 = _T_19 | _T_20;
  assign _T_14 = _T_16 | _T_17;
  assign _T_11 = _T_13 | _T_14;
  assign _T_8 = _T_10 | _T_11;
  assign _T_5 = _T_7 | _T_8;
  assign _T_2 = _T_4 | _T_5;
  assign cs_val_inst = _T_1 | _T_2;
  assign _T_61 = _T_31 ? 3'h2 : 3'h5;
  assign _T_58 = _T_28 ? 3'h2 : _T_61;
  assign _T_55 = _T_25 ? 3'h2 : _T_58;
  assign _T_52 = _T_22 ? 3'h2 : _T_55;
  assign _T_49 = _T_19 ? 3'h2 : _T_52;
  assign _T_46 = _T_16 ? 3'h2 : _T_49;
  assign _T_43 = _T_13 ? 3'h1 : _T_46;
  assign _T_40 = _T_10 ? 3'h2 : _T_43;
  assign _T_37 = _T_7 ? 3'h0 : _T_40;
  assign _T_34 = _T_4 ? 3'h0 : _T_37;
  assign cs_op_type = _T_1 ? 3'h2 : _T_34;
  assign _T_64 = cs_op_type == 3'h0;
  assign _T_66 = cs_op_type == 3'h2;
  assign _T_68 = cs_op_type == 3'h1;
  assign io_isLoad = cs_val_inst & _T_64;
  assign io_isCompute = cs_val_inst & _T_66;
  assign io_isStore = cs_val_inst & _T_68;
endmodule
module Fetch(
  input          clock,
  input          reset,
  input          io_launch,
  input  [31:0]  io_ins_baddr,
  input  [31:0]  io_ins_count,
  output         io_vme_rd_cmd_valid,
  input          io_vme_rd_cmd_ready,
  output [31:0]  io_vme_rd_cmd_bits_addr,
  output [7:0]   io_vme_rd_cmd_bits_len,
  input          io_vme_rd_data_valid,
  output         io_vme_rd_data_ready,
  input  [63:0]  io_vme_rd_data_bits,
  output         io_inst_ld_valid,
  input          io_inst_ld_ready,
  output [127:0] io_inst_ld_bits,
  output         io_inst_co_valid,
  input          io_inst_co_ready,
  output [127:0] io_inst_co_bits,
  output         io_inst_st_valid,
  input          io_inst_st_ready,
  output [127:0] io_inst_st_bits
);
  wire  inst_q_clock;
  wire  inst_q_reset;
  wire [6:0] inst_q_io_count;
  wire  inst_q_io_enq_valid;
  wire  inst_q_io_enq_ready;
  wire [127:0] inst_q_io_enq_bits;
  wire  inst_q_io_deq_valid;
  wire  inst_q_io_deq_ready;
  wire [127:0] inst_q_io_deq_bits;
  wire [127:0] dec_io_inst;
  wire  dec_io_isLoad;
  wire  dec_io_isCompute;
  wire  dec_io_isStore;
  reg  s1_launch;
  reg [31:0] _RAND_0;
  reg  state;
  reg [31:0] _RAND_1;
  wire  _T;
  wire  _T_1;
  wire  pulse;
  wire [32:0] _T_2;
  wire [33:0] xsize;
  reg [7:0] rlen;
  reg [31:0] _RAND_2;
  reg [31:0] xrem;
  reg [31:0] _RAND_3;
  wire [1:0] _GEN_42;
  wire  _T_10;
  wire  _T_11;
  wire  _T_3;
  wire [9:0] _T_5;
  wire [34:0] _T_8;
  wire [31:0] _GEN_2;
  wire  _GEN_3;
  wire [31:0] _GEN_6;
  wire  _GEN_8;
  wire  _T_13;
  wire  _T_14;
  wire  _T_15;
  wire [32:0] _T_20;
  wire [32:0] _GEN_14;
  wire [32:0] _GEN_18;
  wire [32:0] _GEN_22;
  wire [32:0] _GEN_26;
  wire [32:0] _GEN_30;
  wire [32:0] _GEN_34;
  wire [32:0] _GEN_38;
  reg [31:0] raddr;
  reg [31:0] _RAND_4;
  wire [2:0] _GEN_47;
  wire  _T_22;
  wire  _T_24;
  wire  _T_25;
  wire  _T_26;
  wire [32:0] _T_27;
  wire [32:0] _GEN_39;
  wire [32:0] _GEN_40;
  reg [63:0] lsb;
  reg [63:0] _RAND_5;
  wire  _T_32;
  wire  _T_35;
  wire  _T_38;
  wire [2:0] _T_42;
  wire [2:0] deq_sel;
  wire  _T_43;
  wire  _T_45;
  wire  _T_47;
  wire  _T_46;
  wire  _T_44;
  wire  deq_ready;
  wire  _T_48;
  Queue inst_q (
    .clock(inst_q_clock),
    .reset(inst_q_reset),
    .io_count(inst_q_io_count),
    .io_enq_valid(inst_q_io_enq_valid),
    .io_enq_ready(inst_q_io_enq_ready),
    .io_enq_bits(inst_q_io_enq_bits),
    .io_deq_valid(inst_q_io_deq_valid),
    .io_deq_ready(inst_q_io_deq_ready),
    .io_deq_bits(inst_q_io_deq_bits)
  );
  FetchDecode dec (
    .io_inst(dec_io_inst),
    .io_isLoad(dec_io_isLoad),
    .io_isCompute(dec_io_isCompute),
    .io_isStore(dec_io_isStore)
  );
  assign _T = state == 1'h0;
  assign _T_1 = ~ s1_launch;
  assign pulse = io_launch & _T_1;
  assign _T_2 = {io_ins_count, 1'h0};
  assign xsize = _T_2 - 33'h1;
  assign _GEN_42 = {{1'd0}, state};
  assign _T_10 = _GEN_42 == 2'h2;
  assign _T_11 = _GEN_42 == 2'h3;
  assign _T_3 = xsize < 34'h100;
  assign _T_5 = 9'h100 - 9'h1;
  assign _T_8 = xsize - 34'h100;
  assign _GEN_2 = _T_3 ? 32'h0 : _T_8[31:0];
  assign _GEN_3 = pulse | state;
  assign _GEN_6 = pulse ? _GEN_2 : xrem;
  assign _GEN_8 = io_vme_rd_data_valid | state;
  assign _T_13 = inst_q_io_count == 7'h0;
  assign _T_14 = xrem == 32'h0;
  assign _T_15 = xrem < 32'h100;
  assign _T_20 = xrem - 32'h100;
  assign _GEN_14 = _T_15 ? 33'h0 : _T_20;
  assign _GEN_18 = _T_14 ? {{1'd0}, xrem} : _GEN_14;
  assign _GEN_22 = _T_13 ? _GEN_18 : {{1'd0}, xrem};
  assign _GEN_26 = _T_11 ? {{1'd0}, xrem} : _GEN_22;
  assign _GEN_30 = _T_10 ? {{1'd0}, xrem} : _GEN_26;
  assign _GEN_34 = state ? {{1'd0}, xrem} : _GEN_30;
  assign _GEN_38 = _T ? {{1'd0}, _GEN_6} : _GEN_34;
  assign _GEN_47 = {{2'd0}, state};
  assign _T_22 = _GEN_47 == 3'h4;
  assign _T_24 = _T_22 & _T_13;
  assign _T_25 = xrem != 32'h0;
  assign _T_26 = _T_24 & _T_25;
  assign _T_27 = raddr + 32'h800;
  assign _GEN_39 = _T_26 ? _T_27 : {{1'd0}, raddr};
  assign _GEN_40 = _T ? {{1'd0}, io_ins_baddr} : _GEN_39;
  assign _T_32 = dec_io_isLoad & inst_q_io_deq_valid;
  assign _T_35 = dec_io_isCompute & inst_q_io_deq_valid;
  assign _T_38 = dec_io_isStore & inst_q_io_deq_valid;
  assign _T_42 = {dec_io_isCompute,dec_io_isStore,dec_io_isLoad};
  assign deq_sel = $unsigned(_T_42);
  assign _T_43 = 3'h1 == deq_sel;
  assign _T_45 = 3'h2 == deq_sel;
  assign _T_47 = 3'h4 == deq_sel;
  assign _T_46 = _T_47 & io_inst_co_ready;
  assign _T_44 = _T_45 ? io_inst_st_ready : _T_46;
  assign deq_ready = _T_43 ? io_inst_ld_ready : _T_44;
  assign _T_48 = deq_ready & inst_q_io_deq_valid;
  assign io_vme_rd_cmd_valid = state;
  assign io_vme_rd_cmd_bits_addr = raddr;
  assign io_vme_rd_cmd_bits_len = rlen;
  assign io_vme_rd_data_ready = inst_q_io_enq_ready;
  assign io_inst_ld_valid = _T_32 & _T_22;
  assign io_inst_ld_bits = inst_q_io_deq_bits;
  assign io_inst_co_valid = _T_35 & _T_22;
  assign io_inst_co_bits = inst_q_io_deq_bits;
  assign io_inst_st_valid = _T_38 & _T_22;
  assign io_inst_st_bits = inst_q_io_deq_bits;
  assign inst_q_clock = clock;
  assign inst_q_reset = reset;
  assign inst_q_io_enq_valid = io_vme_rd_data_valid & _T_11;
  assign inst_q_io_enq_bits = {io_vme_rd_data_bits,lsb};
  assign inst_q_io_deq_ready = _T_48 & _T_22;
  assign dec_io_inst = inst_q_io_deq_bits;
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
  s1_launch = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  state = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  rlen = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  xrem = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  raddr = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  lsb = _RAND_5[63:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    s1_launch <= io_launch;
    if (reset) begin
      state <= 1'h0;
    end else if (_T) begin
      state <= _GEN_3;
    end else if (state) begin
      if (io_vme_rd_cmd_ready) begin
        state <= 1'h0;
      end
    end else if (_T_10) begin
      state <= _GEN_8;
    end else if (_T_11) begin
      if (io_vme_rd_data_valid) begin
        state <= 1'h0;
      end
    end else if (_T_13) begin
      if (_T_14) begin
        state <= 1'h0;
      end else begin
        state <= 1'h1;
      end
    end
    if (_T) begin
      if (pulse) begin
        if (_T_3) begin
          rlen <= xsize[7:0];
        end else begin
          rlen <= _T_5[7:0];
        end
      end
    end else if (!(state)) begin
      if (!(_T_10)) begin
        if (!(_T_11)) begin
          if (_T_13) begin
            if (!(_T_14)) begin
              if (_T_15) begin
                rlen <= xrem[7:0];
              end else begin
                rlen <= _T_5[7:0];
              end
            end
          end
        end
      end
    end
    xrem <= _GEN_38[31:0];
    raddr <= _GEN_40[31:0];
    if (_T_10) begin
      lsb <= io_vme_rd_data_bits;
    end
  end
endmodule
