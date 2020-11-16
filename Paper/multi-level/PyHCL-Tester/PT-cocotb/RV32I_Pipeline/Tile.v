`timescale 1ns / 1ns

module Datapath(
  input  [31:0] io_if_pc,
  input  [1:0]  io_PC_Sel,
  input  [31:0] io_new_addr,
  input  [31:0] io_pc_recover,
  output [31:0] io_if_new_pc,
  output [31:0] io_if_pc_4,
  input         io_Bubble,
  input         io_Reg_Write,
  input  [2:0]  io_Imm_Sel,
  input         io_ALU_Src,
  input  [4:0]  io_ALUOp,
  input         io_Branch,
  input         io_Branch_Src,
  input         io_Mem_Read,
  input         io_Mem_Write,
  input  [1:0]  io_Data_Size,
  input         io_Load_Type,
  input  [2:0]  io_Mem_to_Reg,
  input         io_Jump_Type,
  input         io_CSR_src,
  input  [2:0]  io_Write_CSR,
  input         io_is_Illegal,
  output        io_id_Reg_Write,
  output [2:0]  io_id_Imm_Sel,
  output        io_id_ALU_Src,
  output [4:0]  io_id_ALUOp,
  output        io_id_Branch,
  output        io_id_Branch_Src,
  output        io_id_Mem_Read,
  output        io_id_Mem_Write,
  output [1:0]  io_id_Data_Size,
  output        io_id_Load_Type,
  output [2:0]  io_id_Mem_to_Reg,
  output        io_id_Jump_Type,
  output        io_id_CSR_src,
  output [2:0]  io_id_Write_CSR,
  output        io_id_is_Illegal,
  input  [31:0] io_ex_rs1_out,
  input  [31:0] io_ex_rs2_out,
  input  [31:0] io_ex_imm,
  input  [31:0] io_ex_pc,
  input         io_ex_ALU_Src,
  input         io_ex_Branch,
  input         io_ex_alu_conflag,
  input         io_ex_Branch_Src,
  input         io_ex_Jump_Type,
  input  [2:0]  io_ex_Imm_Sel,
  input  [1:0]  io_Forward_A,
  input  [1:0]  io_Forward_B,
  output [31:0] io_alu_a_src,
  output [31:0] io_alu_b_src,
  output [31:0] io_ex_aui_pc,
  output [31:0] io_forward_rs2_out,
  output        io_PC_Src,
  output [31:0] io_branch_addr,
  input  [31:0] io_mem_rs2_out,
  input         io_MemWrite_Src,
  input  [2:0]  io_mem_Mem_to_Reg_In,
  input  [31:0] io_mem_alu_sum,
  input  [31:0] io_mem_pc_4,
  input  [31:0] io_mem_imm,
  input  [31:0] io_mem_aui_pc,
  output [31:0] io_mem_writedata,
  input  [31:0] io_wb_alu_sum,
  input  [31:0] io_wb_dataout,
  input  [31:0] io_wb_pc_4,
  input  [31:0] io_wb_imm,
  input  [31:0] io_wb_aui_pc,
  input  [2:0]  io_wb_Mem_to_Reg,
  output [31:0] io_wb_reg_writedata,
  input  [1:0]  io_is_Exception,
  input  [31:0] io_mepc,
  input         io_ex_CSR_src,
  input         io_Exception_Flush,
  output [31:0] io_csr_data_in,
  input         io_ex_Mem_Read,
  input         io_ex_Mem_Write,
  input  [1:0]  io_ex_Data_Size,
  input         io_ex_Load_Type,
  input         io_ex_Reg_Write,
  input  [2:0]  io_ex_Mem_to_Reg,
  output        io_mem_Mem_Read,
  output        io_mem_Mem_Write,
  output [1:0]  io_mem_Data_Size,
  output        io_mem_Load_Type,
  output        io_mem_Reg_Write,
  output [2:0]  io_mem_Mem_to_Reg_Out,
  input  [31:0] io_wb_csr_data_out
);
  wire [32:0] PC_4;
  wire [31:0] _T;
  wire [32:0] _T_2;
  wire  _T_5;
  wire  is_JALR;
  wire [32:0] _T_7;
  wire [32:0] shift_imm;
  wire [32:0] _T_8;
  wire [32:0] _GEN_0;
  wire [33:0] ex_branch_addr;
  wire  _T_9;
  wire  _T_14;
  wire  _T_15;
  wire  _T_17;
  wire  _T_19;
  wire [32:0] _T_18;
  wire [32:0] _T_16;
  wire [32:0] normal_pc;
  wire  _T_21;
  wire  _T_23;
  wire [32:0] _T_22;
  wire [32:0] _T_20;
  wire [32:0] _T_13;
  wire  _T_55;
  wire  _T_57;
  wire  _T_59;
  wire  _T_60;
  wire  _T_62;
  wire  _T_64;
  wire  _T_66;
  wire [31:0] _T_65;
  wire [31:0] _T_63;
  wire [31:0] _T_61;
  wire [31:0] mem_forward_value;
  wire [31:0] _T_58;
  wire [31:0] _T_56;
  wire  _T_69;
  wire  _T_71;
  wire  _T_73;
  wire [31:0] _T_72;
  wire [31:0] _T_70;
  wire [31:0] operand_b;
  wire  _T_91;
  wire  _T_93;
  wire  _T_95;
  wire  _T_97;
  wire  _T_99;
  wire  _T_101;
  wire [31:0] _T_100;
  wire [31:0] _T_98;
  wire [31:0] _T_96;
  wire [31:0] _T_94;
  wire [31:0] _T_92;
  assign PC_4 = io_if_pc + 32'h4;
  assign _T = io_ex_Branch_Src ? io_alu_a_src : io_ex_pc;
  assign _T_2 = _T + io_ex_imm;
  assign _T_5 = io_ex_Imm_Sel == 3'h2;
  assign is_JALR = _T_5 & io_ex_Jump_Type;
  assign _T_7 = {io_ex_imm, 1'h0};
  assign shift_imm = is_JALR ? {{1'd0}, io_ex_imm} : _T_7;
  assign _T_8 = $unsigned(shift_imm);
  assign _GEN_0 = {{1'd0}, _T};
  assign ex_branch_addr = _GEN_0 + _T_8;
  assign _T_9 = io_ex_Jump_Type | io_ex_alu_conflag;
  assign _T_14 = 2'h0 == io_is_Exception;
  assign _T_15 = 2'h0 == io_PC_Sel;
  assign _T_17 = 2'h2 == io_PC_Sel;
  assign _T_19 = 2'h1 == io_PC_Sel;
  assign _T_18 = _T_19 ? {{1'd0}, io_pc_recover} : PC_4;
  assign _T_16 = _T_17 ? {{1'd0}, io_new_addr} : _T_18;
  assign normal_pc = _T_15 ? PC_4 : _T_16;
  assign _T_21 = 2'h1 == io_is_Exception;
  assign _T_23 = 2'h2 == io_is_Exception;
  assign _T_22 = _T_23 ? 33'ha4 : normal_pc;
  assign _T_20 = _T_21 ? {{1'd0}, io_mepc} : _T_22;
  assign _T_13 = _T_14 ? normal_pc : _T_20;
  assign _T_55 = 2'h0 == io_Forward_A;
  assign _T_57 = 2'h1 == io_Forward_A;
  assign _T_59 = 2'h2 == io_Forward_A;
  assign _T_60 = 3'h0 == io_mem_Mem_to_Reg_In;
  assign _T_62 = 3'h2 == io_mem_Mem_to_Reg_In;
  assign _T_64 = 3'h3 == io_mem_Mem_to_Reg_In;
  assign _T_66 = 3'h4 == io_mem_Mem_to_Reg_In;
  assign _T_65 = _T_66 ? io_mem_aui_pc : 32'h0;
  assign _T_63 = _T_64 ? io_mem_imm : _T_65;
  assign _T_61 = _T_62 ? io_mem_pc_4 : _T_63;
  assign mem_forward_value = _T_60 ? io_mem_alu_sum : _T_61;
  assign _T_58 = _T_59 ? mem_forward_value : io_ex_rs1_out;
  assign _T_56 = _T_57 ? io_wb_reg_writedata : _T_58;
  assign _T_69 = 2'h0 == io_Forward_B;
  assign _T_71 = 2'h1 == io_Forward_B;
  assign _T_73 = 2'h2 == io_Forward_B;
  assign _T_72 = _T_73 ? mem_forward_value : io_ex_rs2_out;
  assign _T_70 = _T_71 ? io_wb_reg_writedata : _T_72;
  assign operand_b = _T_69 ? io_ex_rs2_out : _T_70;
  assign _T_91 = 3'h0 == io_wb_Mem_to_Reg;
  assign _T_93 = 3'h1 == io_wb_Mem_to_Reg;
  assign _T_95 = 3'h2 == io_wb_Mem_to_Reg;
  assign _T_97 = 3'h3 == io_wb_Mem_to_Reg;
  assign _T_99 = 3'h4 == io_wb_Mem_to_Reg;
  assign _T_101 = 3'h5 == io_wb_Mem_to_Reg;
  assign _T_100 = _T_101 ? io_wb_csr_data_out : io_wb_alu_sum;
  assign _T_98 = _T_99 ? io_wb_aui_pc : _T_100;
  assign _T_96 = _T_97 ? io_wb_imm : _T_98;
  assign _T_94 = _T_95 ? io_wb_pc_4 : _T_96;
  assign _T_92 = _T_93 ? io_wb_dataout : _T_94;
  assign io_if_new_pc = _T_13[31:0];
  assign io_if_pc_4 = PC_4[31:0];
  assign io_id_Reg_Write = io_Bubble ? 1'h0 : io_Reg_Write;
  assign io_id_Imm_Sel = io_Bubble ? 3'h0 : io_Imm_Sel;
  assign io_id_ALU_Src = io_Bubble ? 1'h0 : io_ALU_Src;
  assign io_id_ALUOp = io_Bubble ? 5'h0 : io_ALUOp;
  assign io_id_Branch = io_Bubble ? 1'h0 : io_Branch;
  assign io_id_Branch_Src = io_Bubble ? 1'h0 : io_Branch_Src;
  assign io_id_Mem_Read = io_Bubble ? 1'h0 : io_Mem_Read;
  assign io_id_Mem_Write = io_Bubble ? 1'h0 : io_Mem_Write;
  assign io_id_Data_Size = io_Bubble ? 2'h0 : io_Data_Size;
  assign io_id_Load_Type = io_Bubble ? 1'h0 : io_Load_Type;
  assign io_id_Mem_to_Reg = io_Bubble ? 3'h0 : io_Mem_to_Reg;
  assign io_id_Jump_Type = io_Bubble ? 1'h0 : io_Jump_Type;
  assign io_id_CSR_src = io_Bubble ? 1'h0 : io_CSR_src;
  assign io_id_Write_CSR = io_Bubble ? 3'h0 : io_Write_CSR;
  assign io_id_is_Illegal = io_Bubble ? 1'h0 : io_is_Illegal;
  assign io_alu_a_src = _T_55 ? io_ex_rs1_out : _T_56;
  assign io_alu_b_src = io_ex_ALU_Src ? io_ex_imm : operand_b;
  assign io_ex_aui_pc = _T_2[31:0];
  assign io_forward_rs2_out = _T_69 ? io_ex_rs2_out : _T_70;
  assign io_PC_Src = _T_9 & io_ex_Branch;
  assign io_branch_addr = ex_branch_addr[31:0];
  assign io_mem_writedata = io_MemWrite_Src ? io_wb_reg_writedata : io_mem_rs2_out;
  assign io_wb_reg_writedata = _T_91 ? io_wb_alu_sum : _T_92;
  assign io_csr_data_in = io_ex_CSR_src ? io_ex_imm : io_alu_a_src;
  assign io_mem_Mem_Read = io_Exception_Flush ? 1'h0 : io_ex_Mem_Read;
  assign io_mem_Mem_Write = io_Exception_Flush ? 1'h0 : io_ex_Mem_Write;
  assign io_mem_Data_Size = io_Exception_Flush ? 2'h0 : io_ex_Data_Size;
  assign io_mem_Load_Type = io_Exception_Flush ? 1'h0 : io_ex_Load_Type;
  assign io_mem_Reg_Write = io_Exception_Flush ? 1'h0 : io_ex_Reg_Write;
  assign io_mem_Mem_to_Reg_Out = io_Exception_Flush ? 3'h0 : io_ex_Mem_to_Reg;
endmodule
module PC(
  input         clock,
  input         reset,
  input  [31:0] io_next_pc,
  input         io_PC_Write,
  output [31:0] io_pc_out
);
  reg [31:0] pc_reg;
  reg [31:0] _RAND_0;
  assign io_pc_out = pc_reg;
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
  pc_reg = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      pc_reg <= 32'h0;
    end else if (io_PC_Write) begin
      pc_reg <= io_next_pc;
    end
  end
endmodule
module AddrBuffer(
  input         clock,
  input  [31:0] io_addr_input,
  input         io_flush,
  input         io_record,
  output [31:0] io_front
);
  reg [1:0] counter [0:2];
  reg [31:0] _RAND_0;
  wire [1:0] counter__T_1_data;
  wire [1:0] counter__T_1_addr;
  reg [31:0] _RAND_1;
  wire [1:0] counter__T_2_data;
  wire [1:0] counter__T_2_addr;
  reg [31:0] _RAND_2;
  wire [1:0] counter__T_5_data;
  wire [1:0] counter__T_5_addr;
  reg [31:0] _RAND_3;
  wire [1:0] counter__T_6_data;
  wire [1:0] counter__T_6_addr;
  reg [31:0] _RAND_4;
  wire [1:0] counter__T_11_data;
  wire [1:0] counter__T_11_addr;
  reg [31:0] _RAND_5;
  wire [1:0] counter__T_12_data;
  wire [1:0] counter__T_12_addr;
  reg [31:0] _RAND_6;
  wire [1:0] counter__T_20_data;
  wire [1:0] counter__T_20_addr;
  reg [31:0] _RAND_7;
  wire [1:0] counter__T_37_data;
  wire [1:0] counter__T_37_addr;
  reg [31:0] _RAND_8;
  wire [1:0] counter__T_49_data;
  wire [1:0] counter__T_49_addr;
  reg [31:0] _RAND_9;
  wire [1:0] counter__T_61_data;
  wire [1:0] counter__T_61_addr;
  reg [31:0] _RAND_10;
  wire [1:0] counter__T_65_data;
  wire [1:0] counter__T_65_addr;
  reg [31:0] _RAND_11;
  wire [1:0] counter__T_67_data;
  wire [1:0] counter__T_67_addr;
  reg [31:0] _RAND_12;
  wire [1:0] counter__T_72_data;
  wire [1:0] counter__T_72_addr;
  reg [31:0] _RAND_13;
  wire [1:0] counter__T_76_data;
  wire [1:0] counter__T_76_addr;
  reg [31:0] _RAND_14;
  wire [1:0] counter__T_78_data;
  wire [1:0] counter__T_78_addr;
  reg [31:0] _RAND_15;
  wire [1:0] counter__T_83_data;
  wire [1:0] counter__T_83_addr;
  reg [31:0] _RAND_16;
  wire [1:0] counter__T_87_data;
  wire [1:0] counter__T_87_addr;
  reg [31:0] _RAND_17;
  wire [1:0] counter__T_89_data;
  wire [1:0] counter__T_89_addr;
  reg [31:0] _RAND_18;
  wire [1:0] counter__T_94_data;
  wire [1:0] counter__T_94_addr;
  reg [31:0] _RAND_19;
  wire [1:0] counter__T_106_data;
  wire [1:0] counter__T_106_addr;
  reg [31:0] _RAND_20;
  wire [1:0] counter__T_118_data;
  wire [1:0] counter__T_118_addr;
  reg [31:0] _RAND_21;
  wire [1:0] counter__T_57_data;
  wire [1:0] counter__T_57_addr;
  wire  counter__T_57_mask;
  wire  counter__T_57_en;
  wire [1:0] counter__T_68_data;
  wire [1:0] counter__T_68_addr;
  wire  counter__T_68_mask;
  wire  counter__T_68_en;
  wire [1:0] counter__T_79_data;
  wire [1:0] counter__T_79_addr;
  wire  counter__T_79_mask;
  wire  counter__T_79_en;
  reg [31:0] buffer [0:2];
  reg [31:0] _RAND_22;
  wire [31:0] buffer__T_8_data;
  wire [1:0] buffer__T_8_addr;
  reg [31:0] _RAND_23;
  wire [31:0] buffer__T_9_data;
  wire [1:0] buffer__T_9_addr;
  reg [31:0] _RAND_24;
  wire [31:0] buffer__T_14_data;
  wire [1:0] buffer__T_14_addr;
  reg [31:0] _RAND_25;
  wire [31:0] buffer__T_15_data;
  wire [1:0] buffer__T_15_addr;
  reg [31:0] _RAND_26;
  wire [31:0] buffer__T_100_data;
  wire [1:0] buffer__T_100_addr;
  reg [31:0] _RAND_27;
  wire [31:0] buffer__T_101_data;
  wire [1:0] buffer__T_101_addr;
  reg [31:0] _RAND_28;
  wire [31:0] buffer__T_112_data;
  wire [1:0] buffer__T_112_addr;
  reg [31:0] _RAND_29;
  wire [31:0] buffer__T_113_data;
  wire [1:0] buffer__T_113_addr;
  reg [31:0] _RAND_30;
  wire [31:0] buffer__T_124_data;
  wire [1:0] buffer__T_124_addr;
  reg [31:0] _RAND_31;
  wire [31:0] buffer__T_125_data;
  wire [1:0] buffer__T_125_addr;
  reg [31:0] _RAND_32;
  wire [31:0] buffer__T_90_data;
  wire [1:0] buffer__T_90_addr;
  wire  buffer__T_90_mask;
  wire  buffer__T_90_en;
  wire [31:0] buffer__T_102_data;
  wire [1:0] buffer__T_102_addr;
  wire  buffer__T_102_mask;
  wire  buffer__T_102_en;
  wire [31:0] buffer__T_114_data;
  wire [1:0] buffer__T_114_addr;
  wire  buffer__T_114_mask;
  wire  buffer__T_114_en;
  reg  is_used [0:2];
  reg [31:0] _RAND_33;
  wire  is_used__T_25_data;
  wire [1:0] is_used__T_25_addr;
  reg [31:0] _RAND_34;
  wire  is_used__T_28_data;
  wire [1:0] is_used__T_28_addr;
  reg [31:0] _RAND_35;
  wire  is_used__T_31_data;
  wire [1:0] is_used__T_31_addr;
  reg [31:0] _RAND_36;
  wire  is_used__T_32_data;
  wire [1:0] is_used__T_32_addr;
  reg [31:0] _RAND_37;
  wire  is_used__T_43_data;
  wire [1:0] is_used__T_43_addr;
  reg [31:0] _RAND_38;
  wire  is_used__T_44_data;
  wire [1:0] is_used__T_44_addr;
  reg [31:0] _RAND_39;
  wire  is_used__T_55_data;
  wire [1:0] is_used__T_55_addr;
  reg [31:0] _RAND_40;
  wire  is_used__T_56_data;
  wire [1:0] is_used__T_56_addr;
  reg [31:0] _RAND_41;
  wire  is_used__T_64_data;
  wire [1:0] is_used__T_64_addr;
  reg [31:0] _RAND_42;
  wire  is_used__T_75_data;
  wire [1:0] is_used__T_75_addr;
  reg [31:0] _RAND_43;
  wire  is_used__T_86_data;
  wire [1:0] is_used__T_86_addr;
  reg [31:0] _RAND_44;
  wire  is_used__T_16_data;
  wire [1:0] is_used__T_16_addr;
  wire  is_used__T_16_mask;
  wire  is_used__T_16_en;
  wire  is_used__T_33_data;
  wire [1:0] is_used__T_33_addr;
  wire  is_used__T_33_mask;
  wire  is_used__T_33_en;
  wire  is_used__T_45_data;
  wire [1:0] is_used__T_45_addr;
  wire  is_used__T_45_mask;
  wire  is_used__T_45_en;
  wire  _T_3;
  wire  _T_7;
  wire [31:0] _T_4;
  wire  _T_13;
  wire [31:0] _T_10;
  wire  _T_21;
  wire  _T_26;
  wire  _T_29;
  wire [1:0] _T_27;
  wire [1:0] write_index;
  wire  _T_30;
  wire  _T_24;
  wire  _T_22;
  wire  _T_19;
  wire  _T_38;
  wire  _T_42;
  wire  _T_41;
  wire  _T_39;
  wire  _T_36;
  wire  _T_50;
  wire  _T_54;
  wire  _T_53;
  wire  _T_51;
  wire  _T_48;
  wire  _T_62;
  wire [2:0] _T_66;
  wire [2:0] _T_63;
  wire [2:0] _T_60;
  wire [2:0] _T_58;
  wire  _T_73;
  wire [2:0] _T_77;
  wire [2:0] _T_74;
  wire [2:0] _T_71;
  wire [2:0] _T_69;
  wire  _T_84;
  wire [2:0] _T_88;
  wire [2:0] _T_85;
  wire [2:0] _T_82;
  wire [2:0] _T_80;
  wire  _T_95;
  wire [31:0] _T_98;
  wire [31:0] _T_96;
  wire [31:0] _T_93;
  wire  _T_107;
  wire [31:0] _T_110;
  wire [31:0] _T_108;
  wire [31:0] _T_105;
  wire  _T_119;
  wire [31:0] _T_122;
  wire [31:0] _T_120;
  wire [31:0] _T_117;
  assign counter__T_1_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_1_data = counter[counter__T_1_addr];
  `else
  assign counter__T_1_data = counter__T_1_addr >= 2'h3 ? _RAND_1[1:0] : counter[counter__T_1_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_2_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_2_data = counter[counter__T_2_addr];
  `else
  assign counter__T_2_data = counter__T_2_addr >= 2'h3 ? _RAND_2[1:0] : counter[counter__T_2_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_5_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_5_data = counter[counter__T_5_addr];
  `else
  assign counter__T_5_data = counter__T_5_addr >= 2'h3 ? _RAND_3[1:0] : counter[counter__T_5_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_6_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_6_data = counter[counter__T_6_addr];
  `else
  assign counter__T_6_data = counter__T_6_addr >= 2'h3 ? _RAND_4[1:0] : counter[counter__T_6_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_11_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_11_data = counter[counter__T_11_addr];
  `else
  assign counter__T_11_data = counter__T_11_addr >= 2'h3 ? _RAND_5[1:0] : counter[counter__T_11_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_12_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_12_data = counter[counter__T_12_addr];
  `else
  assign counter__T_12_data = counter__T_12_addr >= 2'h3 ? _RAND_6[1:0] : counter[counter__T_12_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_20_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_20_data = counter[counter__T_20_addr];
  `else
  assign counter__T_20_data = counter__T_20_addr >= 2'h3 ? _RAND_7[1:0] : counter[counter__T_20_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_37_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_37_data = counter[counter__T_37_addr];
  `else
  assign counter__T_37_data = counter__T_37_addr >= 2'h3 ? _RAND_8[1:0] : counter[counter__T_37_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_49_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_49_data = counter[counter__T_49_addr];
  `else
  assign counter__T_49_data = counter__T_49_addr >= 2'h3 ? _RAND_9[1:0] : counter[counter__T_49_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_61_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_61_data = counter[counter__T_61_addr];
  `else
  assign counter__T_61_data = counter__T_61_addr >= 2'h3 ? _RAND_10[1:0] : counter[counter__T_61_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_65_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_65_data = counter[counter__T_65_addr];
  `else
  assign counter__T_65_data = counter__T_65_addr >= 2'h3 ? _RAND_11[1:0] : counter[counter__T_65_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_67_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_67_data = counter[counter__T_67_addr];
  `else
  assign counter__T_67_data = counter__T_67_addr >= 2'h3 ? _RAND_12[1:0] : counter[counter__T_67_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_72_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_72_data = counter[counter__T_72_addr];
  `else
  assign counter__T_72_data = counter__T_72_addr >= 2'h3 ? _RAND_13[1:0] : counter[counter__T_72_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_76_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_76_data = counter[counter__T_76_addr];
  `else
  assign counter__T_76_data = counter__T_76_addr >= 2'h3 ? _RAND_14[1:0] : counter[counter__T_76_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_78_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_78_data = counter[counter__T_78_addr];
  `else
  assign counter__T_78_data = counter__T_78_addr >= 2'h3 ? _RAND_15[1:0] : counter[counter__T_78_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_83_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_83_data = counter[counter__T_83_addr];
  `else
  assign counter__T_83_data = counter__T_83_addr >= 2'h3 ? _RAND_16[1:0] : counter[counter__T_83_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_87_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_87_data = counter[counter__T_87_addr];
  `else
  assign counter__T_87_data = counter__T_87_addr >= 2'h3 ? _RAND_17[1:0] : counter[counter__T_87_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_89_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_89_data = counter[counter__T_89_addr];
  `else
  assign counter__T_89_data = counter__T_89_addr >= 2'h3 ? _RAND_18[1:0] : counter[counter__T_89_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_94_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_94_data = counter[counter__T_94_addr];
  `else
  assign counter__T_94_data = counter__T_94_addr >= 2'h3 ? _RAND_19[1:0] : counter[counter__T_94_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_106_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_106_data = counter[counter__T_106_addr];
  `else
  assign counter__T_106_data = counter__T_106_addr >= 2'h3 ? _RAND_20[1:0] : counter[counter__T_106_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_118_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_118_data = counter[counter__T_118_addr];
  `else
  assign counter__T_118_data = counter__T_118_addr >= 2'h3 ? _RAND_21[1:0] : counter[counter__T_118_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign counter__T_57_data = _T_58[1:0];
  assign counter__T_57_addr = 2'h0;
  assign counter__T_57_mask = 1'h1;
  assign counter__T_57_en = 1'h1;
  assign counter__T_68_data = _T_69[1:0];
  assign counter__T_68_addr = 2'h1;
  assign counter__T_68_mask = 1'h1;
  assign counter__T_68_en = 1'h1;
  assign counter__T_79_data = _T_80[1:0];
  assign counter__T_79_addr = 2'h2;
  assign counter__T_79_mask = 1'h1;
  assign counter__T_79_en = 1'h1;
  assign buffer__T_8_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_8_data = buffer[buffer__T_8_addr];
  `else
  assign buffer__T_8_data = buffer__T_8_addr >= 2'h3 ? _RAND_23[31:0] : buffer[buffer__T_8_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_9_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_9_data = buffer[buffer__T_9_addr];
  `else
  assign buffer__T_9_data = buffer__T_9_addr >= 2'h3 ? _RAND_24[31:0] : buffer[buffer__T_9_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_14_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_14_data = buffer[buffer__T_14_addr];
  `else
  assign buffer__T_14_data = buffer__T_14_addr >= 2'h3 ? _RAND_25[31:0] : buffer[buffer__T_14_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_15_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_15_data = buffer[buffer__T_15_addr];
  `else
  assign buffer__T_15_data = buffer__T_15_addr >= 2'h3 ? _RAND_26[31:0] : buffer[buffer__T_15_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_100_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_100_data = buffer[buffer__T_100_addr];
  `else
  assign buffer__T_100_data = buffer__T_100_addr >= 2'h3 ? _RAND_27[31:0] : buffer[buffer__T_100_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_101_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_101_data = buffer[buffer__T_101_addr];
  `else
  assign buffer__T_101_data = buffer__T_101_addr >= 2'h3 ? _RAND_28[31:0] : buffer[buffer__T_101_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_112_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_112_data = buffer[buffer__T_112_addr];
  `else
  assign buffer__T_112_data = buffer__T_112_addr >= 2'h3 ? _RAND_29[31:0] : buffer[buffer__T_112_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_113_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_113_data = buffer[buffer__T_113_addr];
  `else
  assign buffer__T_113_data = buffer__T_113_addr >= 2'h3 ? _RAND_30[31:0] : buffer[buffer__T_113_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_124_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_124_data = buffer[buffer__T_124_addr];
  `else
  assign buffer__T_124_data = buffer__T_124_addr >= 2'h3 ? _RAND_31[31:0] : buffer[buffer__T_124_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_125_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_125_data = buffer[buffer__T_125_addr];
  `else
  assign buffer__T_125_data = buffer__T_125_addr >= 2'h3 ? _RAND_32[31:0] : buffer[buffer__T_125_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign buffer__T_90_data = io_flush ? 32'h0 : _T_93;
  assign buffer__T_90_addr = 2'h0;
  assign buffer__T_90_mask = 1'h1;
  assign buffer__T_90_en = 1'h1;
  assign buffer__T_102_data = io_flush ? 32'h0 : _T_105;
  assign buffer__T_102_addr = 2'h1;
  assign buffer__T_102_mask = 1'h1;
  assign buffer__T_102_en = 1'h1;
  assign buffer__T_114_data = io_flush ? 32'h0 : _T_117;
  assign buffer__T_114_addr = 2'h2;
  assign buffer__T_114_mask = 1'h1;
  assign buffer__T_114_en = 1'h1;
  assign is_used__T_25_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_25_data = is_used[is_used__T_25_addr];
  `else
  assign is_used__T_25_data = is_used__T_25_addr >= 2'h3 ? _RAND_34[0:0] : is_used[is_used__T_25_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_28_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_28_data = is_used[is_used__T_28_addr];
  `else
  assign is_used__T_28_data = is_used__T_28_addr >= 2'h3 ? _RAND_35[0:0] : is_used[is_used__T_28_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_31_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_31_data = is_used[is_used__T_31_addr];
  `else
  assign is_used__T_31_data = is_used__T_31_addr >= 2'h3 ? _RAND_36[0:0] : is_used[is_used__T_31_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_32_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_32_data = is_used[is_used__T_32_addr];
  `else
  assign is_used__T_32_data = is_used__T_32_addr >= 2'h3 ? _RAND_37[0:0] : is_used[is_used__T_32_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_43_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_43_data = is_used[is_used__T_43_addr];
  `else
  assign is_used__T_43_data = is_used__T_43_addr >= 2'h3 ? _RAND_38[0:0] : is_used[is_used__T_43_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_44_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_44_data = is_used[is_used__T_44_addr];
  `else
  assign is_used__T_44_data = is_used__T_44_addr >= 2'h3 ? _RAND_39[0:0] : is_used[is_used__T_44_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_55_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_55_data = is_used[is_used__T_55_addr];
  `else
  assign is_used__T_55_data = is_used__T_55_addr >= 2'h3 ? _RAND_40[0:0] : is_used[is_used__T_55_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_56_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_56_data = is_used[is_used__T_56_addr];
  `else
  assign is_used__T_56_data = is_used__T_56_addr >= 2'h3 ? _RAND_41[0:0] : is_used[is_used__T_56_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_64_addr = 2'h0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_64_data = is_used[is_used__T_64_addr];
  `else
  assign is_used__T_64_data = is_used__T_64_addr >= 2'h3 ? _RAND_42[0:0] : is_used[is_used__T_64_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_75_addr = 2'h1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_75_data = is_used[is_used__T_75_addr];
  `else
  assign is_used__T_75_data = is_used__T_75_addr >= 2'h3 ? _RAND_43[0:0] : is_used[is_used__T_75_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_86_addr = 2'h2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_86_data = is_used[is_used__T_86_addr];
  `else
  assign is_used__T_86_data = is_used__T_86_addr >= 2'h3 ? _RAND_44[0:0] : is_used[is_used__T_86_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign is_used__T_16_data = io_flush ? 1'h0 : _T_19;
  assign is_used__T_16_addr = 2'h0;
  assign is_used__T_16_mask = 1'h1;
  assign is_used__T_16_en = 1'h1;
  assign is_used__T_33_data = io_flush ? 1'h0 : _T_36;
  assign is_used__T_33_addr = 2'h1;
  assign is_used__T_33_mask = 1'h1;
  assign is_used__T_33_en = 1'h1;
  assign is_used__T_45_data = io_flush ? 1'h0 : _T_48;
  assign is_used__T_45_addr = 2'h2;
  assign is_used__T_45_mask = 1'h1;
  assign is_used__T_45_en = 1'h1;
  assign _T_3 = counter__T_1_data > counter__T_2_data;
  assign _T_7 = counter__T_5_data > counter__T_6_data;
  assign _T_4 = _T_7 ? buffer__T_8_data : buffer__T_9_data;
  assign _T_13 = counter__T_11_data > counter__T_12_data;
  assign _T_10 = _T_13 ? buffer__T_14_data : buffer__T_15_data;
  assign _T_21 = counter__T_20_data == 2'h2;
  assign _T_26 = is_used__T_25_data == 1'h0;
  assign _T_29 = is_used__T_28_data == 1'h0;
  assign _T_27 = _T_29 ? 2'h1 : 2'h2;
  assign write_index = _T_26 ? 2'h0 : _T_27;
  assign _T_30 = write_index == 2'h0;
  assign _T_24 = _T_30 | is_used__T_31_data;
  assign _T_22 = io_record ? _T_24 : is_used__T_32_data;
  assign _T_19 = _T_21 ? 1'h0 : _T_22;
  assign _T_38 = counter__T_37_data == 2'h2;
  assign _T_42 = write_index == 2'h1;
  assign _T_41 = _T_42 | is_used__T_43_data;
  assign _T_39 = io_record ? _T_41 : is_used__T_44_data;
  assign _T_36 = _T_38 ? 1'h0 : _T_39;
  assign _T_50 = counter__T_49_data == 2'h2;
  assign _T_54 = write_index == 2'h2;
  assign _T_53 = _T_54 | is_used__T_55_data;
  assign _T_51 = io_record ? _T_53 : is_used__T_56_data;
  assign _T_48 = _T_50 ? 1'h0 : _T_51;
  assign _T_62 = counter__T_61_data == 2'h2;
  assign _T_66 = counter__T_65_data + 2'h1;
  assign _T_63 = is_used__T_64_data ? _T_66 : {{1'd0}, counter__T_67_data};
  assign _T_60 = _T_62 ? 3'h0 : _T_63;
  assign _T_58 = io_flush ? 3'h0 : _T_60;
  assign _T_73 = counter__T_72_data == 2'h2;
  assign _T_77 = counter__T_76_data + 2'h1;
  assign _T_74 = is_used__T_75_data ? _T_77 : {{1'd0}, counter__T_78_data};
  assign _T_71 = _T_73 ? 3'h0 : _T_74;
  assign _T_69 = io_flush ? 3'h0 : _T_71;
  assign _T_84 = counter__T_83_data == 2'h2;
  assign _T_88 = counter__T_87_data + 2'h1;
  assign _T_85 = is_used__T_86_data ? _T_88 : {{1'd0}, counter__T_89_data};
  assign _T_82 = _T_84 ? 3'h0 : _T_85;
  assign _T_80 = io_flush ? 3'h0 : _T_82;
  assign _T_95 = counter__T_94_data == 2'h2;
  assign _T_98 = _T_30 ? io_addr_input : buffer__T_100_data;
  assign _T_96 = io_record ? _T_98 : buffer__T_101_data;
  assign _T_93 = _T_95 ? 32'h0 : _T_96;
  assign _T_107 = counter__T_106_data == 2'h2;
  assign _T_110 = _T_42 ? io_addr_input : buffer__T_112_data;
  assign _T_108 = io_record ? _T_110 : buffer__T_113_data;
  assign _T_105 = _T_107 ? 32'h0 : _T_108;
  assign _T_119 = counter__T_118_data == 2'h2;
  assign _T_122 = _T_54 ? io_addr_input : buffer__T_124_data;
  assign _T_120 = io_record ? _T_122 : buffer__T_125_data;
  assign _T_117 = _T_119 ? 32'h0 : _T_120;
  assign io_front = _T_3 ? _T_4 : _T_10;
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    counter[initvar] = _RAND_0[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  _RAND_2 = {1{`RANDOM}};
  _RAND_3 = {1{`RANDOM}};
  _RAND_4 = {1{`RANDOM}};
  _RAND_5 = {1{`RANDOM}};
  _RAND_6 = {1{`RANDOM}};
  _RAND_7 = {1{`RANDOM}};
  _RAND_8 = {1{`RANDOM}};
  _RAND_9 = {1{`RANDOM}};
  _RAND_10 = {1{`RANDOM}};
  _RAND_11 = {1{`RANDOM}};
  _RAND_12 = {1{`RANDOM}};
  _RAND_13 = {1{`RANDOM}};
  _RAND_14 = {1{`RANDOM}};
  _RAND_15 = {1{`RANDOM}};
  _RAND_16 = {1{`RANDOM}};
  _RAND_17 = {1{`RANDOM}};
  _RAND_18 = {1{`RANDOM}};
  _RAND_19 = {1{`RANDOM}};
  _RAND_20 = {1{`RANDOM}};
  _RAND_21 = {1{`RANDOM}};
  _RAND_22 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    buffer[initvar] = _RAND_22[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_23 = {1{`RANDOM}};
  _RAND_24 = {1{`RANDOM}};
  _RAND_25 = {1{`RANDOM}};
  _RAND_26 = {1{`RANDOM}};
  _RAND_27 = {1{`RANDOM}};
  _RAND_28 = {1{`RANDOM}};
  _RAND_29 = {1{`RANDOM}};
  _RAND_30 = {1{`RANDOM}};
  _RAND_31 = {1{`RANDOM}};
  _RAND_32 = {1{`RANDOM}};
  _RAND_33 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    is_used[initvar] = _RAND_33[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_34 = {1{`RANDOM}};
  _RAND_35 = {1{`RANDOM}};
  _RAND_36 = {1{`RANDOM}};
  _RAND_37 = {1{`RANDOM}};
  _RAND_38 = {1{`RANDOM}};
  _RAND_39 = {1{`RANDOM}};
  _RAND_40 = {1{`RANDOM}};
  _RAND_41 = {1{`RANDOM}};
  _RAND_42 = {1{`RANDOM}};
  _RAND_43 = {1{`RANDOM}};
  _RAND_44 = {1{`RANDOM}};
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(counter__T_57_en & counter__T_57_mask) begin
      counter[counter__T_57_addr] <= counter__T_57_data;
    end
    if(counter__T_68_en & counter__T_68_mask) begin
      counter[counter__T_68_addr] <= counter__T_68_data;
    end
    if(counter__T_79_en & counter__T_79_mask) begin
      counter[counter__T_79_addr] <= counter__T_79_data;
    end
    if(buffer__T_90_en & buffer__T_90_mask) begin
      buffer[buffer__T_90_addr] <= buffer__T_90_data;
    end
    if(buffer__T_102_en & buffer__T_102_mask) begin
      buffer[buffer__T_102_addr] <= buffer__T_102_data;
    end
    if(buffer__T_114_en & buffer__T_114_mask) begin
      buffer[buffer__T_114_addr] <= buffer__T_114_data;
    end
    if(is_used__T_16_en & is_used__T_16_mask) begin
      is_used[is_used__T_16_addr] <= is_used__T_16_data;
    end
    if(is_used__T_33_en & is_used__T_33_mask) begin
      is_used[is_used__T_33_addr] <= is_used__T_33_data;
    end
    if(is_used__T_45_en & is_used__T_45_mask) begin
      is_used[is_used__T_45_addr] <= is_used__T_45_data;
    end
  end
endmodule
module BranchPredictor(
  input         clock,
  input         reset,
  input  [31:0] io_inst,
  input  [31:0] io_branch_addr,
  input         io_PC_Src,
  input  [31:0] io_pc,
  input         io_ex_Branch,
  input         io_ex_Jump_Type,
  output [1:0]  io_PC_Sel,
  output [31:0] io_new_addr,
  output [31:0] io_pc_recover,
  output        io_IF_ID_Flush,
  output        io_ID_EX_Flush,
  input  [1:0]  io_is_Exception,
  output        io_is_Waiting_Resolved
);
  wire  addr_buffer_clock;
  wire [31:0] addr_buffer_io_addr_input;
  wire  addr_buffer_io_flush;
  wire  addr_buffer_io_record;
  wire [31:0] addr_buffer_io_front;
  wire [31:0] _T_1;
  wire  _T_2;
  wire  _T_5;
  wire  _T_8;
  wire  _T_11;
  wire  _T_14;
  wire [31:0] _T_16;
  wire  _T_17;
  wire  _T_20;
  wire  _T_23;
  wire  _T_26;
  wire  _T_29;
  wire  _T_32;
  wire  _T_35;
  wire  _T_38;
  wire  _T_41;
  wire  _T_44;
  wire  _T_47;
  wire  _T_50;
  wire  _T_53;
  wire  _T_56;
  wire  _T_59;
  wire  _T_62;
  wire  _T_65;
  wire  _T_68;
  wire  _T_71;
  wire  _T_74;
  wire  _T_77;
  wire  _T_80;
  wire  _T_83;
  wire  _T_86;
  wire  _T_89;
  wire  _T_92;
  wire  _T_95;
  wire  _T_98;
  wire [31:0] _T_100;
  wire  _T_101;
  wire  _T_104;
  wire  _T_99;
  wire  _T_96;
  wire  _T_93;
  wire  _T_90;
  wire  _T_87;
  wire  _T_84;
  wire  _T_81;
  wire  _T_78;
  wire  _T_75;
  wire  _T_72;
  wire  _T_69;
  wire  _T_66;
  wire  _T_63;
  wire  _T_60;
  wire  _T_57;
  wire  _T_54;
  wire  _T_51;
  wire  _T_48;
  wire  _T_45;
  wire  _T_42;
  wire  _T_39;
  wire  _T_36;
  wire  _T_33;
  wire  _T_30;
  wire  _T_27;
  wire  _T_24;
  wire  _T_21;
  wire  _T_18;
  wire  _T_15;
  wire  _T_12;
  wire  _T_9;
  wire  _T_6;
  wire  _T_3;
  wire  _T;
  wire  _T_235;
  wire  _T_232;
  wire  _T_229;
  wire  _T_226;
  wire  _T_223;
  wire  _T_220;
  wire  _T_217;
  wire  _T_214;
  wire  _T_211;
  wire  _T_208;
  wire  _T_205;
  wire  _T_202;
  wire  _T_199;
  wire  _T_196;
  wire  _T_193;
  wire  _T_190;
  wire  _T_187;
  wire  _T_184;
  wire  _T_181;
  wire  _T_178;
  wire  _T_175;
  wire  _T_172;
  wire  _T_169;
  wire  _T_166;
  wire  _T_163;
  wire  _T_160;
  wire  _T_157;
  wire  _T_154;
  wire  _T_151;
  wire  _T_148;
  wire  _T_145;
  wire  _T_142;
  wire  _T_139;
  wire  is_nonconditional_jump;
  wire  _T_279;
  wire  is_conditional_jump;
  wire  _T_280;
  wire  _T_281;
  wire  _T_282;
  reg  wait_for_resolving;
  reg [31:0] _RAND_0;
  wire  noncon_flush;
  wire  _T_286;
  wire  con_addr_is_resolved;
  wire  _T_287;
  wire  _GEN_0;
  wire  _GEN_1;
  reg [1:0] resolving_processed;
  reg [31:0] _RAND_1;
  wire  _T_289;
  wire [2:0] _T_290;
  wire [2:0] _GEN_2;
  wire [2:0] _GEN_3;
  reg [1:0] dynamic_counter_status;
  reg [31:0] _RAND_2;
  wire  _T_295;
  wire  _T_296;
  wire  _T_297;
  wire [32:0] pc_4;
  wire [1:0] _GEN_4;
  wire [1:0] _T_300;
  wire  is_a_jump_also_an_exception;
  wire  _T_304;
  wire  _T_306;
  wire  _T_308;
  wire  _T_310;
  wire [1:0] _T_309;
  wire [1:0] _T_307;
  wire [1:0] _T_305;
  wire [1:0] _T_303;
  wire [1:0] _T_317;
  wire [1:0] _T_315;
  wire [1:0] _T_313;
  wire [1:0] _T_311;
  wire [1:0] _T_301;
  wire [1:0] update_status;
  wire  _T_319;
  wire  _T_320;
  wire  _T_321;
  wire  predict_fail;
  wire [1:0] noncon_PC_Sel;
  wire  _T_324;
  wire  _T_328;
  wire  _T_331;
  wire  _T_332;
  wire  need_recover_pc;
  wire [1:0] _T_325;
  wire [1:0] con_PC_Sel;
  wire [1:0] _T_339;
  wire [1:0] _T_337;
  wire [1:0] _T_335;
  wire [1:0] predict_PC_Sel;
  wire [1:0] _T_333;
  wire [1:0] _T_323;
  wire [31:0] _T_344;
  wire  _T_345;
  wire  _T_346;
  wire [5:0] _T_348;
  wire [3:0] _T_349;
  wire [13:0] _T_352;
  wire [13:0] _T_353;
  wire [31:0] _GEN_5;
  wire [32:0] _T_354;
  wire [32:0] predict_addr;
  wire [32:0] _T_343;
  wire [32:0] _T_342;
  wire [32:0] _T_341;
  AddrBuffer addr_buffer (
    .clock(addr_buffer_clock),
    .io_addr_input(addr_buffer_io_addr_input),
    .io_flush(addr_buffer_io_flush),
    .io_record(addr_buffer_io_record),
    .io_front(addr_buffer_io_front)
  );
  assign _T_1 = io_inst & 32'hfe00707f;
  assign _T_2 = _T_1 == 32'h33;
  assign _T_5 = _T_1 == 32'h40000033;
  assign _T_8 = _T_1 == 32'h7033;
  assign _T_11 = _T_1 == 32'h6033;
  assign _T_14 = _T_1 == 32'h4033;
  assign _T_16 = io_inst & 32'h707f;
  assign _T_17 = _T_16 == 32'h13;
  assign _T_20 = _T_16 == 32'h7013;
  assign _T_23 = _T_16 == 32'h6013;
  assign _T_26 = _T_16 == 32'h4013;
  assign _T_29 = _T_1 == 32'h1033;
  assign _T_32 = _T_1 == 32'h5033;
  assign _T_35 = _T_1 == 32'h40005033;
  assign _T_38 = _T_1 == 32'h1013;
  assign _T_41 = _T_1 == 32'h5013;
  assign _T_44 = _T_1 == 32'h40005013;
  assign _T_47 = _T_1 == 32'h2033;
  assign _T_50 = _T_1 == 32'h3033;
  assign _T_53 = _T_16 == 32'h2013;
  assign _T_56 = _T_16 == 32'h3013;
  assign _T_59 = _T_16 == 32'h2003;
  assign _T_62 = _T_16 == 32'h1003;
  assign _T_65 = _T_16 == 32'h3;
  assign _T_68 = _T_16 == 32'h5003;
  assign _T_71 = _T_16 == 32'h4003;
  assign _T_74 = _T_16 == 32'h2023;
  assign _T_77 = _T_16 == 32'h1023;
  assign _T_80 = _T_16 == 32'h23;
  assign _T_83 = _T_16 == 32'h63;
  assign _T_86 = _T_16 == 32'h1063;
  assign _T_89 = _T_16 == 32'h4063;
  assign _T_92 = _T_16 == 32'h5063;
  assign _T_95 = _T_16 == 32'h6063;
  assign _T_98 = _T_16 == 32'h7063;
  assign _T_100 = io_inst & 32'h7f;
  assign _T_101 = _T_100 == 32'h6f;
  assign _T_104 = _T_16 == 32'h67;
  assign _T_99 = _T_101 | _T_104;
  assign _T_96 = _T_98 | _T_99;
  assign _T_93 = _T_95 | _T_96;
  assign _T_90 = _T_92 | _T_93;
  assign _T_87 = _T_89 | _T_90;
  assign _T_84 = _T_86 | _T_87;
  assign _T_81 = _T_83 | _T_84;
  assign _T_78 = _T_80 ? 1'h0 : _T_81;
  assign _T_75 = _T_77 ? 1'h0 : _T_78;
  assign _T_72 = _T_74 ? 1'h0 : _T_75;
  assign _T_69 = _T_71 ? 1'h0 : _T_72;
  assign _T_66 = _T_68 ? 1'h0 : _T_69;
  assign _T_63 = _T_65 ? 1'h0 : _T_66;
  assign _T_60 = _T_62 ? 1'h0 : _T_63;
  assign _T_57 = _T_59 ? 1'h0 : _T_60;
  assign _T_54 = _T_56 ? 1'h0 : _T_57;
  assign _T_51 = _T_53 ? 1'h0 : _T_54;
  assign _T_48 = _T_50 ? 1'h0 : _T_51;
  assign _T_45 = _T_47 ? 1'h0 : _T_48;
  assign _T_42 = _T_44 ? 1'h0 : _T_45;
  assign _T_39 = _T_41 ? 1'h0 : _T_42;
  assign _T_36 = _T_38 ? 1'h0 : _T_39;
  assign _T_33 = _T_35 ? 1'h0 : _T_36;
  assign _T_30 = _T_32 ? 1'h0 : _T_33;
  assign _T_27 = _T_29 ? 1'h0 : _T_30;
  assign _T_24 = _T_26 ? 1'h0 : _T_27;
  assign _T_21 = _T_23 ? 1'h0 : _T_24;
  assign _T_18 = _T_20 ? 1'h0 : _T_21;
  assign _T_15 = _T_17 ? 1'h0 : _T_18;
  assign _T_12 = _T_14 ? 1'h0 : _T_15;
  assign _T_9 = _T_11 ? 1'h0 : _T_12;
  assign _T_6 = _T_8 ? 1'h0 : _T_9;
  assign _T_3 = _T_5 ? 1'h0 : _T_6;
  assign _T = _T_2 ? 1'h0 : _T_3;
  assign _T_235 = _T_98 ? 1'h0 : _T_99;
  assign _T_232 = _T_95 ? 1'h0 : _T_235;
  assign _T_229 = _T_92 ? 1'h0 : _T_232;
  assign _T_226 = _T_89 ? 1'h0 : _T_229;
  assign _T_223 = _T_86 ? 1'h0 : _T_226;
  assign _T_220 = _T_83 ? 1'h0 : _T_223;
  assign _T_217 = _T_80 ? 1'h0 : _T_220;
  assign _T_214 = _T_77 ? 1'h0 : _T_217;
  assign _T_211 = _T_74 ? 1'h0 : _T_214;
  assign _T_208 = _T_71 ? 1'h0 : _T_211;
  assign _T_205 = _T_68 ? 1'h0 : _T_208;
  assign _T_202 = _T_65 ? 1'h0 : _T_205;
  assign _T_199 = _T_62 ? 1'h0 : _T_202;
  assign _T_196 = _T_59 ? 1'h0 : _T_199;
  assign _T_193 = _T_56 ? 1'h0 : _T_196;
  assign _T_190 = _T_53 ? 1'h0 : _T_193;
  assign _T_187 = _T_50 ? 1'h0 : _T_190;
  assign _T_184 = _T_47 ? 1'h0 : _T_187;
  assign _T_181 = _T_44 ? 1'h0 : _T_184;
  assign _T_178 = _T_41 ? 1'h0 : _T_181;
  assign _T_175 = _T_38 ? 1'h0 : _T_178;
  assign _T_172 = _T_35 ? 1'h0 : _T_175;
  assign _T_169 = _T_32 ? 1'h0 : _T_172;
  assign _T_166 = _T_29 ? 1'h0 : _T_169;
  assign _T_163 = _T_26 ? 1'h0 : _T_166;
  assign _T_160 = _T_23 ? 1'h0 : _T_163;
  assign _T_157 = _T_20 ? 1'h0 : _T_160;
  assign _T_154 = _T_17 ? 1'h0 : _T_157;
  assign _T_151 = _T_14 ? 1'h0 : _T_154;
  assign _T_148 = _T_11 ? 1'h0 : _T_151;
  assign _T_145 = _T_8 ? 1'h0 : _T_148;
  assign _T_142 = _T_5 ? 1'h0 : _T_145;
  assign _T_139 = _T_2 ? 1'h0 : _T_142;
  assign is_nonconditional_jump = _T & _T_139;
  assign _T_279 = _T_139 == 1'h0;
  assign is_conditional_jump = _T & _T_279;
  assign _T_280 = is_nonconditional_jump | is_conditional_jump;
  assign _T_281 = io_is_Exception == 2'h0;
  assign _T_282 = _T_280 & _T_281;
  assign noncon_flush = io_ex_Branch & io_ex_Jump_Type;
  assign _T_286 = io_ex_Jump_Type == 1'h0;
  assign con_addr_is_resolved = io_ex_Branch & _T_286;
  assign _T_287 = noncon_flush | con_addr_is_resolved;
  assign _GEN_0 = _T_287 ? 1'h0 : wait_for_resolving;
  assign _GEN_1 = _T_282 | _GEN_0;
  assign _T_289 = resolving_processed != 2'h0;
  assign _T_290 = resolving_processed - 2'h1;
  assign _GEN_2 = _T_289 ? _T_290 : 3'h0;
  assign _GEN_3 = _T_287 ? 3'h2 : _GEN_2;
  assign _T_295 = dynamic_counter_status == 2'h2;
  assign _T_296 = dynamic_counter_status == 2'h3;
  assign _T_297 = _T_295 | _T_296;
  assign pc_4 = io_pc + 32'h4;
  assign _GEN_4 = {{1'd0}, _T_280};
  assign _T_300 = _GEN_4 & io_is_Exception;
  assign is_a_jump_also_an_exception = _T_300 == 2'h2;
  assign _T_304 = 2'h0 == dynamic_counter_status;
  assign _T_306 = 2'h1 == dynamic_counter_status;
  assign _T_308 = 2'h3 == dynamic_counter_status;
  assign _T_310 = 2'h2 == dynamic_counter_status;
  assign _T_309 = _T_310 ? 2'h2 : dynamic_counter_status;
  assign _T_307 = _T_308 ? 2'h2 : _T_309;
  assign _T_305 = _T_306 ? 2'h3 : _T_307;
  assign _T_303 = _T_304 ? 2'h1 : _T_305;
  assign _T_317 = _T_310 ? 2'h3 : dynamic_counter_status;
  assign _T_315 = _T_308 ? 2'h1 : _T_317;
  assign _T_313 = _T_306 ? 2'h0 : _T_315;
  assign _T_311 = _T_304 ? 2'h0 : _T_313;
  assign _T_301 = io_PC_Src ? _T_303 : _T_311;
  assign update_status = con_addr_is_resolved ? _T_301 : dynamic_counter_status;
  assign _T_319 = update_status == 2'h3;
  assign _T_320 = update_status == 2'h1;
  assign _T_321 = _T_319 | _T_320;
  assign predict_fail = con_addr_is_resolved & _T_321;
  assign noncon_PC_Sel = noncon_flush ? 2'h2 : 2'h0;
  assign _T_324 = con_addr_is_resolved & predict_fail;
  assign _T_328 = _T_319 & _T_295;
  assign _T_331 = _T_320 & _T_296;
  assign _T_332 = _T_328 | _T_331;
  assign need_recover_pc = predict_fail & _T_332;
  assign _T_325 = need_recover_pc ? 2'h1 : 2'h2;
  assign con_PC_Sel = predict_fail ? _T_325 : 2'h0;
  assign _T_339 = _T_310 ? 2'h2 : 2'h0;
  assign _T_337 = _T_308 ? 2'h2 : _T_339;
  assign _T_335 = _T_306 ? 2'h0 : _T_337;
  assign predict_PC_Sel = _T_304 ? 2'h0 : _T_335;
  assign _T_333 = is_conditional_jump ? predict_PC_Sel : 2'h0;
  assign _T_323 = _T_324 ? con_PC_Sel : _T_333;
  assign _T_344 = $signed(io_pc);
  assign _T_345 = io_inst[31];
  assign _T_346 = io_inst[7];
  assign _T_348 = io_inst[30:25];
  assign _T_349 = io_inst[11:8];
  assign _T_352 = {_T_345,_T_346,_T_348,_T_349,2'h0};
  assign _T_353 = $signed(_T_352);
  assign _GEN_5 = {{18{_T_353[13]}},_T_353};
  assign _T_354 = $signed(_T_344) + $signed(_GEN_5);
  assign predict_addr = $unsigned(_T_354);
  assign _T_343 = is_conditional_jump ? predict_addr : 33'h0;
  assign _T_342 = con_addr_is_resolved ? {{1'd0}, io_branch_addr} : _T_343;
  assign _T_341 = noncon_flush ? {{1'd0}, io_branch_addr} : _T_342;
  assign io_PC_Sel = noncon_flush ? noncon_PC_Sel : _T_323;
  assign io_new_addr = _T_341[31:0];
  assign io_pc_recover = addr_buffer_io_front;
  assign io_IF_ID_Flush = noncon_flush | predict_fail;
  assign io_ID_EX_Flush = noncon_flush | predict_fail;
  assign io_is_Waiting_Resolved = wait_for_resolving | _T_289;
  assign addr_buffer_clock = clock;
  assign addr_buffer_io_addr_input = pc_4[31:0];
  assign addr_buffer_io_flush = noncon_flush | predict_fail;
  assign addr_buffer_io_record = is_conditional_jump & _T_297;
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
  wait_for_resolving = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  resolving_processed = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  dynamic_counter_status = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      wait_for_resolving <= 1'h0;
    end else begin
      wait_for_resolving <= _GEN_1;
    end
    if (reset) begin
      resolving_processed <= 2'h0;
    end else begin
      resolving_processed <= _GEN_3[1:0];
    end
    if (reset) begin
      dynamic_counter_status <= 2'h0;
    end else if (!(is_a_jump_also_an_exception)) begin
      if (con_addr_is_resolved) begin
        if (io_PC_Src) begin
          if (_T_304) begin
            dynamic_counter_status <= 2'h1;
          end else if (_T_306) begin
            dynamic_counter_status <= 2'h3;
          end else if (_T_308) begin
            dynamic_counter_status <= 2'h2;
          end else if (_T_310) begin
            dynamic_counter_status <= 2'h2;
          end
        end else if (_T_304) begin
          dynamic_counter_status <= 2'h0;
        end else if (_T_306) begin
          dynamic_counter_status <= 2'h0;
        end else if (_T_308) begin
          dynamic_counter_status <= 2'h1;
        end else if (_T_310) begin
          dynamic_counter_status <= 2'h3;
        end
      end
    end
  end
endmodule
module CSR(
  input         clock,
  input         reset,
  input         io_ex_Mem_Read,
  input         io_ex_Mem_Write,
  input  [31:0] io_ex_branch_addr,
  input  [31:0] io_ex_addr,
  input  [31:0] io_ex_inst,
  input  [31:0] io_csr_data_in,
  input  [31:0] io_ex_pc_4,
  input  [2:0]  io_ex_Write_CSR,
  input         io_ex_is_Illegal,
  input         io_ex_Branch,
  input         io_is_Waiting_Resolved,
  input         io_rsp_valid,
  input  [31:0] io_rsp_rdata,
  output [31:0] io_mepc_out,
  output [31:0] io_csr_data_out,
  output        io_IF_ID_Flush,
  output        io_ID_EX_Flush,
  output [1:0]  io_is_Exception,
  output        io_Exception_Flush
);
  wire  _T_1;
  wire  _T_2;
  wire  _T_3;
  wire  _T_4;
  wire  _T_5;
  wire  _T_6;
  wire  _T_7;
  wire  _T_8;
  wire  _T_9;
  wire  _T_10;
  wire  is_CSR_Instruction;
  wire [11:0] csr_addr;
  wire  _T_12;
  reg [1:0] MPP;
  reg [31:0] _RAND_0;
  reg  MPIE;
  reg [31:0] _RAND_1;
  reg  MIE;
  reg [31:0] _RAND_2;
  wire [31:0] mstatus;
  wire  _T_19;
  reg [31:0] mepc;
  reg [31:0] _RAND_3;
  wire  _T_21;
  wire  _T_23;
  reg [31:0] mtval;
  reg [31:0] _RAND_4;
  wire  _T_25;
  reg  MEIE;
  reg [31:0] _RAND_5;
  reg  MTIE;
  reg [31:0] _RAND_6;
  reg  MSIE;
  reg [31:0] _RAND_7;
  wire [31:0] mie;
  wire  _T_32;
  reg  MEIP;
  reg [31:0] _RAND_8;
  reg  MTIP;
  reg [31:0] _RAND_9;
  reg  MSIP;
  reg [31:0] _RAND_10;
  wire [31:0] mip;
  wire  _T_39;
  reg [31:0] mcause;
  reg [31:0] _RAND_11;
  wire  _T_41;
  reg [31:0] mcycle;
  reg [31:0] _RAND_12;
  wire  _T_43;
  reg [31:0] mcycleh;
  reg [31:0] _RAND_13;
  wire  _T_45;
  reg [31:0] mtime;
  reg [31:0] _RAND_14;
  wire  _T_47;
  reg [31:0] mtimeh;
  reg [31:0] _RAND_15;
  wire  _T_49;
  reg [31:0] minstret;
  reg [31:0] _RAND_16;
  wire  _T_51;
  reg [31:0] minstreth;
  reg [31:0] _RAND_17;
  wire  _T_53;
  reg [31:0] mtimecmp;
  reg [31:0] _RAND_18;
  wire  _T_55;
  reg [31:0] mtimecmph;
  reg [31:0] _RAND_19;
  wire [31:0] _T_54;
  wire [31:0] _T_52;
  wire [31:0] _T_50;
  wire [31:0] _T_48;
  wire [31:0] _T_46;
  wire [31:0] _T_44;
  wire [31:0] _T_42;
  wire [31:0] _T_40;
  wire [31:0] _T_38;
  wire [31:0] _T_31;
  wire [31:0] _T_24;
  wire [31:0] _T_22;
  wire [31:0] _T_20;
  wire [31:0] _T_18;
  reg  biu_rsp_valid;
  reg [31:0] _RAND_20;
  wire  mcycle_overflow;
  wire  mcycleh_overflow;
  wire  _T_57;
  wire [32:0] _T_58;
  wire [32:0] _T_59;
  wire [32:0] _GEN_0;
  wire [32:0] _GEN_1;
  wire [32:0] _GEN_2;
  wire [32:0] _GEN_3;
  wire  mtime_overflow;
  wire  mtimeh_overflow;
  wire  _T_60;
  wire [63:0] _T_61;
  wire [63:0] time_;
  wire [63:0] _T_62;
  wire [63:0] timecmp;
  wire  _T_63;
  wire [31:0] _T_65;
  wire  _T_66;
  wire  InstructionAddressMisaligned_con;
  wire  _T_68;
  wire [31:0] _T_69;
  wire  _T_70;
  wire  LoadAddressMisaligned_con;
  wire  _T_72;
  wire  StoreAddressMisaligned_con;
  wire  is_a_exception;
  wire  _T_76;
  wire  MachineTimerInterrupt_con;
  wire  _T_78;
  wire  ExternalInterrupt_con;
  wire  is_a_interrupt;
  wire  _T_79;
  wire  _T_80;
  wire  _T_81;
  wire  _T_82;
  wire  enable_exception;
  wire  _T_83;
  wire  _T_84;
  wire [32:0] _T_85;
  wire [32:0] _T_86;
  wire [32:0] _GEN_4;
  wire [32:0] _GEN_5;
  wire [32:0] _GEN_6;
  wire [32:0] _GEN_7;
  wire  _T_87;
  wire  _T_88;
  wire  _T_89;
  wire  minstret_overflow;
  wire  minstreth_overflow;
  wire  _T_90;
  wire [32:0] _T_91;
  wire [32:0] _T_92;
  wire [32:0] _GEN_8;
  wire [32:0] _GEN_9;
  wire [32:0] _GEN_10;
  wire [32:0] _GEN_11;
  wire [32:0] _GEN_12;
  wire [32:0] _GEN_13;
  wire  _T_96;
  wire  exception_raise;
  wire  _T_97;
  wire  _T_98;
  wire [1:0] _GEN_15;
  wire [32:0] _T_137;
  wire [32:0] normal_pc;
  wire  _T_161;
  wire  _T_163;
  wire [4:0] _T_164;
  wire [31:0] _T_165;
  wire [31:0] imm_data;
  wire  _T_167;
  wire [31:0] s_val;
  wire  _T_169;
  wire [31:0] si_val;
  wire  _T_171;
  wire [31:0] _T_172;
  wire [31:0] _T_173;
  wire [31:0] c_val;
  wire  _T_175;
  wire [31:0] _T_176;
  wire [31:0] _T_177;
  wire [31:0] ci_val;
  wire [31:0] _T_174;
  wire [31:0] _T_170;
  wire [31:0] _T_168;
  wire [31:0] _T_166;
  wire [31:0] _T_162;
  wire [31:0] csr_write_data;
  wire  _T_157;
  wire  _T_160;
  wire  _T_181;
  wire  _T_182;
  wire  _T_183;
  wire  _T_187;
  wire  _T_191;
  wire  _T_192;
  wire  _T_193;
  wire  _T_194;
  wire  _T_195;
  wire  _T_196;
  wire  _T_178;
  wire  _T_179;
  wire [1:0] _T_180;
  wire  _T_186;
  wire [32:0] _GEN_25;
  wire [32:0] _GEN_28;
  wire [32:0] _GEN_29;
  wire [32:0] _GEN_32;
  wire [32:0] _GEN_33;
  wire [32:0] _GEN_34;
  wire [32:0] _GEN_37;
  wire [32:0] _GEN_38;
  wire [32:0] _GEN_39;
  wire [32:0] _GEN_40;
  wire  _GEN_43;
  wire  _GEN_44;
  wire  _GEN_45;
  wire [32:0] _GEN_46;
  wire [32:0] _GEN_47;
  wire [32:0] _GEN_48;
  wire [32:0] _GEN_49;
  wire  _GEN_55;
  wire  _GEN_56;
  wire  _GEN_57;
  wire [32:0] _GEN_58;
  wire [32:0] _GEN_59;
  wire [32:0] _GEN_60;
  wire [32:0] _GEN_61;
  wire  _GEN_68;
  wire  _GEN_69;
  wire  _GEN_70;
  wire [32:0] _GEN_71;
  wire [32:0] _GEN_72;
  wire [32:0] _GEN_73;
  wire [32:0] _GEN_74;
  wire [31:0] _GEN_77;
  wire  _GEN_82;
  wire  _GEN_83;
  wire  _GEN_84;
  wire [32:0] _GEN_85;
  wire [32:0] _GEN_86;
  wire [32:0] _GEN_87;
  wire [32:0] _GEN_88;
  wire  _GEN_91;
  wire  _GEN_92;
  wire [31:0] _GEN_94;
  wire  _GEN_99;
  wire  _GEN_100;
  wire  _GEN_101;
  wire [32:0] _GEN_102;
  wire [32:0] _GEN_103;
  wire [32:0] _GEN_104;
  wire [32:0] _GEN_105;
  wire  _GEN_108;
  wire  _GEN_109;
  wire [31:0] _GEN_111;
  wire  _GEN_116;
  wire  _GEN_117;
  wire  _GEN_118;
  wire [32:0] _GEN_119;
  wire [32:0] _GEN_120;
  wire [32:0] _GEN_121;
  wire [32:0] _GEN_122;
  wire  _GEN_125;
  wire  _GEN_126;
  wire [31:0] _GEN_128;
  wire  _GEN_133;
  wire  _GEN_134;
  wire  _GEN_135;
  wire [32:0] _GEN_136;
  wire [32:0] _GEN_137;
  wire [32:0] _GEN_138;
  wire [32:0] _GEN_139;
  wire [32:0] _GEN_142;
  wire  _GEN_145;
  wire  _GEN_147;
  wire  _GEN_151;
  wire  _GEN_152;
  wire  _GEN_153;
  wire [32:0] _GEN_154;
  wire [32:0] _GEN_155;
  wire [32:0] _GEN_156;
  wire [32:0] _GEN_157;
  assign _T_1 = io_ex_Write_CSR == 3'h1;
  assign _T_2 = io_ex_Write_CSR == 3'h3;
  assign _T_3 = _T_1 | _T_2;
  assign _T_4 = io_ex_Write_CSR == 3'h5;
  assign _T_5 = _T_3 | _T_4;
  assign _T_6 = io_ex_Write_CSR == 3'h2;
  assign _T_7 = _T_5 | _T_6;
  assign _T_8 = io_ex_Write_CSR == 3'h4;
  assign _T_9 = _T_7 | _T_8;
  assign _T_10 = io_ex_Write_CSR == 3'h6;
  assign is_CSR_Instruction = _T_9 | _T_10;
  assign csr_addr = io_ex_inst[31:20];
  assign _T_12 = 12'h300 == csr_addr;
  assign mstatus = {19'h0,MPP,3'h0,MPIE,3'h0,MIE,3'h0};
  assign _T_19 = 12'h341 == csr_addr;
  assign _T_21 = 12'h305 == csr_addr;
  assign _T_23 = 12'h343 == csr_addr;
  assign _T_25 = 12'h304 == csr_addr;
  assign mie = {20'h0,MEIE,3'h0,MTIE,3'h0,MSIE,3'h0};
  assign _T_32 = 12'h344 == csr_addr;
  assign mip = {20'h0,MEIP,3'h0,MTIP,3'h0,MSIP,3'h0};
  assign _T_39 = 12'h342 == csr_addr;
  assign _T_41 = 12'hb00 == csr_addr;
  assign _T_43 = 12'hb80 == csr_addr;
  assign _T_45 = 12'h700 == csr_addr;
  assign _T_47 = 12'h701 == csr_addr;
  assign _T_49 = 12'hb02 == csr_addr;
  assign _T_51 = 12'hb82 == csr_addr;
  assign _T_53 = 12'h702 == csr_addr;
  assign _T_55 = 12'h703 == csr_addr;
  assign _T_54 = _T_55 ? mtimecmph : 32'h0;
  assign _T_52 = _T_53 ? mtimecmp : _T_54;
  assign _T_50 = _T_51 ? minstreth : _T_52;
  assign _T_48 = _T_49 ? minstret : _T_50;
  assign _T_46 = _T_47 ? mtimeh : _T_48;
  assign _T_44 = _T_45 ? mtime : _T_46;
  assign _T_42 = _T_43 ? mcycleh : _T_44;
  assign _T_40 = _T_41 ? mcycle : _T_42;
  assign _T_38 = _T_39 ? mcause : _T_40;
  assign _T_31 = _T_32 ? mip : _T_38;
  assign _T_24 = _T_25 ? mie : _T_31;
  assign _T_22 = _T_23 ? mtval : _T_24;
  assign _T_20 = _T_21 ? 32'ha4 : _T_22;
  assign _T_18 = _T_19 ? mepc : _T_20;
  assign mcycle_overflow = mcycle == 32'hffffffff;
  assign mcycleh_overflow = mcycleh == 32'hffffffff;
  assign _T_57 = mcycle_overflow & mcycleh_overflow;
  assign _T_58 = mcycleh + 32'h1;
  assign _T_59 = mcycle + 32'h1;
  assign _GEN_0 = mcycle_overflow ? 33'h0 : _T_59;
  assign _GEN_1 = mcycle_overflow ? _T_58 : {{1'd0}, mcycleh};
  assign _GEN_2 = _T_57 ? 33'h0 : _GEN_0;
  assign _GEN_3 = _T_57 ? 33'h0 : _GEN_1;
  assign mtime_overflow = mtime == 32'hffffffff;
  assign mtimeh_overflow = mtimeh == 32'hffffffff;
  assign _T_60 = mtime_overflow & mtimeh_overflow;
  assign _T_61 = {mtimeh,mtime};
  assign time_ = $unsigned(_T_61);
  assign _T_62 = {mtimecmph,mtimecmp};
  assign timecmp = $unsigned(_T_62);
  assign _T_63 = time_ > timecmp;
  assign _T_65 = io_ex_branch_addr & 32'h3;
  assign _T_66 = _T_65 != 32'h0;
  assign InstructionAddressMisaligned_con = _T_66 & io_ex_Branch;
  assign _T_68 = InstructionAddressMisaligned_con | io_ex_is_Illegal;
  assign _T_69 = io_ex_addr & 32'h3;
  assign _T_70 = _T_69 != 32'h0;
  assign LoadAddressMisaligned_con = _T_70 & io_ex_Mem_Read;
  assign _T_72 = _T_68 | LoadAddressMisaligned_con;
  assign StoreAddressMisaligned_con = _T_70 & io_ex_Mem_Write;
  assign is_a_exception = _T_72 | StoreAddressMisaligned_con;
  assign _T_76 = timecmp != 64'h0;
  assign MachineTimerInterrupt_con = _T_76 & _T_63;
  assign _T_78 = ~ biu_rsp_valid;
  assign ExternalInterrupt_con = io_rsp_valid & _T_78;
  assign is_a_interrupt = MachineTimerInterrupt_con | ExternalInterrupt_con;
  assign _T_79 = is_a_interrupt & MTIE;
  assign _T_80 = is_a_exception | _T_79;
  assign _T_81 = MIE & _T_80;
  assign _T_82 = ~ io_is_Waiting_Resolved;
  assign enable_exception = _T_81 & _T_82;
  assign _T_83 = _T_63 & enable_exception;
  assign _T_84 = _T_60 | _T_83;
  assign _T_85 = mtimeh + 32'h1;
  assign _T_86 = mtime + 32'h1;
  assign _GEN_4 = mtime_overflow ? 33'h0 : _T_86;
  assign _GEN_5 = mtime_overflow ? _T_85 : {{1'd0}, mtimeh};
  assign _GEN_6 = _T_84 ? 33'h0 : _GEN_4;
  assign _GEN_7 = _T_84 ? 33'h0 : _GEN_5;
  assign _T_87 = io_ex_inst != 32'h13;
  assign _T_88 = io_ex_inst != 32'h30200073;
  assign _T_89 = _T_87 & _T_88;
  assign minstret_overflow = minstret == 32'hffffffff;
  assign minstreth_overflow = minstreth == 32'hffffffff;
  assign _T_90 = minstret_overflow & minstreth_overflow;
  assign _T_91 = minstreth + 32'h1;
  assign _T_92 = minstret + 32'h1;
  assign _GEN_8 = minstret_overflow ? 33'h0 : _T_92;
  assign _GEN_9 = minstret_overflow ? _T_91 : {{1'd0}, minstreth};
  assign _GEN_10 = _T_90 ? 33'h0 : _GEN_8;
  assign _GEN_11 = _T_90 ? 33'h0 : _GEN_9;
  assign _GEN_12 = _T_89 ? _GEN_10 : {{1'd0}, minstret};
  assign _GEN_13 = _T_89 ? _GEN_11 : {{1'd0}, minstreth};
  assign _T_96 = is_a_exception | MachineTimerInterrupt_con;
  assign exception_raise = _T_96 | ExternalInterrupt_con;
  assign _T_97 = exception_raise & enable_exception;
  assign _T_98 = io_ex_Write_CSR == 3'h7;
  assign _GEN_15 = _T_98 ? 2'h1 : 2'h0;
  assign _T_137 = io_ex_pc_4 - 32'h4;
  assign normal_pc = is_a_exception ? _T_137 : {{1'd0}, io_ex_pc_4};
  assign _T_161 = 3'h1 == io_ex_Write_CSR;
  assign _T_163 = 3'h2 == io_ex_Write_CSR;
  assign _T_164 = io_ex_inst[19:15];
  assign _T_165 = {27'h0,_T_164};
  assign imm_data = $unsigned(_T_165);
  assign _T_167 = 3'h3 == io_ex_Write_CSR;
  assign s_val = io_csr_data_out | io_csr_data_in;
  assign _T_169 = 3'h4 == io_ex_Write_CSR;
  assign si_val = io_csr_data_out | imm_data;
  assign _T_171 = 3'h5 == io_ex_Write_CSR;
  assign _T_172 = ~ io_csr_data_in;
  assign _T_173 = $unsigned(_T_172);
  assign c_val = io_csr_data_out & _T_173;
  assign _T_175 = 3'h6 == io_ex_Write_CSR;
  assign _T_176 = ~ imm_data;
  assign _T_177 = $unsigned(_T_176);
  assign ci_val = io_csr_data_out & _T_177;
  assign _T_174 = _T_175 ? ci_val : 32'h0;
  assign _T_170 = _T_171 ? c_val : _T_174;
  assign _T_168 = _T_169 ? si_val : _T_170;
  assign _T_166 = _T_167 ? s_val : _T_168;
  assign _T_162 = _T_163 ? imm_data : _T_166;
  assign csr_write_data = _T_161 ? io_csr_data_in : _T_162;
  assign _T_157 = LoadAddressMisaligned_con | StoreAddressMisaligned_con;
  assign _T_160 = csr_addr == 12'h300;
  assign _T_181 = csr_addr == 12'h341;
  assign _T_182 = csr_addr == 12'h342;
  assign _T_183 = csr_addr == 12'h344;
  assign _T_187 = csr_addr == 12'h304;
  assign _T_191 = csr_addr == 12'hb00;
  assign _T_192 = csr_addr == 12'hb80;
  assign _T_193 = csr_addr == 12'hb02;
  assign _T_194 = csr_addr == 12'hb82;
  assign _T_195 = csr_addr == 12'h702;
  assign _T_196 = csr_addr == 12'h703;
  assign _T_178 = csr_write_data[3];
  assign _T_179 = csr_write_data[7];
  assign _T_180 = csr_write_data[12:11];
  assign _T_186 = csr_write_data[11];
  assign _GEN_25 = _T_194 ? {{1'd0}, csr_write_data} : _GEN_13;
  assign _GEN_28 = _T_193 ? {{1'd0}, csr_write_data} : _GEN_12;
  assign _GEN_29 = _T_193 ? _GEN_13 : _GEN_25;
  assign _GEN_32 = _T_192 ? {{1'd0}, csr_write_data} : _GEN_3;
  assign _GEN_33 = _T_192 ? _GEN_12 : _GEN_28;
  assign _GEN_34 = _T_192 ? _GEN_13 : _GEN_29;
  assign _GEN_37 = _T_191 ? {{1'd0}, csr_write_data} : _GEN_2;
  assign _GEN_38 = _T_191 ? _GEN_3 : _GEN_32;
  assign _GEN_39 = _T_191 ? _GEN_12 : _GEN_33;
  assign _GEN_40 = _T_191 ? _GEN_13 : _GEN_34;
  assign _GEN_43 = _T_187 ? _T_178 : MSIE;
  assign _GEN_44 = _T_187 ? _T_179 : MTIE;
  assign _GEN_45 = _T_187 ? _T_186 : MEIE;
  assign _GEN_46 = _T_187 ? _GEN_2 : _GEN_37;
  assign _GEN_47 = _T_187 ? _GEN_3 : _GEN_38;
  assign _GEN_48 = _T_187 ? _GEN_12 : _GEN_39;
  assign _GEN_49 = _T_187 ? _GEN_13 : _GEN_40;
  assign _GEN_55 = _T_183 ? MSIE : _GEN_43;
  assign _GEN_56 = _T_183 ? MTIE : _GEN_44;
  assign _GEN_57 = _T_183 ? MEIE : _GEN_45;
  assign _GEN_58 = _T_183 ? _GEN_2 : _GEN_46;
  assign _GEN_59 = _T_183 ? _GEN_3 : _GEN_47;
  assign _GEN_60 = _T_183 ? _GEN_12 : _GEN_48;
  assign _GEN_61 = _T_183 ? _GEN_13 : _GEN_49;
  assign _GEN_68 = _T_182 ? MSIE : _GEN_55;
  assign _GEN_69 = _T_182 ? MTIE : _GEN_56;
  assign _GEN_70 = _T_182 ? MEIE : _GEN_57;
  assign _GEN_71 = _T_182 ? _GEN_2 : _GEN_58;
  assign _GEN_72 = _T_182 ? _GEN_3 : _GEN_59;
  assign _GEN_73 = _T_182 ? _GEN_12 : _GEN_60;
  assign _GEN_74 = _T_182 ? _GEN_13 : _GEN_61;
  assign _GEN_77 = _T_181 ? csr_write_data : mepc;
  assign _GEN_82 = _T_181 ? MSIE : _GEN_68;
  assign _GEN_83 = _T_181 ? MTIE : _GEN_69;
  assign _GEN_84 = _T_181 ? MEIE : _GEN_70;
  assign _GEN_85 = _T_181 ? _GEN_2 : _GEN_71;
  assign _GEN_86 = _T_181 ? _GEN_3 : _GEN_72;
  assign _GEN_87 = _T_181 ? _GEN_12 : _GEN_73;
  assign _GEN_88 = _T_181 ? _GEN_13 : _GEN_74;
  assign _GEN_91 = _T_160 ? _T_178 : MIE;
  assign _GEN_92 = _T_160 ? _T_179 : MPIE;
  assign _GEN_94 = _T_160 ? mepc : _GEN_77;
  assign _GEN_99 = _T_160 ? MSIE : _GEN_82;
  assign _GEN_100 = _T_160 ? MTIE : _GEN_83;
  assign _GEN_101 = _T_160 ? MEIE : _GEN_84;
  assign _GEN_102 = _T_160 ? _GEN_2 : _GEN_85;
  assign _GEN_103 = _T_160 ? _GEN_3 : _GEN_86;
  assign _GEN_104 = _T_160 ? _GEN_12 : _GEN_87;
  assign _GEN_105 = _T_160 ? _GEN_13 : _GEN_88;
  assign _GEN_108 = is_CSR_Instruction ? _GEN_91 : MIE;
  assign _GEN_109 = is_CSR_Instruction ? _GEN_92 : MPIE;
  assign _GEN_111 = is_CSR_Instruction ? _GEN_94 : mepc;
  assign _GEN_116 = is_CSR_Instruction ? _GEN_99 : MSIE;
  assign _GEN_117 = is_CSR_Instruction ? _GEN_100 : MTIE;
  assign _GEN_118 = is_CSR_Instruction ? _GEN_101 : MEIE;
  assign _GEN_119 = is_CSR_Instruction ? _GEN_102 : _GEN_2;
  assign _GEN_120 = is_CSR_Instruction ? _GEN_103 : _GEN_3;
  assign _GEN_121 = is_CSR_Instruction ? _GEN_104 : _GEN_12;
  assign _GEN_122 = is_CSR_Instruction ? _GEN_105 : _GEN_13;
  assign _GEN_125 = _T_98 ? MPIE : _GEN_108;
  assign _GEN_126 = _T_98 | _GEN_109;
  assign _GEN_128 = _T_98 ? mepc : _GEN_111;
  assign _GEN_133 = _T_98 ? MSIE : _GEN_116;
  assign _GEN_134 = _T_98 ? MTIE : _GEN_117;
  assign _GEN_135 = _T_98 ? MEIE : _GEN_118;
  assign _GEN_136 = _T_98 ? _GEN_2 : _GEN_119;
  assign _GEN_137 = _T_98 ? _GEN_3 : _GEN_120;
  assign _GEN_138 = _T_98 ? _GEN_12 : _GEN_121;
  assign _GEN_139 = _T_98 ? _GEN_13 : _GEN_122;
  assign _GEN_142 = _T_97 ? normal_pc : {{1'd0}, _GEN_128};
  assign _GEN_145 = _T_97 ? MIE : _GEN_126;
  assign _GEN_147 = _T_97 ? 1'h0 : _GEN_125;
  assign _GEN_151 = _T_97 ? MSIE : _GEN_133;
  assign _GEN_152 = _T_97 ? MTIE : _GEN_134;
  assign _GEN_153 = _T_97 ? MEIE : _GEN_135;
  assign _GEN_154 = _T_97 ? _GEN_2 : _GEN_136;
  assign _GEN_155 = _T_97 ? _GEN_3 : _GEN_137;
  assign _GEN_156 = _T_97 ? _GEN_12 : _GEN_138;
  assign _GEN_157 = _T_97 ? _GEN_13 : _GEN_139;
  assign io_mepc_out = mepc;
  assign io_csr_data_out = _T_12 ? mstatus : _T_18;
  assign io_IF_ID_Flush = _T_97 | _T_98;
  assign io_ID_EX_Flush = _T_97 | _T_98;
  assign io_is_Exception = _T_97 ? 2'h2 : _GEN_15;
  assign io_Exception_Flush = _T_97 & is_a_exception;
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
  MPP = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  MPIE = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  MIE = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  mepc = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  mtval = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  MEIE = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  MTIE = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  MSIE = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  MEIP = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  MTIP = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  MSIP = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  mcause = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  mcycle = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  mcycleh = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  mtime = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  mtimeh = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  minstret = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  minstreth = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  mtimecmp = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  mtimecmph = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  biu_rsp_valid = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      MPP <= 2'h3;
    end else if (_T_97) begin
      MPP <= 2'h3;
    end else if (_T_98) begin
      MPP <= 2'h3;
    end else if (is_CSR_Instruction) begin
      if (_T_160) begin
        MPP <= _T_180;
      end
    end
    MPIE <= reset | _GEN_145;
    MIE <= reset | _GEN_147;
    if (reset) begin
      mepc <= 32'h0;
    end else begin
      mepc <= _GEN_142[31:0];
    end
    if (reset) begin
      mtval <= 32'h0;
    end else if (_T_97) begin
      if (InstructionAddressMisaligned_con) begin
        mtval <= io_ex_branch_addr;
      end else if (io_ex_is_Illegal) begin
        mtval <= io_ex_inst;
      end else if (_T_157) begin
        mtval <= io_ex_addr;
      end else if (ExternalInterrupt_con) begin
        mtval <= io_rsp_rdata;
      end
    end
    MEIE <= reset | _GEN_153;
    MTIE <= reset | _GEN_152;
    MSIE <= reset | _GEN_151;
    if (reset) begin
      MEIP <= 1'h0;
    end else if (!(_T_97)) begin
      if (!(_T_98)) begin
        if (is_CSR_Instruction) begin
          if (!(_T_160)) begin
            if (!(_T_181)) begin
              if (!(_T_182)) begin
                if (_T_183) begin
                  MEIP <= _T_186;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      MTIP <= 1'h0;
    end else if (!(_T_97)) begin
      if (!(_T_98)) begin
        if (is_CSR_Instruction) begin
          if (!(_T_160)) begin
            if (!(_T_181)) begin
              if (!(_T_182)) begin
                if (_T_183) begin
                  MTIP <= _T_179;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      MSIP <= 1'h0;
    end else if (!(_T_97)) begin
      if (!(_T_98)) begin
        if (is_CSR_Instruction) begin
          if (!(_T_160)) begin
            if (!(_T_181)) begin
              if (!(_T_182)) begin
                if (_T_183) begin
                  MSIP <= _T_178;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      mcause <= 32'h0;
    end else if (_T_97) begin
      if (InstructionAddressMisaligned_con) begin
        mcause <= 32'h0;
      end else if (io_ex_is_Illegal) begin
        mcause <= 32'h2;
      end else if (LoadAddressMisaligned_con) begin
        mcause <= 32'h4;
      end else if (StoreAddressMisaligned_con) begin
        mcause <= 32'h6;
      end else if (MachineTimerInterrupt_con) begin
        mcause <= 32'h7;
      end else if (ExternalInterrupt_con) begin
        mcause <= 32'h8;
      end
    end else if (!(_T_98)) begin
      if (is_CSR_Instruction) begin
        if (!(_T_160)) begin
          if (!(_T_181)) begin
            if (_T_182) begin
              if (_T_161) begin
                mcause <= io_csr_data_in;
              end else if (_T_163) begin
                mcause <= imm_data;
              end else if (_T_167) begin
                mcause <= s_val;
              end else if (_T_169) begin
                mcause <= si_val;
              end else if (_T_171) begin
                mcause <= c_val;
              end else if (_T_175) begin
                mcause <= ci_val;
              end else begin
                mcause <= 32'h0;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      mcycle <= 32'h0;
    end else begin
      mcycle <= _GEN_154[31:0];
    end
    if (reset) begin
      mcycleh <= 32'h0;
    end else begin
      mcycleh <= _GEN_155[31:0];
    end
    if (reset) begin
      mtime <= 32'h0;
    end else begin
      mtime <= _GEN_6[31:0];
    end
    if (reset) begin
      mtimeh <= 32'h0;
    end else begin
      mtimeh <= _GEN_7[31:0];
    end
    if (reset) begin
      minstret <= 32'h0;
    end else begin
      minstret <= _GEN_156[31:0];
    end
    if (reset) begin
      minstreth <= 32'h0;
    end else begin
      minstreth <= _GEN_157[31:0];
    end
    if (reset) begin
      mtimecmp <= 32'h0;
    end else if (!(_T_97)) begin
      if (!(_T_98)) begin
        if (is_CSR_Instruction) begin
          if (!(_T_160)) begin
            if (!(_T_181)) begin
              if (!(_T_182)) begin
                if (!(_T_183)) begin
                  if (!(_T_187)) begin
                    if (!(_T_191)) begin
                      if (!(_T_192)) begin
                        if (!(_T_193)) begin
                          if (!(_T_194)) begin
                            if (_T_195) begin
                              if (_T_161) begin
                                mtimecmp <= io_csr_data_in;
                              end else if (_T_163) begin
                                mtimecmp <= imm_data;
                              end else if (_T_167) begin
                                mtimecmp <= s_val;
                              end else if (_T_169) begin
                                mtimecmp <= si_val;
                              end else if (_T_171) begin
                                mtimecmp <= c_val;
                              end else if (_T_175) begin
                                mtimecmp <= ci_val;
                              end else begin
                                mtimecmp <= 32'h0;
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      mtimecmph <= 32'h0;
    end else if (!(_T_97)) begin
      if (!(_T_98)) begin
        if (is_CSR_Instruction) begin
          if (!(_T_160)) begin
            if (!(_T_181)) begin
              if (!(_T_182)) begin
                if (!(_T_183)) begin
                  if (!(_T_187)) begin
                    if (!(_T_191)) begin
                      if (!(_T_192)) begin
                        if (!(_T_193)) begin
                          if (!(_T_194)) begin
                            if (!(_T_195)) begin
                              if (_T_196) begin
                                if (_T_161) begin
                                  mtimecmph <= io_csr_data_in;
                                end else if (_T_163) begin
                                  mtimecmph <= imm_data;
                                end else if (_T_167) begin
                                  mtimecmph <= s_val;
                                end else if (_T_169) begin
                                  mtimecmph <= si_val;
                                end else if (_T_171) begin
                                  mtimecmph <= c_val;
                                end else if (_T_175) begin
                                  mtimecmph <= ci_val;
                                end else begin
                                  mtimecmph <= 32'h0;
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      biu_rsp_valid <= 1'h0;
    end else begin
      biu_rsp_valid <= io_rsp_valid;
    end
  end
endmodule
module HazardDetection(
  input  [4:0] io_rs1,
  input  [4:0] io_rs2,
  input  [4:0] io_ex_rd,
  input  [2:0] io_Imm_Sel,
  input        io_ex_Mem_Read,
  output       io_Bubble,
  output       io_IF_ID_Write,
  output       io_PC_Write
);
  wire  _T_2;
  wire  _T_3;
  wire  _T_4;
  wire  _T_5;
  wire  _T_6;
  wire  rs1_con;
  wire  _T_8;
  wire  _T_9;
  wire  _T_10;
  wire  _T_11;
  wire  _T_12;
  wire  rs2_con;
  wire  stall_con;
  assign _T_2 = io_Imm_Sel != 3'h5;
  assign _T_3 = io_ex_Mem_Read & _T_2;
  assign _T_4 = io_Imm_Sel != 3'h6;
  assign _T_5 = _T_3 & _T_4;
  assign _T_6 = io_rs1 == io_ex_rd;
  assign rs1_con = _T_5 & _T_6;
  assign _T_8 = io_Imm_Sel == 3'h1;
  assign _T_9 = io_Imm_Sel == 3'h4;
  assign _T_10 = _T_8 | _T_9;
  assign _T_11 = io_ex_Mem_Read & _T_10;
  assign _T_12 = io_rs2 == io_ex_rd;
  assign rs2_con = _T_11 & _T_12;
  assign stall_con = rs1_con | rs2_con;
  assign io_Bubble = rs1_con | rs2_con;
  assign io_IF_ID_Write = stall_con ? 1'h0 : 1'h1;
  assign io_PC_Write = stall_con ? 1'h0 : 1'h1;
endmodule
module InstCache(
  input         clock,
  input  [31:0] io_addr,
  output [31:0] io_inst
);
  reg [7:0] cache [0:4095];
  reg [31:0] _RAND_0;
  wire [7:0] cache__T_data;
  wire [11:0] cache__T_addr;
  wire [7:0] cache__T_2_data;
  wire [11:0] cache__T_2_addr;
  wire [7:0] cache__T_5_data;
  wire [11:0] cache__T_5_addr;
  wire [7:0] cache__T_7_data;
  wire [11:0] cache__T_7_addr;
  wire [32:0] _T_1;
  wire [15:0] _T_3;
  wire [32:0] _T_4;
  wire [32:0] _T_6;
  wire [15:0] _T_8;
  assign cache__T_addr = io_addr[11:0];
  assign cache__T_data = cache[cache__T_addr];
  assign cache__T_2_addr = _T_1[11:0];
  assign cache__T_2_data = cache[cache__T_2_addr];
  assign cache__T_5_addr = _T_4[11:0];
  assign cache__T_5_data = cache[cache__T_5_addr];
  assign cache__T_7_addr = _T_6[11:0];
  assign cache__T_7_data = cache[cache__T_7_addr];
  assign _T_1 = io_addr + 32'h1;
  assign _T_3 = {cache__T_data,cache__T_2_data};
  assign _T_4 = io_addr + 32'h2;
  assign _T_6 = io_addr + 32'h3;
  assign _T_8 = {cache__T_5_data,cache__T_7_data};
  assign io_inst = {_T_3,_T_8};
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4096; initvar = initvar+1)
    cache[initvar] = _RAND_0[7:0];
  `endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
endmodule
module IfIdRegister(
  input         clock,
  input         reset,
  input  [31:0] io_if_pc,
  input  [31:0] io_if_pc_4,
  input  [31:0] io_if_inst,
  output [31:0] io_id_pc,
  output [31:0] io_id_pc_4,
  output [4:0]  io_id_rs1,
  output [4:0]  io_id_rs2,
  output [31:0] io_id_inst,
  input         io_IF_ID_Write,
  input         io_IF_ID_Flush
);
  reg [31:0] pc;
  reg [31:0] _RAND_0;
  reg [31:0] pc_4;
  reg [31:0] _RAND_1;
  reg [31:0] inst;
  reg [31:0] _RAND_2;
  assign io_id_pc = pc;
  assign io_id_pc_4 = pc_4;
  assign io_id_rs1 = inst[19:15];
  assign io_id_rs2 = inst[24:20];
  assign io_id_inst = inst;
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
  pc = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  pc_4 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  inst = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      pc <= 32'h0;
    end else if (io_IF_ID_Flush) begin
      pc <= 32'h0;
    end else if (io_IF_ID_Write) begin
      pc <= io_if_pc;
    end
    if (reset) begin
      pc_4 <= 32'h0;
    end else if (io_IF_ID_Flush) begin
      pc_4 <= 32'h0;
    end else if (io_IF_ID_Write) begin
      pc_4 <= io_if_pc_4;
    end
    if (reset) begin
      inst <= 32'h0;
    end else if (io_IF_ID_Flush) begin
      inst <= 32'h0;
    end else if (io_IF_ID_Write) begin
      inst <= io_if_inst;
    end
  end
endmodule
module RegFile(
  input         clock,
  input  [4:0]  io_rs1,
  input  [4:0]  io_rs2,
  input  [4:0]  io_rd,
  input  [31:0] io_wdata,
  output [31:0] io_rs1_out,
  output [31:0] io_rs2_out,
  input         io_Reg_Write
);
  reg [31:0] regfile [0:31];
  reg [31:0] _RAND_0;
  wire [31:0] regfile__T_3_data;
  wire [4:0] regfile__T_3_addr;
  wire [31:0] regfile__T_7_data;
  wire [4:0] regfile__T_7_addr;
  wire [31:0] regfile__T_13_data;
  wire [4:0] regfile__T_13_addr;
  wire [31:0] regfile__T_8_data;
  wire [4:0] regfile__T_8_addr;
  wire  regfile__T_8_mask;
  wire  regfile__T_8_en;
  wire  _T_2;
  wire  inside_forward_1;
  wire  _T_6;
  wire  inside_forward_2;
  wire  _T_12;
  wire [31:0] _T_11;
  assign regfile__T_3_addr = io_rs1;
  assign regfile__T_3_data = regfile[regfile__T_3_addr];
  assign regfile__T_7_addr = io_rs2;
  assign regfile__T_7_data = regfile[regfile__T_7_addr];
  assign regfile__T_13_addr = io_rd;
  assign regfile__T_13_data = regfile[regfile__T_13_addr];
  assign regfile__T_8_data = io_Reg_Write ? _T_11 : regfile__T_13_data;
  assign regfile__T_8_addr = io_rd;
  assign regfile__T_8_mask = 1'h1;
  assign regfile__T_8_en = 1'h1;
  assign _T_2 = io_rs1 == io_rd;
  assign inside_forward_1 = io_Reg_Write & _T_2;
  assign _T_6 = io_rs2 == io_rd;
  assign inside_forward_2 = io_Reg_Write & _T_6;
  assign _T_12 = io_rd == 5'h0;
  assign _T_11 = _T_12 ? 32'h0 : io_wdata;
  assign io_rs1_out = inside_forward_1 ? io_wdata : regfile__T_3_data;
  assign io_rs2_out = inside_forward_2 ? io_wdata : regfile__T_7_data;
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    regfile[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(regfile__T_8_en & regfile__T_8_mask) begin
      regfile[regfile__T_8_addr] <= regfile__T_8_data;
    end
  end
endmodule
module MemWbRegister(
  input         clock,
  input         reset,
  input  [31:0] io_mem_dataout,
  input  [31:0] io_mem_alu_sum,
  input  [4:0]  io_mem_rd,
  input  [31:0] io_mem_pc_4,
  input  [31:0] io_mem_imm,
  input  [31:0] io_mem_aui_pc,
  input  [31:0] io_mem_csr_data_out,
  input  [2:0]  io_mem_Mem_to_Reg,
  input         io_mem_Reg_Write,
  output [2:0]  io_wb_Mem_to_Reg,
  output        io_wb_Reg_Write,
  output [31:0] io_wb_dataout,
  output [31:0] io_wb_alu_sum,
  output [4:0]  io_wb_rd,
  output [31:0] io_wb_pc_4,
  output [31:0] io_wb_imm,
  output [31:0] io_wb_aui_pc,
  output [31:0] io_wb_csr_data_out
);
  reg [31:0] dataout;
  reg [31:0] _RAND_0;
  reg [31:0] alu_sum;
  reg [31:0] _RAND_1;
  reg [4:0] rd;
  reg [31:0] _RAND_2;
  reg [31:0] pc_4;
  reg [31:0] _RAND_3;
  reg [31:0] imm;
  reg [31:0] _RAND_4;
  reg [31:0] aui_pc;
  reg [31:0] _RAND_5;
  reg [31:0] csr_data_out;
  reg [31:0] _RAND_6;
  reg [2:0] mem_to_reg;
  reg [31:0] _RAND_7;
  reg  reg_write;
  reg [31:0] _RAND_8;
  assign io_wb_Mem_to_Reg = mem_to_reg;
  assign io_wb_Reg_Write = reg_write;
  assign io_wb_dataout = dataout;
  assign io_wb_alu_sum = alu_sum;
  assign io_wb_rd = rd;
  assign io_wb_pc_4 = pc_4;
  assign io_wb_imm = imm;
  assign io_wb_aui_pc = aui_pc;
  assign io_wb_csr_data_out = csr_data_out;
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
  dataout = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  alu_sum = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  rd = _RAND_2[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  pc_4 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  imm = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  aui_pc = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  csr_data_out = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  mem_to_reg = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  reg_write = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      dataout <= 32'h0;
    end else begin
      dataout <= io_mem_dataout;
    end
    if (reset) begin
      alu_sum <= 32'h0;
    end else begin
      alu_sum <= io_mem_alu_sum;
    end
    if (reset) begin
      rd <= 5'h0;
    end else begin
      rd <= io_mem_rd;
    end
    if (reset) begin
      pc_4 <= 32'h0;
    end else begin
      pc_4 <= io_mem_pc_4;
    end
    if (reset) begin
      imm <= 32'h0;
    end else begin
      imm <= io_mem_imm;
    end
    if (reset) begin
      aui_pc <= 32'h0;
    end else begin
      aui_pc <= io_mem_aui_pc;
    end
    if (reset) begin
      csr_data_out <= 32'h0;
    end else begin
      csr_data_out <= io_mem_csr_data_out;
    end
    if (reset) begin
      mem_to_reg <= 3'h0;
    end else begin
      mem_to_reg <= io_mem_Mem_to_Reg;
    end
    if (reset) begin
      reg_write <= 1'h0;
    end else begin
      reg_write <= io_mem_Reg_Write;
    end
  end
endmodule
module ImmGen(
  input  [31:0] io_inst,
  output [31:0] io_imm,
  input  [2:0]  io_Imm_Sel
);
  wire  _T_1;
  wire  _T_3;
  wire [11:0] _T_4;
  wire [11:0] Iimm;
  wire  _T_6;
  wire [6:0] _T_7;
  wire [4:0] _T_8;
  wire [11:0] _T_9;
  wire [11:0] Simm;
  wire  _T_11;
  wire  _T_12;
  wire  _T_13;
  wire [5:0] _T_15;
  wire [3:0] _T_16;
  wire [12:0] _T_19;
  wire [12:0] SBimm;
  wire  _T_21;
  wire [19:0] _T_22;
  wire [31:0] _T_23;
  wire [31:0] Uimm;
  wire  _T_25;
  wire [7:0] _T_27;
  wire  _T_29;
  wire [9:0] _T_30;
  wire [20:0] _T_33;
  wire [20:0] UJimm;
  wire [31:0] _T_24;
  wire [31:0] _T_20;
  wire [31:0] _T_10;
  wire [31:0] _T_5;
  wire [31:0] _T_2;
  wire [31:0] _T;
  assign _T_1 = 3'h1 == io_Imm_Sel;
  assign _T_3 = 3'h2 == io_Imm_Sel;
  assign _T_4 = io_inst[31:20];
  assign Iimm = $signed(_T_4);
  assign _T_6 = 3'h3 == io_Imm_Sel;
  assign _T_7 = io_inst[31:25];
  assign _T_8 = io_inst[11:7];
  assign _T_9 = {_T_7,_T_8};
  assign Simm = $signed(_T_9);
  assign _T_11 = 3'h4 == io_Imm_Sel;
  assign _T_12 = io_inst[31];
  assign _T_13 = io_inst[7];
  assign _T_15 = io_inst[30:25];
  assign _T_16 = io_inst[11:8];
  assign _T_19 = {_T_12,_T_13,_T_15,_T_16,1'h0};
  assign SBimm = $signed(_T_19);
  assign _T_21 = 3'h5 == io_Imm_Sel;
  assign _T_22 = io_inst[31:12];
  assign _T_23 = {_T_22,12'h0};
  assign Uimm = $signed(_T_23);
  assign _T_25 = 3'h6 == io_Imm_Sel;
  assign _T_27 = io_inst[19:12];
  assign _T_29 = io_inst[20];
  assign _T_30 = io_inst[30:21];
  assign _T_33 = {_T_12,_T_27,_T_29,_T_30,1'h0};
  assign UJimm = $signed(_T_33);
  assign _T_24 = _T_25 ? $signed({{11{UJimm[20]}},UJimm}) : $signed(32'sh0);
  assign _T_20 = _T_21 ? $signed(Uimm) : $signed(_T_24);
  assign _T_10 = _T_11 ? $signed({{19{SBimm[12]}},SBimm}) : $signed(_T_20);
  assign _T_5 = _T_6 ? $signed({{20{Simm[11]}},Simm}) : $signed(_T_10);
  assign _T_2 = _T_3 ? $signed({{20{Iimm[11]}},Iimm}) : $signed(_T_5);
  assign _T = _T_1 ? $signed(32'sh0) : $signed(_T_2);
  assign io_imm = $unsigned(_T);
endmodule
module Control(
  input  [31:0] io_inst,
  output        io_Reg_Write,
  output [2:0]  io_Imm_Sel,
  output        io_ALU_Src,
  output [4:0]  io_ALUOp,
  output        io_Branch,
  output        io_Branch_Src,
  output        io_Mem_Read,
  output        io_Mem_Write,
  output [1:0]  io_Data_Size,
  output        io_Load_Type,
  output [2:0]  io_Mem_to_Reg,
  output        io_Jump_Type,
  output        io_CSR_src,
  output [2:0]  io_Write_CSR,
  output        io_is_Illegal
);
  wire [31:0] _T_1;
  wire  _T_2;
  wire  _T_5;
  wire  _T_8;
  wire  _T_11;
  wire  _T_14;
  wire [31:0] _T_16;
  wire  _T_17;
  wire  _T_20;
  wire  _T_23;
  wire  _T_26;
  wire  _T_29;
  wire  _T_32;
  wire  _T_35;
  wire  _T_38;
  wire  _T_41;
  wire  _T_44;
  wire  _T_47;
  wire  _T_50;
  wire  _T_53;
  wire  _T_56;
  wire  _T_59;
  wire  _T_62;
  wire  _T_65;
  wire  _T_68;
  wire  _T_71;
  wire  _T_74;
  wire  _T_77;
  wire  _T_80;
  wire  _T_83;
  wire  _T_86;
  wire  _T_89;
  wire  _T_92;
  wire  _T_95;
  wire  _T_98;
  wire [31:0] _T_100;
  wire  _T_101;
  wire  _T_104;
  wire  _T_107;
  wire  _T_110;
  wire  _T_113;
  wire  _T_116;
  wire  _T_119;
  wire  _T_122;
  wire  _T_125;
  wire  _T_128;
  wire  _T_131;
  wire  _T_134;
  wire  _T_137;
  wire [2:0] _T_129;
  wire [2:0] _T_126;
  wire [2:0] _T_123;
  wire [2:0] _T_120;
  wire [2:0] _T_117;
  wire [2:0] _T_114;
  wire [2:0] _T_111;
  wire [2:0] _T_108;
  wire [2:0] _T_105;
  wire [2:0] _T_102;
  wire [2:0] _T_99;
  wire [2:0] _T_96;
  wire [2:0] _T_93;
  wire [2:0] _T_90;
  wire [2:0] _T_87;
  wire [2:0] _T_84;
  wire [2:0] _T_81;
  wire [2:0] _T_78;
  wire [2:0] _T_75;
  wire [2:0] _T_72;
  wire [2:0] _T_69;
  wire [2:0] _T_66;
  wire [2:0] _T_63;
  wire [2:0] _T_60;
  wire [2:0] _T_57;
  wire [2:0] _T_54;
  wire [2:0] _T_51;
  wire [2:0] _T_48;
  wire [2:0] _T_45;
  wire [2:0] _T_42;
  wire [2:0] _T_39;
  wire [2:0] _T_36;
  wire [2:0] _T_33;
  wire [2:0] _T_30;
  wire [2:0] _T_27;
  wire [2:0] _T_24;
  wire [2:0] _T_21;
  wire [2:0] _T_18;
  wire [2:0] _T_15;
  wire [2:0] _T_12;
  wire [2:0] _T_9;
  wire [2:0] _T_6;
  wire [2:0] _T_3;
  wire  _T_213;
  wire  _T_210;
  wire  _T_207;
  wire  _T_204;
  wire  _T_201;
  wire  _T_198;
  wire  _T_195;
  wire  _T_192;
  wire  _T_189;
  wire  _T_186;
  wire  _T_183;
  wire  _T_180;
  wire  _T_177;
  wire  _T_174;
  wire  _T_171;
  wire  _T_168;
  wire  _T_165;
  wire  _T_162;
  wire  _T_159;
  wire  _T_156;
  wire  _T_153;
  wire  _T_150;
  wire  _T_147;
  wire  _T_144;
  wire  _T_141;
  wire [4:0] _T_384;
  wire [4:0] _T_381;
  wire [4:0] _T_378;
  wire [4:0] _T_375;
  wire [4:0] _T_372;
  wire [4:0] _T_369;
  wire [4:0] _T_366;
  wire [4:0] _T_363;
  wire [4:0] _T_360;
  wire [4:0] _T_357;
  wire [4:0] _T_354;
  wire [4:0] _T_351;
  wire [4:0] _T_348;
  wire [4:0] _T_345;
  wire [4:0] _T_342;
  wire [4:0] _T_339;
  wire [4:0] _T_336;
  wire [4:0] _T_333;
  wire [4:0] _T_330;
  wire [4:0] _T_327;
  wire [4:0] _T_324;
  wire [4:0] _T_321;
  wire [4:0] _T_318;
  wire [4:0] _T_315;
  wire [4:0] _T_312;
  wire [4:0] _T_309;
  wire [4:0] _T_306;
  wire [4:0] _T_303;
  wire [4:0] _T_300;
  wire [4:0] _T_297;
  wire [4:0] _T_294;
  wire [4:0] _T_291;
  wire [4:0] _T_288;
  wire [4:0] _T_285;
  wire [4:0] _T_282;
  wire [4:0] _T_279;
  wire  _T_513;
  wire  _T_510;
  wire  _T_507;
  wire  _T_504;
  wire  _T_501;
  wire  _T_498;
  wire  _T_495;
  wire  _T_492;
  wire  _T_489;
  wire  _T_486;
  wire  _T_483;
  wire  _T_480;
  wire  _T_477;
  wire  _T_474;
  wire  _T_471;
  wire  _T_468;
  wire  _T_465;
  wire  _T_462;
  wire  _T_459;
  wire  _T_456;
  wire  _T_453;
  wire  _T_450;
  wire  _T_447;
  wire  _T_444;
  wire  _T_441;
  wire  _T_438;
  wire  _T_435;
  wire  _T_432;
  wire  _T_429;
  wire  _T_426;
  wire  _T_423;
  wire  _T_420;
  wire  _T_417;
  wire  _T_651;
  wire  _T_648;
  wire  _T_645;
  wire  _T_642;
  wire  _T_639;
  wire  _T_636;
  wire  _T_633;
  wire  _T_630;
  wire  _T_627;
  wire  _T_624;
  wire  _T_621;
  wire  _T_618;
  wire  _T_615;
  wire  _T_612;
  wire  _T_609;
  wire  _T_606;
  wire  _T_603;
  wire  _T_600;
  wire  _T_597;
  wire  _T_594;
  wire  _T_591;
  wire  _T_588;
  wire  _T_585;
  wire  _T_582;
  wire  _T_579;
  wire  _T_576;
  wire  _T_573;
  wire  _T_570;
  wire  _T_567;
  wire  _T_564;
  wire  _T_561;
  wire  _T_558;
  wire  _T_555;
  wire  _T_786;
  wire  _T_783;
  wire  _T_780;
  wire  _T_777;
  wire  _T_774;
  wire  _T_771;
  wire  _T_768;
  wire  _T_765;
  wire  _T_762;
  wire  _T_759;
  wire  _T_756;
  wire  _T_753;
  wire  _T_750;
  wire  _T_747;
  wire  _T_744;
  wire  _T_741;
  wire  _T_738;
  wire  _T_735;
  wire  _T_732;
  wire  _T_729;
  wire  _T_726;
  wire  _T_723;
  wire  _T_720;
  wire  _T_717;
  wire  _T_714;
  wire  _T_711;
  wire  _T_708;
  wire  _T_705;
  wire  _T_702;
  wire  _T_699;
  wire  _T_696;
  wire  _T_693;
  wire  _T_894;
  wire  _T_891;
  wire  _T_888;
  wire  _T_885;
  wire  _T_882;
  wire  _T_879;
  wire  _T_876;
  wire  _T_873;
  wire  _T_870;
  wire  _T_867;
  wire  _T_864;
  wire  _T_861;
  wire  _T_858;
  wire  _T_855;
  wire  _T_852;
  wire  _T_849;
  wire  _T_846;
  wire  _T_843;
  wire  _T_840;
  wire  _T_837;
  wire  _T_834;
  wire  _T_831;
  wire  _T_1035;
  wire  _T_1032;
  wire  _T_1029;
  wire  _T_1026;
  wire  _T_1023;
  wire  _T_1020;
  wire  _T_1017;
  wire  _T_1014;
  wire  _T_1011;
  wire  _T_1008;
  wire  _T_1005;
  wire  _T_1002;
  wire  _T_999;
  wire  _T_996;
  wire  _T_993;
  wire  _T_990;
  wire  _T_987;
  wire  _T_984;
  wire  _T_981;
  wire  _T_978;
  wire  _T_975;
  wire  _T_972;
  wire  _T_969;
  wire [1:0] _T_1182;
  wire [1:0] _T_1179;
  wire [1:0] _T_1176;
  wire [1:0] _T_1173;
  wire [1:0] _T_1170;
  wire [1:0] _T_1167;
  wire [1:0] _T_1164;
  wire [1:0] _T_1161;
  wire [1:0] _T_1158;
  wire [1:0] _T_1155;
  wire [1:0] _T_1152;
  wire [1:0] _T_1149;
  wire [1:0] _T_1146;
  wire [1:0] _T_1143;
  wire [1:0] _T_1140;
  wire [1:0] _T_1137;
  wire [1:0] _T_1134;
  wire [1:0] _T_1131;
  wire [1:0] _T_1128;
  wire [1:0] _T_1125;
  wire [1:0] _T_1122;
  wire [1:0] _T_1119;
  wire [1:0] _T_1116;
  wire [1:0] _T_1113;
  wire [1:0] _T_1110;
  wire [1:0] _T_1107;
  wire  _T_1305;
  wire  _T_1302;
  wire  _T_1299;
  wire  _T_1296;
  wire  _T_1293;
  wire  _T_1290;
  wire  _T_1287;
  wire  _T_1284;
  wire  _T_1281;
  wire  _T_1278;
  wire  _T_1275;
  wire  _T_1272;
  wire  _T_1269;
  wire  _T_1266;
  wire  _T_1263;
  wire  _T_1260;
  wire  _T_1257;
  wire  _T_1254;
  wire  _T_1251;
  wire  _T_1248;
  wire  _T_1245;
  wire  _T_1506;
  wire  _T_1503;
  wire  _T_1500;
  wire  _T_1497;
  wire  _T_1494;
  wire  _T_1491;
  wire  _T_1488;
  wire  _T_1485;
  wire  _T_1482;
  wire  _T_1479;
  wire  _T_1476;
  wire  _T_1473;
  wire  _T_1470;
  wire  _T_1467;
  wire  _T_1464;
  wire  _T_1461;
  wire  _T_1458;
  wire  _T_1455;
  wire  _T_1452;
  wire  _T_1449;
  wire  _T_1446;
  wire  _T_1443;
  wire  _T_1440;
  wire  _T_1437;
  wire  _T_1434;
  wire  _T_1431;
  wire  _T_1428;
  wire  _T_1425;
  wire  _T_1422;
  wire  _T_1419;
  wire  _T_1416;
  wire  _T_1413;
  wire  _T_1410;
  wire  _T_1407;
  wire  _T_1404;
  wire  _T_1401;
  wire  _T_1398;
  wire  _T_1395;
  wire  _T_1392;
  wire  _T_1389;
  wire  _T_1386;
  wire  _T_1383;
  wire [2:0] _T_1650;
  wire [2:0] _T_1647;
  wire [2:0] _T_1644;
  wire [2:0] _T_1641;
  wire [2:0] _T_1638;
  wire [2:0] _T_1635;
  wire [2:0] _T_1632;
  wire [2:0] _T_1629;
  wire [2:0] _T_1626;
  wire [2:0] _T_1623;
  wire [2:0] _T_1620;
  wire [2:0] _T_1617;
  wire [2:0] _T_1614;
  wire [2:0] _T_1611;
  wire [2:0] _T_1608;
  wire [2:0] _T_1605;
  wire [2:0] _T_1602;
  wire [2:0] _T_1599;
  wire [2:0] _T_1596;
  wire [2:0] _T_1593;
  wire [2:0] _T_1590;
  wire [2:0] _T_1587;
  wire [2:0] _T_1584;
  wire [2:0] _T_1581;
  wire [2:0] _T_1578;
  wire [2:0] _T_1575;
  wire [2:0] _T_1572;
  wire [2:0] _T_1569;
  wire [2:0] _T_1566;
  wire [2:0] _T_1563;
  wire [2:0] _T_1560;
  wire [2:0] _T_1557;
  wire [2:0] _T_1554;
  wire [2:0] _T_1551;
  wire [2:0] _T_1548;
  wire [2:0] _T_1545;
  wire [2:0] _T_1542;
  wire [2:0] _T_1539;
  wire [2:0] _T_1536;
  wire [2:0] _T_1533;
  wire [2:0] _T_1530;
  wire [2:0] _T_1527;
  wire [2:0] _T_1524;
  wire [2:0] _T_1521;
  wire  _T_1791;
  wire  _T_1788;
  wire  _T_1785;
  wire  _T_1782;
  wire  _T_1779;
  wire  _T_1776;
  wire  _T_1773;
  wire  _T_1770;
  wire  _T_1767;
  wire  _T_1764;
  wire  _T_1761;
  wire  _T_1758;
  wire  _T_1755;
  wire  _T_1752;
  wire  _T_1749;
  wire  _T_1746;
  wire  _T_1743;
  wire  _T_1740;
  wire  _T_1737;
  wire  _T_1734;
  wire  _T_1731;
  wire  _T_1728;
  wire  _T_1725;
  wire  _T_1722;
  wire  _T_1719;
  wire  _T_1716;
  wire  _T_1713;
  wire  _T_1710;
  wire  _T_1707;
  wire  _T_1704;
  wire  _T_1701;
  wire  _T_1698;
  wire  _T_1695;
  wire  _T_1692;
  wire  _T_1689;
  wire  _T_1686;
  wire  _T_1683;
  wire  _T_1680;
  wire  _T_1677;
  wire  _T_1674;
  wire  _T_1671;
  wire  _T_1668;
  wire  _T_1665;
  wire  _T_1662;
  wire  _T_1659;
  wire  _T_1914;
  wire  _T_1911;
  wire  _T_1908;
  wire  _T_1905;
  wire  _T_1902;
  wire  _T_1899;
  wire  _T_1896;
  wire  _T_1893;
  wire  _T_1890;
  wire  _T_1887;
  wire  _T_1884;
  wire  _T_1881;
  wire  _T_1878;
  wire  _T_1875;
  wire  _T_1872;
  wire  _T_1869;
  wire  _T_1866;
  wire  _T_1863;
  wire  _T_1860;
  wire  _T_1857;
  wire  _T_1854;
  wire  _T_1851;
  wire  _T_1848;
  wire  _T_1845;
  wire  _T_1842;
  wire  _T_1839;
  wire  _T_1836;
  wire  _T_1833;
  wire  _T_1830;
  wire  _T_1827;
  wire  _T_1824;
  wire  _T_1821;
  wire  _T_1818;
  wire  _T_1815;
  wire  _T_1812;
  wire  _T_1809;
  wire  _T_1806;
  wire  _T_1803;
  wire  _T_1800;
  wire  _T_1797;
  wire [2:0] _T_2061;
  wire [2:0] _T_2058;
  wire [2:0] _T_2055;
  wire [2:0] _T_2052;
  wire [2:0] _T_2049;
  wire [2:0] _T_2046;
  wire [2:0] _T_2043;
  wire [2:0] _T_2040;
  wire [2:0] _T_2037;
  wire [2:0] _T_2034;
  wire [2:0] _T_2031;
  wire [2:0] _T_2028;
  wire [2:0] _T_2025;
  wire [2:0] _T_2022;
  wire [2:0] _T_2019;
  wire [2:0] _T_2016;
  wire [2:0] _T_2013;
  wire [2:0] _T_2010;
  wire [2:0] _T_2007;
  wire [2:0] _T_2004;
  wire [2:0] _T_2001;
  wire [2:0] _T_1998;
  wire [2:0] _T_1995;
  wire [2:0] _T_1992;
  wire [2:0] _T_1989;
  wire [2:0] _T_1986;
  wire [2:0] _T_1983;
  wire [2:0] _T_1980;
  wire [2:0] _T_1977;
  wire [2:0] _T_1974;
  wire [2:0] _T_1971;
  wire [2:0] _T_1968;
  wire [2:0] _T_1965;
  wire [2:0] _T_1962;
  wire [2:0] _T_1959;
  wire [2:0] _T_1956;
  wire [2:0] _T_1953;
  wire [2:0] _T_1950;
  wire [2:0] _T_1947;
  wire [2:0] _T_1944;
  wire [2:0] _T_1941;
  wire [2:0] _T_1938;
  wire [2:0] _T_1935;
  assign _T_1 = io_inst & 32'hfe00707f;
  assign _T_2 = _T_1 == 32'h33;
  assign _T_5 = _T_1 == 32'h40000033;
  assign _T_8 = _T_1 == 32'h7033;
  assign _T_11 = _T_1 == 32'h6033;
  assign _T_14 = _T_1 == 32'h4033;
  assign _T_16 = io_inst & 32'h707f;
  assign _T_17 = _T_16 == 32'h13;
  assign _T_20 = _T_16 == 32'h7013;
  assign _T_23 = _T_16 == 32'h6013;
  assign _T_26 = _T_16 == 32'h4013;
  assign _T_29 = _T_1 == 32'h1033;
  assign _T_32 = _T_1 == 32'h5033;
  assign _T_35 = _T_1 == 32'h40005033;
  assign _T_38 = _T_1 == 32'h1013;
  assign _T_41 = _T_1 == 32'h5013;
  assign _T_44 = _T_1 == 32'h40005013;
  assign _T_47 = _T_1 == 32'h2033;
  assign _T_50 = _T_1 == 32'h3033;
  assign _T_53 = _T_16 == 32'h2013;
  assign _T_56 = _T_16 == 32'h3013;
  assign _T_59 = _T_16 == 32'h2003;
  assign _T_62 = _T_16 == 32'h1003;
  assign _T_65 = _T_16 == 32'h3;
  assign _T_68 = _T_16 == 32'h5003;
  assign _T_71 = _T_16 == 32'h4003;
  assign _T_74 = _T_16 == 32'h2023;
  assign _T_77 = _T_16 == 32'h1023;
  assign _T_80 = _T_16 == 32'h23;
  assign _T_83 = _T_16 == 32'h63;
  assign _T_86 = _T_16 == 32'h1063;
  assign _T_89 = _T_16 == 32'h4063;
  assign _T_92 = _T_16 == 32'h5063;
  assign _T_95 = _T_16 == 32'h6063;
  assign _T_98 = _T_16 == 32'h7063;
  assign _T_100 = io_inst & 32'h7f;
  assign _T_101 = _T_100 == 32'h6f;
  assign _T_104 = _T_16 == 32'h67;
  assign _T_107 = _T_100 == 32'h37;
  assign _T_110 = _T_100 == 32'h17;
  assign _T_113 = io_inst == 32'h13;
  assign _T_116 = _T_16 == 32'h1073;
  assign _T_119 = _T_16 == 32'h2073;
  assign _T_122 = _T_16 == 32'h3073;
  assign _T_125 = _T_16 == 32'h5073;
  assign _T_128 = _T_16 == 32'h6073;
  assign _T_131 = _T_16 == 32'h7073;
  assign _T_134 = io_inst == 32'h30200073;
  assign _T_137 = io_inst == 32'h0;
  assign _T_129 = _T_131 ? 3'h2 : 3'h0;
  assign _T_126 = _T_128 ? 3'h2 : _T_129;
  assign _T_123 = _T_125 ? 3'h2 : _T_126;
  assign _T_120 = _T_122 ? 3'h2 : _T_123;
  assign _T_117 = _T_119 ? 3'h2 : _T_120;
  assign _T_114 = _T_116 ? 3'h2 : _T_117;
  assign _T_111 = _T_113 ? 3'h0 : _T_114;
  assign _T_108 = _T_110 ? 3'h5 : _T_111;
  assign _T_105 = _T_107 ? 3'h5 : _T_108;
  assign _T_102 = _T_104 ? 3'h2 : _T_105;
  assign _T_99 = _T_101 ? 3'h6 : _T_102;
  assign _T_96 = _T_98 ? 3'h4 : _T_99;
  assign _T_93 = _T_95 ? 3'h4 : _T_96;
  assign _T_90 = _T_92 ? 3'h4 : _T_93;
  assign _T_87 = _T_89 ? 3'h4 : _T_90;
  assign _T_84 = _T_86 ? 3'h4 : _T_87;
  assign _T_81 = _T_83 ? 3'h4 : _T_84;
  assign _T_78 = _T_80 ? 3'h3 : _T_81;
  assign _T_75 = _T_77 ? 3'h3 : _T_78;
  assign _T_72 = _T_74 ? 3'h3 : _T_75;
  assign _T_69 = _T_71 ? 3'h2 : _T_72;
  assign _T_66 = _T_68 ? 3'h2 : _T_69;
  assign _T_63 = _T_65 ? 3'h2 : _T_66;
  assign _T_60 = _T_62 ? 3'h2 : _T_63;
  assign _T_57 = _T_59 ? 3'h2 : _T_60;
  assign _T_54 = _T_56 ? 3'h2 : _T_57;
  assign _T_51 = _T_53 ? 3'h2 : _T_54;
  assign _T_48 = _T_50 ? 3'h1 : _T_51;
  assign _T_45 = _T_47 ? 3'h1 : _T_48;
  assign _T_42 = _T_44 ? 3'h2 : _T_45;
  assign _T_39 = _T_41 ? 3'h2 : _T_42;
  assign _T_36 = _T_38 ? 3'h2 : _T_39;
  assign _T_33 = _T_35 ? 3'h1 : _T_36;
  assign _T_30 = _T_32 ? 3'h1 : _T_33;
  assign _T_27 = _T_29 ? 3'h1 : _T_30;
  assign _T_24 = _T_26 ? 3'h2 : _T_27;
  assign _T_21 = _T_23 ? 3'h2 : _T_24;
  assign _T_18 = _T_20 ? 3'h2 : _T_21;
  assign _T_15 = _T_17 ? 3'h2 : _T_18;
  assign _T_12 = _T_14 ? 3'h1 : _T_15;
  assign _T_9 = _T_11 ? 3'h1 : _T_12;
  assign _T_6 = _T_8 ? 3'h1 : _T_9;
  assign _T_3 = _T_5 ? 3'h1 : _T_6;
  assign _T_213 = _T_77 | _T_80;
  assign _T_210 = _T_74 | _T_213;
  assign _T_207 = _T_71 | _T_210;
  assign _T_204 = _T_68 | _T_207;
  assign _T_201 = _T_65 | _T_204;
  assign _T_198 = _T_62 | _T_201;
  assign _T_195 = _T_59 | _T_198;
  assign _T_192 = _T_56 | _T_195;
  assign _T_189 = _T_53 | _T_192;
  assign _T_186 = _T_50 ? 1'h0 : _T_189;
  assign _T_183 = _T_47 ? 1'h0 : _T_186;
  assign _T_180 = _T_44 | _T_183;
  assign _T_177 = _T_41 | _T_180;
  assign _T_174 = _T_38 | _T_177;
  assign _T_171 = _T_35 ? 1'h0 : _T_174;
  assign _T_168 = _T_32 ? 1'h0 : _T_171;
  assign _T_165 = _T_29 ? 1'h0 : _T_168;
  assign _T_162 = _T_26 | _T_165;
  assign _T_159 = _T_23 | _T_162;
  assign _T_156 = _T_20 | _T_159;
  assign _T_153 = _T_17 | _T_156;
  assign _T_150 = _T_14 ? 1'h0 : _T_153;
  assign _T_147 = _T_11 ? 1'h0 : _T_150;
  assign _T_144 = _T_8 ? 1'h0 : _T_147;
  assign _T_141 = _T_5 ? 1'h0 : _T_144;
  assign _T_384 = _T_110 ? 5'h0 : 5'h10;
  assign _T_381 = _T_107 ? 5'h0 : _T_384;
  assign _T_378 = _T_104 ? 5'h0 : _T_381;
  assign _T_375 = _T_101 ? 5'h0 : _T_378;
  assign _T_372 = _T_98 ? 5'hf : _T_375;
  assign _T_369 = _T_95 ? 5'he : _T_372;
  assign _T_366 = _T_92 ? 5'hd : _T_369;
  assign _T_363 = _T_89 ? 5'hc : _T_366;
  assign _T_360 = _T_86 ? 5'hb : _T_363;
  assign _T_357 = _T_83 ? 5'ha : _T_360;
  assign _T_354 = _T_80 ? 5'h0 : _T_357;
  assign _T_351 = _T_77 ? 5'h0 : _T_354;
  assign _T_348 = _T_74 ? 5'h0 : _T_351;
  assign _T_345 = _T_71 ? 5'h0 : _T_348;
  assign _T_342 = _T_68 ? 5'h0 : _T_345;
  assign _T_339 = _T_65 ? 5'h0 : _T_342;
  assign _T_336 = _T_62 ? 5'h0 : _T_339;
  assign _T_333 = _T_59 ? 5'h0 : _T_336;
  assign _T_330 = _T_56 ? 5'h9 : _T_333;
  assign _T_327 = _T_53 ? 5'h8 : _T_330;
  assign _T_324 = _T_50 ? 5'h9 : _T_327;
  assign _T_321 = _T_47 ? 5'h8 : _T_324;
  assign _T_318 = _T_44 ? 5'h7 : _T_321;
  assign _T_315 = _T_41 ? 5'h6 : _T_318;
  assign _T_312 = _T_38 ? 5'h5 : _T_315;
  assign _T_309 = _T_35 ? 5'h7 : _T_312;
  assign _T_306 = _T_32 ? 5'h6 : _T_309;
  assign _T_303 = _T_29 ? 5'h5 : _T_306;
  assign _T_300 = _T_26 ? 5'h4 : _T_303;
  assign _T_297 = _T_23 ? 5'h3 : _T_300;
  assign _T_294 = _T_20 ? 5'h2 : _T_297;
  assign _T_291 = _T_17 ? 5'h0 : _T_294;
  assign _T_288 = _T_14 ? 5'h4 : _T_291;
  assign _T_285 = _T_11 ? 5'h3 : _T_288;
  assign _T_282 = _T_8 ? 5'h2 : _T_285;
  assign _T_279 = _T_5 ? 5'h1 : _T_282;
  assign _T_513 = _T_101 | _T_104;
  assign _T_510 = _T_98 | _T_513;
  assign _T_507 = _T_95 | _T_510;
  assign _T_504 = _T_92 | _T_507;
  assign _T_501 = _T_89 | _T_504;
  assign _T_498 = _T_86 | _T_501;
  assign _T_495 = _T_83 | _T_498;
  assign _T_492 = _T_80 ? 1'h0 : _T_495;
  assign _T_489 = _T_77 ? 1'h0 : _T_492;
  assign _T_486 = _T_74 ? 1'h0 : _T_489;
  assign _T_483 = _T_71 ? 1'h0 : _T_486;
  assign _T_480 = _T_68 ? 1'h0 : _T_483;
  assign _T_477 = _T_65 ? 1'h0 : _T_480;
  assign _T_474 = _T_62 ? 1'h0 : _T_477;
  assign _T_471 = _T_59 ? 1'h0 : _T_474;
  assign _T_468 = _T_56 ? 1'h0 : _T_471;
  assign _T_465 = _T_53 ? 1'h0 : _T_468;
  assign _T_462 = _T_50 ? 1'h0 : _T_465;
  assign _T_459 = _T_47 ? 1'h0 : _T_462;
  assign _T_456 = _T_44 ? 1'h0 : _T_459;
  assign _T_453 = _T_41 ? 1'h0 : _T_456;
  assign _T_450 = _T_38 ? 1'h0 : _T_453;
  assign _T_447 = _T_35 ? 1'h0 : _T_450;
  assign _T_444 = _T_32 ? 1'h0 : _T_447;
  assign _T_441 = _T_29 ? 1'h0 : _T_444;
  assign _T_438 = _T_26 ? 1'h0 : _T_441;
  assign _T_435 = _T_23 ? 1'h0 : _T_438;
  assign _T_432 = _T_20 ? 1'h0 : _T_435;
  assign _T_429 = _T_17 ? 1'h0 : _T_432;
  assign _T_426 = _T_14 ? 1'h0 : _T_429;
  assign _T_423 = _T_11 ? 1'h0 : _T_426;
  assign _T_420 = _T_8 ? 1'h0 : _T_423;
  assign _T_417 = _T_5 ? 1'h0 : _T_420;
  assign _T_651 = _T_101 ? 1'h0 : _T_104;
  assign _T_648 = _T_98 ? 1'h0 : _T_651;
  assign _T_645 = _T_95 ? 1'h0 : _T_648;
  assign _T_642 = _T_92 ? 1'h0 : _T_645;
  assign _T_639 = _T_89 ? 1'h0 : _T_642;
  assign _T_636 = _T_86 ? 1'h0 : _T_639;
  assign _T_633 = _T_83 ? 1'h0 : _T_636;
  assign _T_630 = _T_80 ? 1'h0 : _T_633;
  assign _T_627 = _T_77 ? 1'h0 : _T_630;
  assign _T_624 = _T_74 ? 1'h0 : _T_627;
  assign _T_621 = _T_71 ? 1'h0 : _T_624;
  assign _T_618 = _T_68 ? 1'h0 : _T_621;
  assign _T_615 = _T_65 ? 1'h0 : _T_618;
  assign _T_612 = _T_62 ? 1'h0 : _T_615;
  assign _T_609 = _T_59 ? 1'h0 : _T_612;
  assign _T_606 = _T_56 ? 1'h0 : _T_609;
  assign _T_603 = _T_53 ? 1'h0 : _T_606;
  assign _T_600 = _T_50 ? 1'h0 : _T_603;
  assign _T_597 = _T_47 ? 1'h0 : _T_600;
  assign _T_594 = _T_44 ? 1'h0 : _T_597;
  assign _T_591 = _T_41 ? 1'h0 : _T_594;
  assign _T_588 = _T_38 ? 1'h0 : _T_591;
  assign _T_585 = _T_35 ? 1'h0 : _T_588;
  assign _T_582 = _T_32 ? 1'h0 : _T_585;
  assign _T_579 = _T_29 ? 1'h0 : _T_582;
  assign _T_576 = _T_26 ? 1'h0 : _T_579;
  assign _T_573 = _T_23 ? 1'h0 : _T_576;
  assign _T_570 = _T_20 ? 1'h0 : _T_573;
  assign _T_567 = _T_17 ? 1'h0 : _T_570;
  assign _T_564 = _T_14 ? 1'h0 : _T_567;
  assign _T_561 = _T_11 ? 1'h0 : _T_564;
  assign _T_558 = _T_8 ? 1'h0 : _T_561;
  assign _T_555 = _T_5 ? 1'h0 : _T_558;
  assign _T_786 = _T_98 ? 1'h0 : _T_513;
  assign _T_783 = _T_95 ? 1'h0 : _T_786;
  assign _T_780 = _T_92 ? 1'h0 : _T_783;
  assign _T_777 = _T_89 ? 1'h0 : _T_780;
  assign _T_774 = _T_86 ? 1'h0 : _T_777;
  assign _T_771 = _T_83 ? 1'h0 : _T_774;
  assign _T_768 = _T_80 ? 1'h0 : _T_771;
  assign _T_765 = _T_77 ? 1'h0 : _T_768;
  assign _T_762 = _T_74 ? 1'h0 : _T_765;
  assign _T_759 = _T_71 ? 1'h0 : _T_762;
  assign _T_756 = _T_68 ? 1'h0 : _T_759;
  assign _T_753 = _T_65 ? 1'h0 : _T_756;
  assign _T_750 = _T_62 ? 1'h0 : _T_753;
  assign _T_747 = _T_59 ? 1'h0 : _T_750;
  assign _T_744 = _T_56 ? 1'h0 : _T_747;
  assign _T_741 = _T_53 ? 1'h0 : _T_744;
  assign _T_738 = _T_50 ? 1'h0 : _T_741;
  assign _T_735 = _T_47 ? 1'h0 : _T_738;
  assign _T_732 = _T_44 ? 1'h0 : _T_735;
  assign _T_729 = _T_41 ? 1'h0 : _T_732;
  assign _T_726 = _T_38 ? 1'h0 : _T_729;
  assign _T_723 = _T_35 ? 1'h0 : _T_726;
  assign _T_720 = _T_32 ? 1'h0 : _T_723;
  assign _T_717 = _T_29 ? 1'h0 : _T_720;
  assign _T_714 = _T_26 ? 1'h0 : _T_717;
  assign _T_711 = _T_23 ? 1'h0 : _T_714;
  assign _T_708 = _T_20 ? 1'h0 : _T_711;
  assign _T_705 = _T_17 ? 1'h0 : _T_708;
  assign _T_702 = _T_14 ? 1'h0 : _T_705;
  assign _T_699 = _T_11 ? 1'h0 : _T_702;
  assign _T_696 = _T_8 ? 1'h0 : _T_699;
  assign _T_693 = _T_5 ? 1'h0 : _T_696;
  assign _T_894 = _T_68 | _T_71;
  assign _T_891 = _T_65 | _T_894;
  assign _T_888 = _T_62 | _T_891;
  assign _T_885 = _T_59 | _T_888;
  assign _T_882 = _T_56 ? 1'h0 : _T_885;
  assign _T_879 = _T_53 ? 1'h0 : _T_882;
  assign _T_876 = _T_50 ? 1'h0 : _T_879;
  assign _T_873 = _T_47 ? 1'h0 : _T_876;
  assign _T_870 = _T_44 ? 1'h0 : _T_873;
  assign _T_867 = _T_41 ? 1'h0 : _T_870;
  assign _T_864 = _T_38 ? 1'h0 : _T_867;
  assign _T_861 = _T_35 ? 1'h0 : _T_864;
  assign _T_858 = _T_32 ? 1'h0 : _T_861;
  assign _T_855 = _T_29 ? 1'h0 : _T_858;
  assign _T_852 = _T_26 ? 1'h0 : _T_855;
  assign _T_849 = _T_23 ? 1'h0 : _T_852;
  assign _T_846 = _T_20 ? 1'h0 : _T_849;
  assign _T_843 = _T_17 ? 1'h0 : _T_846;
  assign _T_840 = _T_14 ? 1'h0 : _T_843;
  assign _T_837 = _T_11 ? 1'h0 : _T_840;
  assign _T_834 = _T_8 ? 1'h0 : _T_837;
  assign _T_831 = _T_5 ? 1'h0 : _T_834;
  assign _T_1035 = _T_71 ? 1'h0 : _T_210;
  assign _T_1032 = _T_68 ? 1'h0 : _T_1035;
  assign _T_1029 = _T_65 ? 1'h0 : _T_1032;
  assign _T_1026 = _T_62 ? 1'h0 : _T_1029;
  assign _T_1023 = _T_59 ? 1'h0 : _T_1026;
  assign _T_1020 = _T_56 ? 1'h0 : _T_1023;
  assign _T_1017 = _T_53 ? 1'h0 : _T_1020;
  assign _T_1014 = _T_50 ? 1'h0 : _T_1017;
  assign _T_1011 = _T_47 ? 1'h0 : _T_1014;
  assign _T_1008 = _T_44 ? 1'h0 : _T_1011;
  assign _T_1005 = _T_41 ? 1'h0 : _T_1008;
  assign _T_1002 = _T_38 ? 1'h0 : _T_1005;
  assign _T_999 = _T_35 ? 1'h0 : _T_1002;
  assign _T_996 = _T_32 ? 1'h0 : _T_999;
  assign _T_993 = _T_29 ? 1'h0 : _T_996;
  assign _T_990 = _T_26 ? 1'h0 : _T_993;
  assign _T_987 = _T_23 ? 1'h0 : _T_990;
  assign _T_984 = _T_20 ? 1'h0 : _T_987;
  assign _T_981 = _T_17 ? 1'h0 : _T_984;
  assign _T_978 = _T_14 ? 1'h0 : _T_981;
  assign _T_975 = _T_11 ? 1'h0 : _T_978;
  assign _T_972 = _T_8 ? 1'h0 : _T_975;
  assign _T_969 = _T_5 ? 1'h0 : _T_972;
  assign _T_1182 = _T_80 ? 2'h2 : 2'h0;
  assign _T_1179 = _T_77 ? 2'h1 : _T_1182;
  assign _T_1176 = _T_74 ? 2'h0 : _T_1179;
  assign _T_1173 = _T_71 ? 2'h2 : _T_1176;
  assign _T_1170 = _T_68 ? 2'h1 : _T_1173;
  assign _T_1167 = _T_65 ? 2'h2 : _T_1170;
  assign _T_1164 = _T_62 ? 2'h1 : _T_1167;
  assign _T_1161 = _T_59 ? 2'h0 : _T_1164;
  assign _T_1158 = _T_56 ? 2'h0 : _T_1161;
  assign _T_1155 = _T_53 ? 2'h0 : _T_1158;
  assign _T_1152 = _T_50 ? 2'h0 : _T_1155;
  assign _T_1149 = _T_47 ? 2'h0 : _T_1152;
  assign _T_1146 = _T_44 ? 2'h0 : _T_1149;
  assign _T_1143 = _T_41 ? 2'h0 : _T_1146;
  assign _T_1140 = _T_38 ? 2'h0 : _T_1143;
  assign _T_1137 = _T_35 ? 2'h0 : _T_1140;
  assign _T_1134 = _T_32 ? 2'h0 : _T_1137;
  assign _T_1131 = _T_29 ? 2'h0 : _T_1134;
  assign _T_1128 = _T_26 ? 2'h0 : _T_1131;
  assign _T_1125 = _T_23 ? 2'h0 : _T_1128;
  assign _T_1122 = _T_20 ? 2'h0 : _T_1125;
  assign _T_1119 = _T_17 ? 2'h0 : _T_1122;
  assign _T_1116 = _T_14 ? 2'h0 : _T_1119;
  assign _T_1113 = _T_11 ? 2'h0 : _T_1116;
  assign _T_1110 = _T_8 ? 2'h0 : _T_1113;
  assign _T_1107 = _T_5 ? 2'h0 : _T_1110;
  assign _T_1305 = _T_65 ? 1'h0 : _T_894;
  assign _T_1302 = _T_62 ? 1'h0 : _T_1305;
  assign _T_1299 = _T_59 ? 1'h0 : _T_1302;
  assign _T_1296 = _T_56 ? 1'h0 : _T_1299;
  assign _T_1293 = _T_53 ? 1'h0 : _T_1296;
  assign _T_1290 = _T_50 ? 1'h0 : _T_1293;
  assign _T_1287 = _T_47 ? 1'h0 : _T_1290;
  assign _T_1284 = _T_44 ? 1'h0 : _T_1287;
  assign _T_1281 = _T_41 ? 1'h0 : _T_1284;
  assign _T_1278 = _T_38 ? 1'h0 : _T_1281;
  assign _T_1275 = _T_35 ? 1'h0 : _T_1278;
  assign _T_1272 = _T_32 ? 1'h0 : _T_1275;
  assign _T_1269 = _T_29 ? 1'h0 : _T_1272;
  assign _T_1266 = _T_26 ? 1'h0 : _T_1269;
  assign _T_1263 = _T_23 ? 1'h0 : _T_1266;
  assign _T_1260 = _T_20 ? 1'h0 : _T_1263;
  assign _T_1257 = _T_17 ? 1'h0 : _T_1260;
  assign _T_1254 = _T_14 ? 1'h0 : _T_1257;
  assign _T_1251 = _T_11 ? 1'h0 : _T_1254;
  assign _T_1248 = _T_8 ? 1'h0 : _T_1251;
  assign _T_1245 = _T_5 ? 1'h0 : _T_1248;
  assign _T_1506 = _T_128 | _T_131;
  assign _T_1503 = _T_125 | _T_1506;
  assign _T_1500 = _T_122 ? 1'h0 : _T_1503;
  assign _T_1497 = _T_119 ? 1'h0 : _T_1500;
  assign _T_1494 = _T_116 ? 1'h0 : _T_1497;
  assign _T_1491 = _T_113 ? 1'h0 : _T_1494;
  assign _T_1488 = _T_110 ? 1'h0 : _T_1491;
  assign _T_1485 = _T_107 ? 1'h0 : _T_1488;
  assign _T_1482 = _T_104 ? 1'h0 : _T_1485;
  assign _T_1479 = _T_101 ? 1'h0 : _T_1482;
  assign _T_1476 = _T_98 ? 1'h0 : _T_1479;
  assign _T_1473 = _T_95 ? 1'h0 : _T_1476;
  assign _T_1470 = _T_92 ? 1'h0 : _T_1473;
  assign _T_1467 = _T_89 ? 1'h0 : _T_1470;
  assign _T_1464 = _T_86 ? 1'h0 : _T_1467;
  assign _T_1461 = _T_83 ? 1'h0 : _T_1464;
  assign _T_1458 = _T_80 ? 1'h0 : _T_1461;
  assign _T_1455 = _T_77 ? 1'h0 : _T_1458;
  assign _T_1452 = _T_74 ? 1'h0 : _T_1455;
  assign _T_1449 = _T_71 ? 1'h0 : _T_1452;
  assign _T_1446 = _T_68 ? 1'h0 : _T_1449;
  assign _T_1443 = _T_65 ? 1'h0 : _T_1446;
  assign _T_1440 = _T_62 ? 1'h0 : _T_1443;
  assign _T_1437 = _T_59 ? 1'h0 : _T_1440;
  assign _T_1434 = _T_56 ? 1'h0 : _T_1437;
  assign _T_1431 = _T_53 ? 1'h0 : _T_1434;
  assign _T_1428 = _T_50 ? 1'h0 : _T_1431;
  assign _T_1425 = _T_47 ? 1'h0 : _T_1428;
  assign _T_1422 = _T_44 ? 1'h0 : _T_1425;
  assign _T_1419 = _T_41 ? 1'h0 : _T_1422;
  assign _T_1416 = _T_38 ? 1'h0 : _T_1419;
  assign _T_1413 = _T_35 ? 1'h0 : _T_1416;
  assign _T_1410 = _T_32 ? 1'h0 : _T_1413;
  assign _T_1407 = _T_29 ? 1'h0 : _T_1410;
  assign _T_1404 = _T_26 ? 1'h0 : _T_1407;
  assign _T_1401 = _T_23 ? 1'h0 : _T_1404;
  assign _T_1398 = _T_20 ? 1'h0 : _T_1401;
  assign _T_1395 = _T_17 ? 1'h0 : _T_1398;
  assign _T_1392 = _T_14 ? 1'h0 : _T_1395;
  assign _T_1389 = _T_11 ? 1'h0 : _T_1392;
  assign _T_1386 = _T_8 ? 1'h0 : _T_1389;
  assign _T_1383 = _T_5 ? 1'h0 : _T_1386;
  assign _T_1650 = _T_134 ? 3'h7 : 3'h0;
  assign _T_1647 = _T_131 ? 3'h6 : _T_1650;
  assign _T_1644 = _T_128 ? 3'h4 : _T_1647;
  assign _T_1641 = _T_125 ? 3'h2 : _T_1644;
  assign _T_1638 = _T_122 ? 3'h5 : _T_1641;
  assign _T_1635 = _T_119 ? 3'h3 : _T_1638;
  assign _T_1632 = _T_116 ? 3'h1 : _T_1635;
  assign _T_1629 = _T_113 ? 3'h0 : _T_1632;
  assign _T_1626 = _T_110 ? 3'h0 : _T_1629;
  assign _T_1623 = _T_107 ? 3'h0 : _T_1626;
  assign _T_1620 = _T_104 ? 3'h0 : _T_1623;
  assign _T_1617 = _T_101 ? 3'h0 : _T_1620;
  assign _T_1614 = _T_98 ? 3'h0 : _T_1617;
  assign _T_1611 = _T_95 ? 3'h0 : _T_1614;
  assign _T_1608 = _T_92 ? 3'h0 : _T_1611;
  assign _T_1605 = _T_89 ? 3'h0 : _T_1608;
  assign _T_1602 = _T_86 ? 3'h0 : _T_1605;
  assign _T_1599 = _T_83 ? 3'h0 : _T_1602;
  assign _T_1596 = _T_80 ? 3'h0 : _T_1599;
  assign _T_1593 = _T_77 ? 3'h0 : _T_1596;
  assign _T_1590 = _T_74 ? 3'h0 : _T_1593;
  assign _T_1587 = _T_71 ? 3'h0 : _T_1590;
  assign _T_1584 = _T_68 ? 3'h0 : _T_1587;
  assign _T_1581 = _T_65 ? 3'h0 : _T_1584;
  assign _T_1578 = _T_62 ? 3'h0 : _T_1581;
  assign _T_1575 = _T_59 ? 3'h0 : _T_1578;
  assign _T_1572 = _T_56 ? 3'h0 : _T_1575;
  assign _T_1569 = _T_53 ? 3'h0 : _T_1572;
  assign _T_1566 = _T_50 ? 3'h0 : _T_1569;
  assign _T_1563 = _T_47 ? 3'h0 : _T_1566;
  assign _T_1560 = _T_44 ? 3'h0 : _T_1563;
  assign _T_1557 = _T_41 ? 3'h0 : _T_1560;
  assign _T_1554 = _T_38 ? 3'h0 : _T_1557;
  assign _T_1551 = _T_35 ? 3'h0 : _T_1554;
  assign _T_1548 = _T_32 ? 3'h0 : _T_1551;
  assign _T_1545 = _T_29 ? 3'h0 : _T_1548;
  assign _T_1542 = _T_26 ? 3'h0 : _T_1545;
  assign _T_1539 = _T_23 ? 3'h0 : _T_1542;
  assign _T_1536 = _T_20 ? 3'h0 : _T_1539;
  assign _T_1533 = _T_17 ? 3'h0 : _T_1536;
  assign _T_1530 = _T_14 ? 3'h0 : _T_1533;
  assign _T_1527 = _T_11 ? 3'h0 : _T_1530;
  assign _T_1524 = _T_8 ? 3'h0 : _T_1527;
  assign _T_1521 = _T_5 ? 3'h0 : _T_1524;
  assign _T_1791 = _T_137 ? 1'h0 : 1'h1;
  assign _T_1788 = _T_134 ? 1'h0 : _T_1791;
  assign _T_1785 = _T_131 ? 1'h0 : _T_1788;
  assign _T_1782 = _T_128 ? 1'h0 : _T_1785;
  assign _T_1779 = _T_125 ? 1'h0 : _T_1782;
  assign _T_1776 = _T_122 ? 1'h0 : _T_1779;
  assign _T_1773 = _T_119 ? 1'h0 : _T_1776;
  assign _T_1770 = _T_116 ? 1'h0 : _T_1773;
  assign _T_1767 = _T_113 ? 1'h0 : _T_1770;
  assign _T_1764 = _T_110 ? 1'h0 : _T_1767;
  assign _T_1761 = _T_107 ? 1'h0 : _T_1764;
  assign _T_1758 = _T_104 ? 1'h0 : _T_1761;
  assign _T_1755 = _T_101 ? 1'h0 : _T_1758;
  assign _T_1752 = _T_98 ? 1'h0 : _T_1755;
  assign _T_1749 = _T_95 ? 1'h0 : _T_1752;
  assign _T_1746 = _T_92 ? 1'h0 : _T_1749;
  assign _T_1743 = _T_89 ? 1'h0 : _T_1746;
  assign _T_1740 = _T_86 ? 1'h0 : _T_1743;
  assign _T_1737 = _T_83 ? 1'h0 : _T_1740;
  assign _T_1734 = _T_80 ? 1'h0 : _T_1737;
  assign _T_1731 = _T_77 ? 1'h0 : _T_1734;
  assign _T_1728 = _T_74 ? 1'h0 : _T_1731;
  assign _T_1725 = _T_71 ? 1'h0 : _T_1728;
  assign _T_1722 = _T_68 ? 1'h0 : _T_1725;
  assign _T_1719 = _T_65 ? 1'h0 : _T_1722;
  assign _T_1716 = _T_62 ? 1'h0 : _T_1719;
  assign _T_1713 = _T_59 ? 1'h0 : _T_1716;
  assign _T_1710 = _T_56 ? 1'h0 : _T_1713;
  assign _T_1707 = _T_53 ? 1'h0 : _T_1710;
  assign _T_1704 = _T_50 ? 1'h0 : _T_1707;
  assign _T_1701 = _T_47 ? 1'h0 : _T_1704;
  assign _T_1698 = _T_44 ? 1'h0 : _T_1701;
  assign _T_1695 = _T_41 ? 1'h0 : _T_1698;
  assign _T_1692 = _T_38 ? 1'h0 : _T_1695;
  assign _T_1689 = _T_35 ? 1'h0 : _T_1692;
  assign _T_1686 = _T_32 ? 1'h0 : _T_1689;
  assign _T_1683 = _T_29 ? 1'h0 : _T_1686;
  assign _T_1680 = _T_26 ? 1'h0 : _T_1683;
  assign _T_1677 = _T_23 ? 1'h0 : _T_1680;
  assign _T_1674 = _T_20 ? 1'h0 : _T_1677;
  assign _T_1671 = _T_17 ? 1'h0 : _T_1674;
  assign _T_1668 = _T_14 ? 1'h0 : _T_1671;
  assign _T_1665 = _T_11 ? 1'h0 : _T_1668;
  assign _T_1662 = _T_8 ? 1'h0 : _T_1665;
  assign _T_1659 = _T_5 ? 1'h0 : _T_1662;
  assign _T_1914 = _T_122 | _T_1503;
  assign _T_1911 = _T_119 | _T_1914;
  assign _T_1908 = _T_116 | _T_1911;
  assign _T_1905 = _T_113 ? 1'h0 : _T_1908;
  assign _T_1902 = _T_110 | _T_1905;
  assign _T_1899 = _T_107 | _T_1902;
  assign _T_1896 = _T_104 | _T_1899;
  assign _T_1893 = _T_101 | _T_1896;
  assign _T_1890 = _T_98 ? 1'h0 : _T_1893;
  assign _T_1887 = _T_95 ? 1'h0 : _T_1890;
  assign _T_1884 = _T_92 ? 1'h0 : _T_1887;
  assign _T_1881 = _T_89 ? 1'h0 : _T_1884;
  assign _T_1878 = _T_86 ? 1'h0 : _T_1881;
  assign _T_1875 = _T_83 ? 1'h0 : _T_1878;
  assign _T_1872 = _T_80 ? 1'h0 : _T_1875;
  assign _T_1869 = _T_77 ? 1'h0 : _T_1872;
  assign _T_1866 = _T_74 ? 1'h0 : _T_1869;
  assign _T_1863 = _T_71 | _T_1866;
  assign _T_1860 = _T_68 | _T_1863;
  assign _T_1857 = _T_65 | _T_1860;
  assign _T_1854 = _T_62 | _T_1857;
  assign _T_1851 = _T_59 | _T_1854;
  assign _T_1848 = _T_56 | _T_1851;
  assign _T_1845 = _T_53 | _T_1848;
  assign _T_1842 = _T_50 | _T_1845;
  assign _T_1839 = _T_47 | _T_1842;
  assign _T_1836 = _T_44 | _T_1839;
  assign _T_1833 = _T_41 | _T_1836;
  assign _T_1830 = _T_38 | _T_1833;
  assign _T_1827 = _T_35 | _T_1830;
  assign _T_1824 = _T_32 | _T_1827;
  assign _T_1821 = _T_29 | _T_1824;
  assign _T_1818 = _T_26 | _T_1821;
  assign _T_1815 = _T_23 | _T_1818;
  assign _T_1812 = _T_20 | _T_1815;
  assign _T_1809 = _T_17 | _T_1812;
  assign _T_1806 = _T_14 | _T_1809;
  assign _T_1803 = _T_11 | _T_1806;
  assign _T_1800 = _T_8 | _T_1803;
  assign _T_1797 = _T_5 | _T_1800;
  assign _T_2061 = _T_131 ? 3'h5 : 3'h0;
  assign _T_2058 = _T_128 ? 3'h5 : _T_2061;
  assign _T_2055 = _T_125 ? 3'h5 : _T_2058;
  assign _T_2052 = _T_122 ? 3'h5 : _T_2055;
  assign _T_2049 = _T_119 ? 3'h5 : _T_2052;
  assign _T_2046 = _T_116 ? 3'h5 : _T_2049;
  assign _T_2043 = _T_113 ? 3'h0 : _T_2046;
  assign _T_2040 = _T_110 ? 3'h4 : _T_2043;
  assign _T_2037 = _T_107 ? 3'h3 : _T_2040;
  assign _T_2034 = _T_104 ? 3'h2 : _T_2037;
  assign _T_2031 = _T_101 ? 3'h2 : _T_2034;
  assign _T_2028 = _T_98 ? 3'h0 : _T_2031;
  assign _T_2025 = _T_95 ? 3'h0 : _T_2028;
  assign _T_2022 = _T_92 ? 3'h0 : _T_2025;
  assign _T_2019 = _T_89 ? 3'h0 : _T_2022;
  assign _T_2016 = _T_86 ? 3'h0 : _T_2019;
  assign _T_2013 = _T_83 ? 3'h0 : _T_2016;
  assign _T_2010 = _T_80 ? 3'h0 : _T_2013;
  assign _T_2007 = _T_77 ? 3'h0 : _T_2010;
  assign _T_2004 = _T_74 ? 3'h0 : _T_2007;
  assign _T_2001 = _T_71 ? 3'h1 : _T_2004;
  assign _T_1998 = _T_68 ? 3'h1 : _T_2001;
  assign _T_1995 = _T_65 ? 3'h1 : _T_1998;
  assign _T_1992 = _T_62 ? 3'h1 : _T_1995;
  assign _T_1989 = _T_59 ? 3'h1 : _T_1992;
  assign _T_1986 = _T_56 ? 3'h0 : _T_1989;
  assign _T_1983 = _T_53 ? 3'h0 : _T_1986;
  assign _T_1980 = _T_50 ? 3'h0 : _T_1983;
  assign _T_1977 = _T_47 ? 3'h0 : _T_1980;
  assign _T_1974 = _T_44 ? 3'h0 : _T_1977;
  assign _T_1971 = _T_41 ? 3'h0 : _T_1974;
  assign _T_1968 = _T_38 ? 3'h0 : _T_1971;
  assign _T_1965 = _T_35 ? 3'h0 : _T_1968;
  assign _T_1962 = _T_32 ? 3'h0 : _T_1965;
  assign _T_1959 = _T_29 ? 3'h0 : _T_1962;
  assign _T_1956 = _T_26 ? 3'h0 : _T_1959;
  assign _T_1953 = _T_23 ? 3'h0 : _T_1956;
  assign _T_1950 = _T_20 ? 3'h0 : _T_1953;
  assign _T_1947 = _T_17 ? 3'h0 : _T_1950;
  assign _T_1944 = _T_14 ? 3'h0 : _T_1947;
  assign _T_1941 = _T_11 ? 3'h0 : _T_1944;
  assign _T_1938 = _T_8 ? 3'h0 : _T_1941;
  assign _T_1935 = _T_5 ? 3'h0 : _T_1938;
  assign io_Reg_Write = _T_2 | _T_1797;
  assign io_Imm_Sel = _T_2 ? 3'h1 : _T_3;
  assign io_ALU_Src = _T_2 ? 1'h0 : _T_141;
  assign io_ALUOp = _T_2 ? 5'h0 : _T_279;
  assign io_Branch = _T_2 ? 1'h0 : _T_417;
  assign io_Branch_Src = _T_2 ? 1'h0 : _T_555;
  assign io_Mem_Read = _T_2 ? 1'h0 : _T_831;
  assign io_Mem_Write = _T_2 ? 1'h0 : _T_969;
  assign io_Data_Size = _T_2 ? 2'h0 : _T_1107;
  assign io_Load_Type = _T_2 ? 1'h0 : _T_1245;
  assign io_Mem_to_Reg = _T_2 ? 3'h0 : _T_1935;
  assign io_Jump_Type = _T_2 ? 1'h0 : _T_693;
  assign io_CSR_src = _T_2 ? 1'h0 : _T_1383;
  assign io_Write_CSR = _T_2 ? 3'h0 : _T_1521;
  assign io_is_Illegal = _T_2 ? 1'h0 : _T_1659;
endmodule
module IdExRegister(
  input         clock,
  input         reset,
  input  [31:0] io_id_pc,
  input  [31:0] io_id_pc_4,
  input  [31:0] io_id_rs1_out,
  input  [31:0] io_id_rs2_out,
  input  [31:0] io_id_imm,
  input  [31:0] io_id_inst,
  input  [4:0]  io_id_rs1,
  input  [4:0]  io_id_rs2,
  output [31:0] io_ex_pc,
  output [31:0] io_ex_pc_4,
  output [31:0] io_ex_rs1_out,
  output [31:0] io_ex_rs2_out,
  output [4:0]  io_ex_rd,
  output [31:0] io_ex_imm,
  output [4:0]  io_ex_rs1,
  output [4:0]  io_ex_rs2,
  output [31:0] io_ex_inst,
  input         io_ID_EX_Flush,
  input         io_Reg_Write,
  input  [2:0]  io_Imm_Sel,
  input         io_ALU_Src,
  input  [4:0]  io_ALUOp,
  input         io_Branch,
  input         io_Branch_Src,
  input         io_Mem_Read,
  input         io_Mem_Write,
  input  [1:0]  io_Data_Size,
  input         io_Load_Type,
  input  [2:0]  io_Mem_to_Reg,
  input         io_Jump_Type,
  input         io_CSR_src,
  input  [2:0]  io_Write_CSR,
  input         io_is_Illegal,
  output        io_ex_Reg_Write,
  output [2:0]  io_ex_Imm_Sel,
  output        io_ex_ALU_Src,
  output [4:0]  io_ex_ALUOp,
  output        io_ex_Branch,
  output        io_ex_Branch_Src,
  output        io_ex_Mem_Read,
  output        io_ex_Mem_Write,
  output [1:0]  io_ex_Data_Size,
  output        io_ex_Load_Type,
  output [2:0]  io_ex_Mem_to_Reg,
  output        io_ex_Jump_Type,
  output        io_ex_CSR_src,
  output [2:0]  io_ex_Write_CSR,
  output        io_ex_is_Illegal
);
  reg [31:0] pc;
  reg [31:0] _RAND_0;
  reg [31:0] pc_4;
  reg [31:0] _RAND_1;
  reg [31:0] rs1_out;
  reg [31:0] _RAND_2;
  reg [31:0] rs2_out;
  reg [31:0] _RAND_3;
  reg [31:0] imm;
  reg [31:0] _RAND_4;
  reg [31:0] inst;
  reg [31:0] _RAND_5;
  reg [4:0] rs1;
  reg [31:0] _RAND_6;
  reg [4:0] rs2;
  reg [31:0] _RAND_7;
  reg  alu_src;
  reg [31:0] _RAND_8;
  reg [4:0] aluop;
  reg [31:0] _RAND_9;
  reg  branch;
  reg [31:0] _RAND_10;
  reg  branch_src;
  reg [31:0] _RAND_11;
  reg  jump_type;
  reg [31:0] _RAND_12;
  reg  mem_read;
  reg [31:0] _RAND_13;
  reg  mem_write;
  reg [31:0] _RAND_14;
  reg [1:0] data_size;
  reg [31:0] _RAND_15;
  reg  load_type;
  reg [31:0] _RAND_16;
  reg  reg_write;
  reg [31:0] _RAND_17;
  reg [2:0] mem_to_reg;
  reg [31:0] _RAND_18;
  reg [2:0] imm_sel;
  reg [31:0] _RAND_19;
  reg  csr_src;
  reg [31:0] _RAND_20;
  reg [2:0] write_csr;
  reg [31:0] _RAND_21;
  reg  is_illegal;
  reg [31:0] _RAND_22;
  assign io_ex_pc = pc;
  assign io_ex_pc_4 = pc_4;
  assign io_ex_rs1_out = rs1_out;
  assign io_ex_rs2_out = rs2_out;
  assign io_ex_rd = inst[11:7];
  assign io_ex_imm = imm;
  assign io_ex_rs1 = rs1;
  assign io_ex_rs2 = rs2;
  assign io_ex_inst = inst;
  assign io_ex_Reg_Write = reg_write;
  assign io_ex_Imm_Sel = imm_sel;
  assign io_ex_ALU_Src = alu_src;
  assign io_ex_ALUOp = aluop;
  assign io_ex_Branch = branch;
  assign io_ex_Branch_Src = branch_src;
  assign io_ex_Mem_Read = mem_read;
  assign io_ex_Mem_Write = mem_write;
  assign io_ex_Data_Size = data_size;
  assign io_ex_Load_Type = load_type;
  assign io_ex_Mem_to_Reg = mem_to_reg;
  assign io_ex_Jump_Type = jump_type;
  assign io_ex_CSR_src = csr_src;
  assign io_ex_Write_CSR = write_csr;
  assign io_ex_is_Illegal = is_illegal;
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
  pc = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  pc_4 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  rs1_out = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  rs2_out = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  imm = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  inst = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  rs1 = _RAND_6[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  rs2 = _RAND_7[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  alu_src = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  aluop = _RAND_9[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  branch = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  branch_src = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  jump_type = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  mem_read = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  mem_write = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  data_size = _RAND_15[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  load_type = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  reg_write = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  mem_to_reg = _RAND_18[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  imm_sel = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  csr_src = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  write_csr = _RAND_21[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  is_illegal = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      pc <= 32'h0;
    end else begin
      pc <= io_id_pc;
    end
    if (reset) begin
      pc_4 <= 32'h0;
    end else begin
      pc_4 <= io_id_pc_4;
    end
    if (reset) begin
      rs1_out <= 32'h0;
    end else begin
      rs1_out <= io_id_rs1_out;
    end
    if (reset) begin
      rs2_out <= 32'h0;
    end else begin
      rs2_out <= io_id_rs2_out;
    end
    if (reset) begin
      imm <= 32'h0;
    end else begin
      imm <= io_id_imm;
    end
    if (reset) begin
      inst <= 32'h0;
    end else begin
      inst <= io_id_inst;
    end
    if (reset) begin
      rs1 <= 5'h0;
    end else begin
      rs1 <= io_id_rs1;
    end
    if (reset) begin
      rs2 <= 5'h0;
    end else begin
      rs2 <= io_id_rs2;
    end
    if (reset) begin
      alu_src <= 1'h0;
    end else begin
      alu_src <= io_ALU_Src;
    end
    if (reset) begin
      aluop <= 5'h0;
    end else begin
      aluop <= io_ALUOp;
    end
    if (reset) begin
      branch <= 1'h0;
    end else begin
      branch <= io_Branch;
    end
    if (reset) begin
      branch_src <= 1'h0;
    end else begin
      branch_src <= io_Branch_Src;
    end
    if (reset) begin
      jump_type <= 1'h0;
    end else if (io_ID_EX_Flush) begin
      jump_type <= 1'h0;
    end else begin
      jump_type <= io_Jump_Type;
    end
    if (reset) begin
      mem_read <= 1'h0;
    end else if (io_ID_EX_Flush) begin
      mem_read <= 1'h0;
    end else begin
      mem_read <= io_Mem_Read;
    end
    if (reset) begin
      mem_write <= 1'h0;
    end else if (io_ID_EX_Flush) begin
      mem_write <= 1'h0;
    end else begin
      mem_write <= io_Mem_Write;
    end
    if (reset) begin
      data_size <= 2'h0;
    end else if (io_ID_EX_Flush) begin
      data_size <= 2'h0;
    end else begin
      data_size <= io_Data_Size;
    end
    if (reset) begin
      load_type <= 1'h0;
    end else if (io_ID_EX_Flush) begin
      load_type <= 1'h0;
    end else begin
      load_type <= io_Load_Type;
    end
    if (reset) begin
      reg_write <= 1'h0;
    end else if (io_ID_EX_Flush) begin
      reg_write <= 1'h0;
    end else begin
      reg_write <= io_Reg_Write;
    end
    if (reset) begin
      mem_to_reg <= 3'h0;
    end else if (io_ID_EX_Flush) begin
      mem_to_reg <= 3'h0;
    end else begin
      mem_to_reg <= io_Mem_to_Reg;
    end
    if (reset) begin
      imm_sel <= 3'h0;
    end else if (io_ID_EX_Flush) begin
      imm_sel <= 3'h0;
    end else begin
      imm_sel <= io_Imm_Sel;
    end
    if (reset) begin
      csr_src <= 1'h0;
    end else if (io_ID_EX_Flush) begin
      csr_src <= 1'h0;
    end else begin
      csr_src <= io_CSR_src;
    end
    if (reset) begin
      write_csr <= 3'h0;
    end else if (io_ID_EX_Flush) begin
      write_csr <= 3'h0;
    end else begin
      write_csr <= io_Write_CSR;
    end
    if (reset) begin
      is_illegal <= 1'h0;
    end else if (io_ID_EX_Flush) begin
      is_illegal <= 1'h0;
    end else begin
      is_illegal <= io_is_Illegal;
    end
  end
endmodule
module ALU(
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
module ExMemRegister(
  input         clock,
  input         reset,
  input  [31:0] io_ex_alu_sum,
  input  [31:0] io_ex_rs2_out,
  input  [4:0]  io_ex_rd,
  input  [31:0] io_ex_pc_4,
  input  [31:0] io_ex_imm,
  input  [31:0] io_ex_aui_pc,
  input  [31:0] io_ex_rs2,
  input  [31:0] io_ex_csr_data_out,
  input         io_ex_Mem_Read,
  input         io_ex_Mem_Write,
  input  [1:0]  io_ex_Data_Size,
  input         io_ex_Load_Type,
  input         io_ex_Reg_Write,
  input  [2:0]  io_ex_Mem_to_Reg,
  output        io_mem_Mem_Read,
  output        io_mem_Mem_Write,
  output [1:0]  io_mem_Data_Size,
  output        io_mem_Load_Type,
  output        io_mem_Reg_Write,
  output [2:0]  io_mem_Mem_to_Reg,
  output [31:0] io_mem_alu_sum,
  output [31:0] io_mem_rs2_out,
  output [4:0]  io_mem_rd,
  output [31:0] io_mem_pc_4,
  output [31:0] io_mem_imm,
  output [31:0] io_mem_aui_pc,
  output [31:0] io_mem_rs2,
  output [31:0] io_mem_csr_data_out
);
  reg [31:0] alu_sum;
  reg [31:0] _RAND_0;
  reg [31:0] rs2_out;
  reg [31:0] _RAND_1;
  reg [4:0] rd;
  reg [31:0] _RAND_2;
  reg [31:0] pc_4;
  reg [31:0] _RAND_3;
  reg [31:0] imm;
  reg [31:0] _RAND_4;
  reg [31:0] aui_pc;
  reg [31:0] _RAND_5;
  reg [4:0] rs2;
  reg [31:0] _RAND_6;
  reg  mem_read;
  reg [31:0] _RAND_7;
  reg  mem_write;
  reg [31:0] _RAND_8;
  reg [1:0] data_size;
  reg [31:0] _RAND_9;
  reg  load_type;
  reg [31:0] _RAND_10;
  reg  reg_write;
  reg [31:0] _RAND_11;
  reg [2:0] mem_to_reg;
  reg [31:0] _RAND_12;
  reg [31:0] csr_data_out;
  reg [31:0] _RAND_13;
  assign io_mem_Mem_Read = mem_read;
  assign io_mem_Mem_Write = mem_write;
  assign io_mem_Data_Size = data_size;
  assign io_mem_Load_Type = load_type;
  assign io_mem_Reg_Write = reg_write;
  assign io_mem_Mem_to_Reg = mem_to_reg;
  assign io_mem_alu_sum = alu_sum;
  assign io_mem_rs2_out = rs2_out;
  assign io_mem_rd = rd;
  assign io_mem_pc_4 = pc_4;
  assign io_mem_imm = imm;
  assign io_mem_aui_pc = aui_pc;
  assign io_mem_rs2 = {{27'd0}, rs2};
  assign io_mem_csr_data_out = csr_data_out;
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
  alu_sum = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  rs2_out = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  rd = _RAND_2[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  pc_4 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  imm = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  aui_pc = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  rs2 = _RAND_6[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  mem_read = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  mem_write = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  data_size = _RAND_9[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  load_type = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  reg_write = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  mem_to_reg = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  csr_data_out = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      alu_sum <= 32'h0;
    end else begin
      alu_sum <= io_ex_alu_sum;
    end
    if (reset) begin
      rs2_out <= 32'h0;
    end else begin
      rs2_out <= io_ex_rs2_out;
    end
    if (reset) begin
      rd <= 5'h0;
    end else begin
      rd <= io_ex_rd;
    end
    if (reset) begin
      pc_4 <= 32'h0;
    end else begin
      pc_4 <= io_ex_pc_4;
    end
    if (reset) begin
      imm <= 32'h0;
    end else begin
      imm <= io_ex_imm;
    end
    if (reset) begin
      aui_pc <= 32'h0;
    end else begin
      aui_pc <= io_ex_aui_pc;
    end
    if (reset) begin
      rs2 <= 5'h0;
    end else begin
      rs2 <= io_ex_rs2[4:0];
    end
    if (reset) begin
      mem_read <= 1'h0;
    end else begin
      mem_read <= io_ex_Mem_Read;
    end
    if (reset) begin
      mem_write <= 1'h0;
    end else begin
      mem_write <= io_ex_Mem_Write;
    end
    if (reset) begin
      data_size <= 2'h0;
    end else begin
      data_size <= io_ex_Data_Size;
    end
    if (reset) begin
      load_type <= 1'h0;
    end else begin
      load_type <= io_ex_Load_Type;
    end
    if (reset) begin
      reg_write <= 1'h0;
    end else begin
      reg_write <= io_ex_Reg_Write;
    end
    if (reset) begin
      mem_to_reg <= 3'h0;
    end else begin
      mem_to_reg <= io_ex_Mem_to_Reg;
    end
    if (reset) begin
      csr_data_out <= 32'h0;
    end else begin
      csr_data_out <= io_ex_csr_data_out;
    end
  end
endmodule
module Forward(
  input        io_ex_mem_Reg_Write,
  input  [4:0] io_ex_mem_rd,
  input        io_ex_mem_Mem_Write,
  input  [4:0] io_ex_mem_rs2,
  input        io_mem_wb_Reg_Write,
  input  [4:0] io_mem_wb_rd,
  input  [4:0] io_id_ex_rs1,
  input  [4:0] io_id_ex_rs2,
  output [1:0] io_Forward_A,
  output [1:0] io_Forward_B,
  output       io_MemWrite_Src
);
  wire  _T_1;
  wire  _T_2;
  wire  _T_3;
  wire  ex_mem_a_con;
  wire  _T_5;
  wire  _T_6;
  wire  _T_7;
  wire  _T_8;
  wire  _T_9;
  wire  ex_wb_a_con;
  wire  _T_14;
  wire  ex_mem_b_con;
  wire  _T_18;
  wire  _T_19;
  wire  _T_20;
  wire  ex_wb_b_con;
  wire  _T_25;
  wire  _T_26;
  assign _T_1 = io_ex_mem_rd != 5'h0;
  assign _T_2 = io_ex_mem_Reg_Write & _T_1;
  assign _T_3 = io_ex_mem_rd == io_id_ex_rs1;
  assign ex_mem_a_con = _T_2 & _T_3;
  assign _T_5 = io_mem_wb_rd != 5'h0;
  assign _T_6 = io_mem_wb_Reg_Write & _T_5;
  assign _T_7 = ~ ex_mem_a_con;
  assign _T_8 = _T_6 & _T_7;
  assign _T_9 = io_mem_wb_rd == io_id_ex_rs1;
  assign ex_wb_a_con = _T_8 & _T_9;
  assign _T_14 = io_ex_mem_rd == io_id_ex_rs2;
  assign ex_mem_b_con = _T_2 & _T_14;
  assign _T_18 = ~ ex_mem_b_con;
  assign _T_19 = _T_6 & _T_18;
  assign _T_20 = io_mem_wb_rd == io_id_ex_rs2;
  assign ex_wb_b_con = _T_19 & _T_20;
  assign _T_25 = io_mem_wb_Reg_Write & io_ex_mem_Mem_Write;
  assign _T_26 = io_ex_mem_rs2 == io_mem_wb_rd;
  assign io_Forward_A = {ex_mem_a_con,ex_wb_a_con};
  assign io_Forward_B = {ex_mem_b_con,ex_wb_b_con};
  assign io_MemWrite_Src = _T_25 & _T_26;
endmodule
module SirvGnrlDfflr(
  input   clock,
  input   reset,
  input   io_lden,
  input   io_dnxt,
  output  io_qout
);
  reg  qout_r;
  reg [31:0] _RAND_0;
  assign io_qout = qout_r;
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
  qout_r = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      qout_r <= 1'h0;
    end else if (io_lden) begin
      qout_r <= io_dnxt;
    end
  end
endmodule
module SirvGnrlDffl(
  input   clock,
  input   io_lden,
  input   io_dnxt,
  output  io_qout
);
  reg  qout_r;
  reg [31:0] _RAND_0;
  assign io_qout = qout_r;
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
  qout_r = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_lden) begin
      qout_r <= io_dnxt;
    end
  end
endmodule
module SirvGnrlPipeStage(
  input   clock,
  input   reset,
  input   io_i_vld,
  output  io_i_rdy,
  input   io_i_dat,
  output  io_o_vld,
  input   io_o_rdy,
  output  io_o_dat
);
  wire  vld_dfflr_clock;
  wire  vld_dfflr_reset;
  wire  vld_dfflr_io_lden;
  wire  vld_dfflr_io_dnxt;
  wire  vld_dfflr_io_qout;
  wire  dat_dfflr_clock;
  wire  dat_dfflr_io_lden;
  wire  dat_dfflr_io_dnxt;
  wire  dat_dfflr_io_qout;
  wire  vld_set;
  wire  vld_clr;
  wire  _T;
  SirvGnrlDfflr vld_dfflr (
    .clock(vld_dfflr_clock),
    .reset(vld_dfflr_reset),
    .io_lden(vld_dfflr_io_lden),
    .io_dnxt(vld_dfflr_io_dnxt),
    .io_qout(vld_dfflr_io_qout)
  );
  SirvGnrlDffl dat_dfflr (
    .clock(dat_dfflr_clock),
    .io_lden(dat_dfflr_io_lden),
    .io_dnxt(dat_dfflr_io_dnxt),
    .io_qout(dat_dfflr_io_qout)
  );
  assign vld_set = io_i_vld & io_i_rdy;
  assign vld_clr = io_o_vld & io_o_rdy;
  assign _T = ~ vld_clr;
  assign io_i_rdy = ~ vld_dfflr_io_qout;
  assign io_o_vld = vld_dfflr_io_qout;
  assign io_o_dat = dat_dfflr_io_qout;
  assign vld_dfflr_clock = clock;
  assign vld_dfflr_reset = reset;
  assign vld_dfflr_io_lden = vld_set | vld_clr;
  assign vld_dfflr_io_dnxt = vld_set | _T;
  assign dat_dfflr_clock = clock;
  assign dat_dfflr_io_lden = io_i_vld & io_i_rdy;
  assign dat_dfflr_io_dnxt = io_i_dat;
endmodule
module SirvGnrlIcbArbt(
  input         clock,
  input         reset,
  output        io_o_icb_cmd_valid,
  input         io_o_icb_cmd_ready,
  output        io_o_icb_cmd_read,
  output [31:0] io_o_icb_cmd_addr,
  output [31:0] io_o_icb_cmd_wdata,
  output        io_o_icb_cmd_usr,
  input         io_o_icb_rsp_valid,
  output        io_o_icb_rsp_ready,
  input         io_o_icb_rsp_err,
  input         io_o_icb_rsp_excl_ok,
  input  [31:0] io_o_icb_rsp_rdata,
  output [1:0]  io_i_bus_icb_cmd_ready,
  input  [1:0]  io_i_bus_icb_cmd_valid,
  input  [1:0]  io_i_bus_icb_cmd_read,
  input  [63:0] io_i_bus_icb_cmd_addr,
  input  [63:0] io_i_bus_icb_cmd_wdata,
  output [1:0]  io_i_bus_icb_rsp_valid,
  input  [1:0]  io_i_bus_icb_rsp_ready,
  output [1:0]  io_i_bus_icb_rsp_err,
  output [1:0]  io_i_bus_icb_rsp_excl_ok,
  output [63:0] io_i_bus_icb_rsp_rdata
);
  wire  u_sirv_gnrl_rspid_fifo_clock;
  wire  u_sirv_gnrl_rspid_fifo_reset;
  wire  u_sirv_gnrl_rspid_fifo_io_i_vld;
  wire  u_sirv_gnrl_rspid_fifo_io_i_rdy;
  wire  u_sirv_gnrl_rspid_fifo_io_i_dat;
  wire  u_sirv_gnrl_rspid_fifo_io_o_vld;
  wire  u_sirv_gnrl_rspid_fifo_io_o_rdy;
  wire  u_sirv_gnrl_rspid_fifo_io_o_dat;
  wire  _T;
  wire  _T_2;
  wire  o_icb_cmd_valid_real;
  wire  rspid_fifo_full;
  wire  _T_3;
  wire  i_bus_icb_cmd_grt_vec_1;
  wire  i_bus_icb_cmd_sel_1;
  wire  rspid_fifo_empty;
  wire  _T_14;
  wire  _T_15;
  wire  o_icb_cmd_ready_real;
  wire  o_icb_rsp_valid_pre;
  wire  o_icb_rsp_port_id;
  wire  _T_31;
  wire  i_icb_rsp_valid_0;
  wire  i_icb_cmd_read_1;
  wire [31:0] i_icb_cmd_addr_1;
  wire [31:0] i_icb_cmd_wdata_1;
  wire  i_icb_cmd_ready_1;
  wire  i_icb_rsp_valid_1;
  wire [7:0] _T_144;
  wire [15:0] _T_152;
  wire [31:0] _T_168;
  SirvGnrlPipeStage u_sirv_gnrl_rspid_fifo (
    .clock(u_sirv_gnrl_rspid_fifo_clock),
    .reset(u_sirv_gnrl_rspid_fifo_reset),
    .io_i_vld(u_sirv_gnrl_rspid_fifo_io_i_vld),
    .io_i_rdy(u_sirv_gnrl_rspid_fifo_io_i_rdy),
    .io_i_dat(u_sirv_gnrl_rspid_fifo_io_i_dat),
    .io_o_vld(u_sirv_gnrl_rspid_fifo_io_o_vld),
    .io_o_rdy(u_sirv_gnrl_rspid_fifo_io_o_rdy),
    .io_o_dat(u_sirv_gnrl_rspid_fifo_io_o_dat)
  );
  assign _T = io_i_bus_icb_cmd_valid[0];
  assign _T_2 = io_i_bus_icb_cmd_valid[1];
  assign o_icb_cmd_valid_real = _T | _T_2;
  assign rspid_fifo_full = ~ u_sirv_gnrl_rspid_fifo_io_i_rdy;
  assign _T_3 = ~ rspid_fifo_full;
  assign i_bus_icb_cmd_grt_vec_1 = ~ _T;
  assign i_bus_icb_cmd_sel_1 = i_bus_icb_cmd_grt_vec_1 & _T_2;
  assign rspid_fifo_empty = ~ u_sirv_gnrl_rspid_fifo_io_o_vld;
  assign _T_14 = ~ rspid_fifo_empty;
  assign _T_15 = io_i_bus_icb_rsp_ready[1];
  assign o_icb_cmd_ready_real = io_o_icb_cmd_ready & _T_3;
  assign o_icb_rsp_valid_pre = _T_14 & io_o_icb_rsp_valid;
  assign o_icb_rsp_port_id = rspid_fifo_empty ? 1'h0 : u_sirv_gnrl_rspid_fifo_io_o_dat;
  assign _T_31 = o_icb_rsp_port_id == 1'h0;
  assign i_icb_rsp_valid_0 = o_icb_rsp_valid_pre & _T_31;
  assign i_icb_cmd_read_1 = io_i_bus_icb_cmd_read[1];
  assign i_icb_cmd_addr_1 = io_i_bus_icb_cmd_addr[63:32];
  assign i_icb_cmd_wdata_1 = io_i_bus_icb_cmd_wdata[63:32];
  assign i_icb_cmd_ready_1 = i_bus_icb_cmd_grt_vec_1 & o_icb_cmd_ready_real;
  assign i_icb_rsp_valid_1 = o_icb_rsp_valid_pre & o_icb_rsp_port_id;
  assign _T_144 = {i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1};
  assign _T_152 = {i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,_T_144};
  assign _T_168 = {i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,i_bus_icb_cmd_sel_1,_T_144,_T_152};
  assign io_o_icb_cmd_valid = o_icb_cmd_valid_real & _T_3;
  assign io_o_icb_cmd_read = i_bus_icb_cmd_sel_1 & i_icb_cmd_read_1;
  assign io_o_icb_cmd_addr = _T_168 & i_icb_cmd_addr_1;
  assign io_o_icb_cmd_wdata = _T_168 & i_icb_cmd_wdata_1;
  assign io_o_icb_cmd_usr = i_bus_icb_cmd_grt_vec_1 & _T_2;
  assign io_o_icb_rsp_ready = _T_14 & _T_15;
  assign io_i_bus_icb_cmd_ready = {i_icb_cmd_ready_1,o_icb_cmd_ready_real};
  assign io_i_bus_icb_rsp_valid = {i_icb_rsp_valid_1,i_icb_rsp_valid_0};
  assign io_i_bus_icb_rsp_err = {io_o_icb_rsp_err,io_o_icb_rsp_err};
  assign io_i_bus_icb_rsp_excl_ok = {io_o_icb_rsp_excl_ok,io_o_icb_rsp_excl_ok};
  assign io_i_bus_icb_rsp_rdata = {io_o_icb_rsp_rdata,io_o_icb_rsp_rdata};
  assign u_sirv_gnrl_rspid_fifo_clock = clock;
  assign u_sirv_gnrl_rspid_fifo_reset = reset;
  assign u_sirv_gnrl_rspid_fifo_io_i_vld = io_o_icb_cmd_valid & io_o_icb_cmd_ready;
  assign u_sirv_gnrl_rspid_fifo_io_i_dat = i_bus_icb_cmd_grt_vec_1 & _T_2;
  assign u_sirv_gnrl_rspid_fifo_io_o_rdy = io_o_icb_rsp_valid & io_o_icb_rsp_ready;
endmodule
module SirvGnrlDfflrs(
  input   clock,
  input   reset,
  input   io_lden,
  input   io_dnxt,
  output  io_qout
);
  reg  qout_r;
  reg [31:0] _RAND_0;
  wire  _T;
  assign _T = io_lden ? io_dnxt : qout_r;
  assign io_qout = qout_r;
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
  qout_r = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    qout_r <= reset | _T;
  end
endmodule
module SirvGnrlDffl_1(
  input         clock,
  input         io_lden,
  input  [77:0] io_dnxt,
  output [77:0] io_qout
);
  reg [77:0] qout_r;
  reg [95:0] _RAND_0;
  assign io_qout = qout_r;
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
  _RAND_0 = {3{`RANDOM}};
  qout_r = _RAND_0[77:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_lden) begin
      qout_r <= io_dnxt;
    end
  end
endmodule
module SirvGnrlFifo(
  input         clock,
  input         reset,
  input         io_i_vld,
  output        io_i_rdy,
  input  [77:0] io_i_dat,
  output        io_o_vld,
  input         io_o_rdy,
  output [77:0] io_o_dat
);
  wire  rptr_vec_0_dfflrs_clock;
  wire  rptr_vec_0_dfflrs_reset;
  wire  rptr_vec_0_dfflrs_io_lden;
  wire  rptr_vec_0_dfflrs_io_dnxt;
  wire  rptr_vec_0_dfflrs_io_qout;
  wire  wptr_vec_0_dfflrs_clock;
  wire  wptr_vec_0_dfflrs_reset;
  wire  wptr_vec_0_dfflrs_io_lden;
  wire  wptr_vec_0_dfflrs_io_dnxt;
  wire  wptr_vec_0_dfflrs_io_qout;
  wire  vec_0_dfflrs_clock;
  wire  vec_0_dfflrs_reset;
  wire  vec_0_dfflrs_io_lden;
  wire  vec_0_dfflrs_io_dnxt;
  wire  vec_0_dfflrs_io_qout;
  wire  vec_31_dfflr_clock;
  wire  vec_31_dfflr_reset;
  wire  vec_31_dfflr_io_lden;
  wire  vec_31_dfflr_io_dnxt;
  wire  vec_31_dfflr_io_qout;
  wire  _T_19_clock;
  wire  _T_19_io_lden;
  wire [77:0] _T_19_io_dnxt;
  wire [77:0] _T_19_io_qout;
  wire  vec_r_vec_1;
  wire  vec_r_vec_0;
  wire [1:0] vec_r;
  wire  ren;
  wire  wen;
  wire  _T_6;
  wire [1:0] _T_7;
  wire  _GEN_0;
  wire [1:0] _T_8;
  wire [1:0] vec_nxt;
  wire  _T_11;
  wire [1:0] i_vec;
  wire  _T_15;
  wire  wptr_vec_r_vec_0;
  wire  rptr_vec_r_vec_0;
  wire [9:0] _T_114;
  wire [18:0] _T_115;
  wire [77:0] _T_174;
  wire [77:0] fifo_rf_r_0;
  SirvGnrlDfflrs rptr_vec_0_dfflrs (
    .clock(rptr_vec_0_dfflrs_clock),
    .reset(rptr_vec_0_dfflrs_reset),
    .io_lden(rptr_vec_0_dfflrs_io_lden),
    .io_dnxt(rptr_vec_0_dfflrs_io_dnxt),
    .io_qout(rptr_vec_0_dfflrs_io_qout)
  );
  SirvGnrlDfflrs wptr_vec_0_dfflrs (
    .clock(wptr_vec_0_dfflrs_clock),
    .reset(wptr_vec_0_dfflrs_reset),
    .io_lden(wptr_vec_0_dfflrs_io_lden),
    .io_dnxt(wptr_vec_0_dfflrs_io_dnxt),
    .io_qout(wptr_vec_0_dfflrs_io_qout)
  );
  SirvGnrlDfflrs vec_0_dfflrs (
    .clock(vec_0_dfflrs_clock),
    .reset(vec_0_dfflrs_reset),
    .io_lden(vec_0_dfflrs_io_lden),
    .io_dnxt(vec_0_dfflrs_io_dnxt),
    .io_qout(vec_0_dfflrs_io_qout)
  );
  SirvGnrlDfflr vec_31_dfflr (
    .clock(vec_31_dfflr_clock),
    .reset(vec_31_dfflr_reset),
    .io_lden(vec_31_dfflr_io_lden),
    .io_dnxt(vec_31_dfflr_io_dnxt),
    .io_qout(vec_31_dfflr_io_qout)
  );
  SirvGnrlDffl_1 _T_19 (
    .clock(_T_19_clock),
    .io_lden(_T_19_io_lden),
    .io_dnxt(_T_19_io_dnxt),
    .io_qout(_T_19_io_qout)
  );
  assign vec_r_vec_1 = vec_31_dfflr_io_qout;
  assign vec_r_vec_0 = vec_0_dfflrs_io_qout;
  assign vec_r = {vec_r_vec_1,vec_r_vec_0};
  assign ren = io_o_vld & io_o_rdy;
  assign wen = io_i_vld & io_i_rdy;
  assign _T_6 = vec_r[0];
  assign _T_7 = {_T_6,1'h1};
  assign _GEN_0 = vec_r[1:1];
  assign _T_8 = {{1'd0}, _GEN_0};
  assign vec_nxt = wen ? _T_7 : _T_8;
  assign _T_11 = vec_r[1];
  assign i_vec = {1'h0,_T_11};
  assign _T_15 = i_vec[0];
  assign wptr_vec_r_vec_0 = wptr_vec_0_dfflrs_io_qout;
  assign rptr_vec_r_vec_0 = rptr_vec_0_dfflrs_io_qout;
  assign _T_114 = {rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0};
  assign _T_115 = {rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,_T_114};
  assign _T_174 = {_T_115,_T_114,_T_114,_T_115,_T_114,_T_114};
  assign fifo_rf_r_0 = _T_19_io_qout;
  assign io_i_rdy = ~ _T_15;
  assign io_o_vld = i_vec[0];
  assign io_o_dat = _T_174 & fifo_rf_r_0;
  assign rptr_vec_0_dfflrs_clock = clock;
  assign rptr_vec_0_dfflrs_reset = reset;
  assign rptr_vec_0_dfflrs_io_lden = io_o_vld & io_o_rdy;
  assign rptr_vec_0_dfflrs_io_dnxt = 1'h1;
  assign wptr_vec_0_dfflrs_clock = clock;
  assign wptr_vec_0_dfflrs_reset = reset;
  assign wptr_vec_0_dfflrs_io_lden = io_i_vld & io_i_rdy;
  assign wptr_vec_0_dfflrs_io_dnxt = 1'h1;
  assign vec_0_dfflrs_clock = clock;
  assign vec_0_dfflrs_reset = reset;
  assign vec_0_dfflrs_io_lden = ren ^ wen;
  assign vec_0_dfflrs_io_dnxt = vec_nxt[0];
  assign vec_31_dfflr_clock = clock;
  assign vec_31_dfflr_reset = reset;
  assign vec_31_dfflr_io_lden = ren ^ wen;
  assign vec_31_dfflr_io_dnxt = vec_nxt[1];
  assign _T_19_clock = clock;
  assign _T_19_io_lden = wen & wptr_vec_r_vec_0;
  assign _T_19_io_dnxt = io_i_dat;
endmodule
module SirvGnrlDffl_2(
  input         clock,
  input         io_lden,
  input  [34:0] io_dnxt,
  output [34:0] io_qout
);
  reg [34:0] qout_r;
  reg [63:0] _RAND_0;
  assign io_qout = qout_r;
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
  _RAND_0 = {2{`RANDOM}};
  qout_r = _RAND_0[34:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_lden) begin
      qout_r <= io_dnxt;
    end
  end
endmodule
module SirvGnrlFifo_1(
  input         clock,
  input         reset,
  input         io_i_vld,
  output        io_i_rdy,
  input  [34:0] io_i_dat,
  output        io_o_vld,
  input         io_o_rdy,
  output [34:0] io_o_dat
);
  wire  rptr_vec_0_dfflrs_clock;
  wire  rptr_vec_0_dfflrs_reset;
  wire  rptr_vec_0_dfflrs_io_lden;
  wire  rptr_vec_0_dfflrs_io_dnxt;
  wire  rptr_vec_0_dfflrs_io_qout;
  wire  wptr_vec_0_dfflrs_clock;
  wire  wptr_vec_0_dfflrs_reset;
  wire  wptr_vec_0_dfflrs_io_lden;
  wire  wptr_vec_0_dfflrs_io_dnxt;
  wire  wptr_vec_0_dfflrs_io_qout;
  wire  vec_0_dfflrs_clock;
  wire  vec_0_dfflrs_reset;
  wire  vec_0_dfflrs_io_lden;
  wire  vec_0_dfflrs_io_dnxt;
  wire  vec_0_dfflrs_io_qout;
  wire  vec_31_dfflr_clock;
  wire  vec_31_dfflr_reset;
  wire  vec_31_dfflr_io_lden;
  wire  vec_31_dfflr_io_dnxt;
  wire  vec_31_dfflr_io_qout;
  wire  _T_19_clock;
  wire  _T_19_io_lden;
  wire [34:0] _T_19_io_dnxt;
  wire [34:0] _T_19_io_qout;
  wire  vec_r_vec_1;
  wire  vec_r_vec_0;
  wire [1:0] vec_r;
  wire  ren;
  wire  wen;
  wire  _T_6;
  wire [1:0] _T_7;
  wire  _GEN_0;
  wire [1:0] _T_8;
  wire [1:0] vec_nxt;
  wire  _T_11;
  wire [1:0] i_vec;
  wire  _T_15;
  wire  wptr_vec_r_vec_0;
  wire  rptr_vec_r_vec_0;
  wire [8:0] _T_69;
  wire [17:0] _T_87;
  wire [34:0] _T_88;
  wire [34:0] fifo_rf_r_0;
  SirvGnrlDfflrs rptr_vec_0_dfflrs (
    .clock(rptr_vec_0_dfflrs_clock),
    .reset(rptr_vec_0_dfflrs_reset),
    .io_lden(rptr_vec_0_dfflrs_io_lden),
    .io_dnxt(rptr_vec_0_dfflrs_io_dnxt),
    .io_qout(rptr_vec_0_dfflrs_io_qout)
  );
  SirvGnrlDfflrs wptr_vec_0_dfflrs (
    .clock(wptr_vec_0_dfflrs_clock),
    .reset(wptr_vec_0_dfflrs_reset),
    .io_lden(wptr_vec_0_dfflrs_io_lden),
    .io_dnxt(wptr_vec_0_dfflrs_io_dnxt),
    .io_qout(wptr_vec_0_dfflrs_io_qout)
  );
  SirvGnrlDfflrs vec_0_dfflrs (
    .clock(vec_0_dfflrs_clock),
    .reset(vec_0_dfflrs_reset),
    .io_lden(vec_0_dfflrs_io_lden),
    .io_dnxt(vec_0_dfflrs_io_dnxt),
    .io_qout(vec_0_dfflrs_io_qout)
  );
  SirvGnrlDfflr vec_31_dfflr (
    .clock(vec_31_dfflr_clock),
    .reset(vec_31_dfflr_reset),
    .io_lden(vec_31_dfflr_io_lden),
    .io_dnxt(vec_31_dfflr_io_dnxt),
    .io_qout(vec_31_dfflr_io_qout)
  );
  SirvGnrlDffl_2 _T_19 (
    .clock(_T_19_clock),
    .io_lden(_T_19_io_lden),
    .io_dnxt(_T_19_io_dnxt),
    .io_qout(_T_19_io_qout)
  );
  assign vec_r_vec_1 = vec_31_dfflr_io_qout;
  assign vec_r_vec_0 = vec_0_dfflrs_io_qout;
  assign vec_r = {vec_r_vec_1,vec_r_vec_0};
  assign ren = io_o_vld & io_o_rdy;
  assign wen = io_i_vld & io_i_rdy;
  assign _T_6 = vec_r[0];
  assign _T_7 = {_T_6,1'h1};
  assign _GEN_0 = vec_r[1:1];
  assign _T_8 = {{1'd0}, _GEN_0};
  assign vec_nxt = wen ? _T_7 : _T_8;
  assign _T_11 = vec_r[1];
  assign i_vec = {1'h0,_T_11};
  assign _T_15 = i_vec[0];
  assign wptr_vec_r_vec_0 = wptr_vec_0_dfflrs_io_qout;
  assign rptr_vec_r_vec_0 = rptr_vec_0_dfflrs_io_qout;
  assign _T_69 = {rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0};
  assign _T_87 = {rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,_T_69};
  assign _T_88 = {rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,rptr_vec_r_vec_0,_T_69,_T_87};
  assign fifo_rf_r_0 = _T_19_io_qout;
  assign io_i_rdy = ~ _T_15;
  assign io_o_vld = i_vec[0];
  assign io_o_dat = _T_88 & fifo_rf_r_0;
  assign rptr_vec_0_dfflrs_clock = clock;
  assign rptr_vec_0_dfflrs_reset = reset;
  assign rptr_vec_0_dfflrs_io_lden = io_o_vld & io_o_rdy;
  assign rptr_vec_0_dfflrs_io_dnxt = 1'h1;
  assign wptr_vec_0_dfflrs_clock = clock;
  assign wptr_vec_0_dfflrs_reset = reset;
  assign wptr_vec_0_dfflrs_io_lden = io_i_vld & io_i_rdy;
  assign wptr_vec_0_dfflrs_io_dnxt = 1'h1;
  assign vec_0_dfflrs_clock = clock;
  assign vec_0_dfflrs_reset = reset;
  assign vec_0_dfflrs_io_lden = ren ^ wen;
  assign vec_0_dfflrs_io_dnxt = vec_nxt[0];
  assign vec_31_dfflr_clock = clock;
  assign vec_31_dfflr_reset = reset;
  assign vec_31_dfflr_io_lden = ren ^ wen;
  assign vec_31_dfflr_io_dnxt = vec_nxt[1];
  assign _T_19_clock = clock;
  assign _T_19_io_lden = wen & wptr_vec_r_vec_0;
  assign _T_19_io_dnxt = io_i_dat;
endmodule
module SirvGnrlIcbBuffer(
  input         clock,
  input         reset,
  input         io_i_icb_cmd_valid,
  output        io_i_icb_cmd_ready,
  input         io_i_icb_cmd_read,
  input  [31:0] io_i_icb_cmd_addr,
  input  [31:0] io_i_icb_cmd_wdata,
  input         io_i_icb_cmd_usr,
  output        io_i_icb_rsp_valid,
  input         io_i_icb_rsp_ready,
  output        io_i_icb_rsp_err,
  output        io_i_icb_rsp_excl_ok,
  output [31:0] io_i_icb_rsp_rdata,
  output        io_o_icb_cmd_valid,
  input         io_o_icb_cmd_ready,
  output [31:0] io_o_icb_cmd_addr,
  output        io_o_icb_cmd_usr,
  input         io_o_icb_rsp_valid,
  output        io_o_icb_rsp_ready,
  input         io_o_icb_rsp_err,
  input         io_o_icb_rsp_excl_ok,
  input  [31:0] io_o_icb_rsp_rdata
);
  wire  u_sirv_gnrl_cmd_fifo_clock;
  wire  u_sirv_gnrl_cmd_fifo_reset;
  wire  u_sirv_gnrl_cmd_fifo_io_i_vld;
  wire  u_sirv_gnrl_cmd_fifo_io_i_rdy;
  wire [77:0] u_sirv_gnrl_cmd_fifo_io_i_dat;
  wire  u_sirv_gnrl_cmd_fifo_io_o_vld;
  wire  u_sirv_gnrl_cmd_fifo_io_o_rdy;
  wire [77:0] u_sirv_gnrl_cmd_fifo_io_o_dat;
  wire  u_sirv_gnrl_rsp_fifo_clock;
  wire  u_sirv_gnrl_rsp_fifo_reset;
  wire  u_sirv_gnrl_rsp_fifo_io_i_vld;
  wire  u_sirv_gnrl_rsp_fifo_io_i_rdy;
  wire [34:0] u_sirv_gnrl_rsp_fifo_io_i_dat;
  wire  u_sirv_gnrl_rsp_fifo_io_o_vld;
  wire  u_sirv_gnrl_rsp_fifo_io_o_rdy;
  wire [34:0] u_sirv_gnrl_rsp_fifo_io_o_dat;
  wire  outs_cnt_dfflr_clock;
  wire  outs_cnt_dfflr_reset;
  wire  outs_cnt_dfflr_io_lden;
  wire  outs_cnt_dfflr_io_dnxt;
  wire  outs_cnt_dfflr_io_qout;
  wire [69:0] _T_3;
  wire [7:0] _T_7;
  wire [1:0] _T_19;
  wire [32:0] _T_20;
  wire  outs_cnt_inc;
  wire  outs_cnt_dec;
  wire [1:0] _T_27;
  wire [1:0] _T_28;
  wire [1:0] outs_cnt_nxt;
  SirvGnrlFifo u_sirv_gnrl_cmd_fifo (
    .clock(u_sirv_gnrl_cmd_fifo_clock),
    .reset(u_sirv_gnrl_cmd_fifo_reset),
    .io_i_vld(u_sirv_gnrl_cmd_fifo_io_i_vld),
    .io_i_rdy(u_sirv_gnrl_cmd_fifo_io_i_rdy),
    .io_i_dat(u_sirv_gnrl_cmd_fifo_io_i_dat),
    .io_o_vld(u_sirv_gnrl_cmd_fifo_io_o_vld),
    .io_o_rdy(u_sirv_gnrl_cmd_fifo_io_o_rdy),
    .io_o_dat(u_sirv_gnrl_cmd_fifo_io_o_dat)
  );
  SirvGnrlFifo_1 u_sirv_gnrl_rsp_fifo (
    .clock(u_sirv_gnrl_rsp_fifo_clock),
    .reset(u_sirv_gnrl_rsp_fifo_reset),
    .io_i_vld(u_sirv_gnrl_rsp_fifo_io_i_vld),
    .io_i_rdy(u_sirv_gnrl_rsp_fifo_io_i_rdy),
    .io_i_dat(u_sirv_gnrl_rsp_fifo_io_i_dat),
    .io_o_vld(u_sirv_gnrl_rsp_fifo_io_o_vld),
    .io_o_rdy(u_sirv_gnrl_rsp_fifo_io_o_rdy),
    .io_o_dat(u_sirv_gnrl_rsp_fifo_io_o_dat)
  );
  SirvGnrlDfflr outs_cnt_dfflr (
    .clock(outs_cnt_dfflr_clock),
    .reset(outs_cnt_dfflr_reset),
    .io_lden(outs_cnt_dfflr_io_lden),
    .io_dnxt(outs_cnt_dfflr_io_dnxt),
    .io_qout(outs_cnt_dfflr_io_qout)
  );
  assign _T_3 = {io_i_icb_cmd_read,io_i_icb_cmd_addr,io_i_icb_cmd_wdata,5'h0};
  assign _T_7 = {3'h0,2'h0,2'h0,io_i_icb_cmd_usr};
  assign _T_19 = {io_o_icb_rsp_err,io_o_icb_rsp_excl_ok};
  assign _T_20 = {io_o_icb_rsp_rdata,1'h0};
  assign outs_cnt_inc = io_i_icb_cmd_valid & io_i_icb_cmd_ready;
  assign outs_cnt_dec = io_i_icb_rsp_valid & io_i_icb_rsp_ready;
  assign _T_27 = outs_cnt_dfflr_io_qout + 1'h1;
  assign _T_28 = outs_cnt_dfflr_io_qout - 1'h1;
  assign outs_cnt_nxt = outs_cnt_inc ? _T_27 : _T_28;
  assign io_i_icb_cmd_ready = u_sirv_gnrl_cmd_fifo_io_i_rdy;
  assign io_i_icb_rsp_valid = u_sirv_gnrl_rsp_fifo_io_o_vld;
  assign io_i_icb_rsp_err = u_sirv_gnrl_rsp_fifo_io_o_dat[34];
  assign io_i_icb_rsp_excl_ok = u_sirv_gnrl_rsp_fifo_io_o_dat[33];
  assign io_i_icb_rsp_rdata = u_sirv_gnrl_rsp_fifo_io_o_dat[32:1];
  assign io_o_icb_cmd_valid = u_sirv_gnrl_cmd_fifo_io_o_vld;
  assign io_o_icb_cmd_addr = u_sirv_gnrl_cmd_fifo_io_o_dat[76:45];
  assign io_o_icb_cmd_usr = u_sirv_gnrl_cmd_fifo_io_o_dat[0];
  assign io_o_icb_rsp_ready = u_sirv_gnrl_rsp_fifo_io_i_rdy;
  assign u_sirv_gnrl_cmd_fifo_clock = clock;
  assign u_sirv_gnrl_cmd_fifo_reset = reset;
  assign u_sirv_gnrl_cmd_fifo_io_i_vld = io_i_icb_cmd_valid;
  assign u_sirv_gnrl_cmd_fifo_io_i_dat = {_T_3,_T_7};
  assign u_sirv_gnrl_cmd_fifo_io_o_rdy = io_o_icb_cmd_ready;
  assign u_sirv_gnrl_rsp_fifo_clock = clock;
  assign u_sirv_gnrl_rsp_fifo_reset = reset;
  assign u_sirv_gnrl_rsp_fifo_io_i_vld = io_o_icb_rsp_valid;
  assign u_sirv_gnrl_rsp_fifo_io_i_dat = {_T_19,_T_20};
  assign u_sirv_gnrl_rsp_fifo_io_o_rdy = io_i_icb_rsp_ready;
  assign outs_cnt_dfflr_clock = clock;
  assign outs_cnt_dfflr_reset = reset;
  assign outs_cnt_dfflr_io_lden = outs_cnt_inc ^ outs_cnt_dec;
  assign outs_cnt_dfflr_io_dnxt = outs_cnt_nxt[0];
endmodule
module SirvGnrlDffl_3(
  input        clock,
  input        io_lden,
  input  [5:0] io_dnxt,
  output [5:0] io_qout
);
  reg [5:0] qout_r;
  reg [31:0] _RAND_0;
  assign io_qout = qout_r;
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
  qout_r = _RAND_0[5:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_lden) begin
      qout_r <= io_dnxt;
    end
  end
endmodule
module SirvGnrlPipeStage_1(
  input        clock,
  input        reset,
  input        io_i_vld,
  output       io_i_rdy,
  input  [5:0] io_i_dat,
  output       io_o_vld,
  input        io_o_rdy,
  output [5:0] io_o_dat
);
  wire  vld_dfflr_clock;
  wire  vld_dfflr_reset;
  wire  vld_dfflr_io_lden;
  wire  vld_dfflr_io_dnxt;
  wire  vld_dfflr_io_qout;
  wire  dat_dfflr_clock;
  wire  dat_dfflr_io_lden;
  wire [5:0] dat_dfflr_io_dnxt;
  wire [5:0] dat_dfflr_io_qout;
  wire  vld_set;
  wire  vld_clr;
  wire  _T;
  SirvGnrlDfflr vld_dfflr (
    .clock(vld_dfflr_clock),
    .reset(vld_dfflr_reset),
    .io_lden(vld_dfflr_io_lden),
    .io_dnxt(vld_dfflr_io_dnxt),
    .io_qout(vld_dfflr_io_qout)
  );
  SirvGnrlDffl_3 dat_dfflr (
    .clock(dat_dfflr_clock),
    .io_lden(dat_dfflr_io_lden),
    .io_dnxt(dat_dfflr_io_dnxt),
    .io_qout(dat_dfflr_io_qout)
  );
  assign vld_set = io_i_vld & io_i_rdy;
  assign vld_clr = io_o_vld & io_o_rdy;
  assign _T = ~ vld_clr;
  assign io_i_rdy = ~ vld_dfflr_io_qout;
  assign io_o_vld = vld_dfflr_io_qout;
  assign io_o_dat = dat_dfflr_io_qout;
  assign vld_dfflr_clock = clock;
  assign vld_dfflr_reset = reset;
  assign vld_dfflr_io_lden = vld_set | vld_clr;
  assign vld_dfflr_io_dnxt = vld_set | _T;
  assign dat_dfflr_clock = clock;
  assign dat_dfflr_io_lden = io_i_vld & io_i_rdy;
  assign dat_dfflr_io_dnxt = io_i_dat;
endmodule
module SirvGnrlIcbSplt(
  input          clock,
  input          reset,
  input  [5:0]   io_i_icb_splt_indic,
  input          io_i_icb_cmd_valid,
  output         io_i_icb_cmd_ready,
  output         io_i_icb_rsp_valid,
  input          io_i_icb_rsp_ready,
  output         io_i_icb_rsp_err,
  output         io_i_icb_rsp_excl_ok,
  output [31:0]  io_i_icb_rsp_rdata,
  input  [5:0]   io_o_bus_icb_cmd_ready,
  output [5:0]   io_o_bus_icb_cmd_valid,
  input  [5:0]   io_o_bus_icb_rsp_valid,
  output [5:0]   io_o_bus_icb_rsp_ready,
  input  [5:0]   io_o_bus_icb_rsp_excl_ok,
  input  [191:0] io_o_bus_icb_rsp_rdata
);
  wire  u_sirv_gnrl_rspid_fifo_clock;
  wire  u_sirv_gnrl_rspid_fifo_reset;
  wire  u_sirv_gnrl_rspid_fifo_io_i_vld;
  wire  u_sirv_gnrl_rspid_fifo_io_i_rdy;
  wire [5:0] u_sirv_gnrl_rspid_fifo_io_i_dat;
  wire  u_sirv_gnrl_rspid_fifo_io_o_vld;
  wire  u_sirv_gnrl_rspid_fifo_io_o_rdy;
  wire [5:0] u_sirv_gnrl_rspid_fifo_io_o_dat;
  wire  o_icb_cmd_ready_0;
  wire  o_icb_rsp_valid_0;
  wire  o_icb_rsp_excl_ok_0;
  wire [31:0] o_icb_rsp_rdata_0;
  wire  o_icb_cmd_ready_1;
  wire  o_icb_rsp_valid_1;
  wire  o_icb_rsp_excl_ok_1;
  wire [31:0] o_icb_rsp_rdata_1;
  wire  o_icb_cmd_ready_2;
  wire  o_icb_rsp_valid_2;
  wire  o_icb_rsp_excl_ok_2;
  wire [31:0] o_icb_rsp_rdata_2;
  wire  o_icb_cmd_ready_3;
  wire  o_icb_rsp_valid_3;
  wire  o_icb_rsp_excl_ok_3;
  wire [31:0] o_icb_rsp_rdata_3;
  wire  o_icb_cmd_ready_4;
  wire  o_icb_rsp_valid_4;
  wire  o_icb_rsp_excl_ok_4;
  wire [31:0] o_icb_rsp_rdata_4;
  wire  o_icb_cmd_ready_5;
  wire  o_icb_rsp_valid_5;
  wire  o_icb_rsp_excl_ok_5;
  wire [31:0] o_icb_rsp_rdata_5;
  wire  _T_36;
  wire  _T_37;
  wire  _T_39;
  wire  _T_40;
  wire  _T_41;
  wire  _T_42;
  wire  _T_43;
  wire  _T_44;
  wire  _T_45;
  wire  _T_46;
  wire  _T_47;
  wire  _T_48;
  wire  _T_49;
  wire  _T_50;
  wire  _T_51;
  wire  _T_52;
  wire  i_icb_cmd_ready_pre;
  wire  rspid_fifo_empty;
  wire  _T_53;
  wire  _T_54;
  wire  _T_55;
  wire  cmd_diff_branch;
  wire  _T_56;
  wire  _T_57;
  wire  rspid_fifo_full;
  wire  _T_58;
  wire [5:0] o_icb_rsp_port_id;
  wire  rspid_fifo_wen;
  wire  _T_62;
  wire  rspid_fifo_ren;
  wire  rspid_fifo_bypass;
  wire  _T_63;
  wire  _T_69;
  wire  i_icb_cmd_valid_pre;
  wire  o_icb_cmd_valid_0;
  wire  o_icb_cmd_valid_1;
  wire  o_icb_cmd_valid_2;
  wire  o_icb_cmd_valid_3;
  wire  o_icb_cmd_valid_4;
  wire  o_icb_cmd_valid_5;
  wire  _T_82;
  wire  o_icb_rsp_ready_0;
  wire  _T_84;
  wire  o_icb_rsp_ready_1;
  wire  _T_86;
  wire  o_icb_rsp_ready_2;
  wire  _T_88;
  wire  o_icb_rsp_ready_3;
  wire  _T_90;
  wire  o_icb_rsp_ready_4;
  wire  _T_92;
  wire  o_icb_rsp_ready_5;
  wire [5:0] _T_98;
  wire [5:0] mid_temp;
  wire  _T_99;
  wire  _T_101;
  wire  _T_102;
  wire  _T_103;
  wire  _T_104;
  wire  _T_105;
  wire  _T_106;
  wire  _T_107;
  wire  _T_108;
  wire  _T_109;
  wire  _T_128;
  wire  _T_131;
  wire  _T_132;
  wire  _T_134;
  wire  _T_135;
  wire  _T_137;
  wire  _T_138;
  wire  _T_140;
  wire  _T_141;
  wire  _T_143;
  wire [7:0] _T_182;
  wire [15:0] _T_190;
  wire [31:0] _T_206;
  wire [31:0] _T_207;
  wire [7:0] _T_216;
  wire [15:0] _T_224;
  wire [31:0] _T_240;
  wire [31:0] _T_241;
  wire [31:0] _T_242;
  wire [7:0] _T_250;
  wire [15:0] _T_258;
  wire [31:0] _T_274;
  wire [31:0] _T_275;
  wire [31:0] _T_276;
  wire [7:0] _T_284;
  wire [15:0] _T_292;
  wire [31:0] _T_308;
  wire [31:0] _T_309;
  wire [31:0] _T_310;
  wire [7:0] _T_318;
  wire [15:0] _T_326;
  wire [31:0] _T_342;
  wire [31:0] _T_343;
  wire [31:0] _T_344;
  wire [7:0] _T_352;
  wire [15:0] _T_360;
  wire [31:0] _T_376;
  wire [31:0] _T_377;
  wire [2:0] _T_396;
  wire [2:0] _T_398;
  wire [2:0] _T_451;
  wire [2:0] _T_453;
  SirvGnrlPipeStage_1 u_sirv_gnrl_rspid_fifo (
    .clock(u_sirv_gnrl_rspid_fifo_clock),
    .reset(u_sirv_gnrl_rspid_fifo_reset),
    .io_i_vld(u_sirv_gnrl_rspid_fifo_io_i_vld),
    .io_i_rdy(u_sirv_gnrl_rspid_fifo_io_i_rdy),
    .io_i_dat(u_sirv_gnrl_rspid_fifo_io_i_dat),
    .io_o_vld(u_sirv_gnrl_rspid_fifo_io_o_vld),
    .io_o_rdy(u_sirv_gnrl_rspid_fifo_io_o_rdy),
    .io_o_dat(u_sirv_gnrl_rspid_fifo_io_o_dat)
  );
  assign o_icb_cmd_ready_0 = io_o_bus_icb_cmd_ready[0];
  assign o_icb_rsp_valid_0 = io_o_bus_icb_rsp_valid[0];
  assign o_icb_rsp_excl_ok_0 = io_o_bus_icb_rsp_excl_ok[0];
  assign o_icb_rsp_rdata_0 = io_o_bus_icb_rsp_rdata[31:0];
  assign o_icb_cmd_ready_1 = io_o_bus_icb_cmd_ready[1];
  assign o_icb_rsp_valid_1 = io_o_bus_icb_rsp_valid[1];
  assign o_icb_rsp_excl_ok_1 = io_o_bus_icb_rsp_excl_ok[1];
  assign o_icb_rsp_rdata_1 = io_o_bus_icb_rsp_rdata[63:32];
  assign o_icb_cmd_ready_2 = io_o_bus_icb_cmd_ready[2];
  assign o_icb_rsp_valid_2 = io_o_bus_icb_rsp_valid[2];
  assign o_icb_rsp_excl_ok_2 = io_o_bus_icb_rsp_excl_ok[2];
  assign o_icb_rsp_rdata_2 = io_o_bus_icb_rsp_rdata[95:64];
  assign o_icb_cmd_ready_3 = io_o_bus_icb_cmd_ready[3];
  assign o_icb_rsp_valid_3 = io_o_bus_icb_rsp_valid[3];
  assign o_icb_rsp_excl_ok_3 = io_o_bus_icb_rsp_excl_ok[3];
  assign o_icb_rsp_rdata_3 = io_o_bus_icb_rsp_rdata[127:96];
  assign o_icb_cmd_ready_4 = io_o_bus_icb_cmd_ready[4];
  assign o_icb_rsp_valid_4 = io_o_bus_icb_rsp_valid[4];
  assign o_icb_rsp_excl_ok_4 = io_o_bus_icb_rsp_excl_ok[4];
  assign o_icb_rsp_rdata_4 = io_o_bus_icb_rsp_rdata[159:128];
  assign o_icb_cmd_ready_5 = io_o_bus_icb_cmd_ready[5];
  assign o_icb_rsp_valid_5 = io_o_bus_icb_rsp_valid[5];
  assign o_icb_rsp_excl_ok_5 = io_o_bus_icb_rsp_excl_ok[5];
  assign o_icb_rsp_rdata_5 = io_o_bus_icb_rsp_rdata[191:160];
  assign _T_36 = io_i_icb_splt_indic[0];
  assign _T_37 = _T_36 & o_icb_cmd_ready_0;
  assign _T_39 = io_i_icb_splt_indic[1];
  assign _T_40 = _T_39 & o_icb_cmd_ready_1;
  assign _T_41 = _T_37 | _T_40;
  assign _T_42 = io_i_icb_splt_indic[2];
  assign _T_43 = _T_42 & o_icb_cmd_ready_2;
  assign _T_44 = _T_41 | _T_43;
  assign _T_45 = io_i_icb_splt_indic[3];
  assign _T_46 = _T_45 & o_icb_cmd_ready_3;
  assign _T_47 = _T_44 | _T_46;
  assign _T_48 = io_i_icb_splt_indic[4];
  assign _T_49 = _T_48 & o_icb_cmd_ready_4;
  assign _T_50 = _T_47 | _T_49;
  assign _T_51 = io_i_icb_splt_indic[5];
  assign _T_52 = _T_51 & o_icb_cmd_ready_5;
  assign i_icb_cmd_ready_pre = _T_50 | _T_52;
  assign rspid_fifo_empty = ~ u_sirv_gnrl_rspid_fifo_io_o_vld;
  assign _T_53 = ~ rspid_fifo_empty;
  assign _T_54 = u_sirv_gnrl_rspid_fifo_io_i_dat == u_sirv_gnrl_rspid_fifo_io_o_dat;
  assign _T_55 = ~ _T_54;
  assign cmd_diff_branch = _T_53 & _T_55;
  assign _T_56 = ~ cmd_diff_branch;
  assign _T_57 = i_icb_cmd_ready_pre & _T_56;
  assign rspid_fifo_full = ~ u_sirv_gnrl_rspid_fifo_io_i_rdy;
  assign _T_58 = ~ rspid_fifo_full;
  assign o_icb_rsp_port_id = rspid_fifo_empty ? u_sirv_gnrl_rspid_fifo_io_i_dat : u_sirv_gnrl_rspid_fifo_io_o_dat;
  assign rspid_fifo_wen = io_i_icb_cmd_valid & io_i_icb_cmd_ready;
  assign _T_62 = rspid_fifo_empty & rspid_fifo_wen;
  assign rspid_fifo_ren = io_i_icb_rsp_valid & io_i_icb_rsp_ready;
  assign rspid_fifo_bypass = _T_62 & rspid_fifo_ren;
  assign _T_63 = ~ rspid_fifo_bypass;
  assign _T_69 = io_i_icb_cmd_valid & _T_56;
  assign i_icb_cmd_valid_pre = _T_69 & _T_58;
  assign o_icb_cmd_valid_0 = _T_36 & i_icb_cmd_valid_pre;
  assign o_icb_cmd_valid_1 = _T_39 & i_icb_cmd_valid_pre;
  assign o_icb_cmd_valid_2 = _T_42 & i_icb_cmd_valid_pre;
  assign o_icb_cmd_valid_3 = _T_45 & i_icb_cmd_valid_pre;
  assign o_icb_cmd_valid_4 = _T_48 & i_icb_cmd_valid_pre;
  assign o_icb_cmd_valid_5 = _T_51 & i_icb_cmd_valid_pre;
  assign _T_82 = o_icb_rsp_port_id[0];
  assign o_icb_rsp_ready_0 = _T_82 & io_i_icb_rsp_ready;
  assign _T_84 = o_icb_rsp_port_id[1];
  assign o_icb_rsp_ready_1 = _T_84 & io_i_icb_rsp_ready;
  assign _T_86 = o_icb_rsp_port_id[2];
  assign o_icb_rsp_ready_2 = _T_86 & io_i_icb_rsp_ready;
  assign _T_88 = o_icb_rsp_port_id[3];
  assign o_icb_rsp_ready_3 = _T_88 & io_i_icb_rsp_ready;
  assign _T_90 = o_icb_rsp_port_id[4];
  assign o_icb_rsp_ready_4 = _T_90 & io_i_icb_rsp_ready;
  assign _T_92 = o_icb_rsp_port_id[5];
  assign o_icb_rsp_ready_5 = _T_92 & io_i_icb_rsp_ready;
  assign _T_98 = {o_icb_rsp_valid_5,o_icb_rsp_valid_4,o_icb_rsp_valid_3,o_icb_rsp_valid_2,o_icb_rsp_valid_1,o_icb_rsp_valid_0};
  assign mid_temp = _T_98 & o_icb_rsp_port_id;
  assign _T_99 = mid_temp[0];
  assign _T_101 = mid_temp[1];
  assign _T_102 = _T_99 | _T_101;
  assign _T_103 = mid_temp[2];
  assign _T_104 = _T_102 | _T_103;
  assign _T_105 = mid_temp[3];
  assign _T_106 = _T_104 | _T_105;
  assign _T_107 = mid_temp[4];
  assign _T_108 = _T_106 | _T_107;
  assign _T_109 = mid_temp[5];
  assign _T_128 = _T_82 & o_icb_rsp_excl_ok_0;
  assign _T_131 = _T_84 & o_icb_rsp_excl_ok_1;
  assign _T_132 = _T_128 | _T_131;
  assign _T_134 = _T_86 & o_icb_rsp_excl_ok_2;
  assign _T_135 = _T_132 | _T_134;
  assign _T_137 = _T_88 & o_icb_rsp_excl_ok_3;
  assign _T_138 = _T_135 | _T_137;
  assign _T_140 = _T_90 & o_icb_rsp_excl_ok_4;
  assign _T_141 = _T_138 | _T_140;
  assign _T_143 = _T_92 & o_icb_rsp_excl_ok_5;
  assign _T_182 = {_T_82,_T_82,_T_82,_T_82,_T_82,_T_82,_T_82,_T_82};
  assign _T_190 = {_T_82,_T_82,_T_82,_T_82,_T_82,_T_82,_T_82,_T_82,_T_182};
  assign _T_206 = {_T_82,_T_82,_T_82,_T_82,_T_82,_T_82,_T_82,_T_82,_T_182,_T_190};
  assign _T_207 = _T_206 & o_icb_rsp_rdata_0;
  assign _T_216 = {_T_84,_T_84,_T_84,_T_84,_T_84,_T_84,_T_84,_T_84};
  assign _T_224 = {_T_84,_T_84,_T_84,_T_84,_T_84,_T_84,_T_84,_T_84,_T_216};
  assign _T_240 = {_T_84,_T_84,_T_84,_T_84,_T_84,_T_84,_T_84,_T_84,_T_216,_T_224};
  assign _T_241 = _T_240 & o_icb_rsp_rdata_1;
  assign _T_242 = _T_207 | _T_241;
  assign _T_250 = {_T_86,_T_86,_T_86,_T_86,_T_86,_T_86,_T_86,_T_86};
  assign _T_258 = {_T_86,_T_86,_T_86,_T_86,_T_86,_T_86,_T_86,_T_86,_T_250};
  assign _T_274 = {_T_86,_T_86,_T_86,_T_86,_T_86,_T_86,_T_86,_T_86,_T_250,_T_258};
  assign _T_275 = _T_274 & o_icb_rsp_rdata_2;
  assign _T_276 = _T_242 | _T_275;
  assign _T_284 = {_T_88,_T_88,_T_88,_T_88,_T_88,_T_88,_T_88,_T_88};
  assign _T_292 = {_T_88,_T_88,_T_88,_T_88,_T_88,_T_88,_T_88,_T_88,_T_284};
  assign _T_308 = {_T_88,_T_88,_T_88,_T_88,_T_88,_T_88,_T_88,_T_88,_T_284,_T_292};
  assign _T_309 = _T_308 & o_icb_rsp_rdata_3;
  assign _T_310 = _T_276 | _T_309;
  assign _T_318 = {_T_90,_T_90,_T_90,_T_90,_T_90,_T_90,_T_90,_T_90};
  assign _T_326 = {_T_90,_T_90,_T_90,_T_90,_T_90,_T_90,_T_90,_T_90,_T_318};
  assign _T_342 = {_T_90,_T_90,_T_90,_T_90,_T_90,_T_90,_T_90,_T_90,_T_318,_T_326};
  assign _T_343 = _T_342 & o_icb_rsp_rdata_4;
  assign _T_344 = _T_310 | _T_343;
  assign _T_352 = {_T_92,_T_92,_T_92,_T_92,_T_92,_T_92,_T_92,_T_92};
  assign _T_360 = {_T_92,_T_92,_T_92,_T_92,_T_92,_T_92,_T_92,_T_92,_T_352};
  assign _T_376 = {_T_92,_T_92,_T_92,_T_92,_T_92,_T_92,_T_92,_T_92,_T_352,_T_360};
  assign _T_377 = _T_376 & o_icb_rsp_rdata_5;
  assign _T_396 = {o_icb_cmd_valid_5,o_icb_cmd_valid_4,o_icb_cmd_valid_3};
  assign _T_398 = {o_icb_cmd_valid_2,o_icb_cmd_valid_1,o_icb_cmd_valid_0};
  assign _T_451 = {o_icb_rsp_ready_5,o_icb_rsp_ready_4,o_icb_rsp_ready_3};
  assign _T_453 = {o_icb_rsp_ready_2,o_icb_rsp_ready_1,o_icb_rsp_ready_0};
  assign io_i_icb_cmd_ready = _T_57 & _T_58;
  assign io_i_icb_rsp_valid = _T_108 | _T_109;
  assign io_i_icb_rsp_err = o_icb_rsp_port_id[5];
  assign io_i_icb_rsp_excl_ok = _T_141 | _T_143;
  assign io_i_icb_rsp_rdata = _T_344 | _T_377;
  assign io_o_bus_icb_cmd_valid = {_T_396,_T_398};
  assign io_o_bus_icb_rsp_ready = {_T_451,_T_453};
  assign u_sirv_gnrl_rspid_fifo_clock = clock;
  assign u_sirv_gnrl_rspid_fifo_reset = reset;
  assign u_sirv_gnrl_rspid_fifo_io_i_vld = rspid_fifo_wen & _T_63;
  assign u_sirv_gnrl_rspid_fifo_io_i_dat = io_i_icb_splt_indic;
  assign u_sirv_gnrl_rspid_fifo_io_o_rdy = rspid_fifo_ren & _T_63;
endmodule
module E203Biu(
  input         clock,
  input         reset,
  input         io_lsu2biu_icb_cmd_valid,
  output        io_lsu2biu_icb_cmd_ready,
  input  [31:0] io_lsu2biu_icb_cmd_addr,
  input         io_lsu2biu_icb_cmd_read,
  input  [31:0] io_lsu2biu_icb_cmd_wdata,
  output        io_lsu2biu_icb_rsp_valid,
  input         io_lsu2biu_icb_rsp_ready,
  output        io_lsu2biu_icb_rsp_err,
  output        io_lsu2biu_icb_rsp_excl_ok,
  output [31:0] io_lsu2biu_icb_rsp_rdata,
  input         io_ppi_icb_cmd_ready,
  input         io_ppi_icb_rsp_valid,
  input         io_ppi_icb_rsp_excl_ok,
  input  [31:0] io_ppi_icb_rsp_rdata
);
  wire  u_biu_icb_arbt_clock;
  wire  u_biu_icb_arbt_reset;
  wire  u_biu_icb_arbt_io_o_icb_cmd_valid;
  wire  u_biu_icb_arbt_io_o_icb_cmd_ready;
  wire  u_biu_icb_arbt_io_o_icb_cmd_read;
  wire [31:0] u_biu_icb_arbt_io_o_icb_cmd_addr;
  wire [31:0] u_biu_icb_arbt_io_o_icb_cmd_wdata;
  wire  u_biu_icb_arbt_io_o_icb_cmd_usr;
  wire  u_biu_icb_arbt_io_o_icb_rsp_valid;
  wire  u_biu_icb_arbt_io_o_icb_rsp_ready;
  wire  u_biu_icb_arbt_io_o_icb_rsp_err;
  wire  u_biu_icb_arbt_io_o_icb_rsp_excl_ok;
  wire [31:0] u_biu_icb_arbt_io_o_icb_rsp_rdata;
  wire [1:0] u_biu_icb_arbt_io_i_bus_icb_cmd_ready;
  wire [1:0] u_biu_icb_arbt_io_i_bus_icb_cmd_valid;
  wire [1:0] u_biu_icb_arbt_io_i_bus_icb_cmd_read;
  wire [63:0] u_biu_icb_arbt_io_i_bus_icb_cmd_addr;
  wire [63:0] u_biu_icb_arbt_io_i_bus_icb_cmd_wdata;
  wire [1:0] u_biu_icb_arbt_io_i_bus_icb_rsp_valid;
  wire [1:0] u_biu_icb_arbt_io_i_bus_icb_rsp_ready;
  wire [1:0] u_biu_icb_arbt_io_i_bus_icb_rsp_err;
  wire [1:0] u_biu_icb_arbt_io_i_bus_icb_rsp_excl_ok;
  wire [63:0] u_biu_icb_arbt_io_i_bus_icb_rsp_rdata;
  wire  u_sirv_gnrl_icb_buffer_clock;
  wire  u_sirv_gnrl_icb_buffer_reset;
  wire  u_sirv_gnrl_icb_buffer_io_i_icb_cmd_valid;
  wire  u_sirv_gnrl_icb_buffer_io_i_icb_cmd_ready;
  wire  u_sirv_gnrl_icb_buffer_io_i_icb_cmd_read;
  wire [31:0] u_sirv_gnrl_icb_buffer_io_i_icb_cmd_addr;
  wire [31:0] u_sirv_gnrl_icb_buffer_io_i_icb_cmd_wdata;
  wire  u_sirv_gnrl_icb_buffer_io_i_icb_cmd_usr;
  wire  u_sirv_gnrl_icb_buffer_io_i_icb_rsp_valid;
  wire  u_sirv_gnrl_icb_buffer_io_i_icb_rsp_ready;
  wire  u_sirv_gnrl_icb_buffer_io_i_icb_rsp_err;
  wire  u_sirv_gnrl_icb_buffer_io_i_icb_rsp_excl_ok;
  wire [31:0] u_sirv_gnrl_icb_buffer_io_i_icb_rsp_rdata;
  wire  u_sirv_gnrl_icb_buffer_io_o_icb_cmd_valid;
  wire  u_sirv_gnrl_icb_buffer_io_o_icb_cmd_ready;
  wire [31:0] u_sirv_gnrl_icb_buffer_io_o_icb_cmd_addr;
  wire  u_sirv_gnrl_icb_buffer_io_o_icb_cmd_usr;
  wire  u_sirv_gnrl_icb_buffer_io_o_icb_rsp_valid;
  wire  u_sirv_gnrl_icb_buffer_io_o_icb_rsp_ready;
  wire  u_sirv_gnrl_icb_buffer_io_o_icb_rsp_err;
  wire  u_sirv_gnrl_icb_buffer_io_o_icb_rsp_excl_ok;
  wire [31:0] u_sirv_gnrl_icb_buffer_io_o_icb_rsp_rdata;
  wire  u_biu_icb_splt_clock;
  wire  u_biu_icb_splt_reset;
  wire [5:0] u_biu_icb_splt_io_i_icb_splt_indic;
  wire  u_biu_icb_splt_io_i_icb_cmd_valid;
  wire  u_biu_icb_splt_io_i_icb_cmd_ready;
  wire  u_biu_icb_splt_io_i_icb_rsp_valid;
  wire  u_biu_icb_splt_io_i_icb_rsp_ready;
  wire  u_biu_icb_splt_io_i_icb_rsp_err;
  wire  u_biu_icb_splt_io_i_icb_rsp_excl_ok;
  wire [31:0] u_biu_icb_splt_io_i_icb_rsp_rdata;
  wire [5:0] u_biu_icb_splt_io_o_bus_icb_cmd_ready;
  wire [5:0] u_biu_icb_splt_io_o_bus_icb_cmd_valid;
  wire [5:0] u_biu_icb_splt_io_o_bus_icb_rsp_valid;
  wire [5:0] u_biu_icb_splt_io_o_bus_icb_rsp_ready;
  wire [5:0] u_biu_icb_splt_io_o_bus_icb_rsp_excl_ok;
  wire [191:0] u_biu_icb_splt_io_o_bus_icb_rsp_rdata;
  wire  ifuerr_icb_rsp_valid;
  wire [2:0] _T_73;
  wire [2:0] _T_83;
  wire [95:0] _T_88;
  wire  ifuerr_icb_cmd_ready;
  wire [2:0] _T_98;
  wire [3:0] _T_102;
  wire  buf_icb_cmd_ppi;
  wire  buf_icb_sel_ifuerr;
  wire  _T_117;
  wire  buf_icb_sel_ppi;
  wire [2:0] _T_120;
  SirvGnrlIcbArbt u_biu_icb_arbt (
    .clock(u_biu_icb_arbt_clock),
    .reset(u_biu_icb_arbt_reset),
    .io_o_icb_cmd_valid(u_biu_icb_arbt_io_o_icb_cmd_valid),
    .io_o_icb_cmd_ready(u_biu_icb_arbt_io_o_icb_cmd_ready),
    .io_o_icb_cmd_read(u_biu_icb_arbt_io_o_icb_cmd_read),
    .io_o_icb_cmd_addr(u_biu_icb_arbt_io_o_icb_cmd_addr),
    .io_o_icb_cmd_wdata(u_biu_icb_arbt_io_o_icb_cmd_wdata),
    .io_o_icb_cmd_usr(u_biu_icb_arbt_io_o_icb_cmd_usr),
    .io_o_icb_rsp_valid(u_biu_icb_arbt_io_o_icb_rsp_valid),
    .io_o_icb_rsp_ready(u_biu_icb_arbt_io_o_icb_rsp_ready),
    .io_o_icb_rsp_err(u_biu_icb_arbt_io_o_icb_rsp_err),
    .io_o_icb_rsp_excl_ok(u_biu_icb_arbt_io_o_icb_rsp_excl_ok),
    .io_o_icb_rsp_rdata(u_biu_icb_arbt_io_o_icb_rsp_rdata),
    .io_i_bus_icb_cmd_ready(u_biu_icb_arbt_io_i_bus_icb_cmd_ready),
    .io_i_bus_icb_cmd_valid(u_biu_icb_arbt_io_i_bus_icb_cmd_valid),
    .io_i_bus_icb_cmd_read(u_biu_icb_arbt_io_i_bus_icb_cmd_read),
    .io_i_bus_icb_cmd_addr(u_biu_icb_arbt_io_i_bus_icb_cmd_addr),
    .io_i_bus_icb_cmd_wdata(u_biu_icb_arbt_io_i_bus_icb_cmd_wdata),
    .io_i_bus_icb_rsp_valid(u_biu_icb_arbt_io_i_bus_icb_rsp_valid),
    .io_i_bus_icb_rsp_ready(u_biu_icb_arbt_io_i_bus_icb_rsp_ready),
    .io_i_bus_icb_rsp_err(u_biu_icb_arbt_io_i_bus_icb_rsp_err),
    .io_i_bus_icb_rsp_excl_ok(u_biu_icb_arbt_io_i_bus_icb_rsp_excl_ok),
    .io_i_bus_icb_rsp_rdata(u_biu_icb_arbt_io_i_bus_icb_rsp_rdata)
  );
  SirvGnrlIcbBuffer u_sirv_gnrl_icb_buffer (
    .clock(u_sirv_gnrl_icb_buffer_clock),
    .reset(u_sirv_gnrl_icb_buffer_reset),
    .io_i_icb_cmd_valid(u_sirv_gnrl_icb_buffer_io_i_icb_cmd_valid),
    .io_i_icb_cmd_ready(u_sirv_gnrl_icb_buffer_io_i_icb_cmd_ready),
    .io_i_icb_cmd_read(u_sirv_gnrl_icb_buffer_io_i_icb_cmd_read),
    .io_i_icb_cmd_addr(u_sirv_gnrl_icb_buffer_io_i_icb_cmd_addr),
    .io_i_icb_cmd_wdata(u_sirv_gnrl_icb_buffer_io_i_icb_cmd_wdata),
    .io_i_icb_cmd_usr(u_sirv_gnrl_icb_buffer_io_i_icb_cmd_usr),
    .io_i_icb_rsp_valid(u_sirv_gnrl_icb_buffer_io_i_icb_rsp_valid),
    .io_i_icb_rsp_ready(u_sirv_gnrl_icb_buffer_io_i_icb_rsp_ready),
    .io_i_icb_rsp_err(u_sirv_gnrl_icb_buffer_io_i_icb_rsp_err),
    .io_i_icb_rsp_excl_ok(u_sirv_gnrl_icb_buffer_io_i_icb_rsp_excl_ok),
    .io_i_icb_rsp_rdata(u_sirv_gnrl_icb_buffer_io_i_icb_rsp_rdata),
    .io_o_icb_cmd_valid(u_sirv_gnrl_icb_buffer_io_o_icb_cmd_valid),
    .io_o_icb_cmd_ready(u_sirv_gnrl_icb_buffer_io_o_icb_cmd_ready),
    .io_o_icb_cmd_addr(u_sirv_gnrl_icb_buffer_io_o_icb_cmd_addr),
    .io_o_icb_cmd_usr(u_sirv_gnrl_icb_buffer_io_o_icb_cmd_usr),
    .io_o_icb_rsp_valid(u_sirv_gnrl_icb_buffer_io_o_icb_rsp_valid),
    .io_o_icb_rsp_ready(u_sirv_gnrl_icb_buffer_io_o_icb_rsp_ready),
    .io_o_icb_rsp_err(u_sirv_gnrl_icb_buffer_io_o_icb_rsp_err),
    .io_o_icb_rsp_excl_ok(u_sirv_gnrl_icb_buffer_io_o_icb_rsp_excl_ok),
    .io_o_icb_rsp_rdata(u_sirv_gnrl_icb_buffer_io_o_icb_rsp_rdata)
  );
  SirvGnrlIcbSplt u_biu_icb_splt (
    .clock(u_biu_icb_splt_clock),
    .reset(u_biu_icb_splt_reset),
    .io_i_icb_splt_indic(u_biu_icb_splt_io_i_icb_splt_indic),
    .io_i_icb_cmd_valid(u_biu_icb_splt_io_i_icb_cmd_valid),
    .io_i_icb_cmd_ready(u_biu_icb_splt_io_i_icb_cmd_ready),
    .io_i_icb_rsp_valid(u_biu_icb_splt_io_i_icb_rsp_valid),
    .io_i_icb_rsp_ready(u_biu_icb_splt_io_i_icb_rsp_ready),
    .io_i_icb_rsp_err(u_biu_icb_splt_io_i_icb_rsp_err),
    .io_i_icb_rsp_excl_ok(u_biu_icb_splt_io_i_icb_rsp_excl_ok),
    .io_i_icb_rsp_rdata(u_biu_icb_splt_io_i_icb_rsp_rdata),
    .io_o_bus_icb_cmd_ready(u_biu_icb_splt_io_o_bus_icb_cmd_ready),
    .io_o_bus_icb_cmd_valid(u_biu_icb_splt_io_o_bus_icb_cmd_valid),
    .io_o_bus_icb_rsp_valid(u_biu_icb_splt_io_o_bus_icb_rsp_valid),
    .io_o_bus_icb_rsp_ready(u_biu_icb_splt_io_o_bus_icb_rsp_ready),
    .io_o_bus_icb_rsp_excl_ok(u_biu_icb_splt_io_o_bus_icb_rsp_excl_ok),
    .io_o_bus_icb_rsp_rdata(u_biu_icb_splt_io_o_bus_icb_rsp_rdata)
  );
  assign ifuerr_icb_rsp_valid = u_biu_icb_splt_io_o_bus_icb_cmd_valid[5];
  assign _T_73 = {ifuerr_icb_rsp_valid,io_ppi_icb_rsp_valid,1'h0};
  assign _T_83 = {1'h0,io_ppi_icb_rsp_excl_ok,1'h0};
  assign _T_88 = {32'h0,io_ppi_icb_rsp_rdata,32'h0};
  assign ifuerr_icb_cmd_ready = u_biu_icb_splt_io_o_bus_icb_rsp_ready[5];
  assign _T_98 = {ifuerr_icb_cmd_ready,io_ppi_icb_cmd_ready,1'h0};
  assign _T_102 = u_sirv_gnrl_icb_buffer_io_o_icb_cmd_addr[31:28];
  assign buf_icb_cmd_ppi = _T_102 == 4'h0;
  assign buf_icb_sel_ifuerr = buf_icb_cmd_ppi & u_sirv_gnrl_icb_buffer_io_o_icb_cmd_usr;
  assign _T_117 = ~ u_sirv_gnrl_icb_buffer_io_o_icb_cmd_usr;
  assign buf_icb_sel_ppi = buf_icb_cmd_ppi & _T_117;
  assign _T_120 = {buf_icb_sel_ifuerr,buf_icb_sel_ppi,1'h0};
  assign io_lsu2biu_icb_cmd_ready = u_biu_icb_arbt_io_i_bus_icb_cmd_ready[0];
  assign io_lsu2biu_icb_rsp_valid = u_biu_icb_arbt_io_i_bus_icb_rsp_valid[0];
  assign io_lsu2biu_icb_rsp_err = u_biu_icb_arbt_io_i_bus_icb_rsp_err[0];
  assign io_lsu2biu_icb_rsp_excl_ok = u_biu_icb_arbt_io_i_bus_icb_rsp_excl_ok[0];
  assign io_lsu2biu_icb_rsp_rdata = u_biu_icb_arbt_io_i_bus_icb_rsp_rdata[31:0];
  assign u_biu_icb_arbt_clock = clock;
  assign u_biu_icb_arbt_reset = reset;
  assign u_biu_icb_arbt_io_o_icb_cmd_ready = u_sirv_gnrl_icb_buffer_io_i_icb_cmd_ready;
  assign u_biu_icb_arbt_io_o_icb_rsp_valid = u_sirv_gnrl_icb_buffer_io_i_icb_rsp_valid;
  assign u_biu_icb_arbt_io_o_icb_rsp_err = u_sirv_gnrl_icb_buffer_io_i_icb_rsp_err;
  assign u_biu_icb_arbt_io_o_icb_rsp_excl_ok = u_sirv_gnrl_icb_buffer_io_i_icb_rsp_excl_ok;
  assign u_biu_icb_arbt_io_o_icb_rsp_rdata = u_sirv_gnrl_icb_buffer_io_i_icb_rsp_rdata;
  assign u_biu_icb_arbt_io_i_bus_icb_cmd_valid = {1'h0,io_lsu2biu_icb_cmd_valid};
  assign u_biu_icb_arbt_io_i_bus_icb_cmd_read = {1'h0,io_lsu2biu_icb_cmd_read};
  assign u_biu_icb_arbt_io_i_bus_icb_cmd_addr = {32'h0,io_lsu2biu_icb_cmd_addr};
  assign u_biu_icb_arbt_io_i_bus_icb_cmd_wdata = {32'h0,io_lsu2biu_icb_cmd_wdata};
  assign u_biu_icb_arbt_io_i_bus_icb_rsp_ready = {1'h0,io_lsu2biu_icb_rsp_ready};
  assign u_sirv_gnrl_icb_buffer_clock = clock;
  assign u_sirv_gnrl_icb_buffer_reset = reset;
  assign u_sirv_gnrl_icb_buffer_io_i_icb_cmd_valid = u_biu_icb_arbt_io_o_icb_cmd_valid;
  assign u_sirv_gnrl_icb_buffer_io_i_icb_cmd_read = u_biu_icb_arbt_io_o_icb_cmd_read;
  assign u_sirv_gnrl_icb_buffer_io_i_icb_cmd_addr = u_biu_icb_arbt_io_o_icb_cmd_addr;
  assign u_sirv_gnrl_icb_buffer_io_i_icb_cmd_wdata = u_biu_icb_arbt_io_o_icb_cmd_wdata;
  assign u_sirv_gnrl_icb_buffer_io_i_icb_cmd_usr = u_biu_icb_arbt_io_o_icb_cmd_usr;
  assign u_sirv_gnrl_icb_buffer_io_i_icb_rsp_ready = u_biu_icb_arbt_io_o_icb_rsp_ready;
  assign u_sirv_gnrl_icb_buffer_io_o_icb_cmd_ready = u_biu_icb_splt_io_i_icb_cmd_ready;
  assign u_sirv_gnrl_icb_buffer_io_o_icb_rsp_valid = u_biu_icb_splt_io_i_icb_rsp_valid;
  assign u_sirv_gnrl_icb_buffer_io_o_icb_rsp_err = u_biu_icb_splt_io_i_icb_rsp_err;
  assign u_sirv_gnrl_icb_buffer_io_o_icb_rsp_excl_ok = u_biu_icb_splt_io_i_icb_rsp_excl_ok;
  assign u_sirv_gnrl_icb_buffer_io_o_icb_rsp_rdata = u_biu_icb_splt_io_i_icb_rsp_rdata;
  assign u_biu_icb_splt_clock = clock;
  assign u_biu_icb_splt_reset = reset;
  assign u_biu_icb_splt_io_i_icb_splt_indic = {_T_120,3'h0};
  assign u_biu_icb_splt_io_i_icb_cmd_valid = u_sirv_gnrl_icb_buffer_io_o_icb_cmd_valid;
  assign u_biu_icb_splt_io_i_icb_rsp_ready = u_sirv_gnrl_icb_buffer_io_o_icb_rsp_ready;
  assign u_biu_icb_splt_io_o_bus_icb_cmd_ready = {_T_98,3'h0};
  assign u_biu_icb_splt_io_o_bus_icb_rsp_valid = {_T_73,3'h0};
  assign u_biu_icb_splt_io_o_bus_icb_rsp_excl_ok = {_T_83,3'h0};
  assign u_biu_icb_splt_io_o_bus_icb_rsp_rdata = {_T_88,96'h0};
endmodule
module BIUInterface(
  input         clock,
  input         reset,
  input         io_Mem_Write,
  input  [31:0] io_addr,
  input  [31:0] io_write_data,
  output        io_DC_Mem_Write,
  output [31:0] io_DC_addr,
  output [31:0] io_biu_addr,
  output [31:0] io_biu_write_data,
  output        io_biu_cmd_valid,
  output        io_biu_cmd_read,
  output        io_biu_rsp_ready,
  output        io_ppi_cmd_ready,
  output        io_ppi_rsp_valid,
  output        io_ppi_rsp_excl_ok,
  output [31:0] io_ppi_rsp_rdata
);
  wire  _T_1;
  wire  _T_2;
  wire  _T_3;
  wire  biu_interact;
  reg [31:0] biu_data;
  reg [31:0] _RAND_0;
  wire  _T_8;
  wire  _T_10;
  reg  write_counter;
  reg [31:0] _RAND_1;
  wire  _T_11;
  wire [1:0] _T_12;
  wire [1:0] _GEN_0;
  wire [31:0] _GEN_1;
  wire [31:0] _GEN_2;
  wire  _GEN_3;
  wire [1:0] _GEN_5;
  wire [31:0] _GEN_6;
  wire [31:0] _GEN_7;
  wire  _GEN_8;
  wire [5:0] _GEN_14;
  wire [1:0] _GEN_15;
  assign _T_1 = io_addr == 32'h101;
  assign _T_2 = io_addr == 32'h100;
  assign _T_3 = _T_1 | _T_2;
  assign biu_interact = _T_3 & io_Mem_Write;
  assign _T_8 = _T_2 & biu_interact;
  assign _T_10 = _T_1 & biu_interact;
  assign _T_11 = write_counter == 1'h0;
  assign _T_12 = write_counter + 1'h1;
  assign _GEN_0 = _T_11 ? _T_12 : 2'h0;
  assign _GEN_1 = _T_11 ? 32'h0 : biu_data;
  assign _GEN_2 = _T_11 ? 32'h0 : io_write_data;
  assign _GEN_3 = _T_11 ? 1'h0 : 1'h1;
  assign _GEN_5 = _T_10 ? _GEN_0 : {{1'd0}, write_counter};
  assign _GEN_6 = _T_10 ? _GEN_1 : 32'h0;
  assign _GEN_7 = _T_10 ? _GEN_2 : 32'h0;
  assign _GEN_8 = _T_10 & _GEN_3;
  assign _GEN_14 = _T_8 ? 6'h28 : 6'h0;
  assign _GEN_15 = _T_8 ? {{1'd0}, write_counter} : _GEN_5;
  assign io_DC_Mem_Write = biu_interact ? 1'h0 : io_Mem_Write;
  assign io_DC_addr = biu_interact ? 32'h0 : io_addr;
  assign io_biu_addr = _T_8 ? io_write_data : _GEN_6;
  assign io_biu_write_data = _T_8 ? 32'h0 : _GEN_7;
  assign io_biu_cmd_valid = _T_8 | _GEN_8;
  assign io_biu_cmd_read = _T_2 & biu_interact;
  assign io_biu_rsp_ready = _T_8 | _GEN_8;
  assign io_ppi_cmd_ready = _T_2 & biu_interact;
  assign io_ppi_rsp_valid = _T_2 & biu_interact;
  assign io_ppi_rsp_excl_ok = _T_2 & biu_interact;
  assign io_ppi_rsp_rdata = {{26'd0}, _GEN_14};
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
  biu_data = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  write_counter = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      biu_data <= 32'h0;
    end else if (biu_interact) begin
      biu_data <= io_write_data;
    end
    if (reset) begin
      write_counter <= 1'h0;
    end else begin
      write_counter <= _GEN_15[0];
    end
  end
endmodule
module DataCache(
  input         clock,
  input  [31:0] io_addr,
  input  [31:0] io_write_data,
  input         io_Mem_Read,
  input         io_Mem_Write,
  input  [1:0]  io_Data_Size,
  input         io_Load_Type,
  output [31:0] io_data_out
);
  reg [31:0] cache [0:31];
  reg [31:0] _RAND_0;
  wire [31:0] cache__T_12_data;
  wire [4:0] cache__T_12_addr;
  wire [31:0] cache__T_17_data;
  wire [4:0] cache__T_17_addr;
  wire [31:0] cache__T_20_data;
  wire [4:0] cache__T_20_addr;
  wire [31:0] cache__T_24_data;
  wire [4:0] cache__T_24_addr;
  wire [31:0] cache__T_32_data;
  wire [4:0] cache__T_32_addr;
  wire [31:0] cache__T_36_data;
  wire [4:0] cache__T_36_addr;
  wire [31:0] cache__T_42_data;
  wire [4:0] cache__T_42_addr;
  wire [31:0] cache__T_data;
  wire [4:0] cache__T_addr;
  wire  cache__T_mask;
  wire  cache__T_en;
  wire [31:0] fix_addr;
  wire  _T_3;
  wire  _T_5;
  wire [15:0] _T_6;
  wire [31:0] _T_7;
  wire  _T_9;
  wire [7:0] _T_10;
  wire [31:0] _T_11;
  wire [31:0] _T_8;
  wire [31:0] _T_4;
  wire [31:0] write_data;
  wire [2:0] _T_15;
  wire  _T_16;
  wire  _T_19;
  wire [15:0] _T_21;
  wire  _T_23;
  wire [15:0] _T_25;
  wire [15:0] _T_26;
  wire [31:0] _GEN_0;
  wire [46:0] _T_27;
  wire [30:0] _GEN_1;
  wire [46:0] _T_28;
  wire [46:0] _T_29;
  wire  _T_31;
  wire [7:0] _T_33;
  wire  _T_35;
  wire [7:0] _T_37;
  wire [7:0] _T_38;
  wire [31:0] _GEN_2;
  wire [38:0] _T_39;
  wire [14:0] _GEN_3;
  wire [38:0] _T_40;
  wire [38:0] _T_41;
  wire [38:0] _T_34;
  wire [38:0] _T_30;
  wire [46:0] _T_22;
  wire [46:0] _T_18;
  wire [46:0] read_data;
  wire [46:0] _T_13;
  assign cache__T_12_addr = fix_addr[4:0];
  assign cache__T_12_data = cache[cache__T_12_addr];
  assign cache__T_17_addr = fix_addr[4:0];
  assign cache__T_17_data = cache[cache__T_17_addr];
  assign cache__T_20_addr = fix_addr[4:0];
  assign cache__T_20_data = cache[cache__T_20_addr];
  assign cache__T_24_addr = fix_addr[4:0];
  assign cache__T_24_data = cache[cache__T_24_addr];
  assign cache__T_32_addr = fix_addr[4:0];
  assign cache__T_32_data = cache[cache__T_32_addr];
  assign cache__T_36_addr = fix_addr[4:0];
  assign cache__T_36_data = cache[cache__T_36_addr];
  assign cache__T_42_addr = fix_addr[4:0];
  assign cache__T_42_data = cache[cache__T_42_addr];
  assign cache__T_data = io_Mem_Write ? write_data : cache__T_12_data;
  assign cache__T_addr = fix_addr[4:0];
  assign cache__T_mask = 1'h1;
  assign cache__T_en = 1'h1;
  assign fix_addr = io_addr / 32'h4;
  assign _T_3 = 2'h0 == io_Data_Size;
  assign _T_5 = 2'h1 == io_Data_Size;
  assign _T_6 = io_write_data[15:0];
  assign _T_7 = {16'h0,_T_6};
  assign _T_9 = 2'h2 == io_Data_Size;
  assign _T_10 = io_write_data[7:0];
  assign _T_11 = {24'h0,_T_10};
  assign _T_8 = _T_9 ? _T_11 : io_write_data;
  assign _T_4 = _T_5 ? _T_7 : _T_8;
  assign write_data = _T_3 ? io_write_data : _T_4;
  assign _T_15 = {io_Data_Size,io_Load_Type};
  assign _T_16 = 3'h1 == _T_15;
  assign _T_19 = 3'h3 == _T_15;
  assign _T_21 = cache__T_20_data[15:0];
  assign _T_23 = 3'h2 == _T_15;
  assign _T_25 = cache__T_24_data[15:0];
  assign _T_26 = $signed(_T_25);
  assign _GEN_0 = {$signed(_T_26), 16'h0};
  assign _T_27 = {{15{_GEN_0[31]}},_GEN_0};
  assign _GEN_1 = _T_27[46:16];
  assign _T_28 = {{16{_GEN_1[30]}},_GEN_1};
  assign _T_29 = $unsigned(_T_28);
  assign _T_31 = 3'h5 == _T_15;
  assign _T_33 = cache__T_32_data[7:0];
  assign _T_35 = 3'h4 == _T_15;
  assign _T_37 = cache__T_36_data[7:0];
  assign _T_38 = $signed(_T_37);
  assign _GEN_2 = {$signed(_T_38), 24'h0};
  assign _T_39 = {{7{_GEN_2[31]}},_GEN_2};
  assign _GEN_3 = _T_39[38:24];
  assign _T_40 = {{24{_GEN_3[14]}},_GEN_3};
  assign _T_41 = $unsigned(_T_40);
  assign _T_34 = _T_35 ? _T_41 : {{7'd0}, cache__T_42_data};
  assign _T_30 = _T_31 ? {{31'd0}, _T_33} : _T_34;
  assign _T_22 = _T_23 ? _T_29 : {{8'd0}, _T_30};
  assign _T_18 = _T_19 ? {{31'd0}, _T_21} : _T_22;
  assign read_data = _T_16 ? {{15'd0}, cache__T_17_data} : _T_18;
  assign _T_13 = io_Mem_Read ? read_data : 47'h0;
  assign io_data_out = _T_13[31:0];
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    cache[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(cache__T_en & cache__T_mask) begin
      cache[cache__T_addr] <= cache__T_data;
    end
  end
endmodule
module Tile(
  input         clock,
  input         reset,
  output [31:0] io_if_pc_out,
  output [31:0] io_if_next_pc,
  output [4:0]  io_id_rs1,
  output [4:0]  io_id_rs2,
  output [31:0] io_id_rs1_out,
  output [31:0] io_id_rs2_out,
  output [31:0] io_ex_rs1_out,
  output [31:0] io_ex_rs2_out,
  output [31:0] io_ex_alu_sum,
  output        io_ex_alu_conflag,
  output [4:0]  io_ex_rd,
  output [4:0]  io_mem_rd,
  output [31:0] io_mem_alu_sum,
  output [31:0] io_mem_writedata,
  output [31:0] io_mem_dataout,
  output [4:0]  io_wb_rd,
  output [31:0] io_wb_registerwrite,
  output [1:0]  io_Forward_A,
  output [1:0]  io_Forward_B,
  output        io_MemWrite_Src,
  output [31:0] io_mo_biu_addr,
  output [31:0] io_mo_biu_write_data,
  output        io_mo_biu_cmd_valid,
  output        io_mo_biu_cmd_read,
  output [3:0]  io_mo_biu_cmd_wmask,
  output [1:0]  io_mo_biu_cmd_burst,
  output [1:0]  io_mo_biu_cmd_beat,
  output [1:0]  io_mo_biu_cmd_lock,
  output        io_mo_biu_cmd_excl,
  output [1:0]  io_mo_biu_cmd_size,
  output        io_mo_biu_rsp_ready,
  output        io_mo_lsu2biu_icb_cmd_ready,
  output        io_mo_lsu2biu_icb_rsp_valid,
  output        io_mo_lsu2biu_icb_rsp_err,
  output        io_mo_lsu2biu_icb_rsp_excl_ok,
  output [31:0] io_mo_lsu2biu_icb_rsp_rdata
);
  wire [31:0] datapath_io_if_pc;
  wire [1:0] datapath_io_PC_Sel;
  wire [31:0] datapath_io_new_addr;
  wire [31:0] datapath_io_pc_recover;
  wire [31:0] datapath_io_if_new_pc;
  wire [31:0] datapath_io_if_pc_4;
  wire  datapath_io_Bubble;
  wire  datapath_io_Reg_Write;
  wire [2:0] datapath_io_Imm_Sel;
  wire  datapath_io_ALU_Src;
  wire [4:0] datapath_io_ALUOp;
  wire  datapath_io_Branch;
  wire  datapath_io_Branch_Src;
  wire  datapath_io_Mem_Read;
  wire  datapath_io_Mem_Write;
  wire [1:0] datapath_io_Data_Size;
  wire  datapath_io_Load_Type;
  wire [2:0] datapath_io_Mem_to_Reg;
  wire  datapath_io_Jump_Type;
  wire  datapath_io_CSR_src;
  wire [2:0] datapath_io_Write_CSR;
  wire  datapath_io_is_Illegal;
  wire  datapath_io_id_Reg_Write;
  wire [2:0] datapath_io_id_Imm_Sel;
  wire  datapath_io_id_ALU_Src;
  wire [4:0] datapath_io_id_ALUOp;
  wire  datapath_io_id_Branch;
  wire  datapath_io_id_Branch_Src;
  wire  datapath_io_id_Mem_Read;
  wire  datapath_io_id_Mem_Write;
  wire [1:0] datapath_io_id_Data_Size;
  wire  datapath_io_id_Load_Type;
  wire [2:0] datapath_io_id_Mem_to_Reg;
  wire  datapath_io_id_Jump_Type;
  wire  datapath_io_id_CSR_src;
  wire [2:0] datapath_io_id_Write_CSR;
  wire  datapath_io_id_is_Illegal;
  wire [31:0] datapath_io_ex_rs1_out;
  wire [31:0] datapath_io_ex_rs2_out;
  wire [31:0] datapath_io_ex_imm;
  wire [31:0] datapath_io_ex_pc;
  wire  datapath_io_ex_ALU_Src;
  wire  datapath_io_ex_Branch;
  wire  datapath_io_ex_alu_conflag;
  wire  datapath_io_ex_Branch_Src;
  wire  datapath_io_ex_Jump_Type;
  wire [2:0] datapath_io_ex_Imm_Sel;
  wire [1:0] datapath_io_Forward_A;
  wire [1:0] datapath_io_Forward_B;
  wire [31:0] datapath_io_alu_a_src;
  wire [31:0] datapath_io_alu_b_src;
  wire [31:0] datapath_io_ex_aui_pc;
  wire [31:0] datapath_io_forward_rs2_out;
  wire  datapath_io_PC_Src;
  wire [31:0] datapath_io_branch_addr;
  wire [31:0] datapath_io_mem_rs2_out;
  wire  datapath_io_MemWrite_Src;
  wire [2:0] datapath_io_mem_Mem_to_Reg_In;
  wire [31:0] datapath_io_mem_alu_sum;
  wire [31:0] datapath_io_mem_pc_4;
  wire [31:0] datapath_io_mem_imm;
  wire [31:0] datapath_io_mem_aui_pc;
  wire [31:0] datapath_io_mem_writedata;
  wire [31:0] datapath_io_wb_alu_sum;
  wire [31:0] datapath_io_wb_dataout;
  wire [31:0] datapath_io_wb_pc_4;
  wire [31:0] datapath_io_wb_imm;
  wire [31:0] datapath_io_wb_aui_pc;
  wire [2:0] datapath_io_wb_Mem_to_Reg;
  wire [31:0] datapath_io_wb_reg_writedata;
  wire [1:0] datapath_io_is_Exception;
  wire [31:0] datapath_io_mepc;
  wire  datapath_io_ex_CSR_src;
  wire  datapath_io_Exception_Flush;
  wire [31:0] datapath_io_csr_data_in;
  wire  datapath_io_ex_Mem_Read;
  wire  datapath_io_ex_Mem_Write;
  wire [1:0] datapath_io_ex_Data_Size;
  wire  datapath_io_ex_Load_Type;
  wire  datapath_io_ex_Reg_Write;
  wire [2:0] datapath_io_ex_Mem_to_Reg;
  wire  datapath_io_mem_Mem_Read;
  wire  datapath_io_mem_Mem_Write;
  wire [1:0] datapath_io_mem_Data_Size;
  wire  datapath_io_mem_Load_Type;
  wire  datapath_io_mem_Reg_Write;
  wire [2:0] datapath_io_mem_Mem_to_Reg_Out;
  wire [31:0] datapath_io_wb_csr_data_out;
  wire  pc_clock;
  wire  pc_reset;
  wire [31:0] pc_io_next_pc;
  wire  pc_io_PC_Write;
  wire [31:0] pc_io_pc_out;
  wire  branch_predictor_clock;
  wire  branch_predictor_reset;
  wire [31:0] branch_predictor_io_inst;
  wire [31:0] branch_predictor_io_branch_addr;
  wire  branch_predictor_io_PC_Src;
  wire [31:0] branch_predictor_io_pc;
  wire  branch_predictor_io_ex_Branch;
  wire  branch_predictor_io_ex_Jump_Type;
  wire [1:0] branch_predictor_io_PC_Sel;
  wire [31:0] branch_predictor_io_new_addr;
  wire [31:0] branch_predictor_io_pc_recover;
  wire  branch_predictor_io_IF_ID_Flush;
  wire  branch_predictor_io_ID_EX_Flush;
  wire [1:0] branch_predictor_io_is_Exception;
  wire  branch_predictor_io_is_Waiting_Resolved;
  wire  csr_clock;
  wire  csr_reset;
  wire  csr_io_ex_Mem_Read;
  wire  csr_io_ex_Mem_Write;
  wire [31:0] csr_io_ex_branch_addr;
  wire [31:0] csr_io_ex_addr;
  wire [31:0] csr_io_ex_inst;
  wire [31:0] csr_io_csr_data_in;
  wire [31:0] csr_io_ex_pc_4;
  wire [2:0] csr_io_ex_Write_CSR;
  wire  csr_io_ex_is_Illegal;
  wire  csr_io_ex_Branch;
  wire  csr_io_is_Waiting_Resolved;
  wire  csr_io_rsp_valid;
  wire [31:0] csr_io_rsp_rdata;
  wire [31:0] csr_io_mepc_out;
  wire [31:0] csr_io_csr_data_out;
  wire  csr_io_IF_ID_Flush;
  wire  csr_io_ID_EX_Flush;
  wire [1:0] csr_io_is_Exception;
  wire  csr_io_Exception_Flush;
  wire [4:0] hazard_detection_io_rs1;
  wire [4:0] hazard_detection_io_rs2;
  wire [4:0] hazard_detection_io_ex_rd;
  wire [2:0] hazard_detection_io_Imm_Sel;
  wire  hazard_detection_io_ex_Mem_Read;
  wire  hazard_detection_io_Bubble;
  wire  hazard_detection_io_IF_ID_Write;
  wire  hazard_detection_io_PC_Write;
  wire  instcache_clock;
  wire [31:0] instcache_io_addr;
  wire [31:0] instcache_io_inst;
  wire  if_id_register_clock;
  wire  if_id_register_reset;
  wire [31:0] if_id_register_io_if_pc;
  wire [31:0] if_id_register_io_if_pc_4;
  wire [31:0] if_id_register_io_if_inst;
  wire [31:0] if_id_register_io_id_pc;
  wire [31:0] if_id_register_io_id_pc_4;
  wire [4:0] if_id_register_io_id_rs1;
  wire [4:0] if_id_register_io_id_rs2;
  wire [31:0] if_id_register_io_id_inst;
  wire  if_id_register_io_IF_ID_Write;
  wire  if_id_register_io_IF_ID_Flush;
  wire  regfile_clock;
  wire [4:0] regfile_io_rs1;
  wire [4:0] regfile_io_rs2;
  wire [4:0] regfile_io_rd;
  wire [31:0] regfile_io_wdata;
  wire [31:0] regfile_io_rs1_out;
  wire [31:0] regfile_io_rs2_out;
  wire  regfile_io_Reg_Write;
  wire  mem_wb_register_clock;
  wire  mem_wb_register_reset;
  wire [31:0] mem_wb_register_io_mem_dataout;
  wire [31:0] mem_wb_register_io_mem_alu_sum;
  wire [4:0] mem_wb_register_io_mem_rd;
  wire [31:0] mem_wb_register_io_mem_pc_4;
  wire [31:0] mem_wb_register_io_mem_imm;
  wire [31:0] mem_wb_register_io_mem_aui_pc;
  wire [31:0] mem_wb_register_io_mem_csr_data_out;
  wire [2:0] mem_wb_register_io_mem_Mem_to_Reg;
  wire  mem_wb_register_io_mem_Reg_Write;
  wire [2:0] mem_wb_register_io_wb_Mem_to_Reg;
  wire  mem_wb_register_io_wb_Reg_Write;
  wire [31:0] mem_wb_register_io_wb_dataout;
  wire [31:0] mem_wb_register_io_wb_alu_sum;
  wire [4:0] mem_wb_register_io_wb_rd;
  wire [31:0] mem_wb_register_io_wb_pc_4;
  wire [31:0] mem_wb_register_io_wb_imm;
  wire [31:0] mem_wb_register_io_wb_aui_pc;
  wire [31:0] mem_wb_register_io_wb_csr_data_out;
  wire [31:0] immgen_io_inst;
  wire [31:0] immgen_io_imm;
  wire [2:0] immgen_io_Imm_Sel;
  wire [31:0] control_io_inst;
  wire  control_io_Reg_Write;
  wire [2:0] control_io_Imm_Sel;
  wire  control_io_ALU_Src;
  wire [4:0] control_io_ALUOp;
  wire  control_io_Branch;
  wire  control_io_Branch_Src;
  wire  control_io_Mem_Read;
  wire  control_io_Mem_Write;
  wire [1:0] control_io_Data_Size;
  wire  control_io_Load_Type;
  wire [2:0] control_io_Mem_to_Reg;
  wire  control_io_Jump_Type;
  wire  control_io_CSR_src;
  wire [2:0] control_io_Write_CSR;
  wire  control_io_is_Illegal;
  wire  id_ex_register_clock;
  wire  id_ex_register_reset;
  wire [31:0] id_ex_register_io_id_pc;
  wire [31:0] id_ex_register_io_id_pc_4;
  wire [31:0] id_ex_register_io_id_rs1_out;
  wire [31:0] id_ex_register_io_id_rs2_out;
  wire [31:0] id_ex_register_io_id_imm;
  wire [31:0] id_ex_register_io_id_inst;
  wire [4:0] id_ex_register_io_id_rs1;
  wire [4:0] id_ex_register_io_id_rs2;
  wire [31:0] id_ex_register_io_ex_pc;
  wire [31:0] id_ex_register_io_ex_pc_4;
  wire [31:0] id_ex_register_io_ex_rs1_out;
  wire [31:0] id_ex_register_io_ex_rs2_out;
  wire [4:0] id_ex_register_io_ex_rd;
  wire [31:0] id_ex_register_io_ex_imm;
  wire [4:0] id_ex_register_io_ex_rs1;
  wire [4:0] id_ex_register_io_ex_rs2;
  wire [31:0] id_ex_register_io_ex_inst;
  wire  id_ex_register_io_ID_EX_Flush;
  wire  id_ex_register_io_Reg_Write;
  wire [2:0] id_ex_register_io_Imm_Sel;
  wire  id_ex_register_io_ALU_Src;
  wire [4:0] id_ex_register_io_ALUOp;
  wire  id_ex_register_io_Branch;
  wire  id_ex_register_io_Branch_Src;
  wire  id_ex_register_io_Mem_Read;
  wire  id_ex_register_io_Mem_Write;
  wire [1:0] id_ex_register_io_Data_Size;
  wire  id_ex_register_io_Load_Type;
  wire [2:0] id_ex_register_io_Mem_to_Reg;
  wire  id_ex_register_io_Jump_Type;
  wire  id_ex_register_io_CSR_src;
  wire [2:0] id_ex_register_io_Write_CSR;
  wire  id_ex_register_io_is_Illegal;
  wire  id_ex_register_io_ex_Reg_Write;
  wire [2:0] id_ex_register_io_ex_Imm_Sel;
  wire  id_ex_register_io_ex_ALU_Src;
  wire [4:0] id_ex_register_io_ex_ALUOp;
  wire  id_ex_register_io_ex_Branch;
  wire  id_ex_register_io_ex_Branch_Src;
  wire  id_ex_register_io_ex_Mem_Read;
  wire  id_ex_register_io_ex_Mem_Write;
  wire [1:0] id_ex_register_io_ex_Data_Size;
  wire  id_ex_register_io_ex_Load_Type;
  wire [2:0] id_ex_register_io_ex_Mem_to_Reg;
  wire  id_ex_register_io_ex_Jump_Type;
  wire  id_ex_register_io_ex_CSR_src;
  wire [2:0] id_ex_register_io_ex_Write_CSR;
  wire  id_ex_register_io_ex_is_Illegal;
  wire [31:0] alu_io_src_a;
  wire [31:0] alu_io_src_b;
  wire [4:0] alu_io_ALUOp;
  wire [31:0] alu_io_sum;
  wire  alu_io_conflag;
  wire  ex_mem_register_clock;
  wire  ex_mem_register_reset;
  wire [31:0] ex_mem_register_io_ex_alu_sum;
  wire [31:0] ex_mem_register_io_ex_rs2_out;
  wire [4:0] ex_mem_register_io_ex_rd;
  wire [31:0] ex_mem_register_io_ex_pc_4;
  wire [31:0] ex_mem_register_io_ex_imm;
  wire [31:0] ex_mem_register_io_ex_aui_pc;
  wire [31:0] ex_mem_register_io_ex_rs2;
  wire [31:0] ex_mem_register_io_ex_csr_data_out;
  wire  ex_mem_register_io_ex_Mem_Read;
  wire  ex_mem_register_io_ex_Mem_Write;
  wire [1:0] ex_mem_register_io_ex_Data_Size;
  wire  ex_mem_register_io_ex_Load_Type;
  wire  ex_mem_register_io_ex_Reg_Write;
  wire [2:0] ex_mem_register_io_ex_Mem_to_Reg;
  wire  ex_mem_register_io_mem_Mem_Read;
  wire  ex_mem_register_io_mem_Mem_Write;
  wire [1:0] ex_mem_register_io_mem_Data_Size;
  wire  ex_mem_register_io_mem_Load_Type;
  wire  ex_mem_register_io_mem_Reg_Write;
  wire [2:0] ex_mem_register_io_mem_Mem_to_Reg;
  wire [31:0] ex_mem_register_io_mem_alu_sum;
  wire [31:0] ex_mem_register_io_mem_rs2_out;
  wire [4:0] ex_mem_register_io_mem_rd;
  wire [31:0] ex_mem_register_io_mem_pc_4;
  wire [31:0] ex_mem_register_io_mem_imm;
  wire [31:0] ex_mem_register_io_mem_aui_pc;
  wire [31:0] ex_mem_register_io_mem_rs2;
  wire [31:0] ex_mem_register_io_mem_csr_data_out;
  wire  forward_io_ex_mem_Reg_Write;
  wire [4:0] forward_io_ex_mem_rd;
  wire  forward_io_ex_mem_Mem_Write;
  wire [4:0] forward_io_ex_mem_rs2;
  wire  forward_io_mem_wb_Reg_Write;
  wire [4:0] forward_io_mem_wb_rd;
  wire [4:0] forward_io_id_ex_rs1;
  wire [4:0] forward_io_id_ex_rs2;
  wire [1:0] forward_io_Forward_A;
  wire [1:0] forward_io_Forward_B;
  wire  forward_io_MemWrite_Src;
  wire  e203biu_clock;
  wire  e203biu_reset;
  wire  e203biu_io_lsu2biu_icb_cmd_valid;
  wire  e203biu_io_lsu2biu_icb_cmd_ready;
  wire [31:0] e203biu_io_lsu2biu_icb_cmd_addr;
  wire  e203biu_io_lsu2biu_icb_cmd_read;
  wire [31:0] e203biu_io_lsu2biu_icb_cmd_wdata;
  wire  e203biu_io_lsu2biu_icb_rsp_valid;
  wire  e203biu_io_lsu2biu_icb_rsp_ready;
  wire  e203biu_io_lsu2biu_icb_rsp_err;
  wire  e203biu_io_lsu2biu_icb_rsp_excl_ok;
  wire [31:0] e203biu_io_lsu2biu_icb_rsp_rdata;
  wire  e203biu_io_ppi_icb_cmd_ready;
  wire  e203biu_io_ppi_icb_rsp_valid;
  wire  e203biu_io_ppi_icb_rsp_excl_ok;
  wire [31:0] e203biu_io_ppi_icb_rsp_rdata;
  wire  biuinf_clock;
  wire  biuinf_reset;
  wire  biuinf_io_Mem_Write;
  wire [31:0] biuinf_io_addr;
  wire [31:0] biuinf_io_write_data;
  wire  biuinf_io_DC_Mem_Write;
  wire [31:0] biuinf_io_DC_addr;
  wire [31:0] biuinf_io_biu_addr;
  wire [31:0] biuinf_io_biu_write_data;
  wire  biuinf_io_biu_cmd_valid;
  wire  biuinf_io_biu_cmd_read;
  wire  biuinf_io_biu_rsp_ready;
  wire  biuinf_io_ppi_cmd_ready;
  wire  biuinf_io_ppi_rsp_valid;
  wire  biuinf_io_ppi_rsp_excl_ok;
  wire [31:0] biuinf_io_ppi_rsp_rdata;
  wire  datacache_clock;
  wire [31:0] datacache_io_addr;
  wire [31:0] datacache_io_write_data;
  wire  datacache_io_Mem_Read;
  wire  datacache_io_Mem_Write;
  wire [1:0] datacache_io_Data_Size;
  wire  datacache_io_Load_Type;
  wire [31:0] datacache_io_data_out;
  Datapath datapath (
    .io_if_pc(datapath_io_if_pc),
    .io_PC_Sel(datapath_io_PC_Sel),
    .io_new_addr(datapath_io_new_addr),
    .io_pc_recover(datapath_io_pc_recover),
    .io_if_new_pc(datapath_io_if_new_pc),
    .io_if_pc_4(datapath_io_if_pc_4),
    .io_Bubble(datapath_io_Bubble),
    .io_Reg_Write(datapath_io_Reg_Write),
    .io_Imm_Sel(datapath_io_Imm_Sel),
    .io_ALU_Src(datapath_io_ALU_Src),
    .io_ALUOp(datapath_io_ALUOp),
    .io_Branch(datapath_io_Branch),
    .io_Branch_Src(datapath_io_Branch_Src),
    .io_Mem_Read(datapath_io_Mem_Read),
    .io_Mem_Write(datapath_io_Mem_Write),
    .io_Data_Size(datapath_io_Data_Size),
    .io_Load_Type(datapath_io_Load_Type),
    .io_Mem_to_Reg(datapath_io_Mem_to_Reg),
    .io_Jump_Type(datapath_io_Jump_Type),
    .io_CSR_src(datapath_io_CSR_src),
    .io_Write_CSR(datapath_io_Write_CSR),
    .io_is_Illegal(datapath_io_is_Illegal),
    .io_id_Reg_Write(datapath_io_id_Reg_Write),
    .io_id_Imm_Sel(datapath_io_id_Imm_Sel),
    .io_id_ALU_Src(datapath_io_id_ALU_Src),
    .io_id_ALUOp(datapath_io_id_ALUOp),
    .io_id_Branch(datapath_io_id_Branch),
    .io_id_Branch_Src(datapath_io_id_Branch_Src),
    .io_id_Mem_Read(datapath_io_id_Mem_Read),
    .io_id_Mem_Write(datapath_io_id_Mem_Write),
    .io_id_Data_Size(datapath_io_id_Data_Size),
    .io_id_Load_Type(datapath_io_id_Load_Type),
    .io_id_Mem_to_Reg(datapath_io_id_Mem_to_Reg),
    .io_id_Jump_Type(datapath_io_id_Jump_Type),
    .io_id_CSR_src(datapath_io_id_CSR_src),
    .io_id_Write_CSR(datapath_io_id_Write_CSR),
    .io_id_is_Illegal(datapath_io_id_is_Illegal),
    .io_ex_rs1_out(datapath_io_ex_rs1_out),
    .io_ex_rs2_out(datapath_io_ex_rs2_out),
    .io_ex_imm(datapath_io_ex_imm),
    .io_ex_pc(datapath_io_ex_pc),
    .io_ex_ALU_Src(datapath_io_ex_ALU_Src),
    .io_ex_Branch(datapath_io_ex_Branch),
    .io_ex_alu_conflag(datapath_io_ex_alu_conflag),
    .io_ex_Branch_Src(datapath_io_ex_Branch_Src),
    .io_ex_Jump_Type(datapath_io_ex_Jump_Type),
    .io_ex_Imm_Sel(datapath_io_ex_Imm_Sel),
    .io_Forward_A(datapath_io_Forward_A),
    .io_Forward_B(datapath_io_Forward_B),
    .io_alu_a_src(datapath_io_alu_a_src),
    .io_alu_b_src(datapath_io_alu_b_src),
    .io_ex_aui_pc(datapath_io_ex_aui_pc),
    .io_forward_rs2_out(datapath_io_forward_rs2_out),
    .io_PC_Src(datapath_io_PC_Src),
    .io_branch_addr(datapath_io_branch_addr),
    .io_mem_rs2_out(datapath_io_mem_rs2_out),
    .io_MemWrite_Src(datapath_io_MemWrite_Src),
    .io_mem_Mem_to_Reg_In(datapath_io_mem_Mem_to_Reg_In),
    .io_mem_alu_sum(datapath_io_mem_alu_sum),
    .io_mem_pc_4(datapath_io_mem_pc_4),
    .io_mem_imm(datapath_io_mem_imm),
    .io_mem_aui_pc(datapath_io_mem_aui_pc),
    .io_mem_writedata(datapath_io_mem_writedata),
    .io_wb_alu_sum(datapath_io_wb_alu_sum),
    .io_wb_dataout(datapath_io_wb_dataout),
    .io_wb_pc_4(datapath_io_wb_pc_4),
    .io_wb_imm(datapath_io_wb_imm),
    .io_wb_aui_pc(datapath_io_wb_aui_pc),
    .io_wb_Mem_to_Reg(datapath_io_wb_Mem_to_Reg),
    .io_wb_reg_writedata(datapath_io_wb_reg_writedata),
    .io_is_Exception(datapath_io_is_Exception),
    .io_mepc(datapath_io_mepc),
    .io_ex_CSR_src(datapath_io_ex_CSR_src),
    .io_Exception_Flush(datapath_io_Exception_Flush),
    .io_csr_data_in(datapath_io_csr_data_in),
    .io_ex_Mem_Read(datapath_io_ex_Mem_Read),
    .io_ex_Mem_Write(datapath_io_ex_Mem_Write),
    .io_ex_Data_Size(datapath_io_ex_Data_Size),
    .io_ex_Load_Type(datapath_io_ex_Load_Type),
    .io_ex_Reg_Write(datapath_io_ex_Reg_Write),
    .io_ex_Mem_to_Reg(datapath_io_ex_Mem_to_Reg),
    .io_mem_Mem_Read(datapath_io_mem_Mem_Read),
    .io_mem_Mem_Write(datapath_io_mem_Mem_Write),
    .io_mem_Data_Size(datapath_io_mem_Data_Size),
    .io_mem_Load_Type(datapath_io_mem_Load_Type),
    .io_mem_Reg_Write(datapath_io_mem_Reg_Write),
    .io_mem_Mem_to_Reg_Out(datapath_io_mem_Mem_to_Reg_Out),
    .io_wb_csr_data_out(datapath_io_wb_csr_data_out)
  );
  PC pc (
    .clock(pc_clock),
    .reset(pc_reset),
    .io_next_pc(pc_io_next_pc),
    .io_PC_Write(pc_io_PC_Write),
    .io_pc_out(pc_io_pc_out)
  );
  BranchPredictor branch_predictor (
    .clock(branch_predictor_clock),
    .reset(branch_predictor_reset),
    .io_inst(branch_predictor_io_inst),
    .io_branch_addr(branch_predictor_io_branch_addr),
    .io_PC_Src(branch_predictor_io_PC_Src),
    .io_pc(branch_predictor_io_pc),
    .io_ex_Branch(branch_predictor_io_ex_Branch),
    .io_ex_Jump_Type(branch_predictor_io_ex_Jump_Type),
    .io_PC_Sel(branch_predictor_io_PC_Sel),
    .io_new_addr(branch_predictor_io_new_addr),
    .io_pc_recover(branch_predictor_io_pc_recover),
    .io_IF_ID_Flush(branch_predictor_io_IF_ID_Flush),
    .io_ID_EX_Flush(branch_predictor_io_ID_EX_Flush),
    .io_is_Exception(branch_predictor_io_is_Exception),
    .io_is_Waiting_Resolved(branch_predictor_io_is_Waiting_Resolved)
  );
  CSR csr (
    .clock(csr_clock),
    .reset(csr_reset),
    .io_ex_Mem_Read(csr_io_ex_Mem_Read),
    .io_ex_Mem_Write(csr_io_ex_Mem_Write),
    .io_ex_branch_addr(csr_io_ex_branch_addr),
    .io_ex_addr(csr_io_ex_addr),
    .io_ex_inst(csr_io_ex_inst),
    .io_csr_data_in(csr_io_csr_data_in),
    .io_ex_pc_4(csr_io_ex_pc_4),
    .io_ex_Write_CSR(csr_io_ex_Write_CSR),
    .io_ex_is_Illegal(csr_io_ex_is_Illegal),
    .io_ex_Branch(csr_io_ex_Branch),
    .io_is_Waiting_Resolved(csr_io_is_Waiting_Resolved),
    .io_rsp_valid(csr_io_rsp_valid),
    .io_rsp_rdata(csr_io_rsp_rdata),
    .io_mepc_out(csr_io_mepc_out),
    .io_csr_data_out(csr_io_csr_data_out),
    .io_IF_ID_Flush(csr_io_IF_ID_Flush),
    .io_ID_EX_Flush(csr_io_ID_EX_Flush),
    .io_is_Exception(csr_io_is_Exception),
    .io_Exception_Flush(csr_io_Exception_Flush)
  );
  HazardDetection hazard_detection (
    .io_rs1(hazard_detection_io_rs1),
    .io_rs2(hazard_detection_io_rs2),
    .io_ex_rd(hazard_detection_io_ex_rd),
    .io_Imm_Sel(hazard_detection_io_Imm_Sel),
    .io_ex_Mem_Read(hazard_detection_io_ex_Mem_Read),
    .io_Bubble(hazard_detection_io_Bubble),
    .io_IF_ID_Write(hazard_detection_io_IF_ID_Write),
    .io_PC_Write(hazard_detection_io_PC_Write)
  );
  InstCache instcache (
    .clock(instcache_clock),
    .io_addr(instcache_io_addr),
    .io_inst(instcache_io_inst)
  );
  IfIdRegister if_id_register (
    .clock(if_id_register_clock),
    .reset(if_id_register_reset),
    .io_if_pc(if_id_register_io_if_pc),
    .io_if_pc_4(if_id_register_io_if_pc_4),
    .io_if_inst(if_id_register_io_if_inst),
    .io_id_pc(if_id_register_io_id_pc),
    .io_id_pc_4(if_id_register_io_id_pc_4),
    .io_id_rs1(if_id_register_io_id_rs1),
    .io_id_rs2(if_id_register_io_id_rs2),
    .io_id_inst(if_id_register_io_id_inst),
    .io_IF_ID_Write(if_id_register_io_IF_ID_Write),
    .io_IF_ID_Flush(if_id_register_io_IF_ID_Flush)
  );
  RegFile regfile (
    .clock(regfile_clock),
    .io_rs1(regfile_io_rs1),
    .io_rs2(regfile_io_rs2),
    .io_rd(regfile_io_rd),
    .io_wdata(regfile_io_wdata),
    .io_rs1_out(regfile_io_rs1_out),
    .io_rs2_out(regfile_io_rs2_out),
    .io_Reg_Write(regfile_io_Reg_Write)
  );
  MemWbRegister mem_wb_register (
    .clock(mem_wb_register_clock),
    .reset(mem_wb_register_reset),
    .io_mem_dataout(mem_wb_register_io_mem_dataout),
    .io_mem_alu_sum(mem_wb_register_io_mem_alu_sum),
    .io_mem_rd(mem_wb_register_io_mem_rd),
    .io_mem_pc_4(mem_wb_register_io_mem_pc_4),
    .io_mem_imm(mem_wb_register_io_mem_imm),
    .io_mem_aui_pc(mem_wb_register_io_mem_aui_pc),
    .io_mem_csr_data_out(mem_wb_register_io_mem_csr_data_out),
    .io_mem_Mem_to_Reg(mem_wb_register_io_mem_Mem_to_Reg),
    .io_mem_Reg_Write(mem_wb_register_io_mem_Reg_Write),
    .io_wb_Mem_to_Reg(mem_wb_register_io_wb_Mem_to_Reg),
    .io_wb_Reg_Write(mem_wb_register_io_wb_Reg_Write),
    .io_wb_dataout(mem_wb_register_io_wb_dataout),
    .io_wb_alu_sum(mem_wb_register_io_wb_alu_sum),
    .io_wb_rd(mem_wb_register_io_wb_rd),
    .io_wb_pc_4(mem_wb_register_io_wb_pc_4),
    .io_wb_imm(mem_wb_register_io_wb_imm),
    .io_wb_aui_pc(mem_wb_register_io_wb_aui_pc),
    .io_wb_csr_data_out(mem_wb_register_io_wb_csr_data_out)
  );
  ImmGen immgen (
    .io_inst(immgen_io_inst),
    .io_imm(immgen_io_imm),
    .io_Imm_Sel(immgen_io_Imm_Sel)
  );
  Control control (
    .io_inst(control_io_inst),
    .io_Reg_Write(control_io_Reg_Write),
    .io_Imm_Sel(control_io_Imm_Sel),
    .io_ALU_Src(control_io_ALU_Src),
    .io_ALUOp(control_io_ALUOp),
    .io_Branch(control_io_Branch),
    .io_Branch_Src(control_io_Branch_Src),
    .io_Mem_Read(control_io_Mem_Read),
    .io_Mem_Write(control_io_Mem_Write),
    .io_Data_Size(control_io_Data_Size),
    .io_Load_Type(control_io_Load_Type),
    .io_Mem_to_Reg(control_io_Mem_to_Reg),
    .io_Jump_Type(control_io_Jump_Type),
    .io_CSR_src(control_io_CSR_src),
    .io_Write_CSR(control_io_Write_CSR),
    .io_is_Illegal(control_io_is_Illegal)
  );
  IdExRegister id_ex_register (
    .clock(id_ex_register_clock),
    .reset(id_ex_register_reset),
    .io_id_pc(id_ex_register_io_id_pc),
    .io_id_pc_4(id_ex_register_io_id_pc_4),
    .io_id_rs1_out(id_ex_register_io_id_rs1_out),
    .io_id_rs2_out(id_ex_register_io_id_rs2_out),
    .io_id_imm(id_ex_register_io_id_imm),
    .io_id_inst(id_ex_register_io_id_inst),
    .io_id_rs1(id_ex_register_io_id_rs1),
    .io_id_rs2(id_ex_register_io_id_rs2),
    .io_ex_pc(id_ex_register_io_ex_pc),
    .io_ex_pc_4(id_ex_register_io_ex_pc_4),
    .io_ex_rs1_out(id_ex_register_io_ex_rs1_out),
    .io_ex_rs2_out(id_ex_register_io_ex_rs2_out),
    .io_ex_rd(id_ex_register_io_ex_rd),
    .io_ex_imm(id_ex_register_io_ex_imm),
    .io_ex_rs1(id_ex_register_io_ex_rs1),
    .io_ex_rs2(id_ex_register_io_ex_rs2),
    .io_ex_inst(id_ex_register_io_ex_inst),
    .io_ID_EX_Flush(id_ex_register_io_ID_EX_Flush),
    .io_Reg_Write(id_ex_register_io_Reg_Write),
    .io_Imm_Sel(id_ex_register_io_Imm_Sel),
    .io_ALU_Src(id_ex_register_io_ALU_Src),
    .io_ALUOp(id_ex_register_io_ALUOp),
    .io_Branch(id_ex_register_io_Branch),
    .io_Branch_Src(id_ex_register_io_Branch_Src),
    .io_Mem_Read(id_ex_register_io_Mem_Read),
    .io_Mem_Write(id_ex_register_io_Mem_Write),
    .io_Data_Size(id_ex_register_io_Data_Size),
    .io_Load_Type(id_ex_register_io_Load_Type),
    .io_Mem_to_Reg(id_ex_register_io_Mem_to_Reg),
    .io_Jump_Type(id_ex_register_io_Jump_Type),
    .io_CSR_src(id_ex_register_io_CSR_src),
    .io_Write_CSR(id_ex_register_io_Write_CSR),
    .io_is_Illegal(id_ex_register_io_is_Illegal),
    .io_ex_Reg_Write(id_ex_register_io_ex_Reg_Write),
    .io_ex_Imm_Sel(id_ex_register_io_ex_Imm_Sel),
    .io_ex_ALU_Src(id_ex_register_io_ex_ALU_Src),
    .io_ex_ALUOp(id_ex_register_io_ex_ALUOp),
    .io_ex_Branch(id_ex_register_io_ex_Branch),
    .io_ex_Branch_Src(id_ex_register_io_ex_Branch_Src),
    .io_ex_Mem_Read(id_ex_register_io_ex_Mem_Read),
    .io_ex_Mem_Write(id_ex_register_io_ex_Mem_Write),
    .io_ex_Data_Size(id_ex_register_io_ex_Data_Size),
    .io_ex_Load_Type(id_ex_register_io_ex_Load_Type),
    .io_ex_Mem_to_Reg(id_ex_register_io_ex_Mem_to_Reg),
    .io_ex_Jump_Type(id_ex_register_io_ex_Jump_Type),
    .io_ex_CSR_src(id_ex_register_io_ex_CSR_src),
    .io_ex_Write_CSR(id_ex_register_io_ex_Write_CSR),
    .io_ex_is_Illegal(id_ex_register_io_ex_is_Illegal)
  );
  ALU alu (
    .io_src_a(alu_io_src_a),
    .io_src_b(alu_io_src_b),
    .io_ALUOp(alu_io_ALUOp),
    .io_sum(alu_io_sum),
    .io_conflag(alu_io_conflag)
  );
  ExMemRegister ex_mem_register (
    .clock(ex_mem_register_clock),
    .reset(ex_mem_register_reset),
    .io_ex_alu_sum(ex_mem_register_io_ex_alu_sum),
    .io_ex_rs2_out(ex_mem_register_io_ex_rs2_out),
    .io_ex_rd(ex_mem_register_io_ex_rd),
    .io_ex_pc_4(ex_mem_register_io_ex_pc_4),
    .io_ex_imm(ex_mem_register_io_ex_imm),
    .io_ex_aui_pc(ex_mem_register_io_ex_aui_pc),
    .io_ex_rs2(ex_mem_register_io_ex_rs2),
    .io_ex_csr_data_out(ex_mem_register_io_ex_csr_data_out),
    .io_ex_Mem_Read(ex_mem_register_io_ex_Mem_Read),
    .io_ex_Mem_Write(ex_mem_register_io_ex_Mem_Write),
    .io_ex_Data_Size(ex_mem_register_io_ex_Data_Size),
    .io_ex_Load_Type(ex_mem_register_io_ex_Load_Type),
    .io_ex_Reg_Write(ex_mem_register_io_ex_Reg_Write),
    .io_ex_Mem_to_Reg(ex_mem_register_io_ex_Mem_to_Reg),
    .io_mem_Mem_Read(ex_mem_register_io_mem_Mem_Read),
    .io_mem_Mem_Write(ex_mem_register_io_mem_Mem_Write),
    .io_mem_Data_Size(ex_mem_register_io_mem_Data_Size),
    .io_mem_Load_Type(ex_mem_register_io_mem_Load_Type),
    .io_mem_Reg_Write(ex_mem_register_io_mem_Reg_Write),
    .io_mem_Mem_to_Reg(ex_mem_register_io_mem_Mem_to_Reg),
    .io_mem_alu_sum(ex_mem_register_io_mem_alu_sum),
    .io_mem_rs2_out(ex_mem_register_io_mem_rs2_out),
    .io_mem_rd(ex_mem_register_io_mem_rd),
    .io_mem_pc_4(ex_mem_register_io_mem_pc_4),
    .io_mem_imm(ex_mem_register_io_mem_imm),
    .io_mem_aui_pc(ex_mem_register_io_mem_aui_pc),
    .io_mem_rs2(ex_mem_register_io_mem_rs2),
    .io_mem_csr_data_out(ex_mem_register_io_mem_csr_data_out)
  );
  Forward forward (
    .io_ex_mem_Reg_Write(forward_io_ex_mem_Reg_Write),
    .io_ex_mem_rd(forward_io_ex_mem_rd),
    .io_ex_mem_Mem_Write(forward_io_ex_mem_Mem_Write),
    .io_ex_mem_rs2(forward_io_ex_mem_rs2),
    .io_mem_wb_Reg_Write(forward_io_mem_wb_Reg_Write),
    .io_mem_wb_rd(forward_io_mem_wb_rd),
    .io_id_ex_rs1(forward_io_id_ex_rs1),
    .io_id_ex_rs2(forward_io_id_ex_rs2),
    .io_Forward_A(forward_io_Forward_A),
    .io_Forward_B(forward_io_Forward_B),
    .io_MemWrite_Src(forward_io_MemWrite_Src)
  );
  E203Biu e203biu (
    .clock(e203biu_clock),
    .reset(e203biu_reset),
    .io_lsu2biu_icb_cmd_valid(e203biu_io_lsu2biu_icb_cmd_valid),
    .io_lsu2biu_icb_cmd_ready(e203biu_io_lsu2biu_icb_cmd_ready),
    .io_lsu2biu_icb_cmd_addr(e203biu_io_lsu2biu_icb_cmd_addr),
    .io_lsu2biu_icb_cmd_read(e203biu_io_lsu2biu_icb_cmd_read),
    .io_lsu2biu_icb_cmd_wdata(e203biu_io_lsu2biu_icb_cmd_wdata),
    .io_lsu2biu_icb_rsp_valid(e203biu_io_lsu2biu_icb_rsp_valid),
    .io_lsu2biu_icb_rsp_ready(e203biu_io_lsu2biu_icb_rsp_ready),
    .io_lsu2biu_icb_rsp_err(e203biu_io_lsu2biu_icb_rsp_err),
    .io_lsu2biu_icb_rsp_excl_ok(e203biu_io_lsu2biu_icb_rsp_excl_ok),
    .io_lsu2biu_icb_rsp_rdata(e203biu_io_lsu2biu_icb_rsp_rdata),
    .io_ppi_icb_cmd_ready(e203biu_io_ppi_icb_cmd_ready),
    .io_ppi_icb_rsp_valid(e203biu_io_ppi_icb_rsp_valid),
    .io_ppi_icb_rsp_excl_ok(e203biu_io_ppi_icb_rsp_excl_ok),
    .io_ppi_icb_rsp_rdata(e203biu_io_ppi_icb_rsp_rdata)
  );
  BIUInterface biuinf (
    .clock(biuinf_clock),
    .reset(biuinf_reset),
    .io_Mem_Write(biuinf_io_Mem_Write),
    .io_addr(biuinf_io_addr),
    .io_write_data(biuinf_io_write_data),
    .io_DC_Mem_Write(biuinf_io_DC_Mem_Write),
    .io_DC_addr(biuinf_io_DC_addr),
    .io_biu_addr(biuinf_io_biu_addr),
    .io_biu_write_data(biuinf_io_biu_write_data),
    .io_biu_cmd_valid(biuinf_io_biu_cmd_valid),
    .io_biu_cmd_read(biuinf_io_biu_cmd_read),
    .io_biu_rsp_ready(biuinf_io_biu_rsp_ready),
    .io_ppi_cmd_ready(biuinf_io_ppi_cmd_ready),
    .io_ppi_rsp_valid(biuinf_io_ppi_rsp_valid),
    .io_ppi_rsp_excl_ok(biuinf_io_ppi_rsp_excl_ok),
    .io_ppi_rsp_rdata(biuinf_io_ppi_rsp_rdata)
  );
  DataCache datacache (
    .clock(datacache_clock),
    .io_addr(datacache_io_addr),
    .io_write_data(datacache_io_write_data),
    .io_Mem_Read(datacache_io_Mem_Read),
    .io_Mem_Write(datacache_io_Mem_Write),
    .io_Data_Size(datacache_io_Data_Size),
    .io_Load_Type(datacache_io_Load_Type),
    .io_data_out(datacache_io_data_out)
  );
  assign io_if_pc_out = pc_io_pc_out;
  assign io_if_next_pc = datapath_io_if_new_pc;
  assign io_id_rs1 = if_id_register_io_id_rs1;
  assign io_id_rs2 = if_id_register_io_id_rs2;
  assign io_id_rs1_out = regfile_io_rs1_out;
  assign io_id_rs2_out = regfile_io_rs2_out;
  assign io_ex_rs1_out = id_ex_register_io_ex_rs1_out;
  assign io_ex_rs2_out = id_ex_register_io_ex_rs2_out;
  assign io_ex_alu_sum = alu_io_sum;
  assign io_ex_alu_conflag = alu_io_conflag;
  assign io_ex_rd = id_ex_register_io_ex_rd;
  assign io_mem_rd = ex_mem_register_io_mem_rd;
  assign io_mem_alu_sum = ex_mem_register_io_mem_alu_sum;
  assign io_mem_writedata = ex_mem_register_io_mem_rs2_out;
  assign io_mem_dataout = datacache_io_data_out;
  assign io_wb_rd = mem_wb_register_io_wb_rd;
  assign io_wb_registerwrite = datapath_io_wb_reg_writedata;
  assign io_Forward_A = forward_io_Forward_A;
  assign io_Forward_B = forward_io_Forward_B;
  assign io_MemWrite_Src = forward_io_MemWrite_Src;
  assign io_mo_biu_addr = biuinf_io_biu_addr;
  assign io_mo_biu_write_data = biuinf_io_biu_write_data;
  assign io_mo_biu_cmd_valid = biuinf_io_biu_cmd_valid;
  assign io_mo_biu_cmd_read = biuinf_io_biu_cmd_read;
  assign io_mo_biu_cmd_wmask = 4'h0;
  assign io_mo_biu_cmd_burst = 2'h0;
  assign io_mo_biu_cmd_beat = 2'h0;
  assign io_mo_biu_cmd_lock = 2'h0;
  assign io_mo_biu_cmd_excl = 1'h0;
  assign io_mo_biu_cmd_size = 2'h0;
  assign io_mo_biu_rsp_ready = biuinf_io_biu_rsp_ready;
  assign io_mo_lsu2biu_icb_cmd_ready = e203biu_io_lsu2biu_icb_cmd_ready;
  assign io_mo_lsu2biu_icb_rsp_valid = e203biu_io_lsu2biu_icb_rsp_valid;
  assign io_mo_lsu2biu_icb_rsp_err = e203biu_io_lsu2biu_icb_rsp_err;
  assign io_mo_lsu2biu_icb_rsp_excl_ok = e203biu_io_lsu2biu_icb_rsp_excl_ok;
  assign io_mo_lsu2biu_icb_rsp_rdata = e203biu_io_lsu2biu_icb_rsp_rdata;
  assign datapath_io_if_pc = pc_io_pc_out;
  assign datapath_io_PC_Sel = branch_predictor_io_PC_Sel;
  assign datapath_io_new_addr = branch_predictor_io_new_addr;
  assign datapath_io_pc_recover = branch_predictor_io_pc_recover;
  assign datapath_io_Bubble = hazard_detection_io_Bubble;
  assign datapath_io_Reg_Write = control_io_Reg_Write;
  assign datapath_io_Imm_Sel = control_io_Imm_Sel;
  assign datapath_io_ALU_Src = control_io_ALU_Src;
  assign datapath_io_ALUOp = control_io_ALUOp;
  assign datapath_io_Branch = control_io_Branch;
  assign datapath_io_Branch_Src = control_io_Branch_Src;
  assign datapath_io_Mem_Read = control_io_Mem_Read;
  assign datapath_io_Mem_Write = control_io_Mem_Write;
  assign datapath_io_Data_Size = control_io_Data_Size;
  assign datapath_io_Load_Type = control_io_Load_Type;
  assign datapath_io_Mem_to_Reg = control_io_Mem_to_Reg;
  assign datapath_io_Jump_Type = control_io_Jump_Type;
  assign datapath_io_CSR_src = control_io_CSR_src;
  assign datapath_io_Write_CSR = control_io_Write_CSR;
  assign datapath_io_is_Illegal = control_io_is_Illegal;
  assign datapath_io_ex_rs1_out = id_ex_register_io_ex_rs1_out;
  assign datapath_io_ex_rs2_out = id_ex_register_io_ex_rs2_out;
  assign datapath_io_ex_imm = id_ex_register_io_ex_imm;
  assign datapath_io_ex_pc = id_ex_register_io_ex_pc;
  assign datapath_io_ex_ALU_Src = id_ex_register_io_ex_ALU_Src;
  assign datapath_io_ex_Branch = id_ex_register_io_ex_Branch;
  assign datapath_io_ex_alu_conflag = alu_io_conflag;
  assign datapath_io_ex_Branch_Src = id_ex_register_io_ex_Branch_Src;
  assign datapath_io_ex_Jump_Type = id_ex_register_io_ex_Jump_Type;
  assign datapath_io_ex_Imm_Sel = id_ex_register_io_ex_Imm_Sel;
  assign datapath_io_Forward_A = forward_io_Forward_A;
  assign datapath_io_Forward_B = forward_io_Forward_B;
  assign datapath_io_mem_rs2_out = ex_mem_register_io_mem_rs2_out;
  assign datapath_io_MemWrite_Src = forward_io_MemWrite_Src;
  assign datapath_io_mem_Mem_to_Reg_In = ex_mem_register_io_mem_Mem_to_Reg;
  assign datapath_io_mem_alu_sum = ex_mem_register_io_mem_alu_sum;
  assign datapath_io_mem_pc_4 = ex_mem_register_io_mem_pc_4;
  assign datapath_io_mem_imm = ex_mem_register_io_mem_imm;
  assign datapath_io_mem_aui_pc = ex_mem_register_io_mem_aui_pc;
  assign datapath_io_wb_alu_sum = mem_wb_register_io_wb_alu_sum;
  assign datapath_io_wb_dataout = mem_wb_register_io_wb_dataout;
  assign datapath_io_wb_pc_4 = mem_wb_register_io_wb_pc_4;
  assign datapath_io_wb_imm = mem_wb_register_io_wb_imm;
  assign datapath_io_wb_aui_pc = mem_wb_register_io_wb_aui_pc;
  assign datapath_io_wb_Mem_to_Reg = mem_wb_register_io_wb_Mem_to_Reg;
  assign datapath_io_is_Exception = csr_io_is_Exception;
  assign datapath_io_mepc = csr_io_mepc_out;
  assign datapath_io_ex_CSR_src = id_ex_register_io_ex_CSR_src;
  assign datapath_io_Exception_Flush = csr_io_Exception_Flush;
  assign datapath_io_ex_Mem_Read = id_ex_register_io_ex_Mem_Read;
  assign datapath_io_ex_Mem_Write = id_ex_register_io_ex_Mem_Write;
  assign datapath_io_ex_Data_Size = id_ex_register_io_ex_Data_Size;
  assign datapath_io_ex_Load_Type = id_ex_register_io_ex_Load_Type;
  assign datapath_io_ex_Reg_Write = id_ex_register_io_ex_Reg_Write;
  assign datapath_io_ex_Mem_to_Reg = id_ex_register_io_ex_Mem_to_Reg;
  assign datapath_io_wb_csr_data_out = mem_wb_register_io_wb_csr_data_out;
  assign pc_clock = clock;
  assign pc_reset = reset;
  assign pc_io_next_pc = datapath_io_if_new_pc;
  assign pc_io_PC_Write = hazard_detection_io_PC_Write;
  assign branch_predictor_clock = clock;
  assign branch_predictor_reset = reset;
  assign branch_predictor_io_inst = instcache_io_inst;
  assign branch_predictor_io_branch_addr = datapath_io_branch_addr;
  assign branch_predictor_io_PC_Src = datapath_io_PC_Src;
  assign branch_predictor_io_pc = pc_io_pc_out;
  assign branch_predictor_io_ex_Branch = id_ex_register_io_ex_Branch;
  assign branch_predictor_io_ex_Jump_Type = id_ex_register_io_ex_Jump_Type;
  assign branch_predictor_io_is_Exception = csr_io_is_Exception;
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_ex_Mem_Read = id_ex_register_io_ex_Mem_Read;
  assign csr_io_ex_Mem_Write = id_ex_register_io_ex_Mem_Write;
  assign csr_io_ex_branch_addr = datapath_io_branch_addr;
  assign csr_io_ex_addr = alu_io_sum;
  assign csr_io_ex_inst = id_ex_register_io_ex_inst;
  assign csr_io_csr_data_in = datapath_io_csr_data_in;
  assign csr_io_ex_pc_4 = id_ex_register_io_ex_pc_4;
  assign csr_io_ex_Write_CSR = id_ex_register_io_ex_Write_CSR;
  assign csr_io_ex_is_Illegal = id_ex_register_io_ex_is_Illegal;
  assign csr_io_ex_Branch = id_ex_register_io_ex_Branch;
  assign csr_io_is_Waiting_Resolved = branch_predictor_io_is_Waiting_Resolved;
  assign csr_io_rsp_valid = e203biu_io_lsu2biu_icb_rsp_valid;
  assign csr_io_rsp_rdata = e203biu_io_lsu2biu_icb_rsp_rdata;
  assign hazard_detection_io_rs1 = if_id_register_io_id_rs1;
  assign hazard_detection_io_rs2 = if_id_register_io_id_rs2;
  assign hazard_detection_io_ex_rd = id_ex_register_io_ex_rd;
  assign hazard_detection_io_Imm_Sel = control_io_Imm_Sel;
  assign hazard_detection_io_ex_Mem_Read = id_ex_register_io_ex_Mem_Read;
  assign instcache_clock = clock;
  assign instcache_io_addr = pc_io_pc_out;
  assign if_id_register_clock = clock;
  assign if_id_register_reset = reset;
  assign if_id_register_io_if_pc = pc_io_pc_out;
  assign if_id_register_io_if_pc_4 = datapath_io_if_pc_4;
  assign if_id_register_io_if_inst = instcache_io_inst;
  assign if_id_register_io_IF_ID_Write = hazard_detection_io_IF_ID_Write;
  assign if_id_register_io_IF_ID_Flush = branch_predictor_io_IF_ID_Flush | csr_io_IF_ID_Flush;
  assign regfile_clock = clock;
  assign regfile_io_rs1 = if_id_register_io_id_rs1;
  assign regfile_io_rs2 = if_id_register_io_id_rs2;
  assign regfile_io_rd = mem_wb_register_io_wb_rd;
  assign regfile_io_wdata = datapath_io_wb_reg_writedata;
  assign regfile_io_Reg_Write = mem_wb_register_io_wb_Reg_Write;
  assign mem_wb_register_clock = clock;
  assign mem_wb_register_reset = reset;
  assign mem_wb_register_io_mem_dataout = datacache_io_data_out;
  assign mem_wb_register_io_mem_alu_sum = ex_mem_register_io_mem_alu_sum;
  assign mem_wb_register_io_mem_rd = ex_mem_register_io_mem_rd;
  assign mem_wb_register_io_mem_pc_4 = ex_mem_register_io_mem_pc_4;
  assign mem_wb_register_io_mem_imm = ex_mem_register_io_mem_imm;
  assign mem_wb_register_io_mem_aui_pc = ex_mem_register_io_mem_aui_pc;
  assign mem_wb_register_io_mem_csr_data_out = ex_mem_register_io_mem_csr_data_out;
  assign mem_wb_register_io_mem_Mem_to_Reg = ex_mem_register_io_mem_Mem_to_Reg;
  assign mem_wb_register_io_mem_Reg_Write = ex_mem_register_io_mem_Reg_Write;
  assign immgen_io_inst = if_id_register_io_id_inst;
  assign immgen_io_Imm_Sel = control_io_Imm_Sel;
  assign control_io_inst = if_id_register_io_id_inst;
  assign id_ex_register_clock = clock;
  assign id_ex_register_reset = reset;
  assign id_ex_register_io_id_pc = if_id_register_io_id_pc;
  assign id_ex_register_io_id_pc_4 = if_id_register_io_id_pc_4;
  assign id_ex_register_io_id_rs1_out = regfile_io_rs1_out;
  assign id_ex_register_io_id_rs2_out = regfile_io_rs2_out;
  assign id_ex_register_io_id_imm = immgen_io_imm;
  assign id_ex_register_io_id_inst = if_id_register_io_id_inst;
  assign id_ex_register_io_id_rs1 = if_id_register_io_id_rs1;
  assign id_ex_register_io_id_rs2 = if_id_register_io_id_rs2;
  assign id_ex_register_io_ID_EX_Flush = branch_predictor_io_ID_EX_Flush | csr_io_ID_EX_Flush;
  assign id_ex_register_io_Reg_Write = datapath_io_id_Reg_Write;
  assign id_ex_register_io_Imm_Sel = datapath_io_id_Imm_Sel;
  assign id_ex_register_io_ALU_Src = datapath_io_id_ALU_Src;
  assign id_ex_register_io_ALUOp = datapath_io_id_ALUOp;
  assign id_ex_register_io_Branch = datapath_io_id_Branch;
  assign id_ex_register_io_Branch_Src = datapath_io_id_Branch_Src;
  assign id_ex_register_io_Mem_Read = datapath_io_id_Mem_Read;
  assign id_ex_register_io_Mem_Write = datapath_io_id_Mem_Write;
  assign id_ex_register_io_Data_Size = datapath_io_id_Data_Size;
  assign id_ex_register_io_Load_Type = datapath_io_id_Load_Type;
  assign id_ex_register_io_Mem_to_Reg = datapath_io_id_Mem_to_Reg;
  assign id_ex_register_io_Jump_Type = datapath_io_id_Jump_Type;
  assign id_ex_register_io_CSR_src = datapath_io_id_CSR_src;
  assign id_ex_register_io_Write_CSR = datapath_io_id_Write_CSR;
  assign id_ex_register_io_is_Illegal = datapath_io_id_is_Illegal;
  assign alu_io_src_a = datapath_io_alu_a_src;
  assign alu_io_src_b = datapath_io_alu_b_src;
  assign alu_io_ALUOp = id_ex_register_io_ex_ALUOp;
  assign ex_mem_register_clock = clock;
  assign ex_mem_register_reset = reset;
  assign ex_mem_register_io_ex_alu_sum = alu_io_sum;
  assign ex_mem_register_io_ex_rs2_out = datapath_io_forward_rs2_out;
  assign ex_mem_register_io_ex_rd = id_ex_register_io_ex_rd;
  assign ex_mem_register_io_ex_pc_4 = id_ex_register_io_ex_pc_4;
  assign ex_mem_register_io_ex_imm = id_ex_register_io_ex_imm;
  assign ex_mem_register_io_ex_aui_pc = datapath_io_ex_aui_pc;
  assign ex_mem_register_io_ex_rs2 = {{27'd0}, id_ex_register_io_ex_rs2};
  assign ex_mem_register_io_ex_csr_data_out = csr_io_csr_data_out;
  assign ex_mem_register_io_ex_Mem_Read = datapath_io_mem_Mem_Read;
  assign ex_mem_register_io_ex_Mem_Write = datapath_io_mem_Mem_Write;
  assign ex_mem_register_io_ex_Data_Size = datapath_io_mem_Data_Size;
  assign ex_mem_register_io_ex_Load_Type = datapath_io_mem_Load_Type;
  assign ex_mem_register_io_ex_Reg_Write = datapath_io_mem_Reg_Write;
  assign ex_mem_register_io_ex_Mem_to_Reg = datapath_io_mem_Mem_to_Reg_Out;
  assign forward_io_ex_mem_Reg_Write = ex_mem_register_io_mem_Reg_Write;
  assign forward_io_ex_mem_rd = ex_mem_register_io_mem_rd;
  assign forward_io_ex_mem_Mem_Write = ex_mem_register_io_mem_Mem_Write;
  assign forward_io_ex_mem_rs2 = ex_mem_register_io_mem_rs2[4:0];
  assign forward_io_mem_wb_Reg_Write = mem_wb_register_io_wb_Reg_Write;
  assign forward_io_mem_wb_rd = mem_wb_register_io_wb_rd;
  assign forward_io_id_ex_rs1 = id_ex_register_io_ex_rs1;
  assign forward_io_id_ex_rs2 = id_ex_register_io_ex_rs2;
  assign e203biu_clock = clock;
  assign e203biu_reset = reset;
  assign e203biu_io_lsu2biu_icb_cmd_valid = biuinf_io_biu_cmd_valid;
  assign e203biu_io_lsu2biu_icb_cmd_addr = biuinf_io_biu_addr;
  assign e203biu_io_lsu2biu_icb_cmd_read = biuinf_io_biu_cmd_read;
  assign e203biu_io_lsu2biu_icb_cmd_wdata = biuinf_io_biu_write_data;
  assign e203biu_io_lsu2biu_icb_rsp_ready = biuinf_io_biu_rsp_ready;
  assign e203biu_io_ppi_icb_cmd_ready = biuinf_io_ppi_cmd_ready;
  assign e203biu_io_ppi_icb_rsp_valid = biuinf_io_ppi_rsp_valid;
  assign e203biu_io_ppi_icb_rsp_excl_ok = biuinf_io_ppi_rsp_excl_ok;
  assign e203biu_io_ppi_icb_rsp_rdata = biuinf_io_ppi_rsp_rdata;
  assign biuinf_clock = clock;
  assign biuinf_reset = reset;
  assign biuinf_io_Mem_Write = ex_mem_register_io_mem_Mem_Write;
  assign biuinf_io_addr = ex_mem_register_io_mem_alu_sum;
  assign biuinf_io_write_data = datapath_io_mem_writedata;
  assign datacache_clock = clock;
  assign datacache_io_addr = biuinf_io_DC_addr;
  assign datacache_io_write_data = biuinf_io_biu_write_data;
  assign datacache_io_Mem_Read = ex_mem_register_io_mem_Mem_Read;
  assign datacache_io_Mem_Write = biuinf_io_DC_Mem_Write;
  assign datacache_io_Data_Size = ex_mem_register_io_mem_Data_Size;
  assign datacache_io_Load_Type = ex_mem_register_io_mem_Load_Type;
endmodule
