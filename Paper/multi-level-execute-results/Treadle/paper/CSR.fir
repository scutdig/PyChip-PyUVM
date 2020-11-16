circuit CSR :
  module CSR :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip ex_Mem_Read : UInt<1>, flip ex_Mem_Write : UInt<1>, flip ex_branch_addr : UInt<32>, flip ex_addr : UInt<32>, flip ex_inst : UInt<32>, flip csr_data_in : UInt<32>, flip ex_pc_4 : UInt<32>, flip ex_Write_CSR : UInt<3>, flip ex_is_Illegal : UInt<1>, flip ex_Branch : UInt<1>, flip PC_Sel : UInt<2>, flip new_addr : UInt<32>, flip pc_recover : UInt<32>, flip Bubble : UInt<1>, flip if_inst : UInt<32>, flip is_Waiting_Resolved : UInt<1>, mepc_out : UInt<32>, mtvec_out : UInt<32>, csr_data_out : UInt<32>, IF_ID_Flush : UInt<1>, ID_EX_Flush : UInt<1>, is_Exception : UInt<2>, Exception_Flush : UInt<1>}
  
    node _T_1 = eq(io.ex_Write_CSR, UInt<3>("h1"))
    node _T_2 = eq(io.ex_Write_CSR, UInt<3>("h3"))
    node _T_3 = or(_T_1, _T_2)
    node _T_4 = eq(io.ex_Write_CSR, UInt<3>("h5"))
    node _T_5 = or(_T_3, _T_4)
    node _T_6 = eq(io.ex_Write_CSR, UInt<3>("h2"))
    node _T_7 = or(_T_5, _T_6)
    node _T_8 = eq(io.ex_Write_CSR, UInt<3>("h4"))
    node _T_9 = or(_T_7, _T_8)
    node _T_10 = eq(io.ex_Write_CSR, UInt<3>("h6"))
    node is_CSR_Instruction = or(_T_9, _T_10)
    node csr_addr = bits(io.ex_inst, 31, 20)
    node _T_12 = eq(UInt<12>("h300"), csr_addr)
    reg MPP : UInt<2>, clock with : 
      reset => (reset, UInt<2>("h3"))
    node _T_13 = cat(MPP, UInt<3>("h0"))
    node _T_14 = cat(UInt<19>("h0"), _T_13)
    reg MPIE : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h1"))
    node _T_15 = cat(MPIE, UInt<3>("h0"))
    reg MIE : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h1"))
    node _T_16 = cat(MIE, UInt<3>("h0"))
    node _T_17 = cat(_T_15, _T_16)
    node mstatus = cat(_T_14, _T_17)
    node _T_19 = eq(UInt<12>("h341"), csr_addr)
    reg mepc : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_21 = eq(UInt<12>("h305"), csr_addr)
    reg mtvec : UInt<32>, clock with : 
      reset => (reset, UInt<32>("ha4"))
    node _T_23 = eq(UInt<12>("h343"), csr_addr)
    reg mtval : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_25 = eq(UInt<12>("h304"), csr_addr)
    reg MEIE : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h1"))
    node _T_26 = cat(MEIE, UInt<3>("h0"))
    node _T_27 = cat(UInt<20>("h0"), _T_26)
    reg MTIE : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h1"))
    node _T_28 = cat(MTIE, UInt<3>("h0"))
    reg MSIE : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h1"))
    node _T_29 = cat(MSIE, UInt<3>("h0"))
    node _T_30 = cat(_T_28, _T_29)
    node mie = cat(_T_27, _T_30)
    node _T_32 = eq(UInt<12>("h344"), csr_addr)
    reg MEIP : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    node _T_33 = cat(MEIP, UInt<3>("h0"))
    node _T_34 = cat(UInt<20>("h0"), _T_33)
    reg MTIP : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    node _T_35 = cat(MTIP, UInt<3>("h0"))
    reg MSIP : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    node _T_36 = cat(MSIP, UInt<3>("h0"))
    node _T_37 = cat(_T_35, _T_36)
    node mip = cat(_T_34, _T_37)
    node _T_39 = eq(UInt<12>("h342"), csr_addr)
    reg mcause : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_41 = eq(UInt<12>("hb00"), csr_addr)
    reg mcycle : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_43 = eq(UInt<12>("hb80"), csr_addr)
    reg mcycleh : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_45 = eq(UInt<12>("h700"), csr_addr)
    reg mtime : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_47 = eq(UInt<12>("h701"), csr_addr)
    reg mtimeh : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_49 = eq(UInt<12>("hb02"), csr_addr)
    reg minstret : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_51 = eq(UInt<12>("hb82"), csr_addr)
    reg minstreth : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_53 = eq(UInt<12>("h702"), csr_addr)
    reg mtimecmp : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_55 = eq(UInt<12>("h703"), csr_addr)
    reg mtimecmph : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_54 = mux(_T_55, mtimecmph, UInt<1>("h0"))
    node _T_52 = mux(_T_53, mtimecmp, _T_54)
    node _T_50 = mux(_T_51, minstreth, _T_52)
    node _T_48 = mux(_T_49, minstret, _T_50)
    node _T_46 = mux(_T_47, mtimeh, _T_48)
    node _T_44 = mux(_T_45, mtime, _T_46)
    node _T_42 = mux(_T_43, mcycleh, _T_44)
    node _T_40 = mux(_T_41, mcycle, _T_42)
    node _T_38 = mux(_T_39, mcause, _T_40)
    node _T_31 = mux(_T_32, mip, _T_38)
    node _T_24 = mux(_T_25, mie, _T_31)
    node _T_22 = mux(_T_23, mtval, _T_24)
    node _T_20 = mux(_T_21, mtvec, _T_22)
    node _T_18 = mux(_T_19, mepc, _T_20)
    node _T_11 = mux(_T_12, mstatus, _T_18)
    node _T = mux(is_CSR_Instruction, _T_11, UInt<1>("h0"))
    node _T_56 = asUInt(_T)
    io.csr_data_out <= _T_56
    node mcycle_overflow = eq(mcycle, UInt<32>("hffffffff"))
    node mcycleh_overflow = eq(mcycleh, UInt<32>("hffffffff"))
    node _T_57 = and(mcycle_overflow, mcycleh_overflow)
    when _T_57 :
      mcycle <= UInt<32>("h0")
      mcycleh <= UInt<32>("h0")
    else :
      when mcycle_overflow :
        mcycle <= UInt<32>("h0")
        node _T_58 = add(mcycleh, UInt<1>("h1"))
        mcycleh <= _T_58
      else :
        node _T_59 = add(mcycle, UInt<1>("h1"))
        mcycle <= _T_59
    node mtime_overflow = eq(mtime, UInt<32>("hffffffff"))
    node mtimeh_overflow = eq(mtimeh, UInt<32>("hffffffff"))
    node _T_60 = and(mtime_overflow, mtimeh_overflow)
    node _T_61 = cat(mtimeh, mtime)
    node time = asUInt(_T_61)
    node _T_62 = cat(mtimecmph, mtimecmp)
    node timecmp = asUInt(_T_62)
    node _T_63 = eq(MIE, UInt<1>("h1"))
    node _T_64 = and(io.ex_branch_addr, UInt<32>("h3"))
    node _T_65 = neq(_T_64, UInt<32>("h0"))
    node _T_66 = eq(io.ex_Branch, UInt<1>("h1"))
    node InstructionAddressMisaligned_con = and(_T_65, _T_66)
    node IllegalInstruction_con = bits(io.ex_is_Illegal, 0, 0)
    node _T_67 = or(InstructionAddressMisaligned_con, IllegalInstruction_con)
    node _T_68 = and(io.ex_addr, UInt<32>("h3"))
    node _T_69 = neq(_T_68, UInt<32>("h0"))
    node _T_70 = eq(io.ex_Mem_Read, UInt<1>("h1"))
    node LoadAddressMisaligned_con = and(_T_69, _T_70)
    node _T_71 = or(_T_67, LoadAddressMisaligned_con)
    node _T_72 = and(io.ex_addr, UInt<32>("h3"))
    node _T_73 = neq(_T_72, UInt<32>("h0"))
    node _T_74 = eq(io.ex_Mem_Write, UInt<1>("h1"))
    node StoreAddressMisaligned_con = and(_T_73, _T_74)
    node is_a_exception = or(_T_71, StoreAddressMisaligned_con)
    node _T_75 = neq(timecmp, UInt<1>("h0"))
    node _T_76 = gt(time, timecmp)
    node is_a_interrupt = and(_T_75, _T_76)
    node enable_interrupt = eq(MTIE, UInt<1>("h1"))
    node _T_77 = and(is_a_interrupt, enable_interrupt)
    node _T_78 = or(is_a_exception, _T_77)
    node _T_79 = and(_T_63, _T_78)
    node pipeline_not_stable = eq(io.is_Waiting_Resolved, UInt<1>("h1"))
    node _T_80 = not(pipeline_not_stable)
    node enable_exception = and(_T_79, _T_80)
    node _T_81 = and(timecmp, enable_exception)
    node _T_82 = gt(time, _T_81)
    node _T_83 = or(_T_60, _T_82)
    when _T_83 :
      mtime <= UInt<32>("h0")
      mtimeh <= UInt<32>("h0")
    else :
      when mtime_overflow :
        mtime <= UInt<32>("h0")
        node _T_84 = add(mtimeh, UInt<1>("h1"))
        mtimeh <= _T_84
      else :
        node _T_85 = add(mtime, UInt<1>("h1"))
        mtime <= _T_85
    node _T_86 = neq(io.ex_inst, UInt<32>("h13"))
    node _T_87 = neq(io.ex_inst, UInt<32>("h30200073"))
    node _T_88 = and(_T_86, _T_87)
    node minstret_overflow = eq(minstret, UInt<32>("hffffffff"))
    node minstreth_overflow = eq(minstreth, UInt<32>("hffffffff"))
    when _T_88 :
      node _T_89 = and(minstret_overflow, minstreth_overflow)
      when _T_89 :
        minstret <= UInt<32>("h0")
        minstreth <= UInt<32>("h0")
      else :
        when minstret_overflow :
          minstret <= UInt<32>("h0")
          node _T_90 = add(minstreth, UInt<1>("h1"))
          minstreth <= _T_90
        else :
          node _T_91 = add(minstret, UInt<1>("h1"))
          minstret <= _T_91
    io.mepc_out <= mepc
    io.mtvec_out <= mtvec
    node _T_92 = or(InstructionAddressMisaligned_con, IllegalInstruction_con)
    node _T_93 = or(_T_92, LoadAddressMisaligned_con)
    node _T_94 = or(_T_93, StoreAddressMisaligned_con)
    node exception_raise = or(_T_94, is_a_interrupt)
    node _T_95 = and(exception_raise, enable_exception)
    node _T_96 = eq(io.ex_Write_CSR, UInt<3>("h7"))
    node _T_97 = or(_T_95, _T_96)
    when _T_97 :
      io.IF_ID_Flush <= UInt<1>("h1")
      io.ID_EX_Flush <= UInt<1>("h1")
    else :
      io.IF_ID_Flush <= UInt<1>("h0")
      io.ID_EX_Flush <= UInt<1>("h0")
    node _T_98 = and(exception_raise, enable_exception)
    node _T_99 = eq(io.ex_Write_CSR, UInt<3>("h7"))
    when _T_98 :
      io.is_Exception <= UInt<2>("h2")
    else :
      when _T_99 :
        io.is_Exception <= UInt<2>("h1")
      else :
        io.is_Exception <= UInt<2>("h0")
    node _T_100 = and(exception_raise, enable_exception)
    node _T_101 = and(_T_100, is_a_exception)
    when _T_101 :
      io.Exception_Flush <= UInt<1>("h1")
    else :
      io.Exception_Flush <= UInt<1>("h0")
    node _T_103 = eq(UInt<12>("h300"), csr_addr)
    node _T_105 = eq(UInt<12>("h341"), csr_addr)
    node _T_107 = eq(UInt<12>("h305"), csr_addr)
    node _T_109 = eq(UInt<12>("h343"), csr_addr)
    node _T_111 = eq(UInt<12>("h304"), csr_addr)
    node _T_113 = eq(UInt<12>("h344"), csr_addr)
    node _T_115 = eq(UInt<12>("h342"), csr_addr)
    node _T_117 = eq(UInt<12>("hb00"), csr_addr)
    node _T_119 = eq(UInt<12>("hb80"), csr_addr)
    node _T_121 = eq(UInt<12>("h700"), csr_addr)
    node _T_123 = eq(UInt<12>("h701"), csr_addr)
    node _T_125 = eq(UInt<12>("hb02"), csr_addr)
    node _T_127 = eq(UInt<12>("hb82"), csr_addr)
    node _T_129 = eq(UInt<12>("h702"), csr_addr)
    node _T_131 = eq(UInt<12>("h703"), csr_addr)
    node _T_130 = mux(_T_131, mtimecmph, UInt<1>("h0"))
    node _T_128 = mux(_T_129, mtimecmp, _T_130)
    node _T_126 = mux(_T_127, minstreth, _T_128)
    node _T_124 = mux(_T_125, minstret, _T_126)
    node _T_122 = mux(_T_123, mtimeh, _T_124)
    node _T_120 = mux(_T_121, mtime, _T_122)
    node _T_118 = mux(_T_119, mcycleh, _T_120)
    node _T_116 = mux(_T_117, mcycle, _T_118)
    node _T_114 = mux(_T_115, mcause, _T_116)
    node _T_112 = mux(_T_113, mip, _T_114)
    node _T_110 = mux(_T_111, mie, _T_112)
    node _T_108 = mux(_T_109, mtval, _T_110)
    node _T_106 = mux(_T_107, mtvec, _T_108)
    node _T_104 = mux(_T_105, mepc, _T_106)
    node _T_102 = mux(_T_103, mstatus, _T_104)
    io.csr_data_out <= _T_102
    reg backup_recover_addr : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_133 = neq(io.PC_Sel, UInt<1>("h0"))
    node _T_134 = eq(UInt<2>("h0"), io.PC_Sel)
    node _T_135 = sub(io.ex_pc_4, UInt<3>("h4"))
    node normal_pc = mux(is_a_exception, _T_135, io.ex_pc_4)
    node _T_137 = eq(UInt<2>("h2"), io.PC_Sel)
    node _T_139 = eq(UInt<2>("h1"), io.PC_Sel)
    node _T_138 = mux(_T_139, io.pc_recover, normal_pc)
    node _T_136 = mux(_T_137, io.new_addr, _T_138)
    node _mepc = mux(_T_134, normal_pc, _T_136)
    node _T_132 = mux(_T_133, _mepc, backup_recover_addr)
    backup_recover_addr <= _T_132
    node _T_140 = neq(io.PC_Sel, UInt<1>("h0"))
    reg is_predict_recover : UInt<2>, clock with : 
      reset => (reset, UInt<2>("h0"))
    node _T_141 = neq(is_predict_recover, UInt<1>("h0"))
    when _T_140 :
      is_predict_recover <= UInt<1>("h1")
    else :
      when _T_141 :
        node _T_142 = eq(is_predict_recover, UInt<2>("h2"))
        node _T_143 = bits(io.Bubble, 0, 0)
        when _T_142 :
          is_predict_recover <= UInt<1>("h0")
        else :
          when _T_143 :
            is_predict_recover <= is_predict_recover
          else :
            node _T_144 = add(is_predict_recover, UInt<1>("h1"))
            is_predict_recover <= _T_144
      else :
        is_predict_recover <= UInt<1>("h0")
    node _T_145 = and(exception_raise, enable_exception)
    node _T_155 = eq(io.ex_Write_CSR, UInt<3>("h7"))
    node _T_157 = eq(UInt<3>("h1"), io.ex_Write_CSR)
    node _T_159 = eq(UInt<3>("h2"), io.ex_Write_CSR)
    node _T_160 = bits(io.ex_inst, 19, 15)
    node _T_161 = cat(UInt<27>("h0"), _T_160)
    node imm_data = asUInt(_T_161)
    node _T_163 = eq(UInt<3>("h3"), io.ex_Write_CSR)
    node s_val = or(io.csr_data_out, io.csr_data_in)
    node _T_165 = eq(UInt<3>("h4"), io.ex_Write_CSR)
    node si_val = or(io.csr_data_out, imm_data)
    node _T_167 = eq(UInt<3>("h5"), io.ex_Write_CSR)
    node _T_168 = not(io.csr_data_in)
    node _T_169 = asUInt(_T_168)
    node c_val = and(io.csr_data_out, _T_169)
    node _T_171 = eq(UInt<3>("h6"), io.ex_Write_CSR)
    node _T_172 = not(imm_data)
    node _T_173 = asUInt(_T_172)
    node ci_val = and(io.csr_data_out, _T_173)
    node _T_170 = mux(_T_171, ci_val, UInt<1>("h0"))
    node _T_166 = mux(_T_167, c_val, _T_170)
    node _T_164 = mux(_T_165, si_val, _T_166)
    node _T_162 = mux(_T_163, s_val, _T_164)
    node _T_158 = mux(_T_159, imm_data, _T_162)
    node csr_write_data = mux(_T_157, io.csr_data_in, _T_158)
    when _T_145 :
      mepc <= normal_pc
      node _T_150 = mux(is_a_interrupt, UInt<3>("h7"), mcause)
      node _T_149 = mux(StoreAddressMisaligned_con, UInt<3>("h6"), _T_150)
      node _T_148 = mux(LoadAddressMisaligned_con, UInt<3>("h4"), _T_149)
      node _T_147 = mux(IllegalInstruction_con, UInt<2>("h2"), _T_148)
      node _T_146 = mux(InstructionAddressMisaligned_con, UInt<1>("h0"), _T_147)
      mcause <= _T_146
      node _T_154 = or(LoadAddressMisaligned_con, StoreAddressMisaligned_con)
      node _T_153 = mux(_T_154, io.ex_addr, mtval)
      node _T_152 = mux(IllegalInstruction_con, io.ex_inst, _T_153)
      node _T_151 = mux(InstructionAddressMisaligned_con, io.ex_branch_addr, _T_152)
      mtval <= _T_151
      MPIE <= MIE
      MPP <= UInt<2>("h3")
      MIE <= UInt<1>("h0")
    else :
      when _T_155 :
        MIE <= MPIE
        MPIE <= UInt<1>("h1")
        MPP <= UInt<2>("h3")
      else :
        when is_CSR_Instruction :
          node _T_156 = eq(csr_addr, UInt<12>("h300"))
          node _T_177 = eq(csr_addr, UInt<12>("h341"))
          node _T_178 = eq(csr_addr, UInt<12>("h342"))
          node _T_179 = eq(csr_addr, UInt<12>("h344"))
          node _T_183 = eq(csr_addr, UInt<12>("h304"))
          node _T_187 = eq(csr_addr, UInt<12>("hb00"))
          node _T_188 = eq(csr_addr, UInt<12>("hb80"))
          node _T_189 = eq(csr_addr, UInt<12>("hb02"))
          node _T_190 = eq(csr_addr, UInt<12>("hb82"))
          node _T_191 = eq(csr_addr, UInt<12>("h702"))
          node _T_192 = eq(csr_addr, UInt<12>("h703"))
          when _T_156 :
            node _T_174 = bits(csr_write_data, 3, 3)
            MIE <= _T_174
            node _T_175 = bits(csr_write_data, 7, 7)
            MPIE <= _T_175
            node _T_176 = bits(csr_write_data, 12, 11)
            MPP <= _T_176
          else :
            when _T_177 :
              mepc <= csr_write_data
            else :
              when _T_178 :
                mcause <= csr_write_data
              else :
                when _T_179 :
                  node _T_180 = bits(csr_write_data, 3, 3)
                  MSIP <= _T_180
                  node _T_181 = bits(csr_write_data, 7, 7)
                  MTIP <= _T_181
                  node _T_182 = bits(csr_write_data, 11, 11)
                  MEIP <= _T_182
                else :
                  when _T_183 :
                    node _T_184 = bits(csr_write_data, 3, 3)
                    MSIE <= _T_184
                    node _T_185 = bits(csr_write_data, 7, 7)
                    MTIE <= _T_185
                    node _T_186 = bits(csr_write_data, 11, 11)
                    MEIE <= _T_186
                  else :
                    when _T_187 :
                      mcycle <= csr_write_data
                    else :
                      when _T_188 :
                        mcycleh <= csr_write_data
                      else :
                        when _T_189 :
                          minstret <= csr_write_data
                        else :
                          when _T_190 :
                            minstreth <= csr_write_data
                          else :
                            when _T_191 :
                              mtimecmp <= csr_write_data
                            else :
                              when _T_192 :
                                mtimecmph <= csr_write_data
