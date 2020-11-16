circuit AXI_Master :
  module AXIFullMaster :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip INIT_AXI_TXN : UInt<1>, TXN_DONE : UInt<1>, ERROR : UInt<1>, M_AXI_AWID : UInt<1>, M_AXI_AWADDR : UInt<32>, M_AXI_AWLEN : UInt<8>, M_AXI_AWSIZE : UInt<3>, M_AXI_AWBURST : UInt<2>, M_AXI_AWLOCK : UInt<1>, M_AXI_AWCACHE : UInt<4>, M_AXI_AWPROT : UInt<3>, M_AXI_AWQOS : UInt<4>, M_AXI_AWUSER : UInt<1>, M_AXI_AWVALID : UInt<1>, flip M_AXI_AWREADY : UInt<1>, M_AXI_WDATA : UInt<32>, M_AXI_WSTRB : UInt<4>, M_AXI_WLAST : UInt<1>, M_AXI_WUSER : UInt<1>, M_AXI_WVALID : UInt<1>, flip M_AXI_WREADY : UInt<1>, flip M_AXI_BID : UInt<1>, flip M_AXI_BRESP : UInt<2>, flip M_AXI_BUSER : UInt<1>, flip M_AXI_BVALID : UInt<1>, M_AXI_BREADY : UInt<1>, M_AXI_ARID : UInt<1>, M_AXI_ARADDR : UInt<32>, M_AXI_ARLEN : UInt<8>, M_AXI_ARSIZE : UInt<3>, M_AXI_ARBURST : UInt<2>, M_AXI_ARLOCK : UInt<1>, M_AXI_ARCACHE : UInt<4>, M_AXI_ARPROT : UInt<3>, M_AXI_ARQOS : UInt<4>, M_AXI_ARUSER : UInt<1>, M_AXI_ARVALID : UInt<1>, flip M_AXI_ARREADY : UInt<1>, flip M_AXI_RID : UInt<1>, flip M_AXI_RDATA : UInt<32>, flip M_AXI_RRESP : UInt<2>, flip M_AXI_RLAST : UInt<1>, flip M_AXI_RUSER : UInt<1>, flip M_AXI_RVALID : UInt<1>, M_AXI_RREADY : UInt<1>}
  
    io.M_AXI_AWUSER <= UInt<1>("h1")
    io.M_AXI_WUSER <= UInt<1>("h0")
    io.M_AXI_ARUSER <= UInt<1>("h1")
    reg error_reg : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.ERROR <= error_reg
    io.M_AXI_AWID <= UInt<1>("h0")
    reg axi_awaddr : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T = add(UInt<31>("h40000000"), axi_awaddr)
    io.M_AXI_AWADDR <= _T
    io.M_AXI_AWLEN <= UInt<4>("hf")
    io.M_AXI_AWSIZE <= UInt<2>("h2")
    io.M_AXI_AWBURST <= UInt<1>("h1")
    io.M_AXI_AWLOCK <= UInt<1>("h0")
    io.M_AXI_AWCACHE <= UInt<2>("h2")
    io.M_AXI_AWPROT <= UInt<1>("h0")
    io.M_AXI_AWQOS <= UInt<1>("h0")
    io.M_AXI_AWUSER <= UInt<1>("h1")
    reg axi_awvalid : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.M_AXI_AWVALID <= axi_awvalid
    reg axi_wdata : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h1"))
    io.M_AXI_WDATA <= axi_wdata
    io.M_AXI_WSTRB <= UInt<4>("hf")
    reg axi_wlast : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.M_AXI_WLAST <= axi_wlast
    io.M_AXI_WUSER <= UInt<1>("h0")
    reg axi_wvalid : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.M_AXI_WVALID <= axi_wvalid
    reg axi_bready : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.M_AXI_BREADY <= axi_bready
    io.M_AXI_ARID <= UInt<1>("h0")
    reg axi_araddr : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_1 = add(UInt<31>("h40000000"), axi_araddr)
    io.M_AXI_ARADDR <= _T_1
    io.M_AXI_ARLEN <= UInt<4>("hf")
    io.M_AXI_ARSIZE <= UInt<2>("h2")
    io.M_AXI_ARBURST <= UInt<1>("h1")
    io.M_AXI_ARLOCK <= UInt<1>("h0")
    io.M_AXI_ARCACHE <= UInt<2>("h2")
    io.M_AXI_ARPROT <= UInt<1>("h0")
    io.M_AXI_ARQOS <= UInt<1>("h0")
    io.M_AXI_ARUSER <= UInt<1>("h0")
    reg axi_arvalid : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.M_AXI_ARVALID <= axi_arvalid
    reg axi_rready : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.M_AXI_RREADY <= axi_rready
    reg compare_done : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.TXN_DONE <= compare_done
    reg init_txn_ff : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    init_txn_ff <= io.INIT_AXI_TXN
    reg init_txn_ff2 : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    init_txn_ff2 <= init_txn_ff
    node _T_2 = not(init_txn_ff2)
    node init_txn_pulse = and(_T_2, init_txn_ff)
    node _T_3 = eq(init_txn_pulse, UInt<1>("h1"))
    reg read_index : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    reg read_mismatch : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    reg expected_rdata : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h1"))
    reg write_burst_counter : UInt<2>, clock with : 
      reset => (reset, UInt<2>("h0"))
    reg read_burst_counter : UInt<2>, clock with : 
      reset => (reset, UInt<2>("h0"))
    reg burst_write_active : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    reg writes_done : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    reg burst_read_active : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    reg reads_done : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    reg write_index : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    when _T_3 :
      axi_awvalid <= UInt<1>("h0")
      axi_awaddr <= UInt<1>("h0")
      axi_wvalid <= UInt<1>("h0")
      axi_wlast <= UInt<1>("h0")
      axi_wdata <= UInt<1>("h1")
      axi_bready <= UInt<1>("h0")
      axi_arvalid <= UInt<1>("h0")
      axi_araddr <= UInt<1>("h0")
      read_index <= UInt<1>("h0")
      axi_rready <= UInt<1>("h0")
      read_mismatch <= UInt<1>("h0")
      expected_rdata <= UInt<1>("h1")
      error_reg <= UInt<1>("h0")
      write_burst_counter <= UInt<1>("h0")
      read_burst_counter <= UInt<1>("h0")
      burst_write_active <= UInt<1>("h0")
      writes_done <= UInt<1>("h0")
      burst_read_active <= UInt<1>("h0")
      reads_done <= UInt<1>("h0")
      write_index <= UInt<1>("h0")
      read_index <= UInt<1>("h0")
    node _T_4 = not(axi_awvalid)
    reg start_single_burst_write : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    node _T_5 = and(_T_4, start_single_burst_write)
    node _T_6 = and(io.M_AXI_AWREADY, axi_awvalid)
    when _T_5 :
      axi_awvalid <= UInt<1>("h1")
    else :
      when _T_6 :
        axi_awvalid <= UInt<1>("h0")
      else :
        axi_awvalid <= axi_awvalid
    node _T_7 = and(io.M_AXI_AWREADY, axi_awvalid)
    when _T_7 :
      node _T_8 = add(axi_awaddr, UInt<7>("h40"))
      axi_awaddr <= _T_8
    else :
      axi_awaddr <= axi_awaddr
    node _T_9 = not(axi_wvalid)
    node _T_10 = and(_T_9, start_single_burst_write)
    node wnext = and(io.M_AXI_WREADY, axi_wvalid)
    node _T_11 = and(wnext, axi_wlast)
    when _T_10 :
      axi_wvalid <= UInt<1>("h1")
    else :
      when _T_11 :
        axi_wvalid <= UInt<1>("h0")
      else :
        axi_wvalid <= axi_wvalid
    node _T_12 = eq(write_index, UInt<4>("he"))
    node _T_13 = and(_T_12, UInt<1>("h1"))
    node _T_14 = and(_T_13, wnext)
    node _T_15 = or(_T_14, UInt<1>("h0"))
    node _T_16 = and(axi_wlast, UInt<1>("h0"))
    when _T_15 :
      axi_wlast <= UInt<1>("h1")
    else :
      when wnext :
        axi_wlast <= UInt<1>("h0")
      else :
        when _T_16 :
          axi_wlast <= UInt<1>("h0")
        else :
          axi_wlast <= axi_wlast
    node _T_17 = eq(start_single_burst_write, UInt<1>("h1"))
    node _T_18 = neq(write_index, UInt<4>("hf"))
    node _T_19 = and(wnext, _T_18)
    when _T_17 :
      write_index <= UInt<1>("h0")
    else :
      when _T_19 :
        node _T_20 = add(write_index, UInt<1>("h1"))
        write_index <= _T_20
      else :
        write_index <= write_index
    when wnext :
      node _T_21 = add(UInt<1>("h1"), axi_wdata)
      axi_wdata <= _T_21
    else :
      axi_wdata <= axi_wdata
    node _T_22 = not(axi_bready)
    node _T_23 = and(io.M_AXI_BVALID, _T_22)
    when _T_23 :
      axi_bready <= UInt<1>("h1")
    else :
      when axi_bready :
        axi_bready <= UInt<1>("h0")
      else :
        axi_bready <= axi_bready
    node _T_24 = not(axi_arvalid)
    reg start_single_burst_read : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    node _T_25 = and(_T_24, start_single_burst_read)
    node _T_26 = and(io.M_AXI_ARREADY, axi_arvalid)
    when _T_25 :
      axi_arvalid <= UInt<1>("h1")
    else :
      when _T_26 :
        axi_arvalid <= UInt<1>("h0")
      else :
        axi_arvalid <= axi_arvalid
    node _T_27 = and(io.M_AXI_ARREADY, axi_arvalid)
    when _T_27 :
      node _T_28 = add(axi_araddr, UInt<7>("h40"))
      axi_araddr <= _T_28
    else :
      axi_araddr <= axi_araddr
    node _T_29 = eq(start_single_burst_read, UInt<1>("h1"))
    node rnext = and(io.M_AXI_RVALID, axi_rready)
    node _T_30 = neq(read_index, UInt<4>("hf"))
    node _T_31 = and(rnext, _T_30)
    when _T_29 :
      read_index <= UInt<1>("h0")
    else :
      when _T_31 :
        node _T_32 = add(read_index, UInt<1>("h1"))
        read_index <= _T_32
      else :
        read_index <= read_index
    when io.M_AXI_RVALID :
      node _T_33 = and(io.M_AXI_RLAST, axi_rready)
      when _T_33 :
        axi_rready <= UInt<1>("h0")
      else :
        axi_rready <= UInt<1>("h1")
    node _T_34 = neq(io.M_AXI_RDATA, expected_rdata)
    node _T_35 = and(rnext, _T_34)
    when _T_35 :
      read_mismatch <= UInt<1>("h1")
    else :
      read_mismatch <= UInt<1>("h0")
    node _T_36 = and(io.M_AXI_RVALID, axi_rready)
    when _T_36 :
      node _T_37 = add(expected_rdata, UInt<1>("h1"))
      expected_rdata <= _T_37
    else :
      expected_rdata <= expected_rdata
    node _T_38 = and(axi_bready, io.M_AXI_BVALID)
    node _T_39 = bits(io.M_AXI_BRESP, 1, 1)
    node write_resp_error = and(_T_38, _T_39)
    node _T_40 = or(read_mismatch, write_resp_error)
    node _T_41 = and(axi_rready, io.M_AXI_RVALID)
    node _T_42 = bits(io.M_AXI_RRESP, 1, 1)
    node read_resp_error = and(_T_41, _T_42)
    node _T_43 = or(_T_40, read_resp_error)
    when _T_43 :
      error_reg <= UInt<1>("h1")
    else :
      error_reg <= error_reg
    node _T_44 = and(io.M_AXI_AWREADY, axi_awvalid)
    when _T_44 :
      node _T_45 = bits(write_burst_counter, 1, 1)
      node _T_46 = eq(_T_45, UInt<1>("h0"))
      when _T_46 :
        node _T_47 = add(write_burst_counter, UInt<1>("h1"))
        write_burst_counter <= _T_47
    else :
      write_burst_counter <= write_burst_counter
    node _T_48 = and(io.M_AXI_ARREADY, axi_arvalid)
    when _T_48 :
      node _T_49 = bits(read_burst_counter, 1, 1)
      node _T_50 = eq(_T_49, UInt<1>("h0"))
      when _T_50 :
        node _T_51 = add(read_burst_counter, UInt<1>("h1"))
        read_burst_counter <= _T_51
    else :
      read_burst_counter <= read_burst_counter
    reg mst_exec_state : UInt<2>, clock with : 
      reset => (reset, UInt<2>("h0"))
    node _T_52 = eq(mst_exec_state, UInt<2>("h0"))
    node _T_54 = eq(mst_exec_state, UInt<2>("h1"))
    node _T_60 = eq(mst_exec_state, UInt<2>("h2"))
    node _T_66 = eq(mst_exec_state, UInt<2>("h3"))
    when _T_52 :
      node _T_53 = eq(init_txn_pulse, UInt<1>("h1"))
      when _T_53 :
        mst_exec_state <= UInt<2>("h1")
        error_reg <= UInt<1>("h0")
        compare_done <= UInt<1>("h0")
      else :
        mst_exec_state <= UInt<2>("h0")
    else :
      when _T_54 :
        when writes_done :
          mst_exec_state <= UInt<2>("h2")
        else :
          mst_exec_state <= UInt<2>("h1")
          node _T_55 = not(axi_awvalid)
          node _T_56 = not(start_single_burst_write)
          node _T_57 = and(_T_55, _T_56)
          node _T_58 = not(burst_write_active)
          node _T_59 = and(_T_57, _T_58)
          when _T_59 :
            start_single_burst_write <= UInt<1>("h1")
          else :
            start_single_burst_write <= UInt<1>("h0")
      else :
        when _T_60 :
          when reads_done :
            mst_exec_state <= UInt<2>("h3")
          else :
            mst_exec_state <= UInt<2>("h2")
            node _T_61 = not(axi_arvalid)
            node _T_62 = not(burst_read_active)
            node _T_63 = and(_T_61, _T_62)
            node _T_64 = not(start_single_burst_read)
            node _T_65 = and(_T_63, _T_64)
            when _T_65 :
              start_single_burst_read <= UInt<1>("h1")
            else :
              start_single_burst_read <= UInt<1>("h0")
        else :
          when _T_66 :
            mst_exec_state <= UInt<2>("h0")
            compare_done <= UInt<1>("h1")
          else :
            mst_exec_state <= UInt<2>("h0")
    node _T_67 = and(io.M_AXI_BVALID, axi_bready)
    when start_single_burst_write :
      burst_write_active <= UInt<1>("h1")
    else :
      when _T_67 :
        burst_write_active <= UInt<1>("h0")
    node _T_68 = bits(write_burst_counter, 1, 1)
    node _T_69 = and(io.M_AXI_BVALID, _T_68)
    node _T_70 = and(_T_69, axi_bready)
    when _T_70 :
      writes_done <= UInt<1>("h1")
    else :
      writes_done <= writes_done
    node _T_71 = and(io.M_AXI_RVALID, axi_rready)
    node _T_72 = and(_T_71, io.M_AXI_RLAST)
    when start_single_burst_read :
      burst_read_active <= UInt<1>("h1")
    else :
      when _T_72 :
        burst_read_active <= UInt<1>("h0")
    node _T_73 = and(io.M_AXI_RVALID, axi_rready)
    node _T_74 = eq(read_index, UInt<4>("hf"))
    node _T_75 = and(_T_73, _T_74)
    node _T_76 = bits(read_burst_counter, 1, 1)
    node _T_77 = and(_T_75, _T_76)
    when _T_77 :
      reads_done <= UInt<1>("h1")
    else :
      reads_done <= reads_done

  module AXIFullSlave :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip S_AXI_AWID : UInt<1>, flip S_AXI_AWADDR : UInt<32>, flip S_AXI_AWLEN : UInt<8>, flip S_AXI_AWSIZE : UInt<3>, flip S_AXI_AWBURST : UInt<2>, flip S_AXI_AWLOCK : UInt<1>, flip S_AXI_AWCACHE : UInt<4>, flip S_AXI_AWPROT : UInt<3>, flip S_AXI_AWQOS : UInt<4>, flip S_AXI_AWUSER : UInt<1>, flip S_AXI_AWVALID : UInt<1>, S_AXI_AWREADY : UInt<1>, flip S_AXI_WDATA : UInt<32>, flip S_AXI_WSTRB : UInt<4>, flip S_AXI_WLAST : UInt<1>, flip S_AXI_WUSER : UInt<1>, flip S_AXI_WVALID : UInt<1>, S_AXI_WREADY : UInt<1>, S_AXI_BID : UInt<1>, S_AXI_BRESP : UInt<2>, S_AXI_BUSER : UInt<1>, S_AXI_BVALID : UInt<1>, flip S_AXI_BREADY : UInt<1>, flip S_AXI_ARID : UInt<1>, flip S_AXI_ARADDR : UInt<32>, flip S_AXI_ARLEN : UInt<8>, flip S_AXI_ARSIZE : UInt<3>, flip S_AXI_ARBURST : UInt<2>, flip S_AXI_ARLOCK : UInt<1>, flip S_AXI_ARCACHE : UInt<4>, flip S_AXI_ARPROT : UInt<3>, flip S_AXI_ARQOS : UInt<4>, flip S_AXI_ARUSER : UInt<1>, flip S_AXI_ARVALID : UInt<1>, S_AXI_ARREADY : UInt<1>, S_AXI_RID : UInt<1>, S_AXI_RDATA : UInt<32>, S_AXI_RRESP : UInt<2>, S_AXI_RLAST : UInt<1>, S_AXI_RUSER : UInt<1>, S_AXI_RVALID : UInt<1>, flip S_AXI_RREADY : UInt<1>}
  
    io.S_AXI_BUSER <= UInt<1>("h0")
    io.S_AXI_RUSER <= UInt<1>("h0")
    reg axi_awready : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.S_AXI_AWREADY <= axi_awready
    reg axi_wready : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.S_AXI_WREADY <= axi_wready
    reg axi_bresp : UInt<2>, clock with : 
      reset => (reset, UInt<2>("h0"))
    io.S_AXI_BRESP <= axi_bresp
    reg axi_buser : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.S_AXI_BUSER <= axi_buser
    reg axi_bvalid : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.S_AXI_BVALID <= axi_bvalid
    reg axi_arready : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.S_AXI_ARREADY <= axi_arready
    reg axi_rdata : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    io.S_AXI_RDATA <= axi_rdata
    reg axi_rresp : UInt<2>, clock with : 
      reset => (reset, UInt<2>("h0"))
    io.S_AXI_RRESP <= axi_rresp
    reg axi_rlast : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.S_AXI_RLAST <= axi_rlast
    reg axi_ruser : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.S_AXI_RUSER <= axi_ruser
    reg axi_rvalid : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.S_AXI_RVALID <= axi_rvalid
    io.S_AXI_BID <= io.S_AXI_AWID
    io.S_AXI_RID <= io.S_AXI_ARID
    node _T = not(axi_awready)
    node _T_1 = and(_T, io.S_AXI_AWVALID)
    reg axi_awv_awr_flag : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    node _T_2 = not(axi_awv_awr_flag)
    node _T_3 = and(_T_1, _T_2)
    reg axi_arv_arr_flag : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    node _T_4 = not(axi_arv_arr_flag)
    node _T_5 = and(_T_3, _T_4)
    node _T_6 = and(io.S_AXI_WLAST, axi_wready)
    when _T_5 :
      axi_awready <= UInt<1>("h1")
      axi_awv_awr_flag <= UInt<1>("h1")
    else :
      when _T_6 :
        axi_awv_awr_flag <= UInt<1>("h0")
      else :
        axi_awready <= UInt<1>("h0")
    node _T_7 = not(axi_awready)
    node _T_8 = and(_T_7, io.S_AXI_AWVALID)
    node _T_9 = not(axi_awv_awr_flag)
    node _T_10 = and(_T_8, _T_9)
    reg axi_awaddr : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg axi_awburst : UInt<2>, clock with : 
      reset => (reset, UInt<2>("h0"))
    reg axi_awlen : UInt<8>, clock with : 
      reset => (reset, UInt<8>("h0"))
    reg axi_awlen_cntr : UInt<8>, clock with : 
      reset => (reset, UInt<8>("h0"))
    node _T_12 = leq(axi_awlen_cntr, axi_awlen)
    node _T_13 = and(_T_12, axi_wready)
    node _T_14 = and(_T_13, io.S_AXI_WVALID)
    node aw_wrap_size = mul(UInt<3>("h4"), axi_awlen)
    node _T_26 = and(axi_awaddr, aw_wrap_size)
    node _T_27 = eq(_T_26, aw_wrap_size)
    node aw_wrap_en = mux(_T_27, UInt<1>("h1"), UInt<1>("h0"))
    when _T_10 :
      node _T_11 = bits(io.S_AXI_AWADDR, 31, 0)
      axi_awaddr <= _T_11
      axi_awburst <= io.S_AXI_AWBURST
      axi_awlen <= io.S_AXI_AWLEN
      axi_awlen_cntr <= UInt<1>("h0")
    else :
      when _T_14 :
        node _T_15 = add(axi_awlen_cntr, UInt<1>("h1"))
        axi_awlen_cntr <= _T_15
        node _T_17 = eq(UInt<2>("h0"), axi_awburst)
        node _T_19 = eq(UInt<2>("h1"), axi_awburst)
        node _T_20 = bits(axi_awaddr, 31, 2)
        node _T_21 = add(_T_20, UInt<1>("h1"))
        node _T_22 = cat(_T_21, UInt<2>("h0"))
        node _T_24 = eq(UInt<2>("h2"), axi_awburst)
        node _T_28 = sub(axi_awaddr, aw_wrap_size)
        node _T_29 = bits(axi_awaddr, 31, 2)
        node _T_30 = add(_T_29, UInt<1>("h1"))
        node _T_31 = cat(_T_30, UInt<2>("h0"))
        node _T_25 = mux(aw_wrap_en, _T_28, _T_31)
        node _T_32 = bits(axi_awaddr, 31, 2)
        node _T_33 = add(_T_32, UInt<1>("h1"))
        node _T_23 = mux(_T_24, _T_25, _T_33)
        node _T_18 = mux(_T_19, _T_22, _T_23)
        node _T_16 = mux(_T_17, axi_awaddr, _T_18)
        axi_awaddr <= _T_16
    node _T_34 = not(axi_wready)
    node _T_35 = and(_T_34, io.S_AXI_WVALID)
    node _T_36 = and(_T_35, axi_awv_awr_flag)
    node _T_37 = and(io.S_AXI_WLAST, axi_wready)
    when _T_36 :
      axi_wready <= UInt<1>("h1")
    else :
      when _T_37 :
        axi_wready <= UInt<1>("h0")
    node _T_38 = and(axi_awv_awr_flag, axi_wready)
    node _T_39 = and(_T_38, io.S_AXI_WVALID)
    node _T_40 = not(axi_bvalid)
    node _T_41 = and(_T_39, _T_40)
    node _T_42 = and(_T_41, io.S_AXI_WLAST)
    when _T_42 :
      axi_bvalid <= UInt<1>("h1")
      axi_bresp <= UInt<1>("h0")
    else :
      node _T_43 = and(io.S_AXI_BREADY, axi_bvalid)
      when _T_43 :
        axi_bvalid <= UInt<1>("h0")
    node _T_44 = not(axi_arready)
    node _T_45 = and(_T_44, io.S_AXI_ARVALID)
    node _T_46 = not(axi_awv_awr_flag)
    node _T_47 = and(_T_45, _T_46)
    node _T_48 = not(axi_arv_arr_flag)
    node _T_49 = and(_T_47, _T_48)
    node _T_50 = and(axi_rvalid, io.S_AXI_RREADY)
    reg axi_arlen_cntr : UInt<8>, clock with : 
      reset => (reset, UInt<8>("h0"))
    reg axi_arlen : UInt<8>, clock with : 
      reset => (reset, UInt<8>("h0"))
    node _T_51 = eq(axi_arlen_cntr, axi_arlen)
    node _T_52 = and(_T_50, _T_51)
    when _T_49 :
      axi_arready <= UInt<1>("h1")
      axi_arv_arr_flag <= UInt<1>("h1")
    else :
      when _T_52 :
        axi_arv_arr_flag <= UInt<1>("h0")
      else :
        axi_arready <= UInt<1>("h0")
    node _T_53 = not(axi_arready)
    node _T_54 = and(_T_53, io.S_AXI_ARVALID)
    node _T_55 = not(axi_arv_arr_flag)
    node _T_56 = and(_T_54, _T_55)
    reg axi_araddr : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg axi_arburst : UInt<2>, clock with : 
      reset => (reset, UInt<2>("h0"))
    node _T_58 = leq(axi_arlen_cntr, axi_arlen)
    node _T_59 = and(_T_58, axi_rvalid)
    node _T_60 = and(_T_59, io.S_AXI_RREADY)
    node ar_wrap_size = mul(UInt<3>("h4"), axi_arlen)
    node _T_72 = and(axi_araddr, ar_wrap_size)
    node _T_73 = eq(_T_72, ar_wrap_size)
    node ar_wrap_en = mux(_T_73, UInt<1>("h1"), UInt<1>("h0"))
    node _T_80 = eq(axi_arlen_cntr, axi_arlen)
    node _T_81 = not(axi_rlast)
    node _T_82 = and(_T_80, _T_81)
    node _T_83 = and(_T_82, axi_arv_arr_flag)
    when _T_56 :
      node _T_57 = bits(io.S_AXI_ARADDR, 31, 0)
      axi_araddr <= _T_57
      axi_arburst <= io.S_AXI_ARBURST
      axi_arlen <= io.S_AXI_ARLEN
      axi_arlen_cntr <= UInt<1>("h0")
      axi_rlast <= UInt<1>("h0")
    else :
      when _T_60 :
        node _T_61 = add(axi_arlen_cntr, UInt<1>("h1"))
        axi_arlen_cntr <= _T_61
        axi_rlast <= UInt<1>("h0")
        node _T_63 = eq(UInt<2>("h0"), axi_arburst)
        node _T_65 = eq(UInt<2>("h1"), axi_arburst)
        node _T_66 = bits(axi_araddr, 31, 2)
        node _T_67 = add(_T_66, UInt<1>("h1"))
        node _T_68 = cat(_T_67, UInt<2>("h0"))
        node _T_70 = eq(UInt<2>("h2"), axi_arburst)
        node _T_74 = sub(axi_araddr, ar_wrap_size)
        node _T_75 = bits(axi_araddr, 31, 2)
        node _T_76 = add(_T_75, UInt<1>("h1"))
        node _T_77 = cat(_T_76, UInt<2>("h0"))
        node _T_71 = mux(ar_wrap_en, _T_74, _T_77)
        node _T_78 = bits(axi_araddr, 31, 2)
        node _T_79 = add(_T_78, UInt<1>("h1"))
        node _T_69 = mux(_T_70, _T_71, _T_79)
        node _T_64 = mux(_T_65, _T_68, _T_69)
        node _T_62 = mux(_T_63, axi_araddr, _T_64)
        axi_araddr <= _T_62
      else :
        when _T_83 :
          axi_rlast <= UInt<1>("h1")
        else :
          when io.S_AXI_RREADY :
            axi_rlast <= UInt<1>("h0")
    node _T_84 = not(axi_rvalid)
    node _T_85 = and(axi_arv_arr_flag, _T_84)
    node _T_86 = and(axi_rvalid, io.S_AXI_RREADY)
    when _T_85 :
      axi_rvalid <= UInt<1>("h1")
      axi_rresp <= UInt<1>("h0")
    else :
      when _T_86 :
        axi_rvalid <= UInt<1>("h0")
    node mem_wren = and(axi_wready, io.S_AXI_WVALID)
    node _T_87 = and(mem_wren, io.S_AXI_WSTRB)
    reg byte_ram : UInt<32>[32], clock
    node _T_88 = bits(axi_araddr, 5, 2)
    node _T_90 = bits(axi_awaddr, 5, 2)
    node _T_89 = mux(axi_awv_awr_flag, _T_90, UInt<1>("h0"))
    node mem_address = mux(axi_arv_arr_flag, _T_88, _T_89)
    node _T_91 = bits(axi_araddr, 7, 6)
    node _T_93 = bits(axi_awaddr, 7, 6)
    node _T_92 = mux(axi_awv_awr_flag, _T_93, UInt<1>("h0"))
    node mem_select = mux(axi_arv_arr_flag, _T_91, _T_92)
    when _T_87 :
      node _T_94 = mul(mem_select, UInt<5>("h10"))
      node _T_95 = add(mem_address, _T_94)
      byte_ram[_T_95] <= io.S_AXI_WDATA
    reg mem_data_out : UInt<32>[2], clock
    node _T_96 = mul(mem_select, UInt<5>("h10"))
    node _T_97 = add(mem_address, _T_96)
    when axi_arv_arr_flag :
      mem_data_out[mem_select] <= byte_ram[_T_97]
    io.S_AXI_RDATA <= UInt<1>("h0")
    when axi_rvalid :
      io.S_AXI_RDATA <= mem_data_out[mem_select]
    else :
      io.S_AXI_RDATA <= UInt<32>("h0")

  module AXI_Master :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip INIT_AXI_TXN : UInt<1>, TXN_DONE : UInt<1>, ERROR : UInt<1>}
  
    inst master of AXIFullMaster
    master.clock <= clock
    master.reset <= reset
    master.io.INIT_AXI_TXN <= io.INIT_AXI_TXN
    io.TXN_DONE <= master.io.TXN_DONE
    io.ERROR <= master.io.ERROR
    inst slave of AXIFullSlave
    slave.clock <= clock
    slave.reset <= reset
    slave.io.S_AXI_AWID <= master.io.M_AXI_AWID
    slave.io.S_AXI_AWADDR <= master.io.M_AXI_AWADDR
    slave.io.S_AXI_AWLEN <= master.io.M_AXI_AWLEN
    slave.io.S_AXI_AWSIZE <= master.io.M_AXI_AWSIZE
    slave.io.S_AXI_AWBURST <= master.io.M_AXI_AWBURST
    slave.io.S_AXI_AWLOCK <= master.io.M_AXI_AWLOCK
    slave.io.S_AXI_AWCACHE <= master.io.M_AXI_AWCACHE
    slave.io.S_AXI_AWPROT <= master.io.M_AXI_AWPROT
    slave.io.S_AXI_AWQOS <= master.io.M_AXI_AWQOS
    slave.io.S_AXI_AWUSER <= master.io.M_AXI_AWUSER
    slave.io.S_AXI_AWVALID <= master.io.M_AXI_AWVALID
    master.io.M_AXI_AWREADY <= slave.io.S_AXI_AWREADY
    slave.io.S_AXI_WDATA <= master.io.M_AXI_WDATA
    slave.io.S_AXI_WSTRB <= master.io.M_AXI_WSTRB
    slave.io.S_AXI_WLAST <= master.io.M_AXI_WLAST
    slave.io.S_AXI_WUSER <= master.io.M_AXI_WUSER
    slave.io.S_AXI_WVALID <= master.io.M_AXI_WVALID
    master.io.M_AXI_WREADY <= slave.io.S_AXI_WREADY
    master.io.M_AXI_BID <= slave.io.S_AXI_BID
    master.io.M_AXI_BRESP <= slave.io.S_AXI_BRESP
    master.io.M_AXI_BUSER <= slave.io.S_AXI_BUSER
    master.io.M_AXI_BVALID <= slave.io.S_AXI_BVALID
    slave.io.S_AXI_BREADY <= master.io.M_AXI_BREADY
    slave.io.S_AXI_ARID <= master.io.M_AXI_ARID
    slave.io.S_AXI_ARADDR <= master.io.M_AXI_ARADDR
    slave.io.S_AXI_ARLEN <= master.io.M_AXI_ARLEN
    slave.io.S_AXI_ARSIZE <= master.io.M_AXI_ARSIZE
    slave.io.S_AXI_ARBURST <= master.io.M_AXI_ARBURST
    slave.io.S_AXI_ARLOCK <= master.io.M_AXI_ARLOCK
    slave.io.S_AXI_ARCACHE <= master.io.M_AXI_ARCACHE
    slave.io.S_AXI_ARPROT <= master.io.M_AXI_ARPROT
    slave.io.S_AXI_ARQOS <= master.io.M_AXI_ARQOS
    slave.io.S_AXI_ARUSER <= master.io.M_AXI_ARUSER
    slave.io.S_AXI_ARVALID <= master.io.M_AXI_ARVALID
    master.io.M_AXI_ARREADY <= slave.io.S_AXI_ARREADY
    master.io.M_AXI_RID <= slave.io.S_AXI_RID
    master.io.M_AXI_RDATA <= slave.io.S_AXI_RDATA
    master.io.M_AXI_RRESP <= slave.io.S_AXI_RRESP
    master.io.M_AXI_RLAST <= slave.io.S_AXI_RLAST
    master.io.M_AXI_RUSER <= slave.io.S_AXI_RUSER
    master.io.M_AXI_RVALID <= slave.io.S_AXI_RVALID
    slave.io.S_AXI_RREADY <= master.io.M_AXI_RREADY
