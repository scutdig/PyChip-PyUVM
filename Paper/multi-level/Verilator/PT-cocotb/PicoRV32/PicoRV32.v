`timescale 1ns / 1ns

module PicoRV32(
  input         clock,
  input         reset,
  output        io_trap,
  output        io_mem_valid,
  output        io_mem_instr,
  input         io_mem_ready,
  output [31:0] io_mem_addr,
  output [31:0] io_mem_wdata,
  output [3:0]  io_mem_wstrb,
  input  [31:0] io_mem_rdata,
  output        io_mem_la_read,
  output        io_mem_la_write,
  output [31:0] io_mem_la_addr,
  output [31:0] io_mem_la_wdata,
  output [3:0]  io_mem_la_wstrb,
  output        io_pcpi_valid,
  output [31:0] io_pcpi_insn,
  output [31:0] io_pcpi_rs1,
  output [31:0] io_pcpi_rs2,
  input         io_pcpi_wr,
  input  [31:0] io_pcpi_rd,
  input         io_pcpi_wait,
  input         io_pcpi_ready,
  input  [31:0] io_irq,
  output [31:0] io_eoi,
  output        io_trace_valid,
  output [35:0] io_trace_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [63:0] _RAND_90;
  reg [63:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
`endif // RANDOMIZE_REG_INIT
  reg  trap;
  reg  mem_valid;
  reg  mem_instr;
  reg [31:0] mem_addr;
  reg [31:0] mem_wdata;
  reg [3:0] mem_wstrb;
  reg [31:0] mem_la_wdata;
  reg [3:0] mem_la_wstrb;
  reg [31:0] reg_op1;
  reg [31:0] reg_op2;
  reg  mem_do_rinst;
  reg  latched_store;
  reg  latched_branch;
  wire  _T_1140 = latched_store & latched_branch;
  reg [31:0] reg_out;
  wire [31:0] _T_1142 = reg_out & 32'hfffffffe;
  reg [31:0] reg_next_pc;
  wire [31:0] next_pc = _T_1140 ? _T_1142 : reg_next_pc;
  wire  mem_xfer = io_mem_valid & io_mem_ready;
  reg  mem_do_rdata;
  wire  _T_48 = mem_do_rinst | mem_do_rdata;
  reg  mem_do_wdata;
  wire  mem_busy = _T_48 | mem_do_wdata;
  reg [1:0] mem_state;
  wire  _T_52 = mem_state[1] | mem_state[0];
  wire  _T_53 = mem_xfer & _T_52;
  wire  _T_56 = _T_53 & mem_busy;
  wire  _T_59 = mem_state[1] & mem_state[0];
  wire  _T_60 = _T_59 & mem_do_rinst;
  wire  _T_61 = _T_56 | _T_60;
  wire  mem_done = reset & _T_61;
  reg [31:0] mem_rdata_q;
  wire [31:0] mem_rdata_latched_noshuffle = mem_xfer ? io_mem_rdata : mem_rdata_q;
  wire  _T_74 = ~_T_52;
  wire  _T_75 = reset & _T_74;
  wire  _T_85 = _T_74 & _T_48;
  wire [30:0] _T_103 = {{1'd0}, next_pc[31:2]};
  wire [32:0] _T_104 = {_T_103,2'h0};
  wire [31:0] _T_106 = {reg_op1[31:2],2'h0};
  wire [32:0] _T_99 = mem_do_rinst ? _T_104 : {{1'd0}, _T_106};
  wire  _T_124 = ~reset;
  reg [1:0] mem_wordsize;
  wire  _T_128 = mem_wordsize == 2'h0;
  reg [31:0] mem_rdata_word;
  wire  _T_129 = mem_wordsize == 2'h1;
  wire  _T_142 = mem_wordsize == 2'h2;
  wire [31:0] _T_132 = {reg_op2[15:0],reg_op2[15:0]};
  wire  _T_137 = ~reg_op1[1];
  wire [31:0] _T_139 = {16'h0,io_mem_rdata[15:0]};
  wire [31:0] _T_141 = {16'h0,io_mem_rdata[31:16]};
  wire [31:0] _T_149 = {reg_op2[7:0],reg_op2[7:0],reg_op2[7:0],reg_op2[7:0]};
  wire [6:0] _T_151 = 7'h1 << reg_op1[1:0];
  wire  _T_153 = reg_op1[1:0] == 2'h0;
  wire  _T_157 = reg_op1[1:0] == 2'h1;
  wire  _T_161 = reg_op1[1:0] == 2'h2;
  wire  _T_165 = reg_op1[1:0] == 2'h3;
  wire [31:0] _T_155 = {24'h0,io_mem_rdata[7:0]};
  wire [31:0] _T_159 = {24'h0,io_mem_rdata[15:8]};
  wire [31:0] _T_163 = {24'h0,io_mem_rdata[23:16]};
  wire [31:0] _T_167 = {24'h0,io_mem_rdata[31:24]};
  wire  _T_482 = _T_124 | io_trap;
  wire  _T_485 = _T_124 | io_mem_ready;
  wire  _T_486 = io_mem_la_read | io_mem_la_write;
  wire [3:0] _T_489 = {io_mem_la_write,io_mem_la_write,io_mem_la_write,io_mem_la_write};
  wire [3:0] _T_490 = io_mem_la_wstrb & _T_489;
  wire  _T_491 = mem_state == 2'h0;
  wire  _T_496 = mem_state == 2'h1;
  wire  _T_511 = mem_state == 2'h2;
  wire  _T_512 = mem_state == 2'h3;
  wire  _GEN_56 = _T_48 | mem_valid;
  wire  _GEN_60 = mem_do_wdata | _GEN_56;
  wire  _T_500 = ~mem_do_rdata;
  reg  instr_lui;
  reg  instr_auipc;
  reg  instr_jal;
  reg  instr_jalr;
  reg  instr_beq;
  reg  instr_bne;
  reg  instr_blt;
  reg  instr_bge;
  reg  instr_bltu;
  reg  instr_bgeu;
  reg  instr_lb;
  wire [5:0] _T_522 = {instr_bne,instr_blt,instr_bge,instr_bltu,instr_bgeu,instr_lb};
  reg  instr_lh;
  reg  instr_lw;
  reg  instr_lbu;
  reg  instr_lhu;
  reg  instr_sb;
  reg  instr_sh;
  reg  instr_sw;
  reg  instr_addi;
  reg  instr_slti;
  reg  instr_sltiu;
  reg  instr_xori;
  reg  instr_ori;
  wire [5:0] _T_533 = {instr_sw,instr_addi,instr_slti,instr_sltiu,instr_xori,instr_ori};
  wire [11:0] _T_534 = {instr_lh,instr_lw,instr_lbu,instr_lhu,instr_sb,instr_sh,_T_533};
  reg  instr_andi;
  reg  instr_slli;
  reg  instr_srli;
  reg  instr_srai;
  reg  instr_add;
  reg  instr_sub;
  reg  instr_sll;
  reg  instr_slt;
  reg  instr_sltu;
  reg  instr_xor;
  reg  instr_srl;
  reg  instr_sra;
  wire [5:0] _T_545 = {instr_sll,instr_slt,instr_sltu,instr_xor,instr_srl,instr_sra};
  reg  instr_or;
  reg  instr_and;
  reg  instr_rdcycle;
  reg  instr_rdcycleh;
  reg  instr_rdinstr;
  reg  instr_rdinstrh;
  wire [11:0] _T_557 = {instr_or,instr_and,instr_rdcycle,instr_rdcycleh,instr_rdinstr,instr_rdinstrh,6'h0};
  wire [23:0] _T_558 = {instr_andi,instr_slli,instr_srli,instr_srai,instr_add,instr_sub,_T_545,_T_557};
  wire [46:0] all_instr = {instr_lui,instr_auipc,instr_jal,instr_jalr,instr_beq,_T_522,_T_534,_T_558};
  wire  instr_trap = all_instr == 47'h0;
  wire  _T_561 = instr_rdcycle | instr_rdcycleh;
  wire  _T_562 = _T_561 | instr_rdinstr;
  wire  is_rdcycle_rdcycleh_rdinstr_rdinstrh = _T_562 | instr_rdinstrh;
  reg  is_lui_auipc_jal;
  wire  _T_564 = instr_lui | instr_auipc;
  reg  is_lbu_lhu_lw;
  wire  _T_576 = instr_lbu | instr_lhu;
  reg  is_beq_bne_blt_bge_bltu_bgeu;
  wire  _T_582 = mem_do_rinst & mem_done;
  reg  is_lb_lh_lw_lbu_lhu;
  reg  is_sb_sh_sw;
  reg  is_alu_reg_imm;
  reg  is_alu_reg_reg;
  reg [31:0] decoded_imm_j;
  reg [4:0] decoded_rs1;
  reg [4:0] decoded_rs2;
  wire  _T_585 = mem_rdata_latched_noshuffle[6:0] == 7'h37;
  wire  _T_588 = mem_rdata_latched_noshuffle[6:0] == 7'h17;
  wire  _T_591 = mem_rdata_latched_noshuffle[6:0] == 7'h6f;
  wire  _T_594 = mem_rdata_latched_noshuffle[6:0] == 7'h67;
  wire  _T_596 = mem_rdata_latched_noshuffle[14:12] == 3'h0;
  wire  _T_597 = _T_594 & _T_596;
  wire  _T_614 = mem_rdata_latched_noshuffle[6:0] == 7'h63;
  wire  _T_617 = mem_rdata_latched_noshuffle[6:0] == 7'h3;
  wire  _T_620 = mem_rdata_latched_noshuffle[6:0] == 7'h23;
  wire  _T_623 = mem_rdata_latched_noshuffle[6:0] == 7'h13;
  wire  _T_626 = mem_rdata_latched_noshuffle[6:0] == 7'h33;
  wire [20:0] _T_629 = {mem_rdata_latched_noshuffle[31:12],1'h0};
  wire [31:0] _GEN_1017 = {$signed(_T_629), 11'h0};
  wire [35:0] _T_630 = {{4{_GEN_1017[31]}},_GEN_1017};
  wire [24:0] _GEN_1018 = _T_630[35:11];
  wire [35:0] _T_632 = {{11{_GEN_1018[24]}},_GEN_1018};
  wire [31:0] decoder_imm_j_signed = _T_632[31:0];
  wire [31:0] _T_641 = {decoder_imm_j_signed[31:20],decoder_imm_j_signed[8:1],decoder_imm_j_signed[9],decoder_imm_j_signed[19:10],decoder_imm_j_signed[0]};
  reg  decoder_trigger;
  reg  decoder_pseudo_trigger;
  wire  _T_836 = ~decoder_pseudo_trigger;
  wire  _T_837 = decoder_trigger & _T_836;
  reg  is_slli_srli_srai;
  reg  is_jalr_addi_slti_sltiu_xori_ori_andi;
  reg  is_sll_srl_sra;
  reg [31:0] decoded_imm;
  wire  _T_840 = mem_rdata_q[14:12] == 3'h0;
  wire  _T_841 = is_beq_bne_blt_bge_bltu_bgeu & _T_840;
  wire  _T_843 = mem_rdata_q[14:12] == 3'h1;
  wire  _T_844 = is_beq_bne_blt_bge_bltu_bgeu & _T_843;
  wire  _T_846 = mem_rdata_q[14:12] == 3'h4;
  wire  _T_847 = is_beq_bne_blt_bge_bltu_bgeu & _T_846;
  wire  _T_849 = mem_rdata_q[14:12] == 3'h5;
  wire  _T_850 = is_beq_bne_blt_bge_bltu_bgeu & _T_849;
  wire  _T_852 = mem_rdata_q[14:12] == 3'h6;
  wire  _T_853 = is_beq_bne_blt_bge_bltu_bgeu & _T_852;
  wire  _T_855 = mem_rdata_q[14:12] == 3'h7;
  wire  _T_856 = is_beq_bne_blt_bge_bltu_bgeu & _T_855;
  wire  _T_859 = is_lb_lh_lw_lbu_lhu & _T_840;
  wire  _T_862 = is_lb_lh_lw_lbu_lhu & _T_843;
  wire  _T_864 = mem_rdata_q[14:12] == 3'h2;
  wire  _T_865 = is_lb_lh_lw_lbu_lhu & _T_864;
  wire  _T_868 = is_lb_lh_lw_lbu_lhu & _T_846;
  wire  _T_871 = is_lb_lh_lw_lbu_lhu & _T_849;
  wire  _T_874 = is_sb_sh_sw & _T_840;
  wire  _T_877 = is_sb_sh_sw & _T_843;
  wire  _T_880 = is_sb_sh_sw & _T_864;
  wire  _T_883 = is_alu_reg_imm & _T_840;
  wire  _T_886 = is_alu_reg_imm & _T_864;
  wire  _T_888 = mem_rdata_q[14:12] == 3'h3;
  wire  _T_889 = is_alu_reg_imm & _T_888;
  wire  _T_892 = is_alu_reg_imm & _T_846;
  wire  _T_895 = is_alu_reg_imm & _T_852;
  wire  _T_898 = is_alu_reg_imm & _T_855;
  wire  _T_901 = is_alu_reg_imm & _T_843;
  wire  _T_903 = mem_rdata_q[31:25] == 7'h0;
  wire  _T_904 = _T_901 & _T_903;
  wire  _T_907 = is_alu_reg_imm & _T_849;
  wire  _T_910 = _T_907 & _T_903;
  wire  _T_915 = mem_rdata_q[31:25] == 7'h20;
  wire  _T_916 = _T_907 & _T_915;
  wire  _T_919 = is_alu_reg_reg & _T_840;
  wire  _T_922 = _T_919 & _T_903;
  wire  _T_928 = _T_919 & _T_915;
  wire  _T_931 = is_alu_reg_reg & _T_843;
  wire  _T_934 = _T_931 & _T_903;
  wire  _T_937 = is_alu_reg_reg & _T_864;
  wire  _T_940 = _T_937 & _T_903;
  wire  _T_943 = is_alu_reg_reg & _T_888;
  wire  _T_946 = _T_943 & _T_903;
  wire  _T_949 = is_alu_reg_reg & _T_846;
  wire  _T_952 = _T_949 & _T_903;
  wire  _T_955 = is_alu_reg_reg & _T_849;
  wire  _T_958 = _T_955 & _T_903;
  wire  _T_964 = _T_955 & _T_915;
  wire  _T_967 = is_alu_reg_reg & _T_852;
  wire  _T_970 = _T_967 & _T_903;
  wire  _T_973 = is_alu_reg_reg & _T_855;
  wire  _T_976 = _T_973 & _T_903;
  wire  _T_978 = mem_rdata_q[6:0] == 7'h73;
  wire  _T_980 = mem_rdata_q[31:12] == 20'hc0002;
  wire  _T_981 = _T_978 & _T_980;
  wire  _T_985 = mem_rdata_q[31:12] == 20'hc0102;
  wire  _T_986 = _T_978 & _T_985;
  wire  _T_987 = _T_981 | _T_986;
  wire  _T_992 = mem_rdata_q[31:12] == 20'hc8002;
  wire  _T_993 = _T_978 & _T_992;
  wire  _T_997 = mem_rdata_q[31:12] == 20'hc8102;
  wire  _T_998 = _T_978 & _T_997;
  wire  _T_999 = _T_993 | _T_998;
  wire  _T_1005 = mem_rdata_q[31:12] == 20'hc0202;
  wire  _T_1006 = _T_978 & _T_1005;
  wire  _T_1011 = mem_rdata_q[31:12] == 20'hc8202;
  wire  _T_1012 = _T_978 & _T_1011;
  wire  _T_1058 = _T_843 & _T_903;
  wire  _T_1063 = _T_849 & _T_903;
  wire  _T_1064 = _T_1058 | _T_1063;
  wire  _T_1069 = _T_849 & _T_915;
  wire  _T_1070 = _T_1064 | _T_1069;
  wire  _T_1071 = is_alu_reg_imm & _T_1070;
  wire  _T_1076 = _T_840 | _T_864;
  wire  _T_1079 = _T_1076 | _T_888;
  wire  _T_1082 = _T_1079 | _T_846;
  wire  _T_1085 = _T_1082 | _T_852;
  wire  _T_1088 = _T_1085 | _T_855;
  wire  _T_1089 = is_alu_reg_imm & _T_1088;
  wire  _T_1090 = instr_jalr | _T_1089;
  wire  _T_1108 = is_alu_reg_reg & _T_1070;
  wire  _T_1112 = instr_jalr | is_lb_lh_lw_lbu_lhu;
  wire  _T_1113 = _T_1112 | is_alu_reg_imm;
  wire [31:0] _GEN_1035 = {mem_rdata_q[31:12], 12'h0};
  wire [34:0] _T_1111 = {{3'd0}, _GEN_1035};
  wire [11:0] _T_1115 = mem_rdata_q[31:20];
  wire [31:0] _GEN_1036 = {$signed(_T_1115), 20'h0};
  wire [42:0] _T_1116 = {{11{_GEN_1036[31]}},_GEN_1036};
  wire [22:0] _GEN_1037 = _T_1116[42:20];
  wire [42:0] _T_1118 = {{20{_GEN_1037[22]}},_GEN_1037};
  wire [12:0] _T_1127 = {mem_rdata_q[31],mem_rdata_q[7],mem_rdata_q[30:25],mem_rdata_q[11:8],1'h0};
  wire [31:0] _GEN_1038 = {$signed(_T_1127), 19'h0};
  wire [43:0] _T_1128 = {{12{_GEN_1038[31]}},_GEN_1038};
  wire [24:0] _GEN_1039 = _T_1128[43:19];
  wire [43:0] _T_1130 = {{19{_GEN_1039[24]}},_GEN_1039};
  wire [11:0] _T_1134 = {mem_rdata_q[31:25],mem_rdata_q[11:7]};
  wire [31:0] _GEN_1040 = {$signed(_T_1134), 20'h0};
  wire [42:0] _T_1135 = {{11{_GEN_1040[31]}},_GEN_1040};
  wire [22:0] _GEN_1041 = _T_1135[42:20];
  wire [42:0] _T_1137 = {{20{_GEN_1041[22]}},_GEN_1041};
  reg  alu_out_0;
  wire  _GEN_330 = instr_bne | instr_bge;
  reg  cpuregs_write;
  reg [31:0] cpuregs_wrdata;
  reg [7:0] cpu_state;
  wire  _T_1179 = cpu_state == 8'h40;
  wire  _T_1183 = ~latched_branch;
  wire  _T_1184 = latched_store & _T_1183;
  wire [31:0] _GEN_343 = _T_1184 ? reg_out : 32'h0;
  wire [32:0] _GEN_345 = latched_branch ? 33'h4 : {{1'd0}, _GEN_343};
  wire  _GEN_346 = latched_branch | _T_1184;
  wire [32:0] _GEN_347 = _T_1179 ? _GEN_345 : 33'h0;
  wire  _T_1194 = reset & cpuregs_write;
  reg [4:0] latched_rd;
  wire [4:0] _GEN_1043 = {{4'd0}, _T_1194};
  wire [4:0] _T_1195 = _GEN_1043 & latched_rd;
  reg [31:0] _T_1196;
  reg [31:0] cpuregs_rs1;
  reg [31:0] cpuregs_rs2;
  reg [4:0] reg_sh;
  reg  set_mem_do_rinst;
  reg  set_mem_do_rdata;
  reg  set_mem_do_wdata;
  reg [63:0] count_cycle;
  reg [63:0] count_instr;
  wire [64:0] _T_1220 = count_cycle + 64'h1;
  wire [64:0] _T_1218 = reset ? _T_1220 : 65'h0;
  reg  latched_is_lu;
  reg  latched_is_lh;
  reg  latched_is_lb;
  wire  _T_1233 = cpu_state == 8'h80;
  wire  _T_1359 = cpu_state == 8'h20;
  wire  _T_1418 = cpu_state == 8'h10;
  wire  _T_1437 = cpu_state == 8'h8;
  wire  _T_1448 = cpu_state == 8'h4;
  wire  _T_1470 = cpu_state == 8'h2;
  wire  _T_1484 = cpu_state == 8'h1;
  wire  _T_1235 = ~decoder_trigger;
  wire [32:0] _GEN_426 = {{1'd0}, reg_next_pc};
  wire [64:0] _GEN_440 = {{1'd0}, count_instr};
  wire  _T_1403 = ~instr_trap;
  wire  _T_1404 = is_lb_lh_lw_lbu_lhu & _T_1403;
  wire [31:0] _GEN_473 = instr_rdcycle ? count_cycle[31:0] : 32'h0;
  wire [31:0] _GEN_474 = instr_rdcycleh ? count_cycle[63:32] : _GEN_473;
  wire [31:0] _GEN_475 = instr_rdinstr ? count_instr[31:0] : _GEN_474;
  wire [31:0] _GEN_476 = instr_rdinstrh ? count_instr[63:32] : _GEN_475;
  wire  _GEN_484 = is_sll_srl_sra & mem_do_rinst;
  wire  _GEN_486 = is_sb_sh_sw | _GEN_484;
  wire  _GEN_496 = is_jalr_addi_slti_sltiu_xori_ori_andi ? 1'h0 : _GEN_486;
  wire [4:0] _GEN_498 = is_jalr_addi_slti_sltiu_xori_ori_andi ? 5'h0 : cpuregs_rs2[4:0];
  wire [4:0] _GEN_501 = is_slli_srli_srai ? decoded_rs2 : _GEN_498;
  wire  _GEN_505 = is_slli_srli_srai ? mem_do_rinst : _GEN_496;
  wire  _GEN_509 = _T_1404 | _GEN_505;
  wire [4:0] _GEN_510 = _T_1404 ? 5'h0 : _GEN_501;
  wire [5:0] _GEN_550 = {{1'd0}, latched_rd};
  wire [31:0] _GEN_579 = is_lui_auipc_jal ? 32'h0 : cpuregs_rs1;
  wire  _GEN_582 = is_lui_auipc_jal ? 1'h0 : _GEN_509;
  wire [5:0] _GEN_586 = is_lui_auipc_jal ? {{1'd0}, latched_rd} : _GEN_550;
  wire [4:0] _GEN_592 = is_lui_auipc_jal ? 5'h0 : _GEN_510;
  wire [31:0] _GEN_594 = is_rdcycle_rdcycleh_rdinstr_rdinstrh ? _GEN_476 : 32'h0;
  wire  _GEN_595 = is_rdcycle_rdcycleh_rdinstr_rdinstrh | latched_store;
  wire [31:0] _GEN_597 = is_rdcycle_rdcycleh_rdinstr_rdinstrh ? 32'h0 : _GEN_579;
  wire  _GEN_600 = is_rdcycle_rdcycleh_rdinstr_rdinstrh ? mem_do_rinst : _GEN_582;
  wire [5:0] _GEN_601 = is_rdcycle_rdcycleh_rdinstr_rdinstrh ? {{1'd0}, latched_rd} : _GEN_586;
  wire [4:0] _GEN_607 = is_rdcycle_rdcycleh_rdinstr_rdinstrh ? 5'h0 : _GEN_592;
  wire [31:0] _GEN_609 = instr_trap ? 32'h0 : _GEN_597;
  wire [4:0] _GEN_611 = instr_trap ? 5'h0 : _GEN_607;
  wire  _GEN_613 = instr_trap ? mem_do_rinst : _GEN_600;
  wire [31:0] _GEN_614 = instr_trap ? 32'h0 : _GEN_594;
  wire [5:0] _GEN_619 = instr_trap ? {{1'd0}, latched_rd} : _GEN_601;
  wire [32:0] _T_1438 = {{1'd0}, decoded_imm};
  wire [7:0] _GEN_653 = mem_done ? 8'h40 : cpu_state;
  wire [4:0] _GEN_660 = is_beq_bne_blt_bge_bltu_bgeu ? 5'h0 : latched_rd;
  wire  _GEN_665 = is_beq_bne_blt_bge_bltu_bgeu & alu_out_0;
  wire  _T_1449 = reg_sh == 5'h0;
  wire [4:0] _T_1450 = 5'h1 & reg_sh;
  wire  _T_1451 = _T_1450 >= 5'h4;
  wire  _T_1452 = instr_slli | instr_sll;
  wire  _T_1454 = instr_srli | instr_srl;
  wire  _T_1456 = instr_srai | instr_sra;
  wire [35:0] _GEN_1044 = {reg_op1, 4'h0};
  wire [38:0] _T_1453 = {{3'd0}, _GEN_1044};
  wire [31:0] _T_1455 = {{4'd0}, reg_op1[31:4]};
  wire [31:0] _T_1457 = reg_op1;
  wire [27:0] _GEN_1046 = _T_1457[31:4];
  wire [31:0] _T_1459 = {{4{_GEN_1046[27]}},_GEN_1046};
  wire [31:0] _GEN_674 = _T_1456 ? _T_1459 : reg_op1;
  wire [31:0] _GEN_675 = _T_1454 ? _T_1455 : _GEN_674;
  wire [31:0] _GEN_676 = _T_1452 ? _T_1453[31:0] : _GEN_675;
  wire [5:0] _T_1460 = reg_sh - 5'h4;
  wire [32:0] _T_1462 = {reg_op1, 1'h0};
  wire [31:0] _T_1464 = {{1'd0}, reg_op1[31:1]};
  wire [30:0] _GEN_1048 = _T_1457[31:1];
  wire [31:0] _T_1468 = {{1{_GEN_1048[30]}},_GEN_1048};
  wire [31:0] _GEN_677 = _T_1456 ? _T_1468 : reg_op1;
  wire [31:0] _GEN_678 = _T_1454 ? _T_1464 : _GEN_677;
  wire [31:0] _GEN_679 = _T_1452 ? _T_1462[31:0] : _GEN_678;
  wire [5:0] _T_1469 = reg_sh - 5'h1;
  wire [31:0] _GEN_680 = _T_1451 ? _GEN_676 : _GEN_679;
  wire [5:0] _GEN_681 = _T_1451 ? _T_1460 : _T_1469;
  wire [31:0] _GEN_682 = _T_1449 ? reg_op1 : 32'h0;
  wire  _GEN_683 = _T_1449 ? 1'h0 : mem_do_rinst;
  wire [31:0] _GEN_685 = _T_1449 ? reg_op1 : _GEN_680;
  wire [5:0] _GEN_686 = _T_1449 ? 6'h0 : _GEN_681;
  wire  _T_1473 = ~mem_do_wdata;
  wire [32:0] _T_1478 = reg_op1 + decoded_imm;
  wire [32:0] _GEN_695 = _T_1473 ? _T_1478 : {{1'd0}, reg_op1};
  wire  _GEN_698 = mem_done | _T_582;
  wire  _T_1488 = instr_lb | instr_lbu;
  wire  _T_1489 = instr_lh | instr_lhu;
  wire [32:0] _GEN_718 = _T_500 ? _T_1478 : {{1'd0}, reg_op1};
  wire [15:0] _T_1500 = mem_rdata_word[15:0];
  wire [31:0] _GEN_1051 = {$signed(_T_1500), 16'h0};
  wire [46:0] _T_1501 = {{15{_GEN_1051[31]}},_GEN_1051};
  wire [30:0] _GEN_1052 = _T_1501[46:16];
  wire [46:0] _T_1503 = {{16{_GEN_1052[30]}},_GEN_1052};
  wire [7:0] _T_1505 = mem_rdata_word[7:0];
  wire [31:0] _GEN_1053 = {$signed(_T_1505), 24'h0};
  wire [38:0] _T_1506 = {{7{_GEN_1053[31]}},_GEN_1053};
  wire [14:0] _GEN_1054 = _T_1506[38:24];
  wire [38:0] _T_1508 = {{24{_GEN_1054[14]}},_GEN_1054};
  wire [31:0] _GEN_720 = latched_is_lb ? _T_1508[31:0] : 32'h0;
  wire [31:0] _GEN_721 = latched_is_lh ? _T_1503[31:0] : _GEN_720;
  wire [31:0] _GEN_722 = latched_is_lu ? mem_rdata_word : _GEN_721;
  wire [31:0] _GEN_723 = mem_done ? _GEN_722 : 32'h0;
  wire  _GEN_739 = _T_1484 | latched_store;
  wire [32:0] _GEN_746 = _T_1484 ? _GEN_718 : {{1'd0}, reg_op1};
  wire  _GEN_747 = _T_1484 & _T_500;
  wire [31:0] _GEN_748 = _T_1484 ? _GEN_723 : 32'h0;
  wire  _GEN_750 = _T_1484 & mem_done;
  wire [31:0] _GEN_752 = _T_1470 ? 32'h0 : _GEN_748;
  wire [32:0] _GEN_756 = _T_1470 ? _GEN_695 : _GEN_746;
  wire  _GEN_757 = _T_1470 & _T_1473;
  wire  _GEN_761 = _T_1470 ? latched_store : _GEN_739;
  wire  _GEN_766 = _T_1448 | _GEN_761;
  wire [31:0] _GEN_767 = _T_1448 ? _GEN_682 : _GEN_752;
  wire  _GEN_768 = _T_1448 ? _GEN_683 : mem_do_rinst;
  wire [32:0] _GEN_770 = _T_1448 ? {{1'd0}, _GEN_685} : _GEN_756;
  wire [5:0] _GEN_771 = _T_1448 ? _GEN_686 : 6'h0;
  wire [32:0] _GEN_782 = _T_1437 ? _T_1438 : {{1'd0}, _GEN_767};
  wire  _GEN_783 = _T_1437 ? mem_do_rinst : _GEN_768;
  wire [4:0] _GEN_785 = _T_1437 ? _GEN_660 : latched_rd;
  wire  _GEN_790 = _T_1437 & _GEN_665;
  wire [32:0] _GEN_791 = _T_1437 ? {{1'd0}, reg_op1} : _GEN_770;
  wire [5:0] _GEN_792 = _T_1437 ? 6'h0 : _GEN_771;
  wire [5:0] _GEN_802 = _T_1418 ? {{1'd0}, cpuregs_rs2[4:0]} : _GEN_792;
  wire  _GEN_805 = _T_1418 ? _GEN_486 : _GEN_783;
  wire [32:0] _GEN_806 = _T_1418 ? 33'h0 : _GEN_782;
  wire [4:0] _GEN_812 = _T_1418 ? latched_rd : _GEN_785;
  wire [32:0] _GEN_816 = _T_1418 ? {{1'd0}, reg_op1} : _GEN_791;
  wire [32:0] _GEN_826 = _T_1359 ? {{1'd0}, _GEN_609} : _GEN_816;
  wire [5:0] _GEN_829 = _T_1359 ? {{1'd0}, _GEN_611} : _GEN_802;
  wire  _GEN_830 = _T_1359 ? _GEN_613 : _GEN_805;
  wire [32:0] _GEN_831 = _T_1359 ? {{1'd0}, _GEN_614} : _GEN_806;
  wire [5:0] _GEN_836 = _T_1359 ? _GEN_619 : {{1'd0}, _GEN_812};
  wire  _GEN_854 = _T_1179 ? _T_1235 : _GEN_830;
  wire [32:0] _GEN_864 = _T_1179 ? _GEN_426 : {{1'd0}, reg_next_pc};
  wire [5:0] _GEN_871 = _T_1179 ? {{1'd0}, latched_rd} : _GEN_836;
  wire [32:0] _GEN_874 = _T_1179 ? 33'h0 : _GEN_831;
  wire [64:0] _GEN_877 = _T_1179 ? _GEN_440 : {{1'd0}, count_instr};
  wire [32:0] _GEN_880 = _T_1179 ? {{1'd0}, reg_op1} : _GEN_826;
  wire [5:0] _GEN_883 = _T_1179 ? 6'h0 : _GEN_829;
  wire  _GEN_894 = _T_1233 ? mem_do_rinst : _GEN_854;
  wire [32:0] _GEN_904 = _T_1233 ? {{1'd0}, reg_next_pc} : _GEN_864;
  wire [5:0] _GEN_911 = _T_1233 ? {{1'd0}, latched_rd} : _GEN_871;
  wire [32:0] _GEN_914 = _T_1233 ? 33'h0 : _GEN_874;
  wire [64:0] _GEN_917 = _T_1233 ? {{1'd0}, count_instr} : _GEN_877;
  wire [32:0] _GEN_920 = _T_1233 ? {{1'd0}, reg_op1} : _GEN_880;
  wire [5:0] _GEN_923 = _T_1233 ? 6'h0 : _GEN_883;
  wire [32:0] _GEN_934 = _T_124 ? 33'h0 : _GEN_904;
  wire [64:0] _GEN_935 = _T_124 ? 65'h0 : _GEN_917;
  wire [5:0] _GEN_952 = _T_124 ? {{1'd0}, latched_rd} : _GEN_911;
  wire [32:0] _GEN_953 = _T_124 ? 33'h0 : _GEN_914;
  wire  _GEN_956 = _T_124 ? mem_do_rinst : _GEN_894;
  wire [32:0] _GEN_964 = _T_124 ? {{1'd0}, reg_op1} : _GEN_920;
  wire [5:0] _GEN_966 = _T_124 ? 6'h0 : _GEN_923;
  wire  _T_1516 = mem_do_rdata | mem_do_wdata;
  wire  _T_1517 = reset & _T_1516;
  wire  _T_1560 = _T_124 | mem_done;
  wire  _GEN_993 = _T_1560 ? 1'h0 : _GEN_956;
  wire  _GEN_994 = _T_1560 ? 1'h0 : mem_do_rdata;
  wire  _GEN_995 = _T_1560 ? 1'h0 : mem_do_wdata;
  assign io_trap = trap;
  assign io_mem_valid = mem_valid;
  assign io_mem_instr = mem_instr;
  assign io_mem_addr = mem_addr;
  assign io_mem_wdata = mem_wdata;
  assign io_mem_wstrb = mem_wstrb;
  assign io_mem_la_read = reset & _T_85;
  assign io_mem_la_write = _T_75 & mem_do_wdata;
  assign io_mem_la_addr = _T_99[31:0];
  assign io_mem_la_wdata = mem_la_wdata;
  assign io_mem_la_wstrb = mem_la_wstrb;
  assign io_pcpi_valid = 1'h0;
  assign io_pcpi_insn = 32'h0;
  assign io_pcpi_rs1 = reg_op1;
  assign io_pcpi_rs2 = reg_op2;
  assign io_eoi = 32'h0;
  assign io_trace_valid = 1'h0;
  assign io_trace_data = 36'h0;
  always @(posedge clock) begin
    if (_T_124) begin
      trap <= 1'h0;
    end else begin
      trap <= _T_1233;
    end
    if (_T_482) begin
      if (_T_485) begin
        mem_valid <= 1'h0;
      end
    end else if (_T_491) begin
      mem_valid <= _GEN_60;
    end else if (_T_496) begin
      if (mem_xfer) begin
        mem_valid <= 1'h0;
      end
    end else if (_T_511) begin
      if (mem_xfer) begin
        mem_valid <= 1'h0;
      end
    end
    if (!(_T_482)) begin
      if (_T_491) begin
        if (mem_do_wdata) begin
          mem_instr <= 1'h0;
        end else if (_T_48) begin
          mem_instr <= mem_do_rinst;
        end
      end
    end
    if (!(_T_482)) begin
      if (_T_486) begin
        mem_addr <= io_mem_la_addr;
      end
    end
    if (!(_T_482)) begin
      if (io_mem_la_write) begin
        mem_wdata <= io_mem_la_wdata;
      end
    end
    if (!(_T_482)) begin
      if (_T_491) begin
        if (_T_48) begin
          mem_wstrb <= 4'h0;
        end else if (_T_486) begin
          mem_wstrb <= _T_490;
        end
      end else if (_T_486) begin
        mem_wstrb <= _T_490;
      end
    end
    if (_T_128) begin
      mem_la_wdata <= reg_op2;
    end else if (_T_129) begin
      mem_la_wdata <= _T_132;
    end else if (_T_142) begin
      mem_la_wdata <= _T_149;
    end
    if (_T_128) begin
      mem_la_wstrb <= 4'hf;
    end else if (_T_129) begin
      if (reg_op1[1]) begin
        mem_la_wstrb <= 4'hc;
      end else begin
        mem_la_wstrb <= 4'h3;
      end
    end else if (_T_142) begin
      mem_la_wstrb <= _T_151[3:0];
    end
    reg_op1 <= _GEN_964[31:0];
    if (!(_T_124)) begin
      if (!(_T_1233)) begin
        if (!(_T_1179)) begin
          if (_T_1359) begin
            if (instr_trap) begin
              reg_op2 <= 32'h0;
            end else if (is_rdcycle_rdcycleh_rdinstr_rdinstrh) begin
              reg_op2 <= 32'h0;
            end else if (is_lui_auipc_jal) begin
              reg_op2 <= decoded_imm;
            end else if (_T_1404) begin
              reg_op2 <= 32'h0;
            end else if (is_slli_srli_srai) begin
              reg_op2 <= 32'h0;
            end else if (is_jalr_addi_slti_sltiu_xori_ori_andi) begin
              reg_op2 <= decoded_imm;
            end else begin
              reg_op2 <= cpuregs_rs2;
            end
          end else if (_T_1418) begin
            reg_op2 <= cpuregs_rs2;
          end
        end
      end
    end
    mem_do_rinst <= set_mem_do_rinst | _GEN_993;
    if (_T_124) begin
      latched_store <= 1'h0;
    end else if (!(_T_1233)) begin
      if (!(_T_1179)) begin
        if (_T_1359) begin
          if (!(instr_trap)) begin
            latched_store <= _GEN_595;
          end
        end else if (!(_T_1418)) begin
          if (_T_1437) begin
            if (is_beq_bne_blt_bge_bltu_bgeu) begin
              latched_store <= alu_out_0;
            end
          end else begin
            latched_store <= _GEN_766;
          end
        end
      end
    end
    if (_T_124) begin
      latched_branch <= 1'h0;
    end else if (!(_T_1233)) begin
      if (!(_T_1179)) begin
        if (!(_T_1359)) begin
          if (!(_T_1418)) begin
            if (_T_1437) begin
              if (is_beq_bne_blt_bge_bltu_bgeu) begin
                latched_branch <= alu_out_0;
              end
            end
          end
        end
      end
    end
    reg_out <= _GEN_953[31:0];
    reg_next_pc <= _GEN_934[31:0];
    mem_do_rdata <= set_mem_do_rdata | _GEN_994;
    mem_do_wdata <= set_mem_do_wdata | _GEN_995;
    if (_T_482) begin
      if (_T_124) begin
        mem_state <= 2'h0;
      end
    end else if (_T_491) begin
      if (mem_do_wdata) begin
        mem_state <= 2'h2;
      end else if (_T_48) begin
        mem_state <= 2'h1;
      end
    end else if (_T_496) begin
      if (mem_xfer) begin
        if (_T_48) begin
          mem_state <= 2'h0;
        end else begin
          mem_state <= 2'h3;
        end
      end
    end else if (_T_511) begin
      if (mem_xfer) begin
        mem_state <= 2'h0;
      end
    end else if (_T_512) begin
      if (mem_do_rinst) begin
        mem_state <= 2'h0;
      end
    end
    if (mem_xfer) begin
      mem_rdata_q <= io_mem_rdata;
    end
    if (!(_T_124)) begin
      if (!(_T_1233)) begin
        if (_T_1179) begin
          mem_wordsize <= 2'h0;
        end else if (!(_T_1359)) begin
          if (!(_T_1418)) begin
            if (!(_T_1437)) begin
              if (!(_T_1448)) begin
                if (_T_1470) begin
                  if (_T_1473) begin
                    if (instr_sb) begin
                      mem_wordsize <= 2'h2;
                    end else if (instr_sh) begin
                      mem_wordsize <= 2'h1;
                    end else if (instr_sw) begin
                      mem_wordsize <= 2'h0;
                    end
                  end
                end else if (_T_1484) begin
                  if (_T_500) begin
                    if (_T_1488) begin
                      mem_wordsize <= 2'h2;
                    end else if (_T_1489) begin
                      mem_wordsize <= 2'h1;
                    end else if (instr_lw) begin
                      mem_wordsize <= 2'h0;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_128) begin
      mem_rdata_word <= io_mem_rdata;
    end else if (_T_129) begin
      if (_T_137) begin
        mem_rdata_word <= _T_139;
      end else begin
        mem_rdata_word <= _T_141;
      end
    end else if (_T_142) begin
      if (_T_153) begin
        mem_rdata_word <= _T_155;
      end else if (_T_157) begin
        mem_rdata_word <= _T_159;
      end else if (_T_161) begin
        mem_rdata_word <= _T_163;
      end else if (_T_165) begin
        mem_rdata_word <= _T_167;
      end
    end
    if (_T_582) begin
      instr_lui <= _T_585;
    end
    if (_T_582) begin
      instr_auipc <= _T_588;
    end
    if (_T_582) begin
      instr_jal <= _T_591;
    end
    if (_T_582) begin
      instr_jalr <= _T_597;
    end
    if (_T_124) begin
      instr_beq <= 1'h0;
    end else if (_T_837) begin
      instr_beq <= _T_841;
    end
    if (_T_124) begin
      instr_bne <= 1'h0;
    end else if (_T_837) begin
      instr_bne <= _T_844;
    end
    if (_T_124) begin
      instr_blt <= 1'h0;
    end else if (_T_837) begin
      instr_blt <= _T_847;
    end
    if (_T_124) begin
      instr_bge <= 1'h0;
    end else if (_T_837) begin
      instr_bge <= _T_850;
    end
    if (_T_124) begin
      instr_bltu <= 1'h0;
    end else if (_T_837) begin
      instr_bltu <= _T_853;
    end
    if (_T_124) begin
      instr_bgeu <= 1'h0;
    end else if (_T_837) begin
      instr_bgeu <= _T_856;
    end
    if (_T_837) begin
      instr_lb <= _T_859;
    end
    if (_T_837) begin
      instr_lh <= _T_862;
    end
    if (_T_837) begin
      instr_lw <= _T_865;
    end
    if (_T_837) begin
      instr_lbu <= _T_868;
    end
    if (_T_837) begin
      instr_lhu <= _T_871;
    end
    if (_T_837) begin
      instr_sb <= _T_874;
    end
    if (_T_837) begin
      instr_sh <= _T_877;
    end
    if (_T_837) begin
      instr_sw <= _T_880;
    end
    if (_T_124) begin
      instr_addi <= 1'h0;
    end else if (_T_837) begin
      instr_addi <= _T_883;
    end
    if (_T_124) begin
      instr_slti <= 1'h0;
    end else if (_T_837) begin
      instr_slti <= _T_886;
    end
    if (_T_124) begin
      instr_sltiu <= 1'h0;
    end else if (_T_837) begin
      instr_sltiu <= _T_889;
    end
    if (_T_124) begin
      instr_xori <= 1'h0;
    end else if (_T_837) begin
      instr_xori <= _T_892;
    end
    if (_T_124) begin
      instr_ori <= 1'h0;
    end else if (_T_837) begin
      instr_ori <= _T_895;
    end
    if (_T_124) begin
      instr_andi <= 1'h0;
    end else if (_T_837) begin
      instr_andi <= _T_898;
    end
    if (_T_837) begin
      instr_slli <= _T_904;
    end
    if (_T_837) begin
      instr_srli <= _T_910;
    end
    if (_T_837) begin
      instr_srai <= _T_916;
    end
    if (_T_124) begin
      instr_add <= 1'h0;
    end else if (_T_837) begin
      instr_add <= _T_922;
    end
    if (_T_124) begin
      instr_sub <= 1'h0;
    end else if (_T_837) begin
      instr_sub <= _T_928;
    end
    if (_T_124) begin
      instr_sll <= 1'h0;
    end else if (_T_837) begin
      instr_sll <= _T_934;
    end
    if (_T_124) begin
      instr_slt <= 1'h0;
    end else if (_T_837) begin
      instr_slt <= _T_940;
    end
    if (_T_124) begin
      instr_sltu <= 1'h0;
    end else if (_T_837) begin
      instr_sltu <= _T_946;
    end
    if (_T_124) begin
      instr_xor <= 1'h0;
    end else if (_T_837) begin
      instr_xor <= _T_952;
    end
    if (_T_124) begin
      instr_srl <= 1'h0;
    end else if (_T_837) begin
      instr_srl <= _T_958;
    end
    if (_T_124) begin
      instr_sra <= 1'h0;
    end else if (_T_837) begin
      instr_sra <= _T_964;
    end
    if (_T_124) begin
      instr_or <= 1'h0;
    end else if (_T_837) begin
      instr_or <= _T_970;
    end
    if (_T_124) begin
      instr_and <= 1'h0;
    end else if (_T_837) begin
      instr_and <= _T_976;
    end
    if (_T_837) begin
      instr_rdcycle <= _T_987;
    end
    if (_T_837) begin
      instr_rdcycleh <= _T_999;
    end
    if (_T_837) begin
      instr_rdinstr <= _T_1006;
    end
    if (_T_837) begin
      instr_rdinstrh <= _T_1012;
    end
    is_lui_auipc_jal <= _T_564 | instr_jal;
    is_lbu_lhu_lw <= _T_576 | instr_lw;
    if (_T_124) begin
      is_beq_bne_blt_bge_bltu_bgeu <= 1'h0;
    end else if (_T_582) begin
      is_beq_bne_blt_bge_bltu_bgeu <= _T_614;
    end
    if (_T_582) begin
      is_lb_lh_lw_lbu_lhu <= _T_617;
    end
    if (_T_582) begin
      is_sb_sh_sw <= _T_620;
    end
    if (_T_582) begin
      is_alu_reg_imm <= _T_623;
    end
    if (_T_582) begin
      is_alu_reg_reg <= _T_626;
    end
    if (_T_582) begin
      decoded_imm_j <= _T_641;
    end
    if (_T_582) begin
      decoded_rs1 <= mem_rdata_latched_noshuffle[19:15];
    end
    if (_T_582) begin
      decoded_rs2 <= mem_rdata_latched_noshuffle[24:20];
    end
    if (_T_124) begin
      decoder_trigger <= _T_582;
    end else if (_T_1233) begin
      decoder_trigger <= _T_582;
    end else if (_T_1179) begin
      decoder_trigger <= _T_582;
    end else if (_T_1359) begin
      decoder_trigger <= _T_582;
    end else if (_T_1418) begin
      decoder_trigger <= _T_582;
    end else if (_T_1437) begin
      if (is_beq_bne_blt_bge_bltu_bgeu) begin
        if (alu_out_0) begin
          decoder_trigger <= 1'h0;
        end else begin
          decoder_trigger <= _T_582;
        end
      end else begin
        decoder_trigger <= _T_582;
      end
    end else if (_T_1448) begin
      decoder_trigger <= _T_582;
    end else if (_T_1470) begin
      decoder_trigger <= _GEN_698;
    end else if (_T_1484) begin
      decoder_trigger <= _GEN_698;
    end else begin
      decoder_trigger <= _T_582;
    end
    if (_T_124) begin
      decoder_pseudo_trigger <= 1'h0;
    end else if (_T_1233) begin
      decoder_pseudo_trigger <= 1'h0;
    end else if (_T_1179) begin
      decoder_pseudo_trigger <= 1'h0;
    end else if (_T_1359) begin
      decoder_pseudo_trigger <= 1'h0;
    end else if (_T_1418) begin
      decoder_pseudo_trigger <= 1'h0;
    end else if (_T_1437) begin
      decoder_pseudo_trigger <= 1'h0;
    end else if (_T_1448) begin
      decoder_pseudo_trigger <= 1'h0;
    end else if (_T_1470) begin
      decoder_pseudo_trigger <= mem_done;
    end else begin
      decoder_pseudo_trigger <= _GEN_750;
    end
    if (_T_837) begin
      is_slli_srli_srai <= _T_1071;
    end
    if (_T_837) begin
      is_jalr_addi_slti_sltiu_xori_ori_andi <= _T_1090;
    end
    if (_T_837) begin
      is_sll_srl_sra <= _T_1108;
    end
    if (_T_837) begin
      if (instr_jal) begin
        decoded_imm <= decoded_imm_j;
      end else if (_T_564) begin
        decoded_imm <= _T_1111[31:0];
      end else if (_T_1113) begin
        decoded_imm <= _T_1118[31:0];
      end else if (is_beq_bne_blt_bge_bltu_bgeu) begin
        decoded_imm <= _T_1130[31:0];
      end else if (is_sb_sh_sw) begin
        decoded_imm <= _T_1137[31:0];
      end else begin
        decoded_imm <= 32'h0;
      end
    end
    if (instr_beq) begin
      alu_out_0 <= 1'h0;
    end else begin
      alu_out_0 <= _GEN_330;
    end
    cpuregs_write <= _T_1179 & _GEN_346;
    cpuregs_wrdata <= _GEN_347[31:0];
    if (_T_1517) begin
      if (reg_op1[0]) begin
        cpu_state <= 8'h80;
      end else if (_T_124) begin
        cpu_state <= 8'h40;
      end else if (!(_T_1233)) begin
        if (!(_T_1179)) begin
          if (_T_1359) begin
            if (instr_trap) begin
              cpu_state <= 8'h80;
            end else if (is_rdcycle_rdcycleh_rdinstr_rdinstrh) begin
              cpu_state <= 8'h40;
            end else if (is_lui_auipc_jal) begin
              cpu_state <= 8'h8;
            end else if (_T_1404) begin
              cpu_state <= 8'h1;
            end else if (is_slli_srli_srai) begin
              cpu_state <= 8'h4;
            end else if (is_jalr_addi_slti_sltiu_xori_ori_andi) begin
              cpu_state <= 8'h8;
            end else if (is_sb_sh_sw) begin
              cpu_state <= 8'h2;
            end else if (is_sll_srl_sra) begin
              cpu_state <= 8'h4;
            end else begin
              cpu_state <= 8'h8;
            end
          end else if (_T_1418) begin
            if (is_sb_sh_sw) begin
              cpu_state <= 8'h2;
            end else if (is_sll_srl_sra) begin
              cpu_state <= 8'h4;
            end else begin
              cpu_state <= 8'h8;
            end
          end else if (_T_1437) begin
            if (is_beq_bne_blt_bge_bltu_bgeu) begin
              if (mem_done) begin
                cpu_state <= 8'h40;
              end
            end
          end else if (_T_1448) begin
            if (_T_1449) begin
              cpu_state <= 8'h40;
            end
          end else if (_T_1470) begin
            if (mem_done) begin
              cpu_state <= 8'h40;
            end
          end else if (_T_1484) begin
            if (mem_done) begin
              cpu_state <= 8'h40;
            end
          end
        end
      end
    end else if (_T_124) begin
      cpu_state <= 8'h40;
    end else if (!(_T_1233)) begin
      if (!(_T_1179)) begin
        if (_T_1359) begin
          if (instr_trap) begin
            cpu_state <= 8'h80;
          end else if (is_rdcycle_rdcycleh_rdinstr_rdinstrh) begin
            cpu_state <= 8'h40;
          end else if (is_lui_auipc_jal) begin
            cpu_state <= 8'h8;
          end else if (_T_1404) begin
            cpu_state <= 8'h1;
          end else if (is_slli_srli_srai) begin
            cpu_state <= 8'h4;
          end else if (is_jalr_addi_slti_sltiu_xori_ori_andi) begin
            cpu_state <= 8'h8;
          end else if (is_sb_sh_sw) begin
            cpu_state <= 8'h2;
          end else if (is_sll_srl_sra) begin
            cpu_state <= 8'h4;
          end else begin
            cpu_state <= 8'h8;
          end
        end else if (_T_1418) begin
          if (is_sb_sh_sw) begin
            cpu_state <= 8'h2;
          end else if (is_sll_srl_sra) begin
            cpu_state <= 8'h4;
          end else begin
            cpu_state <= 8'h8;
          end
        end else if (_T_1437) begin
          if (is_beq_bne_blt_bge_bltu_bgeu) begin
            if (mem_done) begin
              cpu_state <= 8'h40;
            end
          end
        end else if (_T_1448) begin
          if (_T_1449) begin
            cpu_state <= 8'h40;
          end
        end else if (_T_1470) begin
          cpu_state <= _GEN_653;
        end else if (_T_1484) begin
          cpu_state <= _GEN_653;
        end
      end
    end
    latched_rd <= _GEN_952[4:0];
    if (_T_1195) begin
      _T_1196 <= cpuregs_wrdata;
    end
    if (decoded_rs1[0]) begin
      cpuregs_rs1 <= _T_1196;
    end else begin
      cpuregs_rs1 <= 32'h0;
    end
    if (decoded_rs2[0]) begin
      cpuregs_rs2 <= _T_1196;
    end else begin
      cpuregs_rs2 <= 32'h0;
    end
    reg_sh <= _GEN_966[4:0];
    if (_T_124) begin
      set_mem_do_rinst <= 1'h0;
    end else if (_T_1233) begin
      set_mem_do_rinst <= 1'h0;
    end else if (_T_1179) begin
      set_mem_do_rinst <= 1'h0;
    end else if (_T_1359) begin
      set_mem_do_rinst <= 1'h0;
    end else if (_T_1418) begin
      set_mem_do_rinst <= 1'h0;
    end else begin
      set_mem_do_rinst <= _GEN_790;
    end
    if (_T_124) begin
      set_mem_do_rdata <= 1'h0;
    end else if (_T_1233) begin
      set_mem_do_rdata <= 1'h0;
    end else if (_T_1179) begin
      set_mem_do_rdata <= 1'h0;
    end else if (_T_1359) begin
      set_mem_do_rdata <= 1'h0;
    end else if (_T_1418) begin
      set_mem_do_rdata <= 1'h0;
    end else if (_T_1437) begin
      set_mem_do_rdata <= 1'h0;
    end else if (_T_1448) begin
      set_mem_do_rdata <= 1'h0;
    end else if (_T_1470) begin
      set_mem_do_rdata <= 1'h0;
    end else begin
      set_mem_do_rdata <= _GEN_747;
    end
    if (_T_124) begin
      set_mem_do_wdata <= 1'h0;
    end else if (_T_1233) begin
      set_mem_do_wdata <= 1'h0;
    end else if (_T_1179) begin
      set_mem_do_wdata <= 1'h0;
    end else if (_T_1359) begin
      set_mem_do_wdata <= 1'h0;
    end else if (_T_1418) begin
      set_mem_do_wdata <= 1'h0;
    end else if (_T_1437) begin
      set_mem_do_wdata <= 1'h0;
    end else if (_T_1448) begin
      set_mem_do_wdata <= 1'h0;
    end else begin
      set_mem_do_wdata <= _GEN_757;
    end
    count_cycle <= _T_1218[63:0];
    count_instr <= _GEN_935[63:0];
    if (_T_124) begin
      latched_is_lu <= 1'h0;
    end else if (!(_T_1233)) begin
      if (!(_T_1179)) begin
        if (!(_T_1359)) begin
          if (!(_T_1418)) begin
            if (!(_T_1437)) begin
              if (!(_T_1448)) begin
                if (!(_T_1470)) begin
                  if (_T_1484) begin
                    if (_T_500) begin
                      latched_is_lu <= is_lbu_lhu_lw;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_124) begin
      latched_is_lh <= 1'h0;
    end else if (!(_T_1233)) begin
      if (!(_T_1179)) begin
        if (!(_T_1359)) begin
          if (!(_T_1418)) begin
            if (!(_T_1437)) begin
              if (!(_T_1448)) begin
                if (!(_T_1470)) begin
                  if (_T_1484) begin
                    if (_T_500) begin
                      latched_is_lh <= instr_lh;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_124) begin
      latched_is_lb <= 1'h0;
    end else if (!(_T_1233)) begin
      if (!(_T_1179)) begin
        if (!(_T_1359)) begin
          if (!(_T_1418)) begin
            if (!(_T_1437)) begin
              if (!(_T_1448)) begin
                if (!(_T_1470)) begin
                  if (_T_1484) begin
                    if (_T_500) begin
                      latched_is_lb <= instr_lb;
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
// Register and memory initialization
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  trap = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  mem_valid = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem_instr = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  mem_addr = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  mem_wdata = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  mem_wstrb = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  mem_la_wdata = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  mem_la_wstrb = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  reg_op1 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  reg_op2 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  mem_do_rinst = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  latched_store = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  latched_branch = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  reg_out = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  reg_next_pc = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  mem_do_rdata = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  mem_do_wdata = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  mem_state = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  mem_rdata_q = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  mem_wordsize = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  mem_rdata_word = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  instr_lui = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  instr_auipc = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  instr_jal = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  instr_jalr = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  instr_beq = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  instr_bne = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  instr_blt = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  instr_bge = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  instr_bltu = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  instr_bgeu = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  instr_lb = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  instr_lh = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  instr_lw = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  instr_lbu = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  instr_lhu = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  instr_sb = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  instr_sh = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  instr_sw = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  instr_addi = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  instr_slti = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  instr_sltiu = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  instr_xori = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  instr_ori = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  instr_andi = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  instr_slli = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  instr_srli = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  instr_srai = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  instr_add = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  instr_sub = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  instr_sll = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  instr_slt = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  instr_sltu = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  instr_xor = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  instr_srl = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  instr_sra = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  instr_or = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  instr_and = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  instr_rdcycle = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  instr_rdcycleh = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  instr_rdinstr = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  instr_rdinstrh = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  is_lui_auipc_jal = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  is_lbu_lhu_lw = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  is_beq_bne_blt_bge_bltu_bgeu = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  is_lb_lh_lw_lbu_lhu = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  is_sb_sh_sw = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  is_alu_reg_imm = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  is_alu_reg_reg = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  decoded_imm_j = _RAND_69[31:0];
  _RAND_70 = {1{`RANDOM}};
  decoded_rs1 = _RAND_70[4:0];
  _RAND_71 = {1{`RANDOM}};
  decoded_rs2 = _RAND_71[4:0];
  _RAND_72 = {1{`RANDOM}};
  decoder_trigger = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  decoder_pseudo_trigger = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  is_slli_srli_srai = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  is_jalr_addi_slti_sltiu_xori_ori_andi = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  is_sll_srl_sra = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  decoded_imm = _RAND_77[31:0];
  _RAND_78 = {1{`RANDOM}};
  alu_out_0 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  cpuregs_write = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  cpuregs_wrdata = _RAND_80[31:0];
  _RAND_81 = {1{`RANDOM}};
  cpu_state = _RAND_81[7:0];
  _RAND_82 = {1{`RANDOM}};
  latched_rd = _RAND_82[4:0];
  _RAND_83 = {1{`RANDOM}};
  _T_1196 = _RAND_83[31:0];
  _RAND_84 = {1{`RANDOM}};
  cpuregs_rs1 = _RAND_84[31:0];
  _RAND_85 = {1{`RANDOM}};
  cpuregs_rs2 = _RAND_85[31:0];
  _RAND_86 = {1{`RANDOM}};
  reg_sh = _RAND_86[4:0];
  _RAND_87 = {1{`RANDOM}};
  set_mem_do_rinst = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  set_mem_do_rdata = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  set_mem_do_wdata = _RAND_89[0:0];
  _RAND_90 = {2{`RANDOM}};
  count_cycle = _RAND_90[63:0];
  _RAND_91 = {2{`RANDOM}};
  count_instr = _RAND_91[63:0];
  _RAND_92 = {1{`RANDOM}};
  latched_is_lu = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  latched_is_lh = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  latched_is_lb = _RAND_94[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
