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
  input  [1:0]  io_PC_Sel,
  input  [31:0] io_new_addr,
  input  [31:0] io_pc_recover,
  input         io_Bubble,
  input  [31:0] io_if_inst,
  input         io_is_Waiting_Resolved,
  output [31:0] io_mepc_out,
  output [31:0] io_mtvec_out,
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
  wire [31:0] _T_64;
  wire  _T_65;
  wire  InstructionAddressMisaligned_con;
  wire  _T_67;
  wire [31:0] _T_68;
  wire  _T_69;
  wire  LoadAddressMisaligned_con;
  wire  _T_71;
  wire  StoreAddressMisaligned_con;
  wire  is_a_exception;
  wire  _T_75;
  wire  _T_76;
  wire  is_a_interrupt;
  wire  _T_77;
  wire  _T_78;
  wire  _T_79;
  wire  _T_80;
  wire  enable_exception;
  wire [63:0] _GEN_160;
  wire [63:0] _T_81;
  wire  _T_82;
  wire  _T_83;
  wire [32:0] _T_84;
  wire [32:0] _T_85;
  wire [32:0] _GEN_4;
  wire [32:0] _GEN_5;
  wire [32:0] _GEN_6;
  wire [32:0] _GEN_7;
  wire  _T_86;
  wire  _T_87;
  wire  _T_88;
  wire  minstret_overflow;
  wire  minstreth_overflow;
  wire  _T_89;
  wire [32:0] _T_90;
  wire [32:0] _T_91;
  wire [32:0] _GEN_8;
  wire [32:0] _GEN_9;
  wire [32:0] _GEN_10;
  wire [32:0] _GEN_11;
  wire [32:0] _GEN_12;
  wire [32:0] _GEN_13;
  wire  exception_raise;
  wire  _T_95;
  wire  _T_96;
  wire [1:0] _GEN_15;
  wire [32:0] _T_135;
  wire [32:0] normal_pc;
  wire  _T_157;
  wire  _T_159;
  wire [4:0] _T_160;
  wire [31:0] _T_161;
  wire [31:0] imm_data;
  wire  _T_163;
  wire [31:0] s_val;
  wire  _T_165;
  wire [31:0] si_val;
  wire  _T_167;
  wire [31:0] _T_168;
  wire [31:0] _T_169;
  wire [31:0] c_val;
  wire  _T_171;
  wire [31:0] _T_172;
  wire [31:0] _T_173;
  wire [31:0] ci_val;
  wire [31:0] _T_170;
  wire [31:0] _T_166;
  wire [31:0] _T_164;
  wire [31:0] _T_162;
  wire [31:0] _T_158;
  wire [31:0] csr_write_data;
  wire  _T_154;
  wire  _T_156;
  wire  _T_177;
  wire  _T_178;
  wire  _T_179;
  wire  _T_183;
  wire  _T_187;
  wire  _T_188;
  wire  _T_189;
  wire  _T_190;
  wire  _T_191;
  wire  _T_192;
  wire  _T_174;
  wire  _T_175;
  wire [1:0] _T_176;
  wire  _T_182;
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
  assign _T_64 = io_ex_branch_addr & 32'h3;
  assign _T_65 = _T_64 != 32'h0;
  assign InstructionAddressMisaligned_con = _T_65 & io_ex_Branch;
  assign _T_67 = InstructionAddressMisaligned_con | io_ex_is_Illegal;
  assign _T_68 = io_ex_addr & 32'h3;
  assign _T_69 = _T_68 != 32'h0;
  assign LoadAddressMisaligned_con = _T_69 & io_ex_Mem_Read;
  assign _T_71 = _T_67 | LoadAddressMisaligned_con;
  assign StoreAddressMisaligned_con = _T_69 & io_ex_Mem_Write;
  assign is_a_exception = _T_71 | StoreAddressMisaligned_con;
  assign _T_75 = timecmp != 64'h0;
  assign _T_76 = time_ > timecmp;
  assign is_a_interrupt = _T_75 & _T_76;
  assign _T_77 = is_a_interrupt & MTIE;
  assign _T_78 = is_a_exception | _T_77;
  assign _T_79 = MIE & _T_78;
  assign _T_80 = ~ io_is_Waiting_Resolved;
  assign enable_exception = _T_79 & _T_80;
  assign _GEN_160 = {{63'd0}, enable_exception};
  assign _T_81 = timecmp & _GEN_160;
  assign _T_82 = time_ > _T_81;
  assign _T_83 = _T_60 | _T_82;
  assign _T_84 = mtimeh + 32'h1;
  assign _T_85 = mtime + 32'h1;
  assign _GEN_4 = mtime_overflow ? 33'h0 : _T_85;
  assign _GEN_5 = mtime_overflow ? _T_84 : {{1'd0}, mtimeh};
  assign _GEN_6 = _T_83 ? 33'h0 : _GEN_4;
  assign _GEN_7 = _T_83 ? 33'h0 : _GEN_5;
  assign _T_86 = io_ex_inst != 32'h13;
  assign _T_87 = io_ex_inst != 32'h30200073;
  assign _T_88 = _T_86 & _T_87;
  assign minstret_overflow = minstret == 32'hffffffff;
  assign minstreth_overflow = minstreth == 32'hffffffff;
  assign _T_89 = minstret_overflow & minstreth_overflow;
  assign _T_90 = minstreth + 32'h1;
  assign _T_91 = minstret + 32'h1;
  assign _GEN_8 = minstret_overflow ? 33'h0 : _T_91;
  assign _GEN_9 = minstret_overflow ? _T_90 : {{1'd0}, minstreth};
  assign _GEN_10 = _T_89 ? 33'h0 : _GEN_8;
  assign _GEN_11 = _T_89 ? 33'h0 : _GEN_9;
  assign _GEN_12 = _T_88 ? _GEN_10 : {{1'd0}, minstret};
  assign _GEN_13 = _T_88 ? _GEN_11 : {{1'd0}, minstreth};
  assign exception_raise = is_a_exception | is_a_interrupt;
  assign _T_95 = exception_raise & enable_exception;
  assign _T_96 = io_ex_Write_CSR == 3'h7;
  assign _GEN_15 = _T_96 ? 2'h1 : 2'h0;
  assign _T_135 = io_ex_pc_4 - 32'h4;
  assign normal_pc = is_a_exception ? _T_135 : {{1'd0}, io_ex_pc_4};
  assign _T_157 = 3'h1 == io_ex_Write_CSR;
  assign _T_159 = 3'h2 == io_ex_Write_CSR;
  assign _T_160 = io_ex_inst[19:15];
  assign _T_161 = {27'h0,_T_160};
  assign imm_data = $unsigned(_T_161);
  assign _T_163 = 3'h3 == io_ex_Write_CSR;
  assign s_val = io_csr_data_out | io_csr_data_in;
  assign _T_165 = 3'h4 == io_ex_Write_CSR;
  assign si_val = io_csr_data_out | imm_data;
  assign _T_167 = 3'h5 == io_ex_Write_CSR;
  assign _T_168 = ~ io_csr_data_in;
  assign _T_169 = $unsigned(_T_168);
  assign c_val = io_csr_data_out & _T_169;
  assign _T_171 = 3'h6 == io_ex_Write_CSR;
  assign _T_172 = ~ imm_data;
  assign _T_173 = $unsigned(_T_172);
  assign ci_val = io_csr_data_out & _T_173;
  assign _T_170 = _T_171 ? ci_val : 32'h0;
  assign _T_166 = _T_167 ? c_val : _T_170;
  assign _T_164 = _T_165 ? si_val : _T_166;
  assign _T_162 = _T_163 ? s_val : _T_164;
  assign _T_158 = _T_159 ? imm_data : _T_162;
  assign csr_write_data = _T_157 ? io_csr_data_in : _T_158;
  assign _T_154 = LoadAddressMisaligned_con | StoreAddressMisaligned_con;
  assign _T_156 = csr_addr == 12'h300;
  assign _T_177 = csr_addr == 12'h341;
  assign _T_178 = csr_addr == 12'h342;
  assign _T_179 = csr_addr == 12'h344;
  assign _T_183 = csr_addr == 12'h304;
  assign _T_187 = csr_addr == 12'hb00;
  assign _T_188 = csr_addr == 12'hb80;
  assign _T_189 = csr_addr == 12'hb02;
  assign _T_190 = csr_addr == 12'hb82;
  assign _T_191 = csr_addr == 12'h702;
  assign _T_192 = csr_addr == 12'h703;
  assign _T_174 = csr_write_data[3];
  assign _T_175 = csr_write_data[7];
  assign _T_176 = csr_write_data[12:11];
  assign _T_182 = csr_write_data[11];
  assign _GEN_25 = _T_190 ? {{1'd0}, csr_write_data} : _GEN_13;
  assign _GEN_28 = _T_189 ? {{1'd0}, csr_write_data} : _GEN_12;
  assign _GEN_29 = _T_189 ? _GEN_13 : _GEN_25;
  assign _GEN_32 = _T_188 ? {{1'd0}, csr_write_data} : _GEN_3;
  assign _GEN_33 = _T_188 ? _GEN_12 : _GEN_28;
  assign _GEN_34 = _T_188 ? _GEN_13 : _GEN_29;
  assign _GEN_37 = _T_187 ? {{1'd0}, csr_write_data} : _GEN_2;
  assign _GEN_38 = _T_187 ? _GEN_3 : _GEN_32;
  assign _GEN_39 = _T_187 ? _GEN_12 : _GEN_33;
  assign _GEN_40 = _T_187 ? _GEN_13 : _GEN_34;
  assign _GEN_43 = _T_183 ? _T_174 : MSIE;
  assign _GEN_44 = _T_183 ? _T_175 : MTIE;
  assign _GEN_45 = _T_183 ? _T_182 : MEIE;
  assign _GEN_46 = _T_183 ? _GEN_2 : _GEN_37;
  assign _GEN_47 = _T_183 ? _GEN_3 : _GEN_38;
  assign _GEN_48 = _T_183 ? _GEN_12 : _GEN_39;
  assign _GEN_49 = _T_183 ? _GEN_13 : _GEN_40;
  assign _GEN_55 = _T_179 ? MSIE : _GEN_43;
  assign _GEN_56 = _T_179 ? MTIE : _GEN_44;
  assign _GEN_57 = _T_179 ? MEIE : _GEN_45;
  assign _GEN_58 = _T_179 ? _GEN_2 : _GEN_46;
  assign _GEN_59 = _T_179 ? _GEN_3 : _GEN_47;
  assign _GEN_60 = _T_179 ? _GEN_12 : _GEN_48;
  assign _GEN_61 = _T_179 ? _GEN_13 : _GEN_49;
  assign _GEN_68 = _T_178 ? MSIE : _GEN_55;
  assign _GEN_69 = _T_178 ? MTIE : _GEN_56;
  assign _GEN_70 = _T_178 ? MEIE : _GEN_57;
  assign _GEN_71 = _T_178 ? _GEN_2 : _GEN_58;
  assign _GEN_72 = _T_178 ? _GEN_3 : _GEN_59;
  assign _GEN_73 = _T_178 ? _GEN_12 : _GEN_60;
  assign _GEN_74 = _T_178 ? _GEN_13 : _GEN_61;
  assign _GEN_77 = _T_177 ? csr_write_data : mepc;
  assign _GEN_82 = _T_177 ? MSIE : _GEN_68;
  assign _GEN_83 = _T_177 ? MTIE : _GEN_69;
  assign _GEN_84 = _T_177 ? MEIE : _GEN_70;
  assign _GEN_85 = _T_177 ? _GEN_2 : _GEN_71;
  assign _GEN_86 = _T_177 ? _GEN_3 : _GEN_72;
  assign _GEN_87 = _T_177 ? _GEN_12 : _GEN_73;
  assign _GEN_88 = _T_177 ? _GEN_13 : _GEN_74;
  assign _GEN_91 = _T_156 ? _T_174 : MIE;
  assign _GEN_92 = _T_156 ? _T_175 : MPIE;
  assign _GEN_94 = _T_156 ? mepc : _GEN_77;
  assign _GEN_99 = _T_156 ? MSIE : _GEN_82;
  assign _GEN_100 = _T_156 ? MTIE : _GEN_83;
  assign _GEN_101 = _T_156 ? MEIE : _GEN_84;
  assign _GEN_102 = _T_156 ? _GEN_2 : _GEN_85;
  assign _GEN_103 = _T_156 ? _GEN_3 : _GEN_86;
  assign _GEN_104 = _T_156 ? _GEN_12 : _GEN_87;
  assign _GEN_105 = _T_156 ? _GEN_13 : _GEN_88;
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
  assign _GEN_125 = _T_96 ? MPIE : _GEN_108;
  assign _GEN_126 = _T_96 | _GEN_109;
  assign _GEN_128 = _T_96 ? mepc : _GEN_111;
  assign _GEN_133 = _T_96 ? MSIE : _GEN_116;
  assign _GEN_134 = _T_96 ? MTIE : _GEN_117;
  assign _GEN_135 = _T_96 ? MEIE : _GEN_118;
  assign _GEN_136 = _T_96 ? _GEN_2 : _GEN_119;
  assign _GEN_137 = _T_96 ? _GEN_3 : _GEN_120;
  assign _GEN_138 = _T_96 ? _GEN_12 : _GEN_121;
  assign _GEN_139 = _T_96 ? _GEN_13 : _GEN_122;
  assign _GEN_142 = _T_95 ? normal_pc : {{1'd0}, _GEN_128};
  assign _GEN_145 = _T_95 ? MIE : _GEN_126;
  assign _GEN_147 = _T_95 ? 1'h0 : _GEN_125;
  assign _GEN_151 = _T_95 ? MSIE : _GEN_133;
  assign _GEN_152 = _T_95 ? MTIE : _GEN_134;
  assign _GEN_153 = _T_95 ? MEIE : _GEN_135;
  assign _GEN_154 = _T_95 ? _GEN_2 : _GEN_136;
  assign _GEN_155 = _T_95 ? _GEN_3 : _GEN_137;
  assign _GEN_156 = _T_95 ? _GEN_12 : _GEN_138;
  assign _GEN_157 = _T_95 ? _GEN_13 : _GEN_139;
  assign io_mepc_out = mepc;
  assign io_mtvec_out = 32'ha4;
  assign io_csr_data_out = _T_12 ? mstatus : _T_18;
  assign io_IF_ID_Flush = _T_95 | _T_96;
  assign io_ID_EX_Flush = _T_95 | _T_96;
  assign io_is_Exception = _T_95 ? 2'h2 : _GEN_15;
  assign io_Exception_Flush = _T_95 & is_a_exception;
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
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      MPP <= 2'h3;
    end else if (_T_95) begin
      MPP <= 2'h3;
    end else if (_T_96) begin
      MPP <= 2'h3;
    end else if (is_CSR_Instruction) begin
      if (_T_156) begin
        MPP <= _T_176;
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
    end else if (_T_95) begin
      if (InstructionAddressMisaligned_con) begin
        mtval <= io_ex_branch_addr;
      end else if (io_ex_is_Illegal) begin
        mtval <= io_ex_inst;
      end else if (_T_154) begin
        mtval <= io_ex_addr;
      end
    end
    MEIE <= reset | _GEN_153;
    MTIE <= reset | _GEN_152;
    MSIE <= reset | _GEN_151;
    if (reset) begin
      MEIP <= 1'h0;
    end else if (!(_T_95)) begin
      if (!(_T_96)) begin
        if (is_CSR_Instruction) begin
          if (!(_T_156)) begin
            if (!(_T_177)) begin
              if (!(_T_178)) begin
                if (_T_179) begin
                  MEIP <= _T_182;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      MTIP <= 1'h0;
    end else if (!(_T_95)) begin
      if (!(_T_96)) begin
        if (is_CSR_Instruction) begin
          if (!(_T_156)) begin
            if (!(_T_177)) begin
              if (!(_T_178)) begin
                if (_T_179) begin
                  MTIP <= _T_175;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      MSIP <= 1'h0;
    end else if (!(_T_95)) begin
      if (!(_T_96)) begin
        if (is_CSR_Instruction) begin
          if (!(_T_156)) begin
            if (!(_T_177)) begin
              if (!(_T_178)) begin
                if (_T_179) begin
                  MSIP <= _T_174;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      mcause <= 32'h0;
    end else if (_T_95) begin
      if (InstructionAddressMisaligned_con) begin
        mcause <= 32'h0;
      end else if (io_ex_is_Illegal) begin
        mcause <= 32'h2;
      end else if (LoadAddressMisaligned_con) begin
        mcause <= 32'h4;
      end else if (StoreAddressMisaligned_con) begin
        mcause <= 32'h6;
      end else if (is_a_interrupt) begin
        mcause <= 32'h7;
      end
    end else if (!(_T_96)) begin
      if (is_CSR_Instruction) begin
        if (!(_T_156)) begin
          if (!(_T_177)) begin
            if (_T_178) begin
              if (_T_157) begin
                mcause <= io_csr_data_in;
              end else if (_T_159) begin
                mcause <= imm_data;
              end else if (_T_163) begin
                mcause <= s_val;
              end else if (_T_165) begin
                mcause <= si_val;
              end else if (_T_167) begin
                mcause <= c_val;
              end else if (_T_171) begin
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
    end else if (!(_T_95)) begin
      if (!(_T_96)) begin
        if (is_CSR_Instruction) begin
          if (!(_T_156)) begin
            if (!(_T_177)) begin
              if (!(_T_178)) begin
                if (!(_T_179)) begin
                  if (!(_T_183)) begin
                    if (!(_T_187)) begin
                      if (!(_T_188)) begin
                        if (!(_T_189)) begin
                          if (!(_T_190)) begin
                            if (_T_191) begin
                              if (_T_157) begin
                                mtimecmp <= io_csr_data_in;
                              end else if (_T_159) begin
                                mtimecmp <= imm_data;
                              end else if (_T_163) begin
                                mtimecmp <= s_val;
                              end else if (_T_165) begin
                                mtimecmp <= si_val;
                              end else if (_T_167) begin
                                mtimecmp <= c_val;
                              end else if (_T_171) begin
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
    end else if (!(_T_95)) begin
      if (!(_T_96)) begin
        if (is_CSR_Instruction) begin
          if (!(_T_156)) begin
            if (!(_T_177)) begin
              if (!(_T_178)) begin
                if (!(_T_179)) begin
                  if (!(_T_183)) begin
                    if (!(_T_187)) begin
                      if (!(_T_188)) begin
                        if (!(_T_189)) begin
                          if (!(_T_190)) begin
                            if (!(_T_191)) begin
                              if (_T_192) begin
                                if (_T_157) begin
                                  mtimecmph <= io_csr_data_in;
                                end else if (_T_159) begin
                                  mtimecmph <= imm_data;
                                end else if (_T_163) begin
                                  mtimecmph <= s_val;
                                end else if (_T_165) begin
                                  mtimecmph <= si_val;
                                end else if (_T_167) begin
                                  mtimecmph <= c_val;
                                end else if (_T_171) begin
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
  end
endmodule
