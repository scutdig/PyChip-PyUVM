module ALU(
  input         clock,
  input         reset,
  input  [31:0] io_src_a,
  input  [31:0] io_src_b,
  input  [4:0]  io_ALUOp,
  output [31:0] io_sum,
  output        io_conflag
);
  wire  _T_1;
  wire [32:0] _T_2;
  wire  _T_4;
  wire [32:0] _T_5;
  wire  _T_7;
  wire [31:0] _T_8;
  wire  _T_10;
  wire [31:0] _T_11;
  wire  _T_13;
  wire [5:0] shamt;
  wire [31:0] _GEN_0;
  wire [31:0] _T_14;
  wire  _T_16;
  wire [94:0] _GEN_1;
  wire [94:0] _T_17;
  wire  _T_19;
  wire [31:0] _T_20;
  wire  _T_22;
  wire [31:0] _T_23;
  wire [31:0] _T_24;
  wire [31:0] _T_25;
  wire  _T_27;
  wire [31:0] _T_29;
  wire  _T_30;
  wire  _T_32;
  wire  _T_33;
  wire [31:0] _T_31;
  wire [31:0] _T_26;
  wire [31:0] _T_21;
  wire [31:0] _T_18;
  wire [94:0] _T_15;
  wire [94:0] _T_12;
  wire [94:0] _T_9;
  wire [94:0] _T_6;
  wire [94:0] _T_3;
  wire [94:0] _T;
  wire  _T_35;
  wire  _T_38;
  wire  _T_40;
  wire  _T_43;
  wire  _T_45;
  wire  _T_50;
  wire  _T_53;
  wire  _T_55;
  wire  _T_58;
  wire  _T_59;
  wire  _T_57;
  wire  _T_54;
  wire  _T_49;
  wire  _T_44;
  wire  _T_39;
  wire  _T_34;
  assign _T_1 = 5'h0 == io_ALUOp;
  assign _T_2 = io_src_a + io_src_b;
  assign _T_4 = 5'h1 == io_ALUOp;
  assign _T_5 = io_src_a - io_src_b;
  assign _T_7 = 5'h2 == io_ALUOp;
  assign _T_8 = io_src_a & io_src_b;
  assign _T_10 = 5'h3 == io_ALUOp;
  assign _T_11 = io_src_a | io_src_b;
  assign _T_13 = 5'h4 == io_ALUOp;
  assign shamt = io_src_b[5:0];
  assign _GEN_0 = {{26'd0}, shamt};
  assign _T_14 = io_src_a ^ _GEN_0;
  assign _T_16 = 5'h5 == io_ALUOp;
  assign _GEN_1 = {{63'd0}, io_src_a};
  assign _T_17 = _GEN_1 << shamt;
  assign _T_19 = 5'h6 == io_ALUOp;
  assign _T_20 = io_src_a >> shamt;
  assign _T_22 = 5'h7 == io_ALUOp;
  assign _T_23 = $signed(io_src_a);
  assign _T_24 = $signed(_T_23) >>> shamt;
  assign _T_25 = $unsigned(_T_24);
  assign _T_27 = 5'h8 == io_ALUOp;
  assign _T_29 = $signed(io_src_b);
  assign _T_30 = $signed(_T_23) < $signed(_T_29);
  assign _T_32 = 5'h9 == io_ALUOp;
  assign _T_33 = io_src_a < io_src_b;
  assign _T_31 = _T_32 ? {{31'd0}, _T_33} : io_src_b;
  assign _T_26 = _T_27 ? {{31'd0}, _T_30} : _T_31;
  assign _T_21 = _T_22 ? _T_25 : _T_26;
  assign _T_18 = _T_19 ? _T_20 : _T_21;
  assign _T_15 = _T_16 ? _T_17 : {{63'd0}, _T_18};
  assign _T_12 = _T_13 ? {{63'd0}, _T_14} : _T_15;
  assign _T_9 = _T_10 ? {{63'd0}, _T_11} : _T_12;
  assign _T_6 = _T_7 ? {{63'd0}, _T_8} : _T_9;
  assign _T_3 = _T_4 ? {{62'd0}, _T_5} : _T_6;
  assign _T = _T_1 ? {{62'd0}, _T_2} : _T_3;
  assign _T_35 = 5'ha == io_ALUOp;
  assign _T_38 = $signed(_T_23) == $signed(_T_29);
  assign _T_40 = 5'hb == io_ALUOp;
  assign _T_43 = $signed(_T_23) != $signed(_T_29);
  assign _T_45 = 5'hc == io_ALUOp;
  assign _T_50 = 5'hd == io_ALUOp;
  assign _T_53 = $signed(_T_23) >= $signed(_T_29);
  assign _T_55 = 5'he == io_ALUOp;
  assign _T_58 = 5'hf == io_ALUOp;
  assign _T_59 = io_src_a >= io_src_b;
  assign _T_57 = _T_58 & _T_59;
  assign _T_54 = _T_55 ? _T_33 : _T_57;
  assign _T_49 = _T_50 ? _T_53 : _T_54;
  assign _T_44 = _T_45 ? _T_30 : _T_49;
  assign _T_39 = _T_40 ? _T_43 : _T_44;
  assign _T_34 = _T_35 ? _T_38 : _T_39;
  assign io_sum = _T[31:0];
  assign io_conflag = $unsigned(_T_34);
endmodule