circuit AXIFullMaster :
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
