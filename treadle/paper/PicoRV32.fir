circuit PicoRV32 :
  module PicoRV32 :
    input clock : Clock
    input reset : UInt<1>
    output io : {trap : UInt<1>, mem_valid : UInt<1>, mem_instr : UInt<1>, flip mem_ready : UInt<1>, mem_addr : UInt<32>, mem_wdata : UInt<32>, mem_wstrb : UInt<4>, flip mem_rdata : UInt<32>, mem_la_read : UInt<1>, mem_la_write : UInt<1>, mem_la_addr : UInt<32>, mem_la_wdata : UInt<32>, mem_la_wstrb : UInt<4>, pcpi_valid : UInt<1>, pcpi_insn : UInt<32>, pcpi_rs1 : UInt<32>, pcpi_rs2 : UInt<32>, flip pcpi_wr : UInt<1>, flip pcpi_rd : UInt<32>, flip pcpi_wait : UInt<1>, flip pcpi_ready : UInt<1>, flip irq : UInt<32>, eoi : UInt<32>, trace_valid : UInt<1>, trace_data : UInt<36>}
  
    reg trap : UInt<1>, clock
    io.trap <= trap
    reg mem_valid : UInt<1>, clock
    io.mem_valid <= mem_valid
    reg mem_instr : UInt<1>, clock
    io.mem_instr <= mem_instr
    reg mem_addr : UInt<32>, clock
    io.mem_addr <= mem_addr
    reg mem_wdata : UInt<32>, clock
    io.mem_wdata <= mem_wdata
    reg mem_wstrb : UInt<4>, clock
    io.mem_wstrb <= mem_wstrb
    reg mem_la_wdata : UInt<32>, clock
    io.mem_la_wdata <= mem_la_wdata
    reg mem_la_wstrb : UInt<4>, clock
    io.mem_la_wstrb <= mem_la_wstrb
    reg pcpi_valid : UInt<1>, clock
    io.pcpi_valid <= pcpi_valid
    reg pcpi_insn : UInt<32>, clock
    io.pcpi_insn <= pcpi_insn
    reg eoi : UInt<32>, clock
    io.eoi <= eoi
    reg trace_valid : UInt<1>, clock
    io.trace_valid <= trace_valid
    reg trace_data : UInt<36>, clock
    io.trace_data <= trace_data
    wire dbg_mem_valid : UInt<1>
    dbg_mem_valid <= io.mem_valid
    wire dbg_mem_instr : UInt<1>
    dbg_mem_instr <= io.mem_instr
    wire dbg_mem_ready : UInt<1>
    dbg_mem_ready <= io.mem_ready
    wire dbg_mem_addr : UInt<32>
    dbg_mem_addr <= io.mem_addr
    wire dbg_mem_wdata : UInt<32>
    dbg_mem_wdata <= io.mem_wdata
    wire dbg_mem_wstrb : UInt<4>
    dbg_mem_wstrb <= io.mem_wstrb
    wire dbg_mem_rdata : UInt<32>
    dbg_mem_rdata <= io.mem_rdata
    reg reg_op1 : UInt<32>, clock
    io.pcpi_rs1 <= reg_op1
    reg reg_op2 : UInt<32>, clock
    io.pcpi_rs2 <= reg_op2
    wire pcpi_mul_wr : UInt<1>
    pcpi_mul_wr <= UInt<1>("h0")
    wire pcpi_mul_rd : UInt<32>
    pcpi_mul_rd <= UInt<1>("h0")
    wire pcpi_mul_wait : UInt<1>
    pcpi_mul_wait <= UInt<1>("h0")
    wire pcpi_mul_ready : UInt<1>
    pcpi_mul_ready <= UInt<1>("h0")
    wire pcpi_div_wr : UInt<1>
    pcpi_div_wr <= UInt<1>("h0")
    wire pcpi_div_rd : UInt<32>
    pcpi_div_rd <= UInt<1>("h0")
    wire pcpi_div_wait : UInt<1>
    pcpi_div_wait <= UInt<1>("h0")
    wire pcpi_div_ready : UInt<1>
    pcpi_div_ready <= UInt<1>("h0")
    reg pcpi_int_wr : UInt<1>, clock
    pcpi_int_wr <= UInt<1>("h0")
    reg pcpi_int_rd : UInt<32>, clock
    pcpi_int_rd <= UInt<1>("h0")
    reg pcpi_int_wait : UInt<1>, clock
    node _T = and(UInt<1>("h0"), io.pcpi_wait)
    node _T_1 = or(UInt<1>("h0"), UInt<1>("h0"))
    node _T_2 = and(_T_1, pcpi_mul_wait)
    node _T_3 = or(_T, _T_2)
    node _T_4 = and(UInt<1>("h0"), pcpi_div_wait)
    node _T_5 = or(_T_3, _T_4)
    pcpi_int_wait <= _T_5
    reg pcpi_int_ready : UInt<1>, clock
    node _T_6 = and(UInt<1>("h0"), io.pcpi_ready)
    node _T_7 = or(UInt<1>("h0"), UInt<1>("h0"))
    node _T_8 = and(_T_7, pcpi_mul_ready)
    node _T_9 = or(_T_6, _T_8)
    node _T_10 = and(UInt<1>("h0"), pcpi_div_ready)
    node _T_11 = or(_T_9, _T_10)
    pcpi_int_ready <= _T_11
    node pcpi_int_wr_rd_case0 = and(UInt<1>("h0"), io.pcpi_ready)
    node _T_13 = eq(pcpi_int_wr_rd_case0, UInt<1>("h1"))
    node _T_15 = bits(UInt<1>("h0"), 0, 0)
    node _T_14 = mux(_T_15, io.pcpi_wr, UInt<1>("h0"))
    node _T_17 = or(UInt<1>("h0"), UInt<1>("h0"))
    node pcpi_int_wr_rd_case1 = and(_T_17, pcpi_mul_ready)
    node _T_18 = eq(pcpi_int_wr_rd_case1, UInt<1>("h1"))
    node pcpi_int_wr_rd_case2 = and(UInt<1>("h0"), pcpi_div_ready)
    node _T_20 = eq(pcpi_int_wr_rd_case2, UInt<1>("h1"))
    node _T_19 = mux(_T_20, pcpi_div_wr, pcpi_int_wr)
    node _T_16 = mux(_T_18, pcpi_mul_wr, _T_19)
    node _T_12 = mux(_T_13, _T_14, _T_16)
    pcpi_int_wr <= _T_12
    node _T_22 = eq(pcpi_int_wr_rd_case0, UInt<1>("h1"))
    node _T_24 = bits(UInt<1>("h0"), 0, 0)
    node _T_23 = mux(_T_24, io.pcpi_rd, UInt<1>("h0"))
    node _T_26 = eq(pcpi_int_wr_rd_case1, UInt<1>("h1"))
    node _T_28 = eq(pcpi_int_wr_rd_case2, UInt<1>("h1"))
    node _T_27 = mux(_T_28, pcpi_div_rd, pcpi_int_rd)
    node _T_25 = mux(_T_26, pcpi_mul_rd, _T_27)
    node _T_21 = mux(_T_22, _T_23, _T_25)
    pcpi_int_rd <= _T_21
    wire mem_la_firstword : UInt<1>
    reg mem_do_prefetch : UInt<1>, clock
    reg mem_do_rinst : UInt<1>, clock
    node _T_29 = or(mem_do_prefetch, mem_do_rinst)
    node _T_30 = and(UInt<1>("h0"), _T_29)
    wire next_pc : UInt<32>
    node _T_31 = bits(next_pc, 1, 1)
    node _T_32 = and(_T_30, _T_31)
    reg mem_la_secondword : UInt<1>, clock
    node _T_33 = not(mem_la_secondword)
    node _T_34 = and(_T_32, _T_33)
    mem_la_firstword <= _T_34
    wire mem_la_firstword_xfer : UInt<1>
    wire mem_xfer : UInt<1>
    node _T_35 = and(UInt<1>("h0"), mem_xfer)
    reg last_mem_valid : UInt<1>, clock
    node _T_37 = not(last_mem_valid)
    node _T_38 = bits(_T_37, 0, 0)
    reg mem_la_firstword_reg : UInt<1>, clock
    node _T_36 = mux(_T_38, mem_la_firstword, mem_la_firstword_reg)
    node _T_39 = and(_T_35, _T_36)
    mem_la_firstword_xfer <= _T_39
    wire mem_la_use_prefetched_high_word : UInt<1>
    node _T_40 = and(UInt<1>("h0"), mem_la_firstword)
    reg prefetched_high_word : UInt<1>, clock
    node _T_41 = and(_T_40, prefetched_high_word)
    reg clear_prefetched_high_word : UInt<1>, clock
    node _T_42 = not(clear_prefetched_high_word)
    node _T_43 = and(_T_41, _T_42)
    mem_la_use_prefetched_high_word <= _T_43
    node _T_44 = and(io.mem_valid, io.mem_ready)
    node _T_45 = and(mem_la_use_prefetched_high_word, mem_do_rinst)
    node _T_46 = or(_T_44, _T_45)
    mem_xfer <= _T_46
    wire mem_busy : UInt<1>
    node _T_47 = or(mem_do_prefetch, mem_do_rinst)
    reg mem_do_rdata : UInt<1>, clock
    node _T_48 = or(_T_47, mem_do_rdata)
    reg mem_do_wdata : UInt<1>, clock
    node _T_49 = or(_T_48, mem_do_wdata)
    mem_busy <= _T_49
    wire mem_done : UInt<1>
    reg mem_state : UInt<2>, clock
    node _T_50 = bits(mem_state, 1, 1)
    node _T_51 = bits(mem_state, 0, 0)
    node _T_52 = or(_T_50, _T_51)
    node _T_53 = and(mem_xfer, _T_52)
    node _T_54 = or(mem_do_rinst, mem_do_rdata)
    node _T_55 = or(_T_54, mem_do_wdata)
    node _T_56 = and(_T_53, _T_55)
    node _T_57 = bits(mem_state, 1, 1)
    node _T_58 = bits(mem_state, 0, 0)
    node _T_59 = and(_T_57, _T_58)
    node _T_60 = and(_T_59, mem_do_rinst)
    node _T_61 = or(_T_56, _T_60)
    node _T_62 = and(reset, _T_61)
    node _T_63 = not(mem_la_firstword)
    wire mem_rdata_latched : UInt<32>
    node _T_64 = bits(mem_rdata_latched, 1, 1)
    node _T_65 = bits(mem_rdata_latched, 0, 0)
    node _T_66 = and(_T_64, _T_65)
    node _T_67 = not(_T_66)
    node _T_68 = and(_T_67, mem_xfer)
    node _T_69 = or(_T_63, _T_68)
    node _T_70 = and(_T_62, _T_69)
    mem_done <= _T_70
    node _T_71 = bits(mem_state, 1, 1)
    node _T_72 = bits(mem_state, 0, 0)
    node _T_73 = or(_T_71, _T_72)
    node _T_74 = not(_T_73)
    node _T_75 = and(reset, _T_74)
    node _T_76 = and(_T_75, mem_do_wdata)
    io.mem_la_write <= _T_76
    node _T_77 = not(mem_la_use_prefetched_high_word)
    node _T_78 = bits(mem_state, 1, 1)
    node _T_79 = bits(mem_state, 0, 0)
    node _T_80 = or(_T_78, _T_79)
    node _T_81 = not(_T_80)
    node _T_82 = and(_T_77, _T_81)
    node _T_83 = or(mem_do_rinst, mem_do_prefetch)
    node _T_84 = or(_T_83, mem_do_rdata)
    node _T_85 = and(_T_82, _T_84)
    node _T_86 = and(UInt<1>("h0"), mem_xfer)
    node _T_88 = not(last_mem_valid)
    node _T_89 = bits(_T_88, 0, 0)
    node _T_87 = mux(_T_89, mem_la_firstword, mem_la_firstword_reg)
    node _T_90 = and(_T_86, _T_87)
    node _T_91 = not(mem_la_secondword)
    node _T_92 = and(_T_90, _T_91)
    node _T_93 = bits(mem_rdata_latched, 1, 1)
    node _T_94 = bits(mem_rdata_latched, 0, 0)
    node _T_95 = and(_T_93, _T_94)
    node _T_96 = and(_T_92, _T_95)
    node _T_97 = or(_T_85, _T_96)
    node _T_98 = and(reset, _T_97)
    io.mem_la_read <= _T_98
    node _T_100 = or(mem_do_prefetch, mem_do_rinst)
    node _T_101 = bits(_T_100, 0, 0)
    node _T_102 = bits(next_pc, 31, 2)
    node _T_103 = add(_T_102, mem_la_firstword_xfer)
    node _T_104 = cat(_T_103, UInt<2>("h0"))
    node _T_105 = bits(reg_op1, 31, 2)
    node _T_106 = cat(_T_105, UInt<2>("h0"))
    node _T_99 = mux(_T_101, _T_104, _T_106)
    io.mem_la_addr <= _T_99
    wire mem_rdata_latched_noshuffle : UInt<32>
    node _T_108 = or(mem_xfer, UInt<1>("h0"))
    node _T_109 = bits(_T_108, 0, 0)
    reg mem_rdata_q : UInt<32>, clock
    node _T_107 = mux(_T_109, io.mem_rdata, mem_rdata_q)
    mem_rdata_latched_noshuffle <= _T_107
    node _T_111 = and(UInt<1>("h0"), mem_la_use_prefetched_high_word)
    node _T_112 = bits(_T_111, 0, 0)
    reg mem_16bit_buffer : UInt<16>, clock
    node _T_113 = cat(UInt<16>("h0"), mem_16bit_buffer)
    node _T_115 = and(UInt<1>("h0"), mem_la_secondword)
    node _T_116 = bits(_T_115, 0, 0)
    node _T_117 = bits(mem_rdata_latched_noshuffle, 15, 0)
    node _T_118 = cat(_T_117, mem_16bit_buffer)
    node _T_120 = and(UInt<1>("h0"), mem_la_firstword)
    node _T_121 = bits(_T_120, 0, 0)
    node _T_122 = bits(mem_rdata_latched_noshuffle, 31, 16)
    node _T_123 = cat(UInt<16>("h0"), _T_122)
    node _T_119 = mux(_T_121, _T_123, mem_rdata_latched_noshuffle)
    node _T_114 = mux(_T_116, _T_118, _T_119)
    node _T_110 = mux(_T_112, _T_113, _T_114)
    mem_rdata_latched <= _T_110
    node _T_124 = not(reset)
    when _T_124 :
      mem_la_firstword_reg <= UInt<1>("h0")
      last_mem_valid <= UInt<1>("h0")
    else :
      node _T_125 = not(last_mem_valid)
      when _T_125 :
        mem_la_firstword_reg <= mem_la_firstword
      node _T_126 = not(io.mem_ready)
      node _T_127 = and(io.mem_valid, _T_126)
      last_mem_valid <= _T_127
    reg mem_wordsize : UInt<2>, clock
    node _T_128 = eq(mem_wordsize, UInt<1>("h0"))
    reg mem_rdata_word : UInt<32>, clock
    node _T_129 = eq(mem_wordsize, UInt<1>("h1"))
    node _T_142 = eq(mem_wordsize, UInt<2>("h2"))
    when _T_128 :
      mem_la_wdata <= reg_op2
      mem_la_wstrb <= UInt<4>("hf")
      mem_rdata_word <= io.mem_rdata
    else :
      when _T_129 :
        node _T_130 = bits(reg_op2, 15, 0)
        node _T_131 = bits(reg_op2, 15, 0)
        node _T_132 = cat(_T_130, _T_131)
        mem_la_wdata <= _T_132
        node _T_134 = bits(reg_op1, 1, 1)
        node _T_135 = bits(_T_134, 0, 0)
        node _T_133 = mux(_T_135, UInt<4>("hc"), UInt<4>("h3"))
        mem_la_wstrb <= _T_133
        node _T_136 = bits(reg_op1, 1, 1)
        node _T_137 = eq(_T_136, UInt<1>("h0"))
        when _T_137 :
          node _T_138 = bits(io.mem_rdata, 15, 0)
          node _T_139 = cat(UInt<16>("h0"), _T_138)
          mem_rdata_word <= _T_139
        else :
          node _T_140 = bits(io.mem_rdata, 31, 16)
          node _T_141 = cat(UInt<16>("h0"), _T_140)
          mem_rdata_word <= _T_141
      else :
        when _T_142 :
          node _T_143 = bits(reg_op2, 7, 0)
          node _T_144 = bits(reg_op2, 7, 0)
          node _T_145 = cat(_T_143, _T_144)
          node _T_146 = bits(reg_op2, 7, 0)
          node _T_147 = bits(reg_op2, 7, 0)
          node _T_148 = cat(_T_146, _T_147)
          node _T_149 = cat(_T_145, _T_148)
          mem_la_wdata <= _T_149
          node _T_150 = bits(reg_op1, 1, 0)
          node _T_151 = dshl(UInt<4>("h1"), _T_150)
          mem_la_wstrb <= bits(_T_151, 3, 0)
          node _T_152 = bits(reg_op1, 1, 0)
          node _T_153 = eq(_T_152, UInt<2>("h0"))
          node _T_156 = bits(reg_op1, 1, 0)
          node _T_157 = eq(_T_156, UInt<2>("h1"))
          node _T_160 = bits(reg_op1, 1, 0)
          node _T_161 = eq(_T_160, UInt<2>("h2"))
          node _T_164 = bits(reg_op1, 1, 0)
          node _T_165 = eq(_T_164, UInt<2>("h3"))
          when _T_153 :
            node _T_154 = bits(io.mem_rdata, 7, 0)
            node _T_155 = cat(UInt<24>("h0"), _T_154)
            mem_rdata_word <= _T_155
          else :
            when _T_157 :
              node _T_158 = bits(io.mem_rdata, 15, 8)
              node _T_159 = cat(UInt<24>("h0"), _T_158)
              mem_rdata_word <= _T_159
            else :
              when _T_161 :
                node _T_162 = bits(io.mem_rdata, 23, 16)
                node _T_163 = cat(UInt<24>("h0"), _T_162)
                mem_rdata_word <= _T_163
              else :
                when _T_165 :
                  node _T_166 = bits(io.mem_rdata, 31, 24)
                  node _T_167 = cat(UInt<24>("h0"), _T_166)
                  mem_rdata_word <= _T_167
    node _T_168 = eq(mem_xfer, UInt<1>("h1"))
    reg next_insn_opcode : UInt<32>, clock
    when _T_168 :
      node _T_169 = mux(UInt<1>("h0"), mem_rdata_latched, io.mem_rdata)
      mem_rdata_q <= _T_169
      node _T_170 = mux(UInt<1>("h0"), mem_rdata_latched, io.mem_rdata)
      next_insn_opcode <= _T_170
    node _T_171 = and(UInt<1>("h0"), mem_done)
    node _T_172 = or(mem_do_prefetch, mem_do_rinst)
    node _T_173 = and(_T_171, _T_172)
    when _T_173 :
      node _T_174 = bits(mem_rdata_latched, 1, 0)
      node _T_175 = eq(_T_174, UInt<2>("h0"))
      node _T_222 = bits(mem_rdata_latched, 1, 0)
      node _T_223 = eq(_T_222, UInt<2>("h1"))
      node _T_410 = bits(mem_rdata_latched, 1, 0)
      node _T_411 = eq(_T_410, UInt<2>("h2"))
      when _T_175 :
        node _T_176 = bits(mem_rdata_latched, 15, 13)
        node _T_177 = eq(_T_176, UInt<3>("h0"))
        node _T_192 = bits(mem_rdata_latched, 15, 13)
        node _T_193 = eq(_T_192, UInt<3>("h2"))
        node _T_206 = bits(mem_rdata_latched, 15, 13)
        node _T_207 = eq(_T_206, UInt<3>("h6"))
        when _T_177 :
          node _T_178 = bits(mem_rdata_latched, 10, 7)
          node _T_179 = bits(mem_rdata_latched, 12, 11)
          node _T_180 = cat(_T_178, _T_179)
          node _T_181 = cat(UInt<2>("h0"), _T_180)
          node _T_182 = bits(mem_rdata_latched, 5, 5)
          node _T_183 = bits(mem_rdata_latched, 6, 6)
          node _T_184 = cat(_T_183, UInt<2>("h0"))
          node _T_185 = cat(_T_182, _T_184)
          node _T_186 = cat(_T_181, _T_185)
          node _T_187 = bits(mem_rdata_q, 19, 15)
          node _T_188 = cat(_T_186, _T_187)
          node _T_189 = bits(mem_rdata_q, 11, 0)
          node _T_190 = cat(UInt<3>("h0"), _T_189)
          node _T_191 = cat(_T_188, _T_190)
          mem_rdata_q <= _T_191
        else :
          when _T_193 :
            node _T_194 = bits(mem_rdata_latched, 5, 5)
            node _T_195 = cat(UInt<5>("h0"), _T_194)
            node _T_196 = bits(mem_rdata_latched, 12, 10)
            node _T_197 = bits(mem_rdata_latched, 6, 6)
            node _T_198 = cat(_T_197, UInt<2>("h0"))
            node _T_199 = cat(_T_196, _T_198)
            node _T_200 = cat(_T_195, _T_199)
            node _T_201 = bits(mem_rdata_q, 19, 15)
            node _T_202 = cat(_T_200, _T_201)
            node _T_203 = bits(mem_rdata_q, 11, 0)
            node _T_204 = cat(UInt<3>("h2"), _T_203)
            node _T_205 = cat(_T_202, _T_204)
            mem_rdata_q <= _T_205
          else :
            when _T_207 :
              node _T_208 = bits(mem_rdata_latched, 5, 5)
              node _T_209 = cat(UInt<5>("h0"), _T_208)
              node _T_210 = bits(mem_rdata_latched, 12, 12)
              node _T_211 = bits(mem_rdata_q, 24, 15)
              node _T_212 = cat(_T_210, _T_211)
              node _T_213 = cat(_T_209, _T_212)
              node _T_214 = bits(mem_rdata_latched, 11, 10)
              node _T_215 = cat(UInt<3>("h2"), _T_214)
              node _T_216 = bits(mem_rdata_latched, 6, 6)
              node _T_217 = bits(mem_rdata_q, 6, 0)
              node _T_218 = cat(UInt<2>("h0"), _T_217)
              node _T_219 = cat(_T_216, _T_218)
              node _T_220 = cat(_T_215, _T_219)
              node _T_221 = cat(_T_213, _T_220)
              mem_rdata_q <= _T_221
      else :
        when _T_223 :
          node _T_224 = bits(mem_rdata_latched, 15, 13)
          node _T_225 = eq(_T_224, UInt<3>("h0"))
          node _T_238 = bits(mem_rdata_latched, 15, 13)
          node _T_239 = eq(_T_238, UInt<3>("h2"))
          node _T_252 = bits(mem_rdata_latched, 15, 13)
          node _T_253 = eq(_T_252, UInt<3>("h3"))
          node _T_284 = bits(mem_rdata_latched, 15, 13)
          node _T_285 = eq(_T_284, UInt<3>("h4"))
          node _T_356 = bits(mem_rdata_latched, 15, 13)
          node _T_357 = eq(_T_356, UInt<3>("h6"))
          node _T_383 = bits(mem_rdata_latched, 15, 13)
          node _T_384 = eq(_T_383, UInt<3>("h7"))
          when _T_225 :
            node _T_226 = bits(mem_rdata_latched, 12, 12)
            node _T_227 = bits(mem_rdata_latched, 6, 2)
            node _T_228 = cat(_T_226, _T_227)
            node _T_229 = asSInt(_T_228)
            node _T_230 = dshl(_T_229, UInt<3>("h6"))
            node _T_231 = dshr(_T_230, UInt<3>("h6"))
            node _T_232 = asUInt(_T_231)
            node _T_233 = bits(mem_rdata_q, 19, 15)
            node _T_234 = cat(_T_232, _T_233)
            node _T_235 = bits(mem_rdata_q, 11, 0)
            node _T_236 = cat(UInt<3>("h0"), _T_235)
            node _T_237 = cat(_T_234, _T_236)
            mem_rdata_q <= bits(_T_237, 31, 0)
          else :
            when _T_239 :
              node _T_240 = bits(mem_rdata_latched, 12, 12)
              node _T_241 = bits(mem_rdata_latched, 6, 2)
              node _T_242 = cat(_T_240, _T_241)
              node _T_243 = asSInt(_T_242)
              node _T_244 = dshl(_T_243, UInt<3>("h6"))
              node _T_245 = dshr(_T_244, UInt<3>("h6"))
              node _T_246 = asUInt(_T_245)
              node _T_247 = bits(mem_rdata_q, 19, 15)
              node _T_248 = cat(_T_246, _T_247)
              node _T_249 = bits(mem_rdata_q, 11, 0)
              node _T_250 = cat(UInt<3>("h0"), _T_249)
              node _T_251 = cat(_T_248, _T_250)
              mem_rdata_q <= bits(_T_251, 31, 0)
            else :
              when _T_253 :
                node _T_254 = bits(mem_rdata_latched, 11, 7)
                node _T_255 = eq(_T_254, UInt<2>("h2"))
                when _T_255 :
                  node _T_256 = bits(mem_rdata_latched, 12, 12)
                  node _T_257 = bits(mem_rdata_latched, 4, 3)
                  node _T_258 = bits(mem_rdata_latched, 5, 5)
                  node _T_259 = cat(_T_257, _T_258)
                  node _T_260 = cat(_T_256, _T_259)
                  node _T_261 = bits(mem_rdata_latched, 2, 2)
                  node _T_262 = bits(mem_rdata_latched, 6, 6)
                  node _T_263 = cat(_T_262, UInt<4>("h0"))
                  node _T_264 = cat(_T_261, _T_263)
                  node _T_265 = cat(_T_260, _T_264)
                  node _T_266 = asUInt(_T_265)
                  node _T_267 = dshl(_T_266, UInt<2>("h2"))
                  node _T_268 = dshr(_T_267, UInt<2>("h2"))
                  node _T_269 = asUInt(_T_268)
                  node _T_270 = bits(mem_rdata_q, 19, 15)
                  node _T_271 = cat(_T_269, _T_270)
                  node _T_272 = bits(mem_rdata_q, 11, 0)
                  node _T_273 = cat(UInt<3>("h0"), _T_272)
                  node _T_274 = cat(_T_271, _T_273)
                  mem_rdata_q <= bits(_T_274, 31, 0)
                else :
                  node _T_275 = bits(mem_rdata_latched, 12, 12)
                  node _T_276 = bits(mem_rdata_latched, 6, 2)
                  node _T_277 = cat(_T_275, _T_276)
                  node _T_278 = asSInt(_T_277)
                  node _T_279 = dshl(_T_278, UInt<4>("he"))
                  node _T_280 = dshr(_T_279, UInt<4>("he"))
                  node _T_281 = asUInt(_T_280)
                  node _T_282 = bits(mem_rdata_q, 11, 0)
                  node _T_283 = cat(_T_281, _T_282)
                  mem_rdata_q <= bits(_T_283, 31, 0)
              else :
                when _T_285 :
                  node _T_286 = bits(mem_rdata_latched, 11, 10)
                  node _T_287 = eq(_T_286, UInt<2>("h0"))
                  when _T_287 :
                    node _T_288 = bits(mem_rdata_q, 24, 15)
                    node _T_289 = cat(UInt<7>("h0"), _T_288)
                    node _T_290 = bits(mem_rdata_q, 11, 0)
                    node _T_291 = cat(UInt<3>("h5"), _T_290)
                    node _T_292 = cat(_T_289, _T_291)
                    mem_rdata_q <= _T_292
                  node _T_293 = bits(mem_rdata_latched, 11, 10)
                  node _T_294 = eq(_T_293, UInt<2>("h1"))
                  when _T_294 :
                    node _T_295 = bits(mem_rdata_q, 24, 15)
                    node _T_296 = cat(UInt<7>("h20"), _T_295)
                    node _T_297 = bits(mem_rdata_q, 11, 0)
                    node _T_298 = cat(UInt<3>("h5"), _T_297)
                    node _T_299 = cat(_T_296, _T_298)
                    mem_rdata_q <= _T_299
                  node _T_300 = bits(mem_rdata_latched, 11, 10)
                  node _T_301 = eq(_T_300, UInt<2>("h2"))
                  when _T_301 :
                    node _T_302 = bits(mem_rdata_latched, 12, 12)
                    node _T_303 = bits(mem_rdata_latched, 6, 2)
                    node _T_304 = cat(_T_302, _T_303)
                    node _T_305 = asSInt(_T_304)
                    node _T_306 = dshl(_T_305, UInt<3>("h6"))
                    node _T_307 = dshr(_T_306, UInt<3>("h6"))
                    node _T_308 = asUInt(_T_307)
                    node _T_309 = bits(mem_rdata_q, 19, 15)
                    node _T_310 = cat(_T_308, _T_309)
                    node _T_311 = bits(mem_rdata_q, 11, 0)
                    node _T_312 = cat(UInt<3>("h7"), _T_311)
                    node _T_313 = cat(_T_310, _T_312)
                    mem_rdata_q <= bits(_T_313, 31, 0)
                  node _T_314 = bits(mem_rdata_latched, 12, 10)
                  node _T_315 = eq(_T_314, UInt<3>("h3"))
                  when _T_315 :
                    node _T_316 = bits(mem_rdata_latched, 6, 5)
                    node _T_317 = eq(_T_316, UInt<2>("h0"))
                    when _T_317 :
                      node _T_319 = bits(mem_rdata_latched, 6, 5)
                      node _T_320 = eq(_T_319, UInt<2>("h0"))
                      node _T_318 = mux(_T_320, UInt<7>("h20"), UInt<7>("h0"))
                      node _T_321 = bits(mem_rdata_q, 24, 15)
                      node _T_322 = cat(_T_318, _T_321)
                      node _T_323 = bits(mem_rdata_q, 11, 0)
                      node _T_324 = cat(UInt<3>("h0"), _T_323)
                      node _T_325 = cat(_T_322, _T_324)
                      mem_rdata_q <= _T_325
                    node _T_326 = bits(mem_rdata_latched, 6, 5)
                    node _T_327 = eq(_T_326, UInt<2>("h1"))
                    when _T_327 :
                      node _T_329 = bits(mem_rdata_latched, 6, 5)
                      node _T_330 = eq(_T_329, UInt<2>("h0"))
                      node _T_328 = mux(_T_330, UInt<7>("h20"), UInt<7>("h0"))
                      node _T_331 = bits(mem_rdata_q, 24, 15)
                      node _T_332 = cat(_T_328, _T_331)
                      node _T_333 = bits(mem_rdata_q, 11, 0)
                      node _T_334 = cat(UInt<3>("h4"), _T_333)
                      node _T_335 = cat(_T_332, _T_334)
                      mem_rdata_q <= _T_335
                    node _T_336 = bits(mem_rdata_latched, 6, 5)
                    node _T_337 = eq(_T_336, UInt<2>("h2"))
                    when _T_337 :
                      node _T_339 = bits(mem_rdata_latched, 6, 5)
                      node _T_340 = eq(_T_339, UInt<2>("h0"))
                      node _T_338 = mux(_T_340, UInt<7>("h20"), UInt<7>("h0"))
                      node _T_341 = bits(mem_rdata_q, 24, 15)
                      node _T_342 = cat(_T_338, _T_341)
                      node _T_343 = bits(mem_rdata_q, 11, 0)
                      node _T_344 = cat(UInt<3>("h6"), _T_343)
                      node _T_345 = cat(_T_342, _T_344)
                      mem_rdata_q <= _T_345
                    node _T_346 = bits(mem_rdata_latched, 6, 5)
                    node _T_347 = eq(_T_346, UInt<2>("h3"))
                    when _T_347 :
                      node _T_349 = bits(mem_rdata_latched, 6, 5)
                      node _T_350 = eq(_T_349, UInt<2>("h0"))
                      node _T_348 = mux(_T_350, UInt<7>("h20"), UInt<7>("h0"))
                      node _T_351 = bits(mem_rdata_q, 24, 15)
                      node _T_352 = cat(_T_348, _T_351)
                      node _T_353 = bits(mem_rdata_q, 11, 0)
                      node _T_354 = cat(UInt<3>("h7"), _T_353)
                      node _T_355 = cat(_T_352, _T_354)
                      mem_rdata_q <= _T_355
                else :
                  when _T_357 :
                    wire beqz_mem_rdata_q : UInt<12>
                    node _T_358 = bits(mem_rdata_latched, 12, 12)
                    node _T_359 = bits(mem_rdata_latched, 6, 5)
                    node _T_360 = cat(_T_358, _T_359)
                    node _T_361 = bits(mem_rdata_latched, 2, 2)
                    node _T_362 = bits(mem_rdata_latched, 11, 10)
                    node _T_363 = bits(mem_rdata_latched, 4, 3)
                    node _T_364 = cat(_T_362, _T_363)
                    node _T_365 = cat(_T_361, _T_364)
                    node _T_366 = cat(_T_360, _T_365)
                    node _T_367 = asSInt(_T_366)
                    node _T_368 = dshl(_T_367, UInt<3>("h4"))
                    node _T_369 = dshr(_T_368, UInt<3>("h4"))
                    node _T_370 = asUInt(_T_369)
                    beqz_mem_rdata_q <= bits(_T_370, 11, 0)
                    node _T_371 = bits(beqz_mem_rdata_q, 11, 11)
                    node _T_372 = bits(beqz_mem_rdata_q, 9, 4)
                    node _T_373 = bits(mem_rdata_q, 24, 15)
                    node _T_374 = cat(_T_372, _T_373)
                    node _T_375 = cat(_T_371, _T_374)
                    node _T_376 = bits(beqz_mem_rdata_q, 3, 0)
                    node _T_377 = cat(UInt<3>("h0"), _T_376)
                    node _T_378 = bits(beqz_mem_rdata_q, 10, 10)
                    node _T_379 = bits(mem_rdata_q, 6, 0)
                    node _T_380 = cat(_T_378, _T_379)
                    node _T_381 = cat(_T_377, _T_380)
                    node _T_382 = cat(_T_375, _T_381)
                    mem_rdata_q <= _T_382
                  else :
                    when _T_384 :
                      wire bnez_mem_rdata_q : UInt<12>
                      node _T_385 = bits(mem_rdata_latched, 12, 12)
                      node _T_386 = bits(mem_rdata_latched, 6, 5)
                      node _T_387 = cat(_T_385, _T_386)
                      node _T_388 = bits(mem_rdata_latched, 2, 2)
                      node _T_389 = bits(mem_rdata_latched, 11, 10)
                      node _T_390 = bits(mem_rdata_latched, 4, 3)
                      node _T_391 = cat(_T_389, _T_390)
                      node _T_392 = cat(_T_388, _T_391)
                      node _T_393 = cat(_T_387, _T_392)
                      node _T_394 = asSInt(_T_393)
                      node _T_395 = dshl(_T_394, UInt<3>("h4"))
                      node _T_396 = dshr(_T_395, UInt<3>("h4"))
                      node _T_397 = asUInt(_T_396)
                      bnez_mem_rdata_q <= bits(_T_397, 11, 0)
                      node _T_398 = bits(bnez_mem_rdata_q, 11, 11)
                      node _T_399 = bits(bnez_mem_rdata_q, 9, 4)
                      node _T_400 = bits(mem_rdata_q, 24, 15)
                      node _T_401 = cat(_T_399, _T_400)
                      node _T_402 = cat(_T_398, _T_401)
                      node _T_403 = bits(bnez_mem_rdata_q, 3, 0)
                      node _T_404 = cat(UInt<3>("h1"), _T_403)
                      node _T_405 = bits(bnez_mem_rdata_q, 10, 10)
                      node _T_406 = bits(mem_rdata_q, 6, 0)
                      node _T_407 = cat(_T_405, _T_406)
                      node _T_408 = cat(_T_404, _T_407)
                      node _T_409 = cat(_T_402, _T_408)
                      mem_rdata_q <= _T_409
        else :
          when _T_411 :
            node _T_412 = bits(mem_rdata_latched, 15, 13)
            node _T_413 = eq(_T_412, UInt<3>("h0"))
            node _T_419 = bits(mem_rdata_latched, 15, 13)
            node _T_420 = eq(_T_419, UInt<3>("h2"))
            node _T_433 = bits(mem_rdata_latched, 15, 13)
            node _T_434 = eq(_T_433, UInt<3>("h4"))
            node _T_467 = bits(mem_rdata_latched, 15, 13)
            node _T_468 = eq(_T_467, UInt<3>("h6"))
            when _T_413 :
              node _T_414 = bits(mem_rdata_q, 24, 15)
              node _T_415 = cat(UInt<7>("h0"), _T_414)
              node _T_416 = bits(mem_rdata_q, 11, 0)
              node _T_417 = cat(UInt<3>("h1"), _T_416)
              node _T_418 = cat(_T_415, _T_417)
              mem_rdata_q <= _T_418
            else :
              when _T_420 :
                node _T_421 = bits(mem_rdata_latched, 3, 2)
                node _T_422 = cat(UInt<4>("h0"), _T_421)
                node _T_423 = bits(mem_rdata_latched, 12, 12)
                node _T_424 = bits(mem_rdata_latched, 6, 4)
                node _T_425 = cat(_T_424, UInt<2>("h0"))
                node _T_426 = cat(_T_423, _T_425)
                node _T_427 = cat(_T_422, _T_426)
                node _T_428 = bits(mem_rdata_q, 19, 15)
                node _T_429 = cat(_T_427, _T_428)
                node _T_430 = bits(mem_rdata_q, 11, 0)
                node _T_431 = cat(UInt<3>("h2"), _T_430)
                node _T_432 = cat(_T_429, _T_431)
                mem_rdata_q <= _T_432
              else :
                when _T_434 :
                  node _T_435 = bits(mem_rdata_latched, 6, 2)
                  node _T_436 = and(UInt<1>("h0"), _T_435)
                  node _T_437 = eq(_T_436, UInt<1>("h0"))
                  when _T_437 :
                    node _T_438 = bits(mem_rdata_q, 19, 15)
                    node _T_439 = cat(UInt<12>("h0"), _T_438)
                    node _T_440 = bits(mem_rdata_q, 11, 0)
                    node _T_441 = cat(UInt<3>("h0"), _T_440)
                    node _T_442 = cat(_T_439, _T_441)
                    mem_rdata_q <= _T_442
                  node _T_443 = bits(mem_rdata_latched, 6, 2)
                  node _T_444 = and(UInt<1>("h0"), _T_443)
                  node _T_445 = neq(_T_444, UInt<1>("h0"))
                  when _T_445 :
                    node _T_446 = bits(mem_rdata_q, 24, 15)
                    node _T_447 = cat(UInt<7>("h0"), _T_446)
                    node _T_448 = bits(mem_rdata_q, 11, 0)
                    node _T_449 = cat(UInt<3>("h0"), _T_448)
                    node _T_450 = cat(_T_447, _T_449)
                    mem_rdata_q <= _T_450
                  node _T_451 = bits(mem_rdata_latched, 6, 2)
                  node _T_452 = and(UInt<1>("h0"), _T_451)
                  node _T_453 = eq(_T_452, UInt<1>("h0"))
                  when _T_453 :
                    node _T_454 = bits(mem_rdata_q, 19, 15)
                    node _T_455 = cat(UInt<12>("h0"), _T_454)
                    node _T_456 = bits(mem_rdata_q, 11, 0)
                    node _T_457 = cat(UInt<3>("h0"), _T_456)
                    node _T_458 = cat(_T_455, _T_457)
                    mem_rdata_q <= _T_458
                  node _T_459 = bits(mem_rdata_latched, 6, 2)
                  node _T_460 = and(UInt<1>("h0"), _T_459)
                  node _T_461 = neq(_T_460, UInt<1>("h0"))
                  when _T_461 :
                    node _T_462 = bits(mem_rdata_q, 24, 15)
                    node _T_463 = cat(UInt<7>("h0"), _T_462)
                    node _T_464 = bits(mem_rdata_q, 11, 0)
                    node _T_465 = cat(UInt<3>("h0"), _T_464)
                    node _T_466 = cat(_T_463, _T_465)
                    mem_rdata_q <= _T_466
                else :
                  when _T_468 :
                    node _T_469 = bits(mem_rdata_latched, 8, 7)
                    node _T_470 = bits(mem_rdata_latched, 12, 12)
                    node _T_471 = cat(_T_469, _T_470)
                    node _T_472 = cat(UInt<4>("h0"), _T_471)
                    node _T_473 = bits(mem_rdata_q, 24, 15)
                    node _T_474 = cat(_T_472, _T_473)
                    node _T_475 = bits(mem_rdata_latched, 11, 9)
                    node _T_476 = cat(_T_475, UInt<2>("h0"))
                    node _T_477 = bits(mem_rdata_q, 6, 0)
                    node _T_478 = cat(_T_476, _T_477)
                    node _T_479 = cat(UInt<3>("h2"), _T_478)
                    node _T_480 = cat(_T_474, _T_479)
                    mem_rdata_q <= _T_480
    node _T_481 = not(reset)
    node _T_482 = or(_T_481, io.trap)
    when _T_482 :
      node _T_483 = not(reset)
      when _T_483 :
        mem_state <= UInt<1>("h0")
      node _T_484 = not(reset)
      node _T_485 = or(_T_484, io.mem_ready)
      when _T_485 :
        mem_valid <= UInt<1>("h0")
      mem_la_secondword <= UInt<1>("h0")
      prefetched_high_word <= UInt<1>("h0")
    else :
      node _T_486 = or(io.mem_la_read, io.mem_la_write)
      when _T_486 :
        mem_addr <= io.mem_la_addr
        node _T_487 = cat(io.mem_la_write, io.mem_la_write)
        node _T_488 = cat(io.mem_la_write, io.mem_la_write)
        node _T_489 = cat(_T_487, _T_488)
        node _T_490 = and(io.mem_la_wstrb, _T_489)
        mem_wstrb <= _T_490
      when io.mem_la_write :
        mem_wdata <= io.mem_la_wdata
      node _T_491 = eq(mem_state, UInt<2>("h0"))
      node _T_496 = eq(mem_state, UInt<2>("h1"))
      node _T_511 = eq(mem_state, UInt<2>("h2"))
      node _T_512 = eq(mem_state, UInt<2>("h3"))
      when _T_491 :
        node _T_492 = or(mem_do_prefetch, mem_do_rinst)
        node _T_493 = or(_T_492, mem_do_rdata)
        when _T_493 :
          node _T_494 = not(mem_la_use_prefetched_high_word)
          mem_valid <= _T_494
          node _T_495 = or(mem_do_prefetch, mem_do_rinst)
          mem_instr <= _T_495
          mem_wstrb <= UInt<1>("h0")
          mem_state <= UInt<2>("h1")
        when mem_do_wdata :
          mem_valid <= UInt<1>("h1")
          mem_instr <= UInt<1>("h0")
          mem_state <= UInt<2>("h2")
      else :
        when _T_496 :
          when mem_xfer :
            node _T_497 = and(UInt<1>("h0"), io.mem_la_read)
            when _T_497 :
              mem_valid <= UInt<1>("h1")
              mem_la_secondword <= UInt<1>("h1")
              node _T_498 = not(mem_la_use_prefetched_high_word)
              when _T_498 :
                node _T_499 = bits(io.mem_rdata, 31, 16)
                mem_16bit_buffer <= _T_499
            else :
              mem_valid <= UInt<1>("h0")
              mem_la_secondword <= UInt<1>("h0")
              node _T_500 = not(mem_do_rdata)
              node _T_501 = and(UInt<1>("h0"), _T_500)
              when _T_501 :
                node _T_502 = bits(io.mem_rdata, 1, 1)
                node _T_503 = bits(io.mem_rdata, 0, 0)
                node _T_504 = and(_T_502, _T_503)
                node _T_505 = not(_T_504)
                node _T_506 = or(_T_505, mem_la_secondword)
                when _T_506 :
                  node _T_507 = bits(io.mem_rdata, 31, 16)
                  mem_16bit_buffer <= _T_507
                  prefetched_high_word <= UInt<1>("h1")
                else :
                  prefetched_high_word <= UInt<1>("h0")
              node _T_509 = or(mem_do_rinst, mem_do_rdata)
              node _T_510 = bits(_T_509, 0, 0)
              node _T_508 = mux(_T_510, UInt<2>("h0"), UInt<2>("h3"))
              mem_state <= _T_508
        else :
          when _T_511 :
            when mem_xfer :
              mem_valid <= UInt<1>("h0")
              mem_state <= UInt<1>("h0")
          else :
            when _T_512 :
              when mem_do_rinst :
                mem_state <= UInt<1>("h0")
    when clear_prefetched_high_word :
      prefetched_high_word <= UInt<1>("h0")
    wire instr_trap : UInt<1>
    node _T_513 = or(UInt<1>("h1"), UInt<1>("h0"))
    reg instr_lui : UInt<1>, clock
    reg instr_auipc : UInt<1>, clock
    node _T_514 = cat(instr_lui, instr_auipc)
    reg instr_jal : UInt<1>, clock
    reg instr_jalr : UInt<1>, clock
    reg instr_beq : UInt<1>, clock
    node _T_515 = cat(instr_jalr, instr_beq)
    node _T_516 = cat(instr_jal, _T_515)
    node _T_517 = cat(_T_514, _T_516)
    reg instr_bne : UInt<1>, clock
    reg instr_blt : UInt<1>, clock
    reg instr_bge : UInt<1>, clock
    node _T_518 = cat(instr_blt, instr_bge)
    node _T_519 = cat(instr_bne, _T_518)
    reg instr_bltu : UInt<1>, clock
    reg instr_bgeu : UInt<1>, clock
    reg instr_lb : UInt<1>, clock
    node _T_520 = cat(instr_bgeu, instr_lb)
    node _T_521 = cat(instr_bltu, _T_520)
    node _T_522 = cat(_T_519, _T_521)
    node _T_523 = cat(_T_517, _T_522)
    reg instr_lh : UInt<1>, clock
    reg instr_lw : UInt<1>, clock
    reg instr_lbu : UInt<1>, clock
    node _T_524 = cat(instr_lw, instr_lbu)
    node _T_525 = cat(instr_lh, _T_524)
    reg instr_lhu : UInt<1>, clock
    reg instr_sb : UInt<1>, clock
    reg instr_sh : UInt<1>, clock
    node _T_526 = cat(instr_sb, instr_sh)
    node _T_527 = cat(instr_lhu, _T_526)
    node _T_528 = cat(_T_525, _T_527)
    reg instr_sw : UInt<1>, clock
    reg instr_addi : UInt<1>, clock
    reg instr_slti : UInt<1>, clock
    node _T_529 = cat(instr_addi, instr_slti)
    node _T_530 = cat(instr_sw, _T_529)
    reg instr_sltiu : UInt<1>, clock
    reg instr_xori : UInt<1>, clock
    reg instr_ori : UInt<1>, clock
    node _T_531 = cat(instr_xori, instr_ori)
    node _T_532 = cat(instr_sltiu, _T_531)
    node _T_533 = cat(_T_530, _T_532)
    node _T_534 = cat(_T_528, _T_533)
    node _T_535 = cat(_T_523, _T_534)
    reg instr_andi : UInt<1>, clock
    reg instr_slli : UInt<1>, clock
    reg instr_srli : UInt<1>, clock
    node _T_536 = cat(instr_slli, instr_srli)
    node _T_537 = cat(instr_andi, _T_536)
    reg instr_srai : UInt<1>, clock
    reg instr_add : UInt<1>, clock
    reg instr_sub : UInt<1>, clock
    node _T_538 = cat(instr_add, instr_sub)
    node _T_539 = cat(instr_srai, _T_538)
    node _T_540 = cat(_T_537, _T_539)
    reg instr_sll : UInt<1>, clock
    reg instr_slt : UInt<1>, clock
    reg instr_sltu : UInt<1>, clock
    node _T_541 = cat(instr_slt, instr_sltu)
    node _T_542 = cat(instr_sll, _T_541)
    reg instr_xor : UInt<1>, clock
    reg instr_srl : UInt<1>, clock
    reg instr_sra : UInt<1>, clock
    node _T_543 = cat(instr_srl, instr_sra)
    node _T_544 = cat(instr_xor, _T_543)
    node _T_545 = cat(_T_542, _T_544)
    node _T_546 = cat(_T_540, _T_545)
    reg instr_or : UInt<1>, clock
    reg instr_and : UInt<1>, clock
    reg instr_rdcycle : UInt<1>, clock
    node _T_547 = cat(instr_and, instr_rdcycle)
    node _T_548 = cat(instr_or, _T_547)
    reg instr_rdcycleh : UInt<1>, clock
    reg instr_rdinstr : UInt<1>, clock
    reg instr_rdinstrh : UInt<1>, clock
    node _T_549 = cat(instr_rdinstr, instr_rdinstrh)
    node _T_550 = cat(instr_rdcycleh, _T_549)
    node _T_551 = cat(_T_548, _T_550)
    reg instr_getq : UInt<1>, clock
    reg instr_setq : UInt<1>, clock
    reg instr_retirq : UInt<1>, clock
    node _T_552 = cat(instr_setq, instr_retirq)
    node _T_553 = cat(instr_getq, _T_552)
    reg instr_maskirq : UInt<1>, clock
    reg instr_waitirq : UInt<1>, clock
    reg instr_timer : UInt<1>, clock
    node _T_554 = cat(instr_waitirq, instr_timer)
    node _T_555 = cat(instr_maskirq, _T_554)
    node _T_556 = cat(_T_553, _T_555)
    node _T_557 = cat(_T_551, _T_556)
    node _T_558 = cat(_T_546, _T_557)
    node all_instr = cat(_T_535, _T_558)
    node _T_559 = eq(all_instr, UInt<1>("h0"))
    node _T_560 = and(_T_513, _T_559)
    instr_trap <= _T_560
    wire is_rdcycle_rdcycleh_rdinstr_rdinstrh : UInt<1>
    node _T_561 = or(instr_rdcycle, instr_rdcycleh)
    node _T_562 = or(_T_561, instr_rdinstr)
    node _T_563 = or(_T_562, instr_rdinstrh)
    is_rdcycle_rdcycleh_rdinstr_rdinstrh <= _T_563
    reg is_lui_auipc_jal : UInt<1>, clock
    node _T_564 = or(instr_lui, instr_auipc)
    node _T_565 = or(_T_564, instr_jal)
    is_lui_auipc_jal <= _T_565
    reg is_lui_auipc_jal_jalr_addi_add_sub : UInt<1>, clock
    node _T_566 = or(instr_lui, instr_auipc)
    node _T_567 = or(_T_566, instr_jal)
    node _T_568 = or(_T_567, instr_jalr)
    node _T_569 = or(_T_568, instr_addi)
    node _T_570 = or(_T_569, instr_add)
    node _T_571 = or(_T_570, instr_sub)
    is_lui_auipc_jal_jalr_addi_add_sub <= _T_571
    reg is_slti_blt_slt : UInt<1>, clock
    node _T_572 = or(instr_slti, instr_blt)
    node _T_573 = or(_T_572, instr_slt)
    is_slti_blt_slt <= _T_573
    reg is_sltiu_bltu_sltu : UInt<1>, clock
    node _T_574 = or(instr_sltiu, instr_bltu)
    node _T_575 = or(_T_574, instr_sltu)
    is_sltiu_bltu_sltu <= _T_575
    reg is_lbu_lhu_lw : UInt<1>, clock
    node _T_576 = or(instr_lbu, instr_lhu)
    node _T_577 = or(_T_576, instr_lw)
    is_lbu_lhu_lw <= _T_577
    reg is_compare : UInt<1>, clock
    reg is_beq_bne_blt_bge_bltu_bgeu : UInt<1>, clock
    node _T_578 = or(is_beq_bne_blt_bge_bltu_bgeu, instr_slti)
    node _T_579 = or(_T_578, instr_slt)
    node _T_580 = or(_T_579, instr_sltiu)
    node _T_581 = or(_T_580, instr_sltu)
    is_compare <= _T_581
    node _T_582 = and(mem_do_rinst, mem_done)
    reg is_lb_lh_lw_lbu_lhu : UInt<1>, clock
    reg is_sb_sh_sw : UInt<1>, clock
    reg is_alu_reg_imm : UInt<1>, clock
    reg is_alu_reg_reg : UInt<1>, clock
    reg decoded_imm_j : UInt<32>, clock
    reg decoded_rd : UInt<5>, clock
    reg decoded_rs1 : UInt<5>, clock
    reg decoded_rs2 : UInt<5>, clock
    reg compressed_instr : UInt<1>, clock
    when _T_582 :
      node _T_584 = bits(mem_rdata_latched, 6, 0)
      node _T_585 = eq(_T_584, UInt<7>("h37"))
      node _T_583 = mux(_T_585, UInt<1>("h1"), UInt<1>("h0"))
      instr_lui <= _T_583
      node _T_587 = bits(mem_rdata_latched, 6, 0)
      node _T_588 = eq(_T_587, UInt<7>("h17"))
      node _T_586 = mux(_T_588, UInt<1>("h1"), UInt<1>("h0"))
      instr_auipc <= _T_586
      node _T_590 = bits(mem_rdata_latched, 6, 0)
      node _T_591 = eq(_T_590, UInt<7>("h6f"))
      node _T_589 = mux(_T_591, UInt<1>("h1"), UInt<1>("h0"))
      instr_jal <= _T_589
      node _T_593 = bits(mem_rdata_latched, 6, 0)
      node _T_594 = eq(_T_593, UInt<7>("h67"))
      node _T_595 = bits(mem_rdata_latched, 14, 12)
      node _T_596 = eq(_T_595, UInt<3>("h0"))
      node _T_597 = and(_T_594, _T_596)
      node _T_592 = mux(_T_597, UInt<1>("h1"), UInt<1>("h0"))
      instr_jalr <= _T_592
      node _T_599 = bits(mem_rdata_latched, 6, 0)
      node _T_600 = eq(_T_599, UInt<7>("hb"))
      node _T_601 = bits(mem_rdata_latched, 31, 25)
      node _T_602 = eq(_T_601, UInt<7>("h2"))
      node _T_603 = and(_T_600, _T_602)
      node _T_604 = and(_T_603, UInt<1>("h0"))
      node _T_598 = mux(_T_604, UInt<1>("h1"), UInt<1>("h0"))
      instr_retirq <= _T_598
      node _T_606 = bits(mem_rdata_latched, 6, 0)
      node _T_607 = eq(_T_606, UInt<7>("hb"))
      node _T_608 = bits(mem_rdata_latched, 31, 25)
      node _T_609 = eq(_T_608, UInt<7>("h4"))
      node _T_610 = and(_T_607, _T_609)
      node _T_611 = and(_T_610, UInt<1>("h0"))
      node _T_605 = mux(_T_611, UInt<1>("h1"), UInt<1>("h0"))
      instr_waitirq <= _T_605
      node _T_613 = bits(mem_rdata_latched, 6, 0)
      node _T_614 = eq(_T_613, UInt<7>("h63"))
      node _T_612 = mux(_T_614, UInt<1>("h1"), UInt<1>("h0"))
      is_beq_bne_blt_bge_bltu_bgeu <= _T_612
      node _T_616 = bits(mem_rdata_latched, 6, 0)
      node _T_617 = eq(_T_616, UInt<7>("h3"))
      node _T_615 = mux(_T_617, UInt<1>("h1"), UInt<1>("h0"))
      is_lb_lh_lw_lbu_lhu <= _T_615
      node _T_619 = bits(mem_rdata_latched, 6, 0)
      node _T_620 = eq(_T_619, UInt<7>("h23"))
      node _T_618 = mux(_T_620, UInt<1>("h1"), UInt<1>("h0"))
      is_sb_sh_sw <= _T_618
      node _T_622 = bits(mem_rdata_latched, 6, 0)
      node _T_623 = eq(_T_622, UInt<7>("h13"))
      node _T_621 = mux(_T_623, UInt<1>("h1"), UInt<1>("h0"))
      is_alu_reg_imm <= _T_621
      node _T_625 = bits(mem_rdata_latched, 6, 0)
      node _T_626 = eq(_T_625, UInt<7>("h33"))
      node _T_624 = mux(_T_626, UInt<1>("h1"), UInt<1>("h0"))
      is_alu_reg_reg <= _T_624
      wire decoder_imm_j_signed : UInt<32>
      node _T_627 = bits(mem_rdata_latched, 31, 12)
      node _T_628 = cat(_T_627, UInt<1>("h0"))
      node _T_629 = asSInt(_T_628)
      node _T_630 = dshl(_T_629, UInt<4>("hb"))
      node _T_631 = dshr(_T_630, UInt<4>("hb"))
      node _T_632 = asUInt(_T_631)
      decoder_imm_j_signed <= bits(_T_632, 31, 0)
      node _T_633 = bits(decoder_imm_j_signed, 31, 20)
      node _T_634 = bits(decoder_imm_j_signed, 8, 1)
      node _T_635 = cat(_T_633, _T_634)
      node _T_636 = bits(decoder_imm_j_signed, 9, 9)
      node _T_637 = bits(decoder_imm_j_signed, 19, 10)
      node _T_638 = bits(decoder_imm_j_signed, 0, 0)
      node _T_639 = cat(_T_637, _T_638)
      node _T_640 = cat(_T_636, _T_639)
      node _T_641 = cat(_T_635, _T_640)
      decoded_imm_j <= _T_641
      node _T_642 = bits(mem_rdata_latched, 11, 7)
      decoded_rd <= _T_642
      node _T_643 = bits(mem_rdata_latched, 19, 15)
      decoded_rs1 <= _T_643
      node _T_644 = bits(mem_rdata_latched, 24, 20)
      decoded_rs2 <= _T_644
      node _T_645 = bits(mem_rdata_latched, 6, 0)
      node _T_646 = eq(_T_645, UInt<7>("hb"))
      node _T_647 = bits(mem_rdata_latched, 31, 25)
      node _T_648 = eq(_T_647, UInt<7>("h0"))
      node _T_649 = and(_T_646, _T_648)
      node _T_650 = and(_T_649, UInt<1>("h0"))
      node _T_651 = and(_T_650, UInt<1>("h1"))
      when _T_651 :
        node _T_652 = bits(decoded_rs1, 4, 4)
        node decoded_rs1_bits = or(_T_652, UInt<1>("h1"))
        node _T_653 = bits(decoded_rs1, 3, 0)
        node _T_654 = cat(decoded_rs1_bits, _T_653)
        decoded_rs1 <= _T_654
      node _T_655 = bits(mem_rdata_latched, 6, 0)
      node _T_656 = eq(_T_655, UInt<7>("hb"))
      node _T_657 = bits(mem_rdata_latched, 31, 25)
      node _T_658 = eq(_T_657, UInt<7>("h0"))
      node _T_659 = and(_T_656, _T_658)
      node _T_660 = and(_T_659, UInt<1>("h0"))
      when _T_660 :
        node _T_661 = mux(UInt<1>("h1"), UInt<6>("h20"), UInt<2>("h3"))
        decoded_rs1 <= bits(_T_661, 4, 0)
      compressed_instr <= UInt<1>("h0")
      node _T_662 = bits(mem_rdata_latched, 1, 0)
      node _T_663 = neq(_T_662, UInt<2>("h3"))
      node _T_664 = and(UInt<1>("h0"), _T_663)
      when _T_664 :
        compressed_instr <= UInt<1>("h1")
        decoded_rd <= UInt<1>("h0")
        decoded_rs1 <= UInt<1>("h0")
        decoded_rs2 <= UInt<1>("h0")
        wire decoded_imm_j_signed_1 : UInt<32>
        node _T_665 = bits(mem_rdata_latched, 12, 2)
        node _T_666 = cat(_T_665, UInt<1>("h0"))
        node _T_667 = asSInt(_T_666)
        node _T_668 = dshl(_T_667, UInt<5>("h14"))
        node _T_669 = dshr(_T_668, UInt<5>("h14"))
        node _T_670 = asUInt(_T_669)
        decoded_imm_j_signed_1 <= bits(_T_670, 31, 0)
        node _T_671 = bits(decoded_imm_j_signed_1, 31, 11)
        node _T_672 = bits(decoded_imm_j_signed_1, 7, 7)
        node _T_673 = cat(_T_671, _T_672)
        node _T_674 = bits(decoded_imm_j_signed_1, 9, 8)
        node _T_675 = bits(decoded_imm_j_signed_1, 5, 5)
        node _T_676 = cat(_T_674, _T_675)
        node _T_677 = cat(_T_673, _T_676)
        node _T_678 = bits(decoded_imm_j_signed_1, 6, 6)
        node _T_679 = bits(decoded_imm_j_signed_1, 1, 1)
        node _T_680 = cat(_T_678, _T_679)
        node _T_681 = bits(decoded_imm_j_signed_1, 10, 10)
        node _T_682 = bits(decoded_imm_j_signed_1, 4, 2)
        node _T_683 = bits(decoded_imm_j_signed_1, 0, 0)
        node _T_684 = cat(_T_682, _T_683)
        node _T_685 = cat(_T_681, _T_684)
        node _T_686 = cat(_T_680, _T_685)
        node _T_687 = cat(_T_677, _T_686)
        decoded_imm_j <= _T_687
        node _T_688 = bits(mem_rdata_latched, 1, 0)
        node _T_689 = eq(_T_688, UInt<2>("h0"))
        when _T_689 :
          node _T_690 = bits(mem_rdata_latched, 15, 13)
          node _T_691 = eq(_T_690, UInt<3>("h0"))
          when _T_691 :
            node _T_692 = bits(mem_rdata_latched, 12, 12)
            node _T_693 = bits(mem_rdata_latched, 11, 11)
            node _T_694 = or(_T_692, _T_693)
            node _T_695 = bits(mem_rdata_latched, 10, 10)
            node _T_696 = or(_T_694, _T_695)
            node _T_697 = bits(mem_rdata_latched, 9, 9)
            node _T_698 = or(_T_696, _T_697)
            node _T_699 = bits(mem_rdata_latched, 8, 8)
            node _T_700 = or(_T_698, _T_699)
            node _T_701 = bits(mem_rdata_latched, 7, 7)
            node _T_702 = or(_T_700, _T_701)
            node _T_703 = bits(mem_rdata_latched, 6, 6)
            node _T_704 = or(_T_702, _T_703)
            node _T_705 = bits(mem_rdata_latched, 5, 5)
            node _T_706 = or(_T_704, _T_705)
            is_alu_reg_imm <= _T_706
            decoded_rs1 <= UInt<2>("h2")
            node _T_707 = bits(mem_rdata_latched, 4, 2)
            node _T_708 = add(UInt<4>("h8"), _T_707)
            decoded_rd <= _T_708
          node _T_709 = bits(mem_rdata_latched, 15, 13)
          node _T_710 = eq(_T_709, UInt<3>("h2"))
          when _T_710 :
            is_lb_lh_lw_lbu_lhu <= UInt<1>("h1")
            node _T_711 = bits(mem_rdata_latched, 9, 7)
            node _T_712 = add(UInt<4>("h8"), _T_711)
            decoded_rs1 <= _T_712
            node _T_713 = bits(mem_rdata_latched, 4, 2)
            node _T_714 = add(UInt<4>("h8"), _T_713)
            decoded_rd <= _T_714
          node _T_715 = bits(mem_rdata_latched, 15, 13)
          node _T_716 = eq(_T_715, UInt<3>("h6"))
          when _T_716 :
            is_sb_sh_sw <= UInt<1>("h1")
            node _T_717 = bits(mem_rdata_latched, 9, 7)
            node _T_718 = add(UInt<4>("h8"), _T_717)
            decoded_rs1 <= _T_718
            node _T_719 = bits(mem_rdata_latched, 4, 2)
            node _T_720 = add(UInt<4>("h8"), _T_719)
            decoded_rs2 <= _T_720
        node _T_721 = bits(mem_rdata_latched, 1, 0)
        node _T_722 = eq(_T_721, UInt<2>("h1"))
        when _T_722 :
          node _T_723 = bits(mem_rdata_latched, 15, 13)
          node _T_724 = eq(_T_723, UInt<3>("h0"))
          when _T_724 :
            is_alu_reg_imm <= UInt<1>("h1")
            node _T_725 = bits(mem_rdata_latched, 11, 7)
            decoded_rd <= _T_725
            node _T_726 = bits(mem_rdata_latched, 11, 7)
            decoded_rs1 <= _T_726
          node _T_727 = bits(mem_rdata_latched, 15, 13)
          node _T_728 = eq(_T_727, UInt<3>("h1"))
          when _T_728 :
            instr_jal <= UInt<1>("h1")
            decoded_rd <= UInt<1>("h1")
          node _T_729 = bits(mem_rdata_latched, 15, 13)
          node _T_730 = eq(_T_729, UInt<3>("h2"))
          when _T_730 :
            is_alu_reg_imm <= UInt<1>("h1")
            node _T_731 = bits(mem_rdata_latched, 11, 7)
            decoded_rd <= _T_731
            decoded_rs1 <= UInt<1>("h0")
          node _T_732 = bits(mem_rdata_latched, 15, 13)
          node _T_733 = eq(_T_732, UInt<3>("h3"))
          when _T_733 :
            node _T_734 = bits(mem_rdata_latched, 12, 12)
            node _T_735 = eq(_T_734, UInt<1>("h1"))
            node _T_736 = bits(mem_rdata_latched, 6, 2)
            node _T_737 = neq(_T_736, UInt<5>("h0"))
            node _T_738 = or(_T_735, _T_737)
            when _T_738 :
              node _T_739 = bits(mem_rdata_latched, 11, 7)
              node _T_740 = eq(_T_739, UInt<5>("h2"))
              when _T_740 :
                is_alu_reg_imm <= UInt<1>("h1")
                node _T_741 = bits(mem_rdata_latched, 11, 7)
                decoded_rd <= _T_741
                node _T_742 = bits(mem_rdata_latched, 11, 7)
                decoded_rs1 <= _T_742
              else :
                instr_lui <= UInt<1>("h1")
                node _T_743 = bits(mem_rdata_latched, 11, 7)
                decoded_rd <= _T_743
                decoded_rs1 <= UInt<1>("h0")
          node _T_744 = bits(mem_rdata_latched, 15, 13)
          node _T_745 = eq(_T_744, UInt<3>("h4"))
          when _T_745 :
            node _T_746 = bits(mem_rdata_latched, 11, 11)
            node _T_747 = not(_T_746)
            node _T_748 = bits(mem_rdata_latched, 12, 12)
            node _T_749 = not(_T_748)
            node _T_750 = and(_T_747, _T_749)
            when _T_750 :
              is_alu_reg_imm <= UInt<1>("h1")
              node _T_751 = bits(mem_rdata_latched, 9, 7)
              node _T_752 = add(UInt<4>("h8"), _T_751)
              decoded_rd <= _T_752
              node _T_753 = bits(mem_rdata_latched, 9, 7)
              node _T_754 = add(UInt<4>("h8"), _T_753)
              decoded_rs1 <= _T_754
              node _T_755 = bits(mem_rdata_latched, 12, 12)
              node _T_756 = bits(mem_rdata_latched, 6, 2)
              node _T_757 = cat(_T_755, _T_756)
              decoded_rs2 <= bits(_T_757, 4, 0)
            node _T_758 = bits(mem_rdata_latched, 11, 10)
            node _T_759 = eq(_T_758, UInt<2>("h0"))
            when _T_759 :
              is_alu_reg_imm <= UInt<1>("h1")
              node _T_760 = bits(mem_rdata_latched, 9, 7)
              node _T_761 = add(UInt<4>("h8"), _T_760)
              decoded_rd <= _T_761
              node _T_762 = bits(mem_rdata_latched, 9, 7)
              node _T_763 = add(UInt<4>("h8"), _T_762)
              decoded_rs1 <= _T_763
            node _T_764 = bits(mem_rdata_latched, 12, 10)
            node _T_765 = eq(_T_764, UInt<3>("h3"))
            when _T_765 :
              is_alu_reg_reg <= UInt<1>("h1")
              node _T_766 = bits(mem_rdata_latched, 9, 7)
              node _T_767 = add(UInt<4>("h8"), _T_766)
              decoded_rd <= _T_767
              node _T_768 = bits(mem_rdata_latched, 9, 7)
              node _T_769 = add(UInt<4>("h8"), _T_768)
              decoded_rs1 <= _T_769
              node _T_770 = bits(mem_rdata_latched, 4, 2)
              node _T_771 = add(UInt<4>("h8"), _T_770)
              decoded_rs2 <= _T_771
          node _T_772 = bits(mem_rdata_latched, 15, 13)
          node _T_773 = eq(_T_772, UInt<3>("h5"))
          when _T_773 :
            instr_jal <= UInt<1>("h1")
          node _T_774 = bits(mem_rdata_latched, 15, 13)
          node _T_775 = eq(_T_774, UInt<3>("h6"))
          when _T_775 :
            is_beq_bne_blt_bge_bltu_bgeu <= UInt<1>("h1")
            node _T_776 = bits(mem_rdata_latched, 9, 7)
            node _T_777 = add(UInt<4>("h8"), _T_776)
            decoded_rs1 <= _T_777
            decoded_rs2 <= UInt<1>("h0")
          node _T_778 = bits(mem_rdata_latched, 15, 13)
          node _T_779 = eq(_T_778, UInt<3>("h7"))
          when _T_779 :
            is_beq_bne_blt_bge_bltu_bgeu <= UInt<1>("h1")
            node _T_780 = bits(mem_rdata_latched, 9, 7)
            node _T_781 = add(UInt<4>("h8"), _T_780)
            decoded_rs1 <= _T_781
            decoded_rs2 <= UInt<1>("h0")
        node _T_782 = bits(mem_rdata_latched, 1, 0)
        node _T_783 = eq(_T_782, UInt<2>("h2"))
        when _T_783 :
          node _T_784 = bits(mem_rdata_latched, 15, 13)
          node _T_785 = eq(_T_784, UInt<3>("h0"))
          when _T_785 :
            node _T_786 = bits(mem_rdata_latched, 12, 12)
            node _T_787 = not(_T_786)
            when _T_787 :
              is_alu_reg_imm <= UInt<1>("h1")
              node _T_788 = bits(mem_rdata_latched, 11, 7)
              decoded_rd <= _T_788
              node _T_789 = bits(mem_rdata_latched, 11, 7)
              decoded_rs1 <= _T_789
              node _T_790 = bits(mem_rdata_latched, 12, 12)
              node _T_791 = bits(mem_rdata_latched, 6, 2)
              node _T_792 = cat(_T_790, _T_791)
              decoded_rs2 <= bits(_T_792, 4, 0)
          node _T_793 = bits(mem_rdata_latched, 15, 13)
          node _T_794 = eq(_T_793, UInt<3>("h2"))
          when _T_794 :
            node _T_795 = bits(mem_rdata_latched, 11, 7)
            node _T_796 = neq(_T_795, UInt<5>("h0"))
            when _T_796 :
              is_lb_lh_lw_lbu_lhu <= UInt<1>("h1")
              node _T_797 = bits(mem_rdata_latched, 11, 7)
              decoded_rd <= _T_797
              decoded_rs1 <= UInt<2>("h2")
          node _T_798 = bits(mem_rdata_latched, 15, 13)
          node _T_799 = eq(_T_798, UInt<3>("h4"))
          when _T_799 :
            node _T_800 = bits(mem_rdata_latched, 12, 12)
            node _T_801 = eq(_T_800, UInt<1>("h0"))
            node _T_802 = bits(mem_rdata_latched, 11, 7)
            node _T_803 = neq(_T_802, UInt<5>("h0"))
            node _T_804 = and(_T_801, _T_803)
            node _T_805 = bits(mem_rdata_latched, 6, 2)
            node _T_806 = eq(_T_805, UInt<5>("h0"))
            node _T_807 = and(_T_804, _T_806)
            when _T_807 :
              instr_jalr <= UInt<1>("h1")
              decoded_rd <= UInt<1>("h0")
              node _T_808 = bits(mem_rdata_latched, 11, 7)
              decoded_rs1 <= _T_808
            node _T_809 = bits(mem_rdata_latched, 12, 12)
            node _T_810 = eq(_T_809, UInt<1>("h0"))
            node _T_811 = bits(mem_rdata_latched, 6, 2)
            node _T_812 = neq(_T_811, UInt<5>("h0"))
            node _T_813 = and(_T_810, _T_812)
            when _T_813 :
              is_alu_reg_reg <= UInt<1>("h1")
              node _T_814 = bits(mem_rdata_latched, 11, 7)
              decoded_rd <= _T_814
              decoded_rs1 <= UInt<1>("h0")
              node _T_815 = bits(mem_rdata_latched, 6, 2)
              decoded_rs2 <= _T_815
            node _T_816 = bits(mem_rdata_latched, 12, 12)
            node _T_817 = neq(_T_816, UInt<1>("h0"))
            node _T_818 = bits(mem_rdata_latched, 11, 7)
            node _T_819 = neq(_T_818, UInt<5>("h0"))
            node _T_820 = and(_T_817, _T_819)
            node _T_821 = bits(mem_rdata_latched, 6, 2)
            node _T_822 = eq(_T_821, UInt<5>("h0"))
            node _T_823 = and(_T_820, _T_822)
            when _T_823 :
              instr_jalr <= UInt<1>("h1")
              decoded_rd <= UInt<1>("h1")
              node _T_824 = bits(mem_rdata_latched, 11, 7)
              decoded_rs1 <= _T_824
            node _T_825 = bits(mem_rdata_latched, 12, 12)
            node _T_826 = neq(_T_825, UInt<1>("h0"))
            node _T_827 = bits(mem_rdata_latched, 6, 2)
            node _T_828 = neq(_T_827, UInt<5>("h0"))
            node _T_829 = and(_T_826, _T_828)
            when _T_829 :
              is_alu_reg_reg <= UInt<1>("h1")
              node _T_830 = bits(mem_rdata_latched, 11, 7)
              decoded_rd <= _T_830
              node _T_831 = bits(mem_rdata_latched, 11, 7)
              decoded_rs1 <= _T_831
              node _T_832 = bits(mem_rdata_latched, 6, 2)
              decoded_rs2 <= _T_832
          node _T_833 = bits(mem_rdata_latched, 15, 13)
          node _T_834 = eq(_T_833, UInt<3>("h6"))
          when _T_834 :
            is_sb_sh_sw <= UInt<1>("h1")
            decoded_rs1 <= UInt<2>("h2")
            node _T_835 = bits(mem_rdata_latched, 6, 2)
            decoded_rs2 <= _T_835
    reg decoder_trigger : UInt<1>, clock
    reg decoder_pseudo_trigger : UInt<1>, clock
    node _T_836 = not(decoder_pseudo_trigger)
    node _T_837 = and(decoder_trigger, _T_836)
    reg instr_ecall_ebreak : UInt<1>, clock
    reg is_slli_srli_srai : UInt<1>, clock
    reg is_jalr_addi_slti_sltiu_xori_ori_andi : UInt<1>, clock
    reg is_sll_srl_sra : UInt<1>, clock
    reg decoded_imm : UInt<32>, clock
    when _T_837 :
      node _T_838 = mux(UInt<1>("h0"), mem_rdata_q, UInt<32>("h0"))
      pcpi_insn <= _T_838
      node _T_839 = bits(mem_rdata_q, 14, 12)
      node _T_840 = eq(_T_839, UInt<3>("h0"))
      node _T_841 = and(is_beq_bne_blt_bge_bltu_bgeu, _T_840)
      instr_beq <= _T_841
      node _T_842 = bits(mem_rdata_q, 14, 12)
      node _T_843 = eq(_T_842, UInt<3>("h1"))
      node _T_844 = and(is_beq_bne_blt_bge_bltu_bgeu, _T_843)
      instr_bne <= _T_844
      node _T_845 = bits(mem_rdata_q, 14, 12)
      node _T_846 = eq(_T_845, UInt<3>("h4"))
      node _T_847 = and(is_beq_bne_blt_bge_bltu_bgeu, _T_846)
      instr_blt <= _T_847
      node _T_848 = bits(mem_rdata_q, 14, 12)
      node _T_849 = eq(_T_848, UInt<3>("h5"))
      node _T_850 = and(is_beq_bne_blt_bge_bltu_bgeu, _T_849)
      instr_bge <= _T_850
      node _T_851 = bits(mem_rdata_q, 14, 12)
      node _T_852 = eq(_T_851, UInt<3>("h6"))
      node _T_853 = and(is_beq_bne_blt_bge_bltu_bgeu, _T_852)
      instr_bltu <= _T_853
      node _T_854 = bits(mem_rdata_q, 14, 12)
      node _T_855 = eq(_T_854, UInt<3>("h7"))
      node _T_856 = and(is_beq_bne_blt_bge_bltu_bgeu, _T_855)
      instr_bgeu <= _T_856
      node _T_857 = bits(mem_rdata_q, 14, 12)
      node _T_858 = eq(_T_857, UInt<3>("h0"))
      node _T_859 = and(is_lb_lh_lw_lbu_lhu, _T_858)
      instr_lb <= _T_859
      node _T_860 = bits(mem_rdata_q, 14, 12)
      node _T_861 = eq(_T_860, UInt<3>("h1"))
      node _T_862 = and(is_lb_lh_lw_lbu_lhu, _T_861)
      instr_lh <= _T_862
      node _T_863 = bits(mem_rdata_q, 14, 12)
      node _T_864 = eq(_T_863, UInt<3>("h2"))
      node _T_865 = and(is_lb_lh_lw_lbu_lhu, _T_864)
      instr_lw <= _T_865
      node _T_866 = bits(mem_rdata_q, 14, 12)
      node _T_867 = eq(_T_866, UInt<3>("h4"))
      node _T_868 = and(is_lb_lh_lw_lbu_lhu, _T_867)
      instr_lbu <= _T_868
      node _T_869 = bits(mem_rdata_q, 14, 12)
      node _T_870 = eq(_T_869, UInt<3>("h5"))
      node _T_871 = and(is_lb_lh_lw_lbu_lhu, _T_870)
      instr_lhu <= _T_871
      node _T_872 = bits(mem_rdata_q, 14, 12)
      node _T_873 = eq(_T_872, UInt<3>("h0"))
      node _T_874 = and(is_sb_sh_sw, _T_873)
      instr_sb <= _T_874
      node _T_875 = bits(mem_rdata_q, 14, 12)
      node _T_876 = eq(_T_875, UInt<3>("h1"))
      node _T_877 = and(is_sb_sh_sw, _T_876)
      instr_sh <= _T_877
      node _T_878 = bits(mem_rdata_q, 14, 12)
      node _T_879 = eq(_T_878, UInt<3>("h2"))
      node _T_880 = and(is_sb_sh_sw, _T_879)
      instr_sw <= _T_880
      node _T_881 = bits(mem_rdata_q, 14, 12)
      node _T_882 = eq(_T_881, UInt<3>("h0"))
      node _T_883 = and(is_alu_reg_imm, _T_882)
      instr_addi <= _T_883
      node _T_884 = bits(mem_rdata_q, 14, 12)
      node _T_885 = eq(_T_884, UInt<3>("h2"))
      node _T_886 = and(is_alu_reg_imm, _T_885)
      instr_slti <= _T_886
      node _T_887 = bits(mem_rdata_q, 14, 12)
      node _T_888 = eq(_T_887, UInt<3>("h3"))
      node _T_889 = and(is_alu_reg_imm, _T_888)
      instr_sltiu <= _T_889
      node _T_890 = bits(mem_rdata_q, 14, 12)
      node _T_891 = eq(_T_890, UInt<3>("h4"))
      node _T_892 = and(is_alu_reg_imm, _T_891)
      instr_xori <= _T_892
      node _T_893 = bits(mem_rdata_q, 14, 12)
      node _T_894 = eq(_T_893, UInt<3>("h6"))
      node _T_895 = and(is_alu_reg_imm, _T_894)
      instr_ori <= _T_895
      node _T_896 = bits(mem_rdata_q, 14, 12)
      node _T_897 = eq(_T_896, UInt<3>("h7"))
      node _T_898 = and(is_alu_reg_imm, _T_897)
      instr_andi <= _T_898
      node _T_899 = bits(mem_rdata_q, 14, 12)
      node _T_900 = eq(_T_899, UInt<3>("h1"))
      node _T_901 = and(is_alu_reg_imm, _T_900)
      node _T_902 = bits(mem_rdata_q, 31, 25)
      node _T_903 = eq(_T_902, UInt<7>("h0"))
      node _T_904 = and(_T_901, _T_903)
      instr_slli <= _T_904
      node _T_905 = bits(mem_rdata_q, 14, 12)
      node _T_906 = eq(_T_905, UInt<3>("h5"))
      node _T_907 = and(is_alu_reg_imm, _T_906)
      node _T_908 = bits(mem_rdata_q, 31, 25)
      node _T_909 = eq(_T_908, UInt<7>("h0"))
      node _T_910 = and(_T_907, _T_909)
      instr_srli <= _T_910
      node _T_911 = bits(mem_rdata_q, 14, 12)
      node _T_912 = eq(_T_911, UInt<3>("h5"))
      node _T_913 = and(is_alu_reg_imm, _T_912)
      node _T_914 = bits(mem_rdata_q, 31, 25)
      node _T_915 = eq(_T_914, UInt<7>("h20"))
      node _T_916 = and(_T_913, _T_915)
      instr_srai <= _T_916
      node _T_917 = bits(mem_rdata_q, 14, 12)
      node _T_918 = eq(_T_917, UInt<3>("h0"))
      node _T_919 = and(is_alu_reg_reg, _T_918)
      node _T_920 = bits(mem_rdata_q, 31, 25)
      node _T_921 = eq(_T_920, UInt<7>("h0"))
      node _T_922 = and(_T_919, _T_921)
      instr_add <= _T_922
      node _T_923 = bits(mem_rdata_q, 14, 12)
      node _T_924 = eq(_T_923, UInt<3>("h0"))
      node _T_925 = and(is_alu_reg_reg, _T_924)
      node _T_926 = bits(mem_rdata_q, 31, 25)
      node _T_927 = eq(_T_926, UInt<7>("h20"))
      node _T_928 = and(_T_925, _T_927)
      instr_sub <= _T_928
      node _T_929 = bits(mem_rdata_q, 14, 12)
      node _T_930 = eq(_T_929, UInt<3>("h1"))
      node _T_931 = and(is_alu_reg_reg, _T_930)
      node _T_932 = bits(mem_rdata_q, 31, 25)
      node _T_933 = eq(_T_932, UInt<7>("h0"))
      node _T_934 = and(_T_931, _T_933)
      instr_sll <= _T_934
      node _T_935 = bits(mem_rdata_q, 14, 12)
      node _T_936 = eq(_T_935, UInt<3>("h2"))
      node _T_937 = and(is_alu_reg_reg, _T_936)
      node _T_938 = bits(mem_rdata_q, 31, 25)
      node _T_939 = eq(_T_938, UInt<7>("h0"))
      node _T_940 = and(_T_937, _T_939)
      instr_slt <= _T_940
      node _T_941 = bits(mem_rdata_q, 14, 12)
      node _T_942 = eq(_T_941, UInt<3>("h3"))
      node _T_943 = and(is_alu_reg_reg, _T_942)
      node _T_944 = bits(mem_rdata_q, 31, 25)
      node _T_945 = eq(_T_944, UInt<7>("h0"))
      node _T_946 = and(_T_943, _T_945)
      instr_sltu <= _T_946
      node _T_947 = bits(mem_rdata_q, 14, 12)
      node _T_948 = eq(_T_947, UInt<3>("h4"))
      node _T_949 = and(is_alu_reg_reg, _T_948)
      node _T_950 = bits(mem_rdata_q, 31, 25)
      node _T_951 = eq(_T_950, UInt<7>("h0"))
      node _T_952 = and(_T_949, _T_951)
      instr_xor <= _T_952
      node _T_953 = bits(mem_rdata_q, 14, 12)
      node _T_954 = eq(_T_953, UInt<3>("h5"))
      node _T_955 = and(is_alu_reg_reg, _T_954)
      node _T_956 = bits(mem_rdata_q, 31, 25)
      node _T_957 = eq(_T_956, UInt<7>("h0"))
      node _T_958 = and(_T_955, _T_957)
      instr_srl <= _T_958
      node _T_959 = bits(mem_rdata_q, 14, 12)
      node _T_960 = eq(_T_959, UInt<3>("h5"))
      node _T_961 = and(is_alu_reg_reg, _T_960)
      node _T_962 = bits(mem_rdata_q, 31, 25)
      node _T_963 = eq(_T_962, UInt<7>("h20"))
      node _T_964 = and(_T_961, _T_963)
      instr_sra <= _T_964
      node _T_965 = bits(mem_rdata_q, 14, 12)
      node _T_966 = eq(_T_965, UInt<3>("h6"))
      node _T_967 = and(is_alu_reg_reg, _T_966)
      node _T_968 = bits(mem_rdata_q, 31, 25)
      node _T_969 = eq(_T_968, UInt<7>("h0"))
      node _T_970 = and(_T_967, _T_969)
      instr_or <= _T_970
      node _T_971 = bits(mem_rdata_q, 14, 12)
      node _T_972 = eq(_T_971, UInt<3>("h7"))
      node _T_973 = and(is_alu_reg_reg, _T_972)
      node _T_974 = bits(mem_rdata_q, 31, 25)
      node _T_975 = eq(_T_974, UInt<7>("h0"))
      node _T_976 = and(_T_973, _T_975)
      instr_and <= _T_976
      node _T_977 = bits(mem_rdata_q, 6, 0)
      node _T_978 = eq(_T_977, UInt<7>("h73"))
      node _T_979 = bits(mem_rdata_q, 31, 12)
      node _T_980 = eq(_T_979, UInt<20>("hc0002"))
      node _T_981 = and(_T_978, _T_980)
      node _T_982 = bits(mem_rdata_q, 6, 0)
      node _T_983 = eq(_T_982, UInt<7>("h73"))
      node _T_984 = bits(mem_rdata_q, 31, 12)
      node _T_985 = eq(_T_984, UInt<20>("hc0102"))
      node _T_986 = and(_T_983, _T_985)
      node _T_987 = or(_T_981, _T_986)
      node _T_988 = and(_T_987, UInt<1>("h1"))
      instr_rdcycle <= _T_988
      node _T_989 = bits(mem_rdata_q, 6, 0)
      node _T_990 = eq(_T_989, UInt<7>("h73"))
      node _T_991 = bits(mem_rdata_q, 31, 12)
      node _T_992 = eq(_T_991, UInt<20>("hc8002"))
      node _T_993 = and(_T_990, _T_992)
      node _T_994 = bits(mem_rdata_q, 6, 0)
      node _T_995 = eq(_T_994, UInt<7>("h73"))
      node _T_996 = bits(mem_rdata_q, 31, 12)
      node _T_997 = eq(_T_996, UInt<20>("hc8102"))
      node _T_998 = and(_T_995, _T_997)
      node _T_999 = or(_T_993, _T_998)
      node _T_1000 = and(_T_999, UInt<1>("h1"))
      node _T_1001 = and(_T_1000, UInt<1>("h1"))
      instr_rdcycleh <= _T_1001
      node _T_1002 = bits(mem_rdata_q, 6, 0)
      node _T_1003 = eq(_T_1002, UInt<7>("h73"))
      node _T_1004 = bits(mem_rdata_q, 31, 12)
      node _T_1005 = eq(_T_1004, UInt<20>("hc0202"))
      node _T_1006 = and(_T_1003, _T_1005)
      node _T_1007 = and(_T_1006, UInt<1>("h1"))
      instr_rdinstr <= _T_1007
      node _T_1008 = bits(mem_rdata_q, 6, 0)
      node _T_1009 = eq(_T_1008, UInt<7>("h73"))
      node _T_1010 = bits(mem_rdata_q, 31, 12)
      node _T_1011 = eq(_T_1010, UInt<20>("hc8202"))
      node _T_1012 = and(_T_1009, _T_1011)
      node _T_1013 = and(_T_1012, UInt<1>("h1"))
      node _T_1014 = and(_T_1013, UInt<1>("h1"))
      instr_rdinstrh <= _T_1014
      node _T_1015 = bits(mem_rdata_q, 6, 0)
      node _T_1016 = eq(_T_1015, UInt<7>("h73"))
      node _T_1017 = bits(mem_rdata_q, 31, 21)
      node _T_1018 = eq(_T_1017, UInt<1>("h0"))
      node _T_1019 = and(_T_1016, _T_1018)
      node _T_1020 = bits(mem_rdata_q, 19, 7)
      node _T_1021 = eq(_T_1020, UInt<1>("h0"))
      node _T_1022 = and(_T_1019, _T_1021)
      node _T_1023 = bits(mem_rdata_q, 15, 0)
      node _T_1024 = eq(_T_1023, UInt<16>("h9002"))
      node _T_1025 = and(UInt<1>("h0"), _T_1024)
      node _T_1026 = or(_T_1022, _T_1025)
      instr_ecall_ebreak <= _T_1026
      node _T_1027 = bits(mem_rdata_q, 6, 0)
      node _T_1028 = eq(_T_1027, UInt<7>("hb"))
      node _T_1029 = bits(mem_rdata_q, 31, 25)
      node _T_1030 = eq(_T_1029, UInt<7>("h0"))
      node _T_1031 = and(_T_1028, _T_1030)
      node _T_1032 = and(_T_1031, UInt<1>("h0"))
      node _T_1033 = and(_T_1032, UInt<1>("h1"))
      instr_getq <= _T_1033
      node _T_1034 = bits(mem_rdata_q, 6, 0)
      node _T_1035 = eq(_T_1034, UInt<7>("hb"))
      node _T_1036 = bits(mem_rdata_q, 31, 25)
      node _T_1037 = eq(_T_1036, UInt<7>("h1"))
      node _T_1038 = and(_T_1035, _T_1037)
      node _T_1039 = and(_T_1038, UInt<1>("h0"))
      node _T_1040 = and(_T_1039, UInt<1>("h1"))
      instr_setq <= _T_1040
      node _T_1041 = bits(mem_rdata_q, 6, 0)
      node _T_1042 = eq(_T_1041, UInt<7>("hb"))
      node _T_1043 = bits(mem_rdata_q, 31, 25)
      node _T_1044 = eq(_T_1043, UInt<7>("h3"))
      node _T_1045 = and(_T_1042, _T_1044)
      node _T_1046 = and(_T_1045, UInt<1>("h0"))
      instr_maskirq <= _T_1046
      node _T_1047 = bits(mem_rdata_q, 6, 0)
      node _T_1048 = eq(_T_1047, UInt<7>("hb"))
      node _T_1049 = bits(mem_rdata_q, 31, 25)
      node _T_1050 = eq(_T_1049, UInt<7>("h5"))
      node _T_1051 = and(_T_1048, _T_1050)
      node _T_1052 = and(_T_1051, UInt<1>("h0"))
      node _T_1053 = and(_T_1052, UInt<1>("h1"))
      instr_timer <= _T_1053
      node _T_1054 = bits(mem_rdata_q, 14, 12)
      node _T_1055 = eq(_T_1054, UInt<3>("h1"))
      node _T_1056 = bits(mem_rdata_q, 31, 25)
      node _T_1057 = eq(_T_1056, UInt<7>("h0"))
      node _T_1058 = and(_T_1055, _T_1057)
      node _T_1059 = bits(mem_rdata_q, 14, 12)
      node _T_1060 = eq(_T_1059, UInt<3>("h5"))
      node _T_1061 = bits(mem_rdata_q, 31, 25)
      node _T_1062 = eq(_T_1061, UInt<7>("h0"))
      node _T_1063 = and(_T_1060, _T_1062)
      node _T_1064 = or(_T_1058, _T_1063)
      node _T_1065 = bits(mem_rdata_q, 14, 12)
      node _T_1066 = eq(_T_1065, UInt<3>("h5"))
      node _T_1067 = bits(mem_rdata_q, 31, 25)
      node _T_1068 = eq(_T_1067, UInt<7>("h20"))
      node _T_1069 = and(_T_1066, _T_1068)
      node _T_1070 = or(_T_1064, _T_1069)
      node _T_1071 = and(is_alu_reg_imm, _T_1070)
      is_slli_srli_srai <= _T_1071
      node _T_1072 = bits(mem_rdata_q, 14, 12)
      node _T_1073 = eq(_T_1072, UInt<3>("h0"))
      node _T_1074 = bits(mem_rdata_q, 14, 12)
      node _T_1075 = eq(_T_1074, UInt<3>("h2"))
      node _T_1076 = or(_T_1073, _T_1075)
      node _T_1077 = bits(mem_rdata_q, 14, 12)
      node _T_1078 = eq(_T_1077, UInt<3>("h3"))
      node _T_1079 = or(_T_1076, _T_1078)
      node _T_1080 = bits(mem_rdata_q, 14, 12)
      node _T_1081 = eq(_T_1080, UInt<3>("h4"))
      node _T_1082 = or(_T_1079, _T_1081)
      node _T_1083 = bits(mem_rdata_q, 14, 12)
      node _T_1084 = eq(_T_1083, UInt<3>("h6"))
      node _T_1085 = or(_T_1082, _T_1084)
      node _T_1086 = bits(mem_rdata_q, 14, 12)
      node _T_1087 = eq(_T_1086, UInt<3>("h7"))
      node _T_1088 = or(_T_1085, _T_1087)
      node _T_1089 = and(is_alu_reg_imm, _T_1088)
      node _T_1090 = or(instr_jalr, _T_1089)
      is_jalr_addi_slti_sltiu_xori_ori_andi <= _T_1090
      node _T_1091 = bits(mem_rdata_q, 14, 12)
      node _T_1092 = eq(_T_1091, UInt<3>("h1"))
      node _T_1093 = bits(mem_rdata_q, 31, 25)
      node _T_1094 = eq(_T_1093, UInt<7>("h0"))
      node _T_1095 = and(_T_1092, _T_1094)
      node _T_1096 = bits(mem_rdata_q, 14, 12)
      node _T_1097 = eq(_T_1096, UInt<3>("h5"))
      node _T_1098 = bits(mem_rdata_q, 31, 25)
      node _T_1099 = eq(_T_1098, UInt<7>("h0"))
      node _T_1100 = and(_T_1097, _T_1099)
      node _T_1101 = or(_T_1095, _T_1100)
      node _T_1102 = bits(mem_rdata_q, 14, 12)
      node _T_1103 = eq(_T_1102, UInt<3>("h5"))
      node _T_1104 = bits(mem_rdata_q, 31, 25)
      node _T_1105 = eq(_T_1104, UInt<7>("h20"))
      node _T_1106 = and(_T_1103, _T_1105)
      node _T_1107 = or(_T_1101, _T_1106)
      node _T_1108 = and(is_alu_reg_reg, _T_1107)
      is_sll_srl_sra <= _T_1108
      is_lui_auipc_jal_jalr_addi_add_sub <= UInt<1>("h0")
      is_compare <= UInt<1>("h0")
      node _T_1109 = or(instr_lui, instr_auipc)
      node _T_1112 = or(instr_jalr, is_lb_lh_lw_lbu_lhu)
      node _T_1113 = or(_T_1112, is_alu_reg_imm)
      when instr_jal :
        decoded_imm <= decoded_imm_j
      else :
        when _T_1109 :
          node _T_1110 = bits(mem_rdata_q, 31, 12)
          node _T_1111 = dshl(_T_1110, UInt<4>("hc"))
          decoded_imm <= bits(_T_1111, 31, 0)
        else :
          when _T_1113 :
            node _T_1114 = bits(mem_rdata_q, 31, 20)
            node _T_1115 = asSInt(_T_1114)
            node _T_1116 = dshl(_T_1115, UInt<5>("h14"))
            node _T_1117 = dshr(_T_1116, UInt<5>("h14"))
            node _T_1118 = asUInt(_T_1117)
            decoded_imm <= bits(_T_1118, 31, 0)
          else :
            when is_beq_bne_blt_bge_bltu_bgeu :
              node _T_1119 = bits(mem_rdata_q, 31, 31)
              node _T_1120 = bits(mem_rdata_q, 7, 7)
              node _T_1121 = cat(_T_1119, _T_1120)
              node _T_1122 = bits(mem_rdata_q, 30, 25)
              node _T_1123 = bits(mem_rdata_q, 11, 8)
              node _T_1124 = cat(_T_1123, UInt<1>("h0"))
              node _T_1125 = cat(_T_1122, _T_1124)
              node _T_1126 = cat(_T_1121, _T_1125)
              node _T_1127 = asSInt(_T_1126)
              node _T_1128 = dshl(_T_1127, UInt<5>("h13"))
              node _T_1129 = dshr(_T_1128, UInt<5>("h13"))
              node _T_1130 = asUInt(_T_1129)
              decoded_imm <= bits(_T_1130, 31, 0)
            else :
              when is_sb_sh_sw :
                node _T_1131 = bits(mem_rdata_q, 31, 25)
                node _T_1132 = bits(mem_rdata_q, 11, 7)
                node _T_1133 = cat(_T_1131, _T_1132)
                node _T_1134 = asSInt(_T_1133)
                node _T_1135 = dshl(_T_1134, UInt<5>("h14"))
                node _T_1136 = dshr(_T_1135, UInt<5>("h14"))
                node _T_1137 = asUInt(_T_1136)
                decoded_imm <= bits(_T_1137, 31, 0)
              else :
                decoded_imm <= UInt<1>("h0")
    node _T_1138 = not(reset)
    when _T_1138 :
      is_beq_bne_blt_bge_bltu_bgeu <= UInt<1>("h0")
      is_compare <= UInt<1>("h0")
      instr_beq <= UInt<1>("h0")
      instr_bne <= UInt<1>("h0")
      instr_blt <= UInt<1>("h0")
      instr_bge <= UInt<1>("h0")
      instr_bltu <= UInt<1>("h0")
      instr_bgeu <= UInt<1>("h0")
      instr_addi <= UInt<1>("h0")
      instr_slti <= UInt<1>("h0")
      instr_sltiu <= UInt<1>("h0")
      instr_xori <= UInt<1>("h0")
      instr_ori <= UInt<1>("h0")
      instr_andi <= UInt<1>("h0")
      instr_add <= UInt<1>("h0")
      instr_sub <= UInt<1>("h0")
      instr_sll <= UInt<1>("h0")
      instr_slt <= UInt<1>("h0")
      instr_sltu <= UInt<1>("h0")
      instr_xor <= UInt<1>("h0")
      instr_srl <= UInt<1>("h0")
      instr_sra <= UInt<1>("h0")
      instr_or <= UInt<1>("h0")
      instr_and <= UInt<1>("h0")
    reg latched_store : UInt<1>, clock
    reg latched_branch : UInt<1>, clock
    node _T_1140 = and(latched_store, latched_branch)
    node _T_1141 = bits(_T_1140, 0, 0)
    reg reg_out : UInt<32>, clock
    node _T_1142 = and(reg_out, UInt<32>("hfffffffe"))
    reg reg_next_pc : UInt<32>, clock
    node _T_1139 = mux(_T_1141, _T_1142, reg_next_pc)
    next_pc <= _T_1139
    reg alu_out_0 : UInt<1>, clock
    alu_out_0 <= UInt<1>("h0")
    reg alu_eq : UInt<1>, clock
    reg alu_lts : UInt<1>, clock
    reg alu_ltu : UInt<1>, clock
    node _T_1145 = not(UInt<1>("h0"))
    node _T_1146 = or(instr_beq, instr_bne)
    node _T_1147 = or(_T_1146, instr_bge)
    node _T_1148 = or(_T_1147, instr_bgeu)
    node _T_1149 = not(_T_1148)
    node _T_1150 = or(_T_1145, _T_1149)
    node _T_1151 = and(is_slti_blt_slt, _T_1150)
    node _T_1152 = not(UInt<1>("h0"))
    node _T_1153 = or(instr_beq, instr_bne)
    node _T_1154 = or(_T_1153, instr_bgeu)
    node _T_1155 = or(_T_1154, instr_bgeu)
    node _T_1156 = not(_T_1155)
    node _T_1157 = or(_T_1152, _T_1156)
    node _T_1158 = and(is_sltiu_bltu_sltu, _T_1157)
    when instr_beq :
      alu_out_0 <= alu_eq
    else :
      when instr_bne :
        node _T_1143 = not(alu_eq)
        alu_out_0 <= _T_1143
      else :
        when instr_bge :
          node _T_1144 = not(alu_lts)
          alu_out_0 <= _T_1144
        else :
          when instr_bgeu :
            alu_out_0 <= alu_ltu
          else :
            when _T_1151 :
              alu_out_0 <= alu_lts
            else :
              when _T_1158 :
                alu_out_0 <= alu_ltu
    reg alu_out : UInt<32>, clock
    alu_out <= UInt<1>("h0")
    reg alu_add_sub : UInt<32>, clock
    node _T_1159 = or(instr_xori, instr_xor)
    node _T_1161 = or(instr_ori, instr_or)
    node _T_1163 = or(instr_andi, instr_and)
    node _T_1165 = or(instr_sll, instr_slli)
    node _T_1166 = and(UInt<1>("h0"), _T_1165)
    reg alu_shl : UInt<32>, clock
    node _T_1167 = or(instr_srl, instr_srli)
    node _T_1168 = or(_T_1167, instr_sra)
    node _T_1169 = or(_T_1168, instr_srai)
    node _T_1170 = and(UInt<1>("h0"), _T_1169)
    reg alu_shr : UInt<32>, clock
    when is_lui_auipc_jal_jalr_addi_add_sub :
      alu_out <= alu_add_sub
    else :
      when is_compare :
        alu_out <= alu_out_0
      else :
        when _T_1159 :
          node _T_1160 = xor(reg_op1, reg_op2)
          alu_out <= _T_1160
        else :
          when _T_1161 :
            node _T_1162 = or(reg_op1, reg_op2)
            alu_out <= _T_1162
          else :
            when _T_1163 :
              node _T_1164 = and(reg_op1, reg_op2)
              alu_out <= _T_1164
            else :
              when _T_1166 :
                alu_out <= alu_shl
              else :
                when _T_1170 :
                  alu_out <= alu_shr
    reg clear_prefetched_high_word_q : UInt<1>, clock
    clear_prefetched_high_word_q <= clear_prefetched_high_word
    node _T_1172 = not(prefetched_high_word)
    node _T_1173 = bits(_T_1172, 0, 0)
    reg irq_state : UInt<2>, clock
    node _T_1175 = or(latched_branch, irq_state)
    node _T_1176 = not(reset)
    node _T_1177 = or(_T_1175, _T_1176)
    node _T_1178 = bits(_T_1177, 0, 0)
    node _T_1174 = mux(_T_1178, UInt<1>("h0"), clear_prefetched_high_word_q)
    node _T_1171 = mux(_T_1173, UInt<1>("h0"), _T_1174)
    clear_prefetched_high_word <= _T_1171
    reg cpuregs_write : UInt<1>, clock
    cpuregs_write <= UInt<1>("h0")
    reg cpuregs_wrdata : UInt<32>, clock
    cpuregs_wrdata <= UInt<1>("h0")
    reg cpu_state : UInt<8>, clock
    node _T_1179 = eq(cpu_state, UInt<8>("h40"))
    reg reg_pc : UInt<32>, clock
    reg latched_compr : UInt<1>, clock
    reg latched_stalu : UInt<1>, clock
    reg alu_out_q : UInt<32>, clock
    reg irq_pending : UInt<32>, clock
    reg irq_mask : UInt<32>, clock
    when _T_1179 :
      node _T_1183 = not(latched_branch)
      node _T_1184 = and(latched_store, _T_1183)
      node _T_1187 = bits(irq_state, 0, 0)
      node _T_1188 = and(UInt<1>("h0"), _T_1187)
      node _T_1190 = bits(irq_state, 1, 1)
      node _T_1191 = and(UInt<1>("h0"), _T_1190)
      when latched_branch :
        node _T_1181 = bits(latched_compr, 0, 0)
        node _T_1180 = mux(_T_1181, UInt<2>("h2"), UInt<3>("h4"))
        node _T_1182 = add(reg_pc, _T_1180)
        cpuregs_wrdata <= _T_1182
        cpuregs_write <= UInt<1>("h1")
      else :
        when _T_1184 :
          node _T_1186 = bits(latched_stalu, 0, 0)
          node _T_1185 = mux(_T_1186, alu_out_q, reg_out)
          cpuregs_wrdata <= _T_1185
          cpuregs_write <= UInt<1>("h1")
        else :
          when _T_1188 :
            node _T_1189 = or(reg_next_pc, latched_compr)
            cpuregs_wrdata <= _T_1189
            cpuregs_write <= UInt<1>("h1")
          else :
            when _T_1191 :
              node _T_1192 = not(irq_mask)
              node _T_1193 = and(irq_pending, _T_1192)
              cpuregs_wrdata <= _T_1193
              cpuregs_write <= UInt<1>("h1")
    node _T_1194 = and(reset, cpuregs_write)
    reg latched_rd : UInt<5>, clock
    node _T_1195 = and(_T_1194, latched_rd)
    reg _T_1196 : UInt<32>, clock
    when _T_1195 :
      _T_1196 <= cpuregs_wrdata
    reg decoded_rs : UInt<5>, clock
    decoded_rs <= UInt<1>("h0")
    reg cpuregs_rs1 : UInt<32>, clock
    node _T_1198 = bits(decoded_rs1, 0, 0)
    node _T_1197 = mux(_T_1198, _T_1196, UInt<1>("h0"))
    cpuregs_rs1 <= _T_1197
    reg cpuregs_rs2 : UInt<32>, clock
    node _T_1200 = bits(decoded_rs2, 0, 0)
    node _T_1199 = mux(_T_1200, _T_1196, UInt<1>("h0"))
    cpuregs_rs2 <= _T_1199
    wire launch_next_insn : UInt<1>
    node _T_1201 = eq(cpu_state, UInt<8>("h40"))
    node _T_1202 = and(_T_1201, decoder_trigger)
    node _T_1203 = not(UInt<1>("h0"))
    reg irq_delay : UInt<1>, clock
    node _T_1204 = or(_T_1203, irq_delay)
    reg irq_active : UInt<1>, clock
    node _T_1205 = or(_T_1204, irq_active)
    node _T_1206 = not(irq_mask)
    node _T_1207 = and(irq_pending, _T_1206)
    node _T_1208 = or(_T_1205, _T_1207)
    node _T_1209 = eq(_T_1208, UInt<1>("h0"))
    node _T_1210 = and(_T_1202, _T_1209)
    launch_next_insn <= _T_1210
    trap <= UInt<1>("h0")
    reg reg_sh : UInt<5>, clock
    reg_sh <= UInt<1>("h0")
    reg_out <= UInt<1>("h0")
    reg set_mem_do_rinst : UInt<1>, clock
    set_mem_do_rinst <= UInt<1>("h0")
    reg set_mem_do_rdata : UInt<1>, clock
    set_mem_do_rdata <= UInt<1>("h0")
    reg set_mem_do_wdata : UInt<1>, clock
    set_mem_do_wdata <= UInt<1>("h0")
    reg alu_out_0_q : UInt<1>, clock
    alu_out_0_q <= alu_out_0
    alu_out_q <= alu_out
    reg alu_wait : UInt<1>, clock
    alu_wait <= UInt<1>("h0")
    reg alu_wait_2 : UInt<1>, clock
    alu_wait_2 <= UInt<1>("h0")
    node _T_1211 = and(UInt<1>("h0"), UInt<1>("h1"))
    reg pcpi_timeout_counter : UInt<4>, clock
    reg pcpi_timeout : UInt<1>, clock
    when _T_1211 :
      node _T_1212 = and(reset, pcpi_valid)
      node _T_1213 = not(pcpi_int_wait)
      node _T_1214 = and(_T_1212, _T_1213)
      when _T_1214 :
        when pcpi_timeout_counter :
          node _T_1215 = sub(pcpi_timeout_counter, UInt<1>("h1"))
          pcpi_timeout_counter <= _T_1215
      else :
        pcpi_timeout_counter <= UInt<4>("hf")
      node _T_1217 = eq(pcpi_timeout_counter, UInt<1>("h0"))
      node _T_1216 = mux(_T_1217, UInt<1>("h1"), UInt<1>("h0"))
      pcpi_timeout <= _T_1216
    reg count_cycle : UInt<64>, clock
    reg count_instr : UInt<64>, clock
    when UInt<1>("h1") :
      node _T_1219 = bits(reset, 0, 0)
      node _T_1220 = add(count_cycle, UInt<1>("h1"))
      node _T_1218 = mux(_T_1219, _T_1220, UInt<1>("h0"))
      count_cycle <= _T_1218
      node _T_1221 = not(UInt<1>("h1"))
      when _T_1221 :
        node _T_1222 = bits(count_cycle, 31, 0)
        node _T_1223 = cat(UInt<32>("h0"), _T_1222)
        count_cycle <= _T_1223
    else :
      count_cycle <= UInt<1>("h0")
      count_instr <= UInt<1>("h0")
    reg next_irq_pending : UInt<32>, clock
    node _T_1225 = bits(UInt<1>("h0"), 0, 0)
    node _T_1226 = and(irq_pending, UInt<32>("hffffffff"))
    node _T_1224 = mux(_T_1225, _T_1226, UInt<32>("h0"))
    next_irq_pending <= _T_1224
    reg timer : UInt<32>, clock
    node _T_1227 = neq(timer, UInt<32>("h0"))
    when _T_1227 :
      node _T_1228 = sub(timer, UInt<1>("h1"))
      timer <= _T_1228
    node _T_1229 = and(mem_do_rinst, mem_done)
    decoder_trigger <= _T_1229
    reg decoder_trigger_q : UInt<1>, clock
    decoder_trigger_q <= decoder_trigger
    decoder_pseudo_trigger <= UInt<1>("h0")
    reg decoder_pseudo_trigger_q : UInt<1>, clock
    decoder_pseudo_trigger_q <= decoder_pseudo_trigger
    reg do_waitirq : UInt<1>, clock
    do_waitirq <= UInt<1>("h0")
    trace_valid <= UInt<1>("h0")
    node _T_1230 = not(UInt<1>("h0"))
    when _T_1230 :
      trace_data <= UInt<1>("h0")
    node _T_1231 = not(reset)
    reg latched_trace : UInt<1>, clock
    reg latched_is_lu : UInt<1>, clock
    reg latched_is_lh : UInt<1>, clock
    reg latched_is_lb : UInt<1>, clock
    reg current_pc : UInt<32>, clock
    node _T_1253 = cat(UInt<4>("h8"), UInt<32>("h0"))
    node _T_1254 = cat(UInt<4>("h1"), UInt<32>("h0"))
    node _T_1476 = cat(UInt<4>("h2"), UInt<32>("h0"))
    when _T_1231 :
      reg_pc <= UInt<32>("h0")
      reg_next_pc <= UInt<32>("h0")
      when UInt<1>("h1") :
        count_instr <= UInt<1>("h0")
      latched_store <= UInt<1>("h0")
      latched_stalu <= UInt<1>("h0")
      latched_branch <= UInt<1>("h0")
      latched_trace <= UInt<1>("h0")
      latched_is_lu <= UInt<1>("h0")
      latched_is_lh <= UInt<1>("h0")
      latched_is_lb <= UInt<1>("h0")
      pcpi_valid <= UInt<1>("h0")
      pcpi_timeout <= UInt<1>("h0")
      irq_active <= UInt<1>("h0")
      irq_delay <= UInt<1>("h0")
      irq_mask <= UInt<32>("hffffffff")
      next_irq_pending <= UInt<1>("h0")
      irq_state <= UInt<1>("h0")
      eoi <= UInt<1>("h0")
      timer <= UInt<1>("h0")
      node _T_1232 = eq(UInt<32>("hffffffff"), UInt<1>("h0"))
      when _T_1232 :
        latched_store <= UInt<1>("h1")
        latched_rd <= UInt<2>("h2")
        reg_out <= UInt<32>("hffffffff")
      cpu_state <= UInt<8>("h40")
    else :
      node _T_1233 = eq(cpu_state, UInt<8>("h80"))
      node _T_1234 = eq(cpu_state, UInt<8>("h40"))
      node _T_1359 = eq(cpu_state, UInt<8>("h20"))
      node _T_1418 = eq(cpu_state, UInt<8>("h10"))
      node _T_1437 = eq(cpu_state, UInt<8>("h8"))
      node _T_1448 = eq(cpu_state, UInt<8>("h4"))
      node _T_1470 = eq(cpu_state, UInt<8>("h2"))
      node _T_1484 = eq(cpu_state, UInt<8>("h1"))
      when _T_1233 :
        trap <= UInt<1>("h1")
      else :
        when _T_1234 :
          node _T_1235 = not(decoder_trigger)
          node _T_1236 = not(do_waitirq)
          node _T_1237 = and(_T_1235, _T_1236)
          mem_do_rinst <= _T_1237
          mem_wordsize <= UInt<1>("h0")
          current_pc <= reg_next_pc
          node _T_1243 = bits(irq_state, 0, 0)
          node _T_1244 = and(UInt<1>("h0"), _T_1243)
          node _T_1245 = bits(irq_state, 1, 1)
          node _T_1246 = and(UInt<1>("h0"), _T_1245)
          when latched_branch :
            node _T_1239 = bits(latched_store, 0, 0)
            node _T_1241 = bits(latched_stalu, 0, 0)
            node _T_1240 = mux(_T_1241, alu_out_q, reg_out)
            node _T_1242 = and(_T_1240, UInt<32>("hfffffffe"))
            node _T_1238 = mux(_T_1239, _T_1242, reg_next_pc)
            current_pc <= _T_1238
          else :
            when _T_1244 :
              current_pc <= UInt<32>("h10")
              irq_active <= UInt<1>("h1")
              mem_do_rinst <= UInt<1>("h1")
            else :
              when _T_1246 :
                node _T_1247 = not(irq_mask)
                node _T_1248 = and(irq_pending, _T_1247)
                eoi <= _T_1248
                node _T_1249 = and(next_irq_pending, irq_mask)
                next_irq_pending <= _T_1249
          node _T_1250 = and(UInt<1>("h0"), latched_trace)
          when _T_1250 :
            latched_trace <= UInt<1>("h0")
            trace_valid <= UInt<1>("h1")
            when latched_branch :
              node _T_1252 = bits(irq_active, 0, 0)
              node _T_1251 = mux(_T_1252, _T_1253, UInt<36>("h0"))
              node _T_1255 = or(_T_1251, _T_1254)
              node _T_1256 = and(current_pc, UInt<32>("hfffffffe"))
              node _T_1257 = or(_T_1255, _T_1256)
              trace_data <= _T_1257
            else :
              node _T_1259 = bits(irq_active, 0, 0)
              node _T_1258 = mux(_T_1259, _T_1253, UInt<1>("h0"))
              node _T_1261 = bits(latched_stalu, 0, 0)
              node _T_1260 = mux(_T_1261, alu_out_q, reg_out)
              node _T_1262 = or(_T_1258, _T_1260)
              trace_data <= _T_1262
            reg_pc <= current_pc
            reg_next_pc <= current_pc
            latched_store <= UInt<1>("h0")
            latched_stalu <= UInt<1>("h0")
            latched_branch <= UInt<1>("h0")
            latched_is_lu <= UInt<1>("h0")
            latched_is_lh <= UInt<1>("h0")
            latched_is_lb <= UInt<1>("h0")
            latched_rd <= decoded_rd
            latched_compr <= compressed_instr
            node _T_1263 = not(irq_active)
            node _T_1264 = and(decoder_trigger, _T_1263)
            node _T_1265 = not(irq_delay)
            node _T_1266 = and(_T_1264, _T_1265)
            node _T_1267 = not(irq_mask)
            node pending_and_notmask = and(irq_pending, _T_1267)
            node _T_1268 = bits(pending_and_notmask, 0, 0)
            node _T_1269 = bits(pending_and_notmask, 1, 1)
            node _T_1270 = or(_T_1268, _T_1269)
            node _T_1271 = bits(pending_and_notmask, 2, 2)
            node _T_1272 = or(_T_1270, _T_1271)
            node _T_1273 = bits(pending_and_notmask, 3, 3)
            node _T_1274 = or(_T_1272, _T_1273)
            node _T_1275 = bits(pending_and_notmask, 4, 4)
            node _T_1276 = or(_T_1274, _T_1275)
            node _T_1277 = bits(pending_and_notmask, 5, 5)
            node _T_1278 = or(_T_1276, _T_1277)
            node _T_1279 = bits(pending_and_notmask, 6, 6)
            node _T_1280 = or(_T_1278, _T_1279)
            node _T_1281 = bits(pending_and_notmask, 7, 7)
            node _T_1282 = or(_T_1280, _T_1281)
            node _T_1283 = bits(pending_and_notmask, 8, 8)
            node _T_1284 = or(_T_1282, _T_1283)
            node _T_1285 = bits(pending_and_notmask, 9, 9)
            node _T_1286 = or(_T_1284, _T_1285)
            node _T_1287 = bits(pending_and_notmask, 10, 10)
            node _T_1288 = or(_T_1286, _T_1287)
            node _T_1289 = bits(pending_and_notmask, 11, 11)
            node _T_1290 = or(_T_1288, _T_1289)
            node _T_1291 = bits(pending_and_notmask, 12, 12)
            node _T_1292 = or(_T_1290, _T_1291)
            node _T_1293 = bits(pending_and_notmask, 13, 13)
            node _T_1294 = or(_T_1292, _T_1293)
            node _T_1295 = bits(pending_and_notmask, 14, 14)
            node _T_1296 = or(_T_1294, _T_1295)
            node _T_1297 = bits(pending_and_notmask, 15, 15)
            node _T_1298 = or(_T_1296, _T_1297)
            node _T_1299 = bits(pending_and_notmask, 16, 16)
            node _T_1300 = or(_T_1298, _T_1299)
            node _T_1301 = bits(pending_and_notmask, 17, 17)
            node _T_1302 = or(_T_1300, _T_1301)
            node _T_1303 = bits(pending_and_notmask, 18, 18)
            node _T_1304 = or(_T_1302, _T_1303)
            node _T_1305 = bits(pending_and_notmask, 19, 19)
            node _T_1306 = or(_T_1304, _T_1305)
            node _T_1307 = bits(pending_and_notmask, 20, 20)
            node _T_1308 = or(_T_1306, _T_1307)
            node _T_1309 = bits(pending_and_notmask, 21, 21)
            node _T_1310 = or(_T_1308, _T_1309)
            node _T_1311 = bits(pending_and_notmask, 22, 22)
            node _T_1312 = or(_T_1310, _T_1311)
            node _T_1313 = bits(pending_and_notmask, 23, 23)
            node _T_1314 = or(_T_1312, _T_1313)
            node _T_1315 = bits(pending_and_notmask, 24, 24)
            node _T_1316 = or(_T_1314, _T_1315)
            node _T_1317 = bits(pending_and_notmask, 25, 25)
            node _T_1318 = or(_T_1316, _T_1317)
            node _T_1319 = bits(pending_and_notmask, 26, 26)
            node _T_1320 = or(_T_1318, _T_1319)
            node _T_1321 = bits(pending_and_notmask, 27, 27)
            node _T_1322 = or(_T_1320, _T_1321)
            node _T_1323 = bits(pending_and_notmask, 28, 28)
            node _T_1324 = or(_T_1322, _T_1323)
            node _T_1325 = bits(pending_and_notmask, 29, 29)
            node _T_1326 = or(_T_1324, _T_1325)
            node _T_1327 = bits(pending_and_notmask, 30, 30)
            node _T_1328 = or(_T_1326, _T_1327)
            node _T_1329 = bits(pending_and_notmask, 31, 31)
            node bit_or = or(_T_1328, _T_1329)
            node _T_1330 = and(_T_1266, bit_or)
            node _T_1331 = or(_T_1330, irq_state)
            node _T_1332 = and(UInt<1>("h0"), _T_1331)
            when _T_1332 :
              node _T_1334 = eq(irq_state, UInt<2>("h0"))
              node _T_1336 = eq(irq_state, UInt<2>("h1"))
              node _T_1335 = mux(_T_1336, UInt<2>("h2"), UInt<2>("h0"))
              node _T_1333 = mux(_T_1334, UInt<2>("h1"), _T_1335)
              irq_state <= _T_1333
              latched_compr <= latched_compr
              when UInt<1>("h1") :
                node _T_1337 = bits(irq_state, 0, 0)
                node _T_1338 = or(UInt<6>("h20"), _T_1337)
                latched_rd <= bits(_T_1338, 4, 0)
              else :
                node _T_1340 = bits(irq_state, 0, 0)
                node _T_1341 = bits(_T_1340, 0, 0)
                node _T_1339 = mux(_T_1341, UInt<3>("h4"), UInt<2>("h3"))
                latched_rd <= _T_1339
            else :
              node _T_1342 = or(decoder_trigger, do_waitirq)
              node _T_1343 = and(UInt<1>("h0"), _T_1342)
              node _T_1344 = and(_T_1343, instr_waitirq)
              when _T_1344 :
                when irq_pending :
                  latched_store <= UInt<1>("h1")
                  reg_out <= irq_pending
                  node _T_1346 = bits(compressed_instr, 0, 0)
                  node _T_1345 = mux(_T_1346, UInt<2>("h2"), UInt<3>("h4"))
                  node _T_1347 = add(current_pc, _T_1345)
                  reg_next_pc <= _T_1347
                  mem_do_rinst <= UInt<1>("h1")
                else :
                  do_waitirq <= UInt<1>("h1")
              else :
                when decoder_trigger :
                  irq_delay <= irq_active
                  node _T_1349 = bits(compressed_instr, 0, 0)
                  node _T_1348 = mux(_T_1349, UInt<2>("h2"), UInt<3>("h4"))
                  node _T_1350 = add(current_pc, _T_1348)
                  reg_next_pc <= _T_1350
                  when UInt<1>("h0") :
                    latched_trace <= UInt<1>("h1")
                  when UInt<1>("h1") :
                    node _T_1351 = add(count_instr, UInt<1>("h1"))
                    count_instr <= _T_1351
                    node _T_1352 = not(UInt<1>("h1"))
                    when _T_1352 :
                      node _T_1353 = bits(count_instr, 31, 0)
                      node _T_1354 = cat(UInt<32>("h0"), _T_1353)
                      count_instr <= _T_1354
                  when instr_jal :
                    mem_do_rinst <= UInt<1>("h1")
                    node _T_1355 = add(current_pc, decoded_imm_j)
                    reg_next_pc <= _T_1355
                    latched_branch <= UInt<1>("h1")
                  else :
                    mem_do_rinst <= UInt<1>("h0")
                    node _T_1356 = not(instr_jalr)
                    node _T_1357 = not(instr_retirq)
                    node _T_1358 = and(_T_1356, _T_1357)
                    mem_do_prefetch <= _T_1358
                    cpu_state <= UInt<8>("h20")
        else :
          when _T_1359 :
            reg_op1 <= UInt<1>("h0")
            reg_op2 <= UInt<1>("h0")
            node _T_1360 = or(UInt<1>("h1"), UInt<1>("h0"))
            node _T_1361 = and(_T_1360, instr_trap)
            node _T_1382 = and(UInt<1>("h1"), is_rdcycle_rdcycleh_rdinstr_rdinstrh)
            node _T_1390 = and(UInt<1>("h0"), UInt<1>("h1"))
            node _T_1391 = and(_T_1390, instr_getq)
            node _T_1392 = and(UInt<1>("h0"), UInt<1>("h1"))
            node _T_1393 = and(_T_1392, instr_setq)
            node _T_1395 = and(UInt<1>("h0"), instr_retirq)
            node _T_1399 = and(UInt<1>("h0"), instr_maskirq)
            node _T_1401 = and(UInt<1>("h0"), UInt<1>("h1"))
            node _T_1402 = and(_T_1401, instr_timer)
            node _T_1403 = not(instr_trap)
            node _T_1404 = and(is_lb_lh_lw_lbu_lhu, _T_1403)
            node _T_1405 = not(UInt<1>("h0"))
            node _T_1406 = and(is_slli_srli_srai, _T_1405)
            node _T_1407 = and(is_slli_srli_srai, UInt<1>("h0"))
            node _T_1408 = or(is_jalr_addi_slti_sltiu_xori_ori_andi, _T_1407)
            when _T_1361 :
              when UInt<1>("h0") :
                reg_op1 <= cpuregs_rs1
                when UInt<1>("h1") :
                  pcpi_valid <= UInt<1>("h1")
                  reg_sh <= bits(cpuregs_rs2, 4, 0)
                  reg_op2 <= cpuregs_rs2
                  node _T_1362 = or(pcpi_timeout, instr_ecall_ebreak)
                  node _T_1363 = and(UInt<1>("h1"), _T_1362)
                  when pcpi_int_ready :
                    mem_do_rinst <= UInt<1>("h1")
                    pcpi_valid <= UInt<1>("h0")
                    reg_out <= pcpi_int_rd
                    latched_store <= pcpi_int_wr
                    cpu_state <= UInt<8>("h40")
                  else :
                    when _T_1363 :
                      pcpi_valid <= UInt<1>("h0")
                      node _T_1364 = bits(irq_mask, 1, 1)
                      node _T_1365 = not(_T_1364)
                      node _T_1366 = and(UInt<1>("h0"), _T_1365)
                      node _T_1367 = not(irq_active)
                      node _T_1368 = and(_T_1366, _T_1367)
                      when _T_1368 :
                        node _T_1369 = bits(next_irq_pending, 31, 2)
                        node _T_1370 = bits(next_irq_pending, 0, 0)
                        node _T_1371 = cat(UInt<1>("h1"), _T_1370)
                        node _T_1372 = cat(_T_1369, _T_1371)
                        next_irq_pending <= _T_1372
                        cpu_state <= UInt<8>("h40")
                      else :
                        cpu_state <= UInt<8>("h80")
                else :
                  cpu_state <= UInt<8>("h10")
              else :
                node _T_1373 = bits(irq_mask, 1, 1)
                node _T_1374 = not(_T_1373)
                node _T_1375 = and(UInt<1>("h0"), _T_1374)
                node _T_1376 = not(irq_active)
                node _T_1377 = and(_T_1375, _T_1376)
                when _T_1377 :
                  node _T_1378 = bits(next_irq_pending, 31, 2)
                  node _T_1379 = bits(next_irq_pending, 0, 0)
                  node _T_1380 = cat(UInt<1>("h1"), _T_1379)
                  node _T_1381 = cat(_T_1378, _T_1380)
                  next_irq_pending <= _T_1381
                  cpu_state <= UInt<8>("h40")
                else :
                  cpu_state <= UInt<8>("h80")
            else :
              when _T_1382 :
                when instr_rdcycle :
                  node _T_1383 = bits(count_cycle, 31, 0)
                  reg_out <= _T_1383
                when instr_rdcycleh :
                  node _T_1384 = bits(count_cycle, 63, 32)
                  reg_out <= _T_1384
                when instr_rdinstr :
                  node _T_1385 = bits(count_instr, 31, 0)
                  reg_out <= _T_1385
                node _T_1386 = and(instr_rdinstrh, UInt<1>("h1"))
                when _T_1386 :
                  node _T_1387 = bits(count_instr, 63, 32)
                  reg_out <= _T_1387
                latched_store <= UInt<1>("h1")
                cpu_state <= UInt<8>("h40")
              else :
                when is_lui_auipc_jal :
                  node _T_1389 = bits(instr_lui, 0, 0)
                  node _T_1388 = mux(_T_1389, UInt<1>("h0"), reg_pc)
                  reg_op1 <= _T_1388
                  reg_op2 <= decoded_imm
                  when UInt<1>("h0") :
                    alu_wait <= UInt<1>("h1")
                  else :
                    mem_do_rinst <= mem_do_prefetch
                  cpu_state <= UInt<8>("h8")
                else :
                  when _T_1391 :
                    reg_out <= cpuregs_rs1
                    latched_store <= UInt<1>("h1")
                    cpu_state <= UInt<8>("h40")
                  else :
                    when _T_1393 :
                      reg_out <= cpuregs_rs1
                      node _T_1394 = sub(latched_rd, UInt<1>("h1"))
                      latched_rd <= _T_1394
                      latched_store <= UInt<1>("h1")
                      cpu_state <= UInt<8>("h40")
                    else :
                      when _T_1395 :
                        eoi <= UInt<1>("h0")
                        irq_active <= UInt<1>("h0")
                        latched_branch <= UInt<1>("h1")
                        latched_store <= UInt<1>("h1")
                        node _T_1397 = bits(UInt<1>("h1"), 0, 0)
                        node _T_1398 = and(cpuregs_rs1, UInt<32>("hfffffffe"))
                        node _T_1396 = mux(_T_1397, _T_1398, cpuregs_rs1)
                        reg_out <= _T_1396
                        cpu_state <= UInt<8>("h40")
                      else :
                        when _T_1399 :
                          latched_store <= UInt<1>("h1")
                          reg_out <= irq_mask
                          node _T_1400 = or(cpuregs_rs1, UInt<32>("h0"))
                          irq_mask <= _T_1400
                          cpu_state <= UInt<8>("h40")
                        else :
                          when _T_1402 :
                            latched_store <= UInt<1>("h1")
                            reg_out <= timer
                            timer <= cpuregs_rs1
                            cpu_state <= UInt<8>("h40")
                          else :
                            when _T_1404 :
                              reg_op1 <= cpuregs_rs1
                              cpu_state <= UInt<8>("h1")
                              mem_do_rinst <= UInt<1>("h1")
                            else :
                              when _T_1406 :
                                reg_op1 <= cpuregs_rs1
                                reg_sh <= decoded_rs2
                                cpu_state <= UInt<8>("h4")
                              else :
                                when _T_1408 :
                                  reg_op1 <= cpuregs_rs1
                                  node _T_1410 = and(is_slli_srli_srai, UInt<1>("h0"))
                                  node _T_1411 = bits(_T_1410, 0, 0)
                                  node _T_1409 = mux(_T_1411, decoded_rs2, decoded_imm)
                                  reg_op2 <= _T_1409
                                  when UInt<1>("h0") :
                                    alu_wait <= UInt<1>("h1")
                                  else :
                                    mem_do_rinst <= mem_do_prefetch
                                  cpu_state <= UInt<8>("h8")
                                else :
                                  reg_op1 <= cpuregs_rs1
                                  when UInt<1>("h1") :
                                    reg_sh <= bits(cpuregs_rs2, 4, 0)
                                    reg_op2 <= cpuregs_rs2
                                    node _T_1412 = not(UInt<1>("h0"))
                                    node _T_1413 = and(is_sll_srl_sra, _T_1412)
                                    when is_sb_sh_sw :
                                      cpu_state <= UInt<8>("h2")
                                      mem_do_rinst <= UInt<1>("h1")
                                    else :
                                      when _T_1413 :
                                        cpu_state <= UInt<8>("h4")
                                      else :
                                        node _T_1414 = and(UInt<1>("h0"), is_beq_bne_blt_bge_bltu_bgeu)
                                        node _T_1415 = or(UInt<1>("h0"), _T_1414)
                                        when _T_1415 :
                                          node _T_1416 = and(UInt<1>("h0"), is_beq_bne_blt_bge_bltu_bgeu)
                                          node _T_1417 = and(UInt<1>("h0"), _T_1416)
                                          alu_wait_2 <= _T_1417
                                          alu_wait <= UInt<1>("h1")
                                        else :
                                          mem_do_rinst <= mem_do_prefetch
                                        cpu_state <= UInt<8>("h8")
                                  else :
                                    cpu_state <= UInt<8>("h10")
          else :
            when _T_1418 :
              reg_sh <= bits(cpuregs_rs2, 4, 0)
              reg_op2 <= cpuregs_rs2
              node _T_1419 = and(UInt<1>("h0"), instr_trap)
              node _T_1431 = not(UInt<1>("h0"))
              node _T_1432 = and(is_sll_srl_sra, _T_1431)
              when _T_1419 :
                pcpi_valid <= UInt<1>("h1")
                node _T_1420 = or(pcpi_timeout, instr_ecall_ebreak)
                node _T_1421 = and(UInt<1>("h1"), _T_1420)
                when pcpi_int_ready :
                  mem_do_rinst <= UInt<1>("h1")
                  pcpi_valid <= UInt<1>("h0")
                  reg_out <= pcpi_int_rd
                  latched_store <= pcpi_int_wr
                  cpu_state <= UInt<8>("h40")
                else :
                  when _T_1421 :
                    pcpi_valid <= UInt<1>("h0")
                    node _T_1422 = bits(irq_mask, 1, 1)
                    node _T_1423 = not(_T_1422)
                    node _T_1424 = and(UInt<1>("h0"), _T_1423)
                    node _T_1425 = not(irq_active)
                    node _T_1426 = and(_T_1424, _T_1425)
                    when _T_1426 :
                      node _T_1427 = bits(next_irq_pending, 31, 2)
                      node _T_1428 = bits(next_irq_pending, 0, 0)
                      node _T_1429 = cat(UInt<1>("h1"), _T_1428)
                      node _T_1430 = cat(_T_1427, _T_1429)
                      next_irq_pending <= _T_1430
                      cpu_state <= UInt<8>("h40")
                    else :
                      cpu_state <= UInt<8>("h80")
              else :
                when is_sb_sh_sw :
                  cpu_state <= UInt<8>("h2")
                  mem_do_rinst <= UInt<1>("h1")
                else :
                  when _T_1432 :
                    cpu_state <= UInt<8>("h4")
                  else :
                    node _T_1433 = and(UInt<1>("h0"), is_beq_bne_blt_bge_bltu_bgeu)
                    node _T_1434 = or(UInt<1>("h0"), _T_1433)
                    when _T_1434 :
                      node _T_1435 = and(UInt<1>("h0"), is_beq_bne_blt_bge_bltu_bgeu)
                      node _T_1436 = and(UInt<1>("h0"), _T_1435)
                      alu_wait_2 <= _T_1436
                      alu_wait <= UInt<1>("h1")
                    else :
                      mem_do_rinst <= mem_do_prefetch
                    cpu_state <= UInt<8>("h8")
            else :
              when _T_1437 :
                node _T_1438 = add(reg_pc, decoded_imm)
                reg_out <= _T_1438
                node _T_1439 = or(UInt<1>("h0"), UInt<1>("h0"))
                node _T_1440 = or(alu_wait, alu_wait_2)
                node _T_1441 = and(_T_1439, _T_1440)
                when _T_1441 :
                  node _T_1442 = not(alu_wait_2)
                  node _T_1443 = and(mem_do_prefetch, _T_1442)
                  mem_do_rinst <= _T_1443
                  alu_wait <= alu_wait_2
                else :
                  when is_beq_bne_blt_bge_bltu_bgeu :
                    latched_rd <= UInt<1>("h0")
                    node _T_1445 = bits(UInt<1>("h0"), 0, 0)
                    node _T_1444 = mux(_T_1445, alu_out_0_q, alu_out_0)
                    latched_store <= _T_1444
                    node _T_1447 = bits(UInt<1>("h0"), 0, 0)
                    node _T_1446 = mux(_T_1447, alu_out_0_q, alu_out_0)
                    latched_branch <= _T_1446
                    when mem_done :
                      cpu_state <= UInt<8>("h40")
                    when UInt<1>("h0") :
                      when alu_out_0_q :
                        decoder_trigger <= UInt<1>("h0")
                        set_mem_do_rinst <= UInt<1>("h1")
                    else :
                      when alu_out_0 :
                        decoder_trigger <= UInt<1>("h0")
                        set_mem_do_rinst <= UInt<1>("h1")
              else :
                when _T_1448 :
                  latched_store <= UInt<1>("h1")
                  node _T_1449 = eq(reg_sh, UInt<1>("h0"))
                  node _T_1450 = and(UInt<1>("h1"), reg_sh)
                  node _T_1451 = geq(_T_1450, UInt<3>("h4"))
                  when _T_1449 :
                    reg_out <= reg_op1
                    mem_do_rinst <= mem_do_prefetch
                    cpu_state <= UInt<8>("h40")
                  else :
                    when _T_1451 :
                      node _T_1452 = or(instr_slli, instr_sll)
                      node _T_1454 = or(instr_srli, instr_srl)
                      node _T_1456 = or(instr_srai, instr_sra)
                      when _T_1452 :
                        node _T_1453 = dshl(reg_op1, UInt<3>("h4"))
                        reg_op1 <= bits(_T_1453, 31, 0)
                      else :
                        when _T_1454 :
                          node _T_1455 = dshr(reg_op1, UInt<3>("h4"))
                          reg_op1 <= _T_1455
                        else :
                          when _T_1456 :
                            node _T_1457 = asSInt(reg_op1)
                            node _T_1458 = dshr(_T_1457, UInt<3>("h4"))
                            node _T_1459 = asUInt(_T_1458)
                            reg_op1 <= _T_1459
                      node _T_1460 = sub(reg_sh, UInt<3>("h4"))
                      reg_sh <= _T_1460
                    else :
                      node _T_1461 = or(instr_slli, instr_sll)
                      node _T_1463 = or(instr_srli, instr_srl)
                      node _T_1465 = or(instr_srai, instr_sra)
                      when _T_1461 :
                        node _T_1462 = dshl(reg_op1, UInt<1>("h1"))
                        reg_op1 <= bits(_T_1462, 31, 0)
                      else :
                        when _T_1463 :
                          node _T_1464 = dshr(reg_op1, UInt<1>("h1"))
                          reg_op1 <= _T_1464
                        else :
                          when _T_1465 :
                            node _T_1466 = asSInt(reg_op1)
                            node _T_1467 = dshr(_T_1466, UInt<1>("h1"))
                            node _T_1468 = asUInt(_T_1467)
                            reg_op1 <= _T_1468
                      node _T_1469 = sub(reg_sh, UInt<1>("h1"))
                      reg_sh <= _T_1469
                else :
                  when _T_1470 :
                    when UInt<1>("h0") :
                      reg_out <= reg_op2
                    node _T_1471 = not(mem_do_prefetch)
                    node _T_1472 = or(_T_1471, mem_done)
                    when _T_1472 :
                      node _T_1473 = not(mem_do_wdata)
                      when _T_1473 :
                        when instr_sb :
                          mem_wordsize <= UInt<2>("h2")
                        else :
                          when instr_sh :
                            mem_wordsize <= UInt<1>("h1")
                          else :
                            when instr_sw :
                              mem_wordsize <= UInt<1>("h0")
                        when UInt<1>("h0") :
                          trace_valid <= UInt<1>("h1")
                          node _T_1475 = bits(irq_active, 0, 0)
                          node _T_1474 = mux(_T_1475, _T_1253, UInt<1>("h0"))
                          node _T_1477 = or(_T_1474, _T_1476)
                          node _T_1478 = add(reg_op1, decoded_imm)
                          node _T_1479 = and(_T_1478, UInt<32>("hffffffff"))
                          node _T_1480 = or(_T_1477, _T_1479)
                          trace_data <= _T_1480
                        node _T_1481 = add(reg_op1, decoded_imm)
                        reg_op1 <= _T_1481
                        set_mem_do_wdata <= UInt<1>("h1")
                      node _T_1482 = not(mem_do_prefetch)
                      node _T_1483 = and(_T_1482, mem_done)
                      when _T_1483 :
                        cpu_state <= UInt<8>("h40")
                        decoder_trigger <= UInt<1>("h1")
                        decoder_pseudo_trigger <= UInt<1>("h1")
                  else :
                    when _T_1484 :
                      latched_store <= UInt<1>("h1")
                      node _T_1485 = not(mem_do_prefetch)
                      node _T_1486 = or(_T_1485, mem_done)
                      when _T_1486 :
                        node _T_1487 = not(mem_do_rdata)
                        when _T_1487 :
                          node _T_1488 = or(instr_lb, instr_lbu)
                          node _T_1489 = or(instr_lh, instr_lhu)
                          when _T_1488 :
                            mem_wordsize <= UInt<2>("h2")
                          else :
                            when _T_1489 :
                              mem_wordsize <= UInt<1>("h1")
                            else :
                              when instr_lw :
                                mem_wordsize <= UInt<1>("h0")
                          latched_is_lu <= is_lbu_lhu_lw
                          latched_is_lh <= instr_lh
                          latched_is_lb <= instr_lb
                          when UInt<1>("h0") :
                            trace_valid <= UInt<1>("h1")
                            node _T_1491 = bits(irq_active, 0, 0)
                            node _T_1490 = mux(_T_1491, _T_1253, UInt<1>("h0"))
                            node _T_1492 = or(_T_1490, _T_1476)
                            node _T_1493 = add(reg_op1, decoded_imm)
                            node _T_1494 = and(_T_1493, UInt<32>("hffffffff"))
                            node _T_1495 = or(_T_1492, _T_1494)
                            trace_data <= _T_1495
                          node _T_1496 = add(reg_op1, decoded_imm)
                          reg_op1 <= _T_1496
                          set_mem_do_rdata <= UInt<1>("h1")
                        node _T_1497 = not(mem_do_prefetch)
                        node _T_1498 = and(_T_1497, mem_done)
                        when _T_1498 :
                          when latched_is_lu :
                            reg_out <= mem_rdata_word
                          else :
                            when latched_is_lh :
                              node _T_1499 = bits(mem_rdata_word, 15, 0)
                              node _T_1500 = asSInt(_T_1499)
                              node _T_1501 = dshl(_T_1500, UInt<5>("h10"))
                              node _T_1502 = dshr(_T_1501, UInt<5>("h10"))
                              node _T_1503 = asUInt(_T_1502)
                              reg_out <= bits(_T_1503, 31, 0)
                            else :
                              when latched_is_lb :
                                node _T_1504 = bits(mem_rdata_word, 7, 0)
                                node _T_1505 = asSInt(_T_1504)
                                node _T_1506 = dshl(_T_1505, UInt<5>("h18"))
                                node _T_1507 = dshr(_T_1506, UInt<5>("h18"))
                                node _T_1508 = asUInt(_T_1507)
                                reg_out <= bits(_T_1508, 31, 0)
                          decoder_trigger <= UInt<1>("h1")
                          decoder_pseudo_trigger <= UInt<1>("h1")
                          cpu_state <= UInt<8>("h40")
    when UInt<1>("h0") :
      node _T_1509 = or(next_irq_pending, io.irq)
      next_irq_pending <= _T_1509
      node _T_1510 = and(UInt<1>("h1"), timer)
      when _T_1510 :
        node _T_1511 = sub(timer, UInt<1>("h1"))
        node _T_1512 = eq(_T_1511, UInt<1>("h0"))
        when _T_1512 :
          node _T_1513 = bits(next_irq_pending, 31, 1)
          node _T_1514 = cat(_T_1513, UInt<1>("h1"))
          next_irq_pending <= _T_1514
    node _T_1515 = and(UInt<1>("h1"), reset)
    node _T_1516 = or(mem_do_rdata, mem_do_wdata)
    node _T_1517 = and(_T_1515, _T_1516)
    when _T_1517 :
      node _T_1518 = bits(reg_op1, 1, 0)
      node _T_1519 = and(UInt<1>("h0"), _T_1518)
      node _T_1520 = neq(_T_1519, UInt<1>("h0"))
      when _T_1520 :
        node _T_1521 = bits(irq_mask, 2, 2)
        node _T_1522 = not(_T_1521)
        node _T_1523 = and(UInt<1>("h0"), _T_1522)
        node _T_1524 = not(irq_active)
        node _T_1525 = and(_T_1523, _T_1524)
        when _T_1525 :
          node _T_1526 = bits(next_irq_pending, 31, 3)
          node _T_1527 = bits(next_irq_pending, 1, 0)
          node _T_1528 = cat(UInt<1>("h1"), _T_1527)
          node _T_1529 = cat(_T_1526, _T_1528)
          next_irq_pending <= _T_1529
        else :
          cpu_state <= UInt<8>("h80")
      node _T_1530 = bits(reg_op1, 0, 0)
      node _T_1531 = and(UInt<1>("h1"), _T_1530)
      node _T_1532 = neq(_T_1531, UInt<1>("h0"))
      when _T_1532 :
        node _T_1533 = bits(irq_mask, 2, 2)
        node _T_1534 = not(_T_1533)
        node _T_1535 = and(UInt<1>("h0"), _T_1534)
        node _T_1536 = not(irq_active)
        node _T_1537 = and(_T_1535, _T_1536)
        when _T_1537 :
          node _T_1538 = bits(next_irq_pending, 31, 3)
          node _T_1539 = bits(next_irq_pending, 1, 0)
          node _T_1540 = cat(UInt<1>("h1"), _T_1539)
          node _T_1541 = cat(_T_1538, _T_1540)
          next_irq_pending <= _T_1541
        else :
          cpu_state <= UInt<8>("h80")
    node _T_1542 = and(UInt<1>("h1"), reset)
    node _T_1543 = and(_T_1542, mem_do_rinst)
    node reg_pc_1 = bits(reg_pc, 0, 0)
    node _T_1544 = and(_T_1543, reg_pc_1)
    when _T_1544 :
      node _T_1545 = bits(irq_mask, 2, 2)
      node _T_1546 = not(_T_1545)
      node _T_1547 = and(UInt<1>("h0"), _T_1546)
      node _T_1548 = not(irq_active)
      node _T_1549 = and(_T_1547, _T_1548)
      when _T_1549 :
        node _T_1550 = bits(next_irq_pending, 31, 3)
        node _T_1551 = bits(next_irq_pending, 1, 0)
        node _T_1552 = cat(UInt<1>("h1"), _T_1551)
        node _T_1553 = cat(_T_1550, _T_1552)
        next_irq_pending <= _T_1553
      else :
        cpu_state <= UInt<8>("h80")
    node _T_1554 = not(UInt<1>("h1"))
    node _T_1555 = and(_T_1554, decoder_trigger_q)
    node _T_1556 = not(decoder_pseudo_trigger_q)
    node _T_1557 = and(_T_1555, _T_1556)
    node _T_1558 = and(_T_1557, instr_ecall_ebreak)
    when _T_1558 :
      cpu_state <= UInt<8>("h80")
    node _T_1559 = not(reset)
    node _T_1560 = or(_T_1559, mem_done)
    when _T_1560 :
      mem_do_prefetch <= UInt<1>("h0")
      mem_do_rinst <= UInt<1>("h0")
      mem_do_rdata <= UInt<1>("h0")
      mem_do_wdata <= UInt<1>("h0")
    when set_mem_do_rinst :
      mem_do_rinst <= UInt<1>("h1")
    when set_mem_do_rdata :
      mem_do_rdata <= UInt<1>("h1")
    when set_mem_do_wdata :
      mem_do_wdata <= UInt<1>("h1")
    node _T_1561 = not(UInt<1>("h1"))
    when _T_1561 :
      when UInt<1>("h0") :
        node _T_1562 = bits(reg_pc, 31, 1)
        node _T_1563 = cat(_T_1562, UInt<1>("h0"))
        reg_pc <= _T_1563
        node _T_1564 = bits(reg_pc, 31, 1)
        node _T_1565 = cat(_T_1564, UInt<1>("h0"))
        reg_next_pc <= _T_1565
      else :
        node _T_1566 = bits(reg_pc, 31, 2)
        node _T_1567 = cat(_T_1566, UInt<2>("h0"))
        reg_pc <= _T_1567
        node _T_1568 = bits(reg_next_pc, 31, 2)
        node _T_1569 = cat(_T_1568, UInt<2>("h0"))
        reg_next_pc <= _T_1569
    current_pc <= UInt<1>("h0")
