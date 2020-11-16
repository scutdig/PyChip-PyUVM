circuit Fetch :
  module Queue :
    input clock : Clock
    input reset : UInt<1>
    output io : {count : UInt<7>, flip enq_valid : UInt<1>, enq_ready : UInt<1>, flip enq_bits : UInt<128>, deq_valid : UInt<1>, flip deq_ready : UInt<1>, deq_bits : UInt<128>}
  
    node do_enq = and(io.enq_valid, io.enq_ready)
    cmem ram : UInt<128>[128]
    reg _T : UInt<7>, clock with : 
      reset => (reset, UInt<7>("h0"))
    when do_enq :
      write mport _T_1 = ram[_T], clock
      _T_1 <= io.enq_bits
      node _T_2 = add(_T, UInt<1>("h1"))
      _T <= _T_2
      node _T_3 = eq(_T, UInt<7>("h7f"))
      when _T_3 :
        _T <= UInt<1>("h0")
    node do_deq = and(io.deq_valid, io.deq_ready)
    reg _T_4 : UInt<7>, clock with : 
      reset => (reset, UInt<7>("h0"))
    when do_deq :
      node _T_5 = add(_T_4, UInt<1>("h1"))
      _T_4 <= _T_5
      node _T_6 = eq(_T_4, UInt<7>("h7f"))
      when _T_6 :
        _T_4 <= UInt<1>("h0")
    node _T_7 = neq(do_enq, do_deq)
    reg maybe_full : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    when _T_7 :
      maybe_full <= do_enq
    node ptr_match = eq(_T, _T_4)
    node _T_8 = not(maybe_full)
    node empty = and(ptr_match, _T_8)
    node _T_9 = not(empty)
    io.deq_valid <= _T_9
    node full = and(ptr_match, maybe_full)
    node _T_10 = not(full)
    io.enq_ready <= _T_10
    read mport _T_11 = ram[_T_4], clock
    io.deq_bits <= _T_11
    node _T_13 = and(maybe_full, ptr_match)
    node _T_12 = mux(_T_13, UInt<8>("h80"), UInt<1>("h0"))
    node ptr_diff = sub(_T, _T_4)
    node _T_14 = or(_T_12, ptr_diff)
    io.count <= bits(_T_14, 6, 0)

  module FetchDecode :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip inst : UInt<128>, isLoad : UInt<1>, isCompute : UInt<1>, isStore : UInt<1>}
  
    node _T = and(io.inst, UInt<128>("h187"))
    node _T_1 = eq(_T, UInt<128>("h0"))
    node _T_3 = and(io.inst, UInt<128>("h187"))
    node _T_4 = eq(_T_3, UInt<128>("h80"))
    node _T_6 = and(io.inst, UInt<128>("h187"))
    node _T_7 = eq(_T_6, UInt<128>("h100"))
    node _T_9 = and(io.inst, UInt<128>("h187"))
    node _T_10 = eq(_T_9, UInt<128>("h180"))
    node _T_12 = and(io.inst, UInt<128>("h7"))
    node _T_13 = eq(_T_12, UInt<128>("h1"))
    node _T_15 = and(io.inst, UInt<128>("h7"))
    node _T_16 = eq(_T_15, UInt<128>("h2"))
    node _T_18 = and(io.inst, UInt<128>("h7"))
    node _T_19 = eq(_T_18, UInt<128>("h3"))
    node _T_21 = and(io.inst, UInt<128>("h3000000000000000000000000007"))
    node _T_22 = eq(_T_21, UInt<128>("h4"))
    node _T_24 = and(io.inst, UInt<128>("h3000000000000000000000000007"))
    node _T_25 = eq(_T_24, UInt<128>("h1000000000000000000000000004"))
    node _T_27 = and(io.inst, UInt<128>("h3000000000000000000000000007"))
    node _T_28 = eq(_T_27, UInt<128>("h2000000000000000000000000004"))
    node _T_30 = and(io.inst, UInt<128>("h3000000000000000000000000007"))
    node _T_31 = eq(_T_30, UInt<128>("h3000000000000000000000000004"))
    node _T_29 = mux(_T_31, UInt<1>("h1"), UInt<1>("h0"))
    node _T_26 = mux(_T_28, UInt<1>("h1"), _T_29)
    node _T_23 = mux(_T_25, UInt<1>("h1"), _T_26)
    node _T_20 = mux(_T_22, UInt<1>("h1"), _T_23)
    node _T_17 = mux(_T_19, UInt<1>("h1"), _T_20)
    node _T_14 = mux(_T_16, UInt<1>("h1"), _T_17)
    node _T_11 = mux(_T_13, UInt<1>("h1"), _T_14)
    node _T_8 = mux(_T_10, UInt<1>("h1"), _T_11)
    node _T_5 = mux(_T_7, UInt<1>("h1"), _T_8)
    node _T_2 = mux(_T_4, UInt<1>("h1"), _T_5)
    node cs_val_inst = mux(_T_1, UInt<1>("h1"), _T_2)
    node _T_32 = and(io.inst, UInt<128>("h187"))
    node _T_33 = eq(_T_32, UInt<128>("h0"))
    node _T_35 = and(io.inst, UInt<128>("h187"))
    node _T_36 = eq(_T_35, UInt<128>("h80"))
    node _T_38 = and(io.inst, UInt<128>("h187"))
    node _T_39 = eq(_T_38, UInt<128>("h100"))
    node _T_41 = and(io.inst, UInt<128>("h187"))
    node _T_42 = eq(_T_41, UInt<128>("h180"))
    node _T_44 = and(io.inst, UInt<128>("h7"))
    node _T_45 = eq(_T_44, UInt<128>("h1"))
    node _T_47 = and(io.inst, UInt<128>("h7"))
    node _T_48 = eq(_T_47, UInt<128>("h2"))
    node _T_50 = and(io.inst, UInt<128>("h7"))
    node _T_51 = eq(_T_50, UInt<128>("h3"))
    node _T_53 = and(io.inst, UInt<128>("h3000000000000000000000000007"))
    node _T_54 = eq(_T_53, UInt<128>("h4"))
    node _T_56 = and(io.inst, UInt<128>("h3000000000000000000000000007"))
    node _T_57 = eq(_T_56, UInt<128>("h1000000000000000000000000004"))
    node _T_59 = and(io.inst, UInt<128>("h3000000000000000000000000007"))
    node _T_60 = eq(_T_59, UInt<128>("h2000000000000000000000000004"))
    node _T_62 = and(io.inst, UInt<128>("h3000000000000000000000000007"))
    node _T_63 = eq(_T_62, UInt<128>("h3000000000000000000000000004"))
    node _T_61 = mux(_T_63, UInt<3>("h2"), UInt<3>("h5"))
    node _T_58 = mux(_T_60, UInt<3>("h2"), _T_61)
    node _T_55 = mux(_T_57, UInt<3>("h2"), _T_58)
    node _T_52 = mux(_T_54, UInt<3>("h2"), _T_55)
    node _T_49 = mux(_T_51, UInt<3>("h2"), _T_52)
    node _T_46 = mux(_T_48, UInt<3>("h2"), _T_49)
    node _T_43 = mux(_T_45, UInt<3>("h1"), _T_46)
    node _T_40 = mux(_T_42, UInt<3>("h2"), _T_43)
    node _T_37 = mux(_T_39, UInt<3>("h0"), _T_40)
    node _T_34 = mux(_T_36, UInt<3>("h0"), _T_37)
    node cs_op_type = mux(_T_33, UInt<3>("h2"), _T_34)
    node _T_64 = eq(cs_op_type, UInt<3>("h0"))
    node _T_65 = and(cs_val_inst, _T_64)
    io.isLoad <= _T_65
    node _T_66 = eq(cs_op_type, UInt<3>("h2"))
    node _T_67 = and(cs_val_inst, _T_66)
    io.isCompute <= _T_67
    node _T_68 = eq(cs_op_type, UInt<3>("h1"))
    node _T_69 = and(cs_val_inst, _T_68)
    io.isStore <= _T_69

  module Fetch :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip launch : UInt<1>, flip ins_baddr : UInt<32>, flip ins_count : UInt<32>, vme_rd_cmd_valid : UInt<1>, flip vme_rd_cmd_ready : UInt<1>, vme_rd_cmd_bits_addr : UInt<32>, vme_rd_cmd_bits_len : UInt<8>, flip vme_rd_data_valid : UInt<1>, vme_rd_data_ready : UInt<1>, flip vme_rd_data_bits : UInt<64>, inst_ld_valid : UInt<1>, flip inst_ld_ready : UInt<1>, inst_ld_bits : UInt<128>, inst_co_valid : UInt<1>, flip inst_co_ready : UInt<1>, inst_co_bits : UInt<128>, inst_st_valid : UInt<1>, flip inst_st_ready : UInt<1>, inst_st_bits : UInt<128>}
  
    reg s1_launch : UInt<1>, clock
    s1_launch <= io.launch
    reg state : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    node _T = eq(state, UInt<1>("h0"))
    node _T_1 = not(s1_launch)
    node pulse = and(io.launch, _T_1)
    node _T_2 = dshl(io.ins_count, UInt<1>("h1"))
    node xsize = sub(_T_2, UInt<1>("h1"))
    reg rlen : UInt<8>, clock
    reg ilen : UInt<8>, clock
    reg xrem : UInt<32>, clock
    node _T_9 = eq(state, UInt<1>("h1"))
    node _T_10 = eq(state, UInt<2>("h2"))
    node _T_11 = eq(state, UInt<2>("h3"))
    inst inst_q of Queue
    inst_q.clock <= clock
    inst_q.reset <= reset
    when _T :
      when pulse :
        state <= UInt<1>("h1")
        node _T_3 = lt(xsize, UInt<9>("h100"))
        when _T_3 :
          rlen <= bits(xsize, 7, 0)
          node _T_4 = dshr(xsize, UInt<1>("h1"))
          ilen <= bits(_T_4, 7, 0)
          xrem <= UInt<1>("h0")
        else :
          node _T_5 = sub(UInt<9>("h100"), UInt<1>("h1"))
          rlen <= bits(_T_5, 7, 0)
          node _T_6 = dshr(UInt<9>("h100"), UInt<1>("h1"))
          node _T_7 = sub(_T_6, UInt<1>("h1"))
          ilen <= bits(_T_7, 7, 0)
          node _T_8 = sub(xsize, UInt<9>("h100"))
          xrem <= bits(_T_8, 31, 0)
    else :
      when _T_9 :
        when io.vme_rd_cmd_ready :
          state <= bits(UInt<2>("h2"), 0, 0)
      else :
        when _T_10 :
          when io.vme_rd_data_valid :
            state <= bits(UInt<2>("h3"), 0, 0)
        else :
          when _T_11 :
            when io.vme_rd_data_valid :
              node _T_12 = eq(inst_q.io.count, ilen)
              when _T_12 :
                state <= bits(UInt<3>("h4"), 0, 0)
              else :
                state <= bits(UInt<2>("h2"), 0, 0)
          else :
            node _T_13 = eq(inst_q.io.count, UInt<1>("h0"))
            when _T_13 :
              node _T_14 = eq(xrem, UInt<1>("h0"))
              node _T_15 = lt(xrem, UInt<9>("h100"))
              when _T_14 :
                state <= UInt<1>("h0")
              else :
                when _T_15 :
                  state <= UInt<1>("h1")
                  rlen <= bits(xrem, 7, 0)
                  node _T_16 = dshr(xrem, UInt<1>("h1"))
                  ilen <= bits(_T_16, 7, 0)
                  xrem <= UInt<1>("h0")
                else :
                  state <= UInt<1>("h1")
                  node _T_17 = sub(UInt<9>("h100"), UInt<1>("h1"))
                  rlen <= bits(_T_17, 7, 0)
                  node _T_18 = dshr(UInt<9>("h100"), UInt<1>("h1"))
                  node _T_19 = sub(_T_18, UInt<1>("h1"))
                  ilen <= bits(_T_19, 7, 0)
                  node _T_20 = sub(xrem, UInt<9>("h100"))
                  xrem <= _T_20
    node _T_21 = eq(state, UInt<1>("h0"))
    reg raddr : UInt<32>, clock
    node _T_22 = eq(state, UInt<3>("h4"))
    node _T_23 = eq(inst_q.io.count, UInt<1>("h0"))
    node _T_24 = and(_T_22, _T_23)
    node _T_25 = neq(xrem, UInt<1>("h0"))
    node _T_26 = and(_T_24, _T_25)
    when _T_21 :
      raddr <= io.ins_baddr
    else :
      when _T_26 :
        node _T_27 = add(raddr, UInt<12>("h800"))
        raddr <= _T_27
    node _T_28 = eq(state, UInt<1>("h1"))
    io.vme_rd_cmd_valid <= _T_28
    io.vme_rd_cmd_bits_addr <= raddr
    io.vme_rd_cmd_bits_len <= rlen
    io.vme_rd_data_ready <= inst_q.io.enq_ready
    node _T_29 = eq(state, UInt<2>("h2"))
    reg lsb : UInt<64>, clock
    when _T_29 :
      lsb <= io.vme_rd_data_bits
    node _T_30 = eq(state, UInt<2>("h3"))
    node _T_31 = and(io.vme_rd_data_valid, _T_30)
    inst_q.io.enq_valid <= _T_31
    node inst = cat(io.vme_rd_data_bits, lsb)
    inst_q.io.enq_bits <= inst
    inst dec of FetchDecode
    dec.clock <= clock
    dec.reset <= reset
    dec.io.inst <= inst_q.io.deq_bits
    node _T_32 = and(dec.io.isLoad, inst_q.io.deq_valid)
    node _T_33 = eq(state, UInt<3>("h4"))
    node _T_34 = and(_T_32, _T_33)
    io.inst_ld_valid <= _T_34
    node _T_35 = and(dec.io.isCompute, inst_q.io.deq_valid)
    node _T_36 = eq(state, UInt<3>("h4"))
    node _T_37 = and(_T_35, _T_36)
    io.inst_co_valid <= _T_37
    node _T_38 = and(dec.io.isStore, inst_q.io.deq_valid)
    node _T_39 = eq(state, UInt<3>("h4"))
    node _T_40 = and(_T_38, _T_39)
    io.inst_st_valid <= _T_40
    io.inst_ld_bits <= inst_q.io.deq_bits
    io.inst_co_bits <= inst_q.io.deq_bits
    io.inst_st_bits <= inst_q.io.deq_bits
    node _T_41 = cat(dec.io.isStore, dec.io.isLoad)
    node _T_42 = cat(dec.io.isCompute, _T_41)
    node deq_sel = asUInt(_T_42)
    node _T_43 = eq(UInt<1>("h1"), deq_sel)
    node _T_45 = eq(UInt<2>("h2"), deq_sel)
    node _T_47 = eq(UInt<3>("h4"), deq_sel)
    node _T_46 = mux(_T_47, io.inst_co_ready, UInt<1>("h0"))
    node _T_44 = mux(_T_45, io.inst_st_ready, _T_46)
    node deq_ready = mux(_T_43, io.inst_ld_ready, _T_44)
    node _T_48 = and(deq_ready, inst_q.io.deq_valid)
    node _T_49 = eq(state, UInt<3>("h4"))
    node _T_50 = and(_T_48, _T_49)
    inst_q.io.deq_ready <= _T_50
