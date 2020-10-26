circuit AXILiteMaster :
  module AXILiteMaster :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip INIT_AXI_TXN : UInt<1>, ERROR : UInt<1>, TXN_DONE : UInt<1>, M_AXI_AWADDR : UInt<32>, M_AXI_AWPROT : UInt<3>, M_AXI_AWVALID : UInt<1>, flip M_AXI_AWREADY : UInt<1>, M_AXI_WDATA : UInt<32>, M_AXI_WSTRB : UInt<4>, M_AXI_WVALID : UInt<1>, flip M_AXI_WREADY : UInt<1>, flip M_AXI_BRESP : UInt<2>, flip M_AXI_BVALID : UInt<1>, M_AXI_BREADY : UInt<1>, M_AXI_ARADDR : UInt<32>, M_AXI_ARPROT : UInt<3>, M_AXI_ARVALID : UInt<1>, flip M_AXI_ARREADY : UInt<1>, flip M_AXI_RDATA : UInt<32>, flip M_AXI_RRESP : UInt<2>, flip M_AXI_RVALID : UInt<1>, M_AXI_RREADY : UInt<1>, STATE : UInt<2>, INDEX : UInt<3>, LAST_READ : UInt<1>, SINGLE_READ : UInt<1>, READ_ISSUED : UInt<1>}
  
    reg mst_exec_state : UInt<2>, clock with : 
      reset => (reset, UInt<2>("h0"))
    io.STATE <= mst_exec_state
    reg read_index : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    io.INDEX <= read_index
    reg last_read : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.LAST_READ <= last_read
    reg start_single_read : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.SINGLE_READ <= start_single_read
    reg read_issued : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.READ_ISSUED <= read_issued
    reg error_reg : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.ERROR <= error_reg
    reg axi_awaddr : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T = add(UInt<31>("h40000000"), axi_awaddr)
    io.M_AXI_AWADDR <= _T
    reg axi_wdata : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    io.M_AXI_WDATA <= axi_wdata
    io.M_AXI_AWPROT <= UInt<3>("h0")
    reg axi_awvalid : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.M_AXI_AWVALID <= axi_awvalid
    reg axi_wvalid : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.M_AXI_WVALID <= axi_wvalid
    io.M_AXI_WSTRB <= UInt<4>("hf")
    reg axi_bready : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.M_AXI_BREADY <= axi_bready
    reg axi_araddr : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    node _T_1 = add(UInt<31>("h40000000"), axi_araddr)
    io.M_AXI_ARADDR <= _T_1
    reg axi_arvalid : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.M_AXI_ARVALID <= axi_arvalid
    io.M_AXI_ARPROT <= UInt<3>("h1")
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
    reg start_single_write : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    reg write_index : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T_3 = and(io.M_AXI_WREADY, axi_awvalid)
    when start_single_write :
      axi_awvalid <= UInt<1>("h1")
      axi_wvalid <= UInt<1>("h1")
      node _T_2 = add(write_index, UInt<1>("h1"))
      write_index <= _T_2
    else :
      when _T_3 :
        axi_wvalid <= UInt<1>("h0")
    node _T_4 = not(init_txn_ff2)
    node init_txn_pulse = and(_T_4, init_txn_ff)
    node _T_5 = eq(init_txn_pulse, UInt<1>("h1"))
    reg expected_rdata : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg last_write : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    reg writes_done : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    reg reads_done : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    reg read_mismatch : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    when _T_5 :
      axi_awvalid <= UInt<1>("h0")
      axi_wvalid <= UInt<1>("h0")
      axi_arvalid <= UInt<1>("h0")
      write_index <= UInt<1>("h0")
      axi_bready <= UInt<1>("h0")
      read_index <= UInt<1>("h0")
      axi_rready <= UInt<1>("h0")
      axi_awaddr <= UInt<1>("h0")
      axi_wdata <= UInt<11>("h666")
      axi_araddr <= UInt<1>("h0")
      expected_rdata <= UInt<11>("h666")
      last_write <= UInt<1>("h0")
      writes_done <= UInt<1>("h0")
      last_read <= UInt<1>("h0")
      reads_done <= UInt<1>("h0")
      read_mismatch <= UInt<1>("h0")
      error_reg <= UInt<1>("h0")
    node _T_6 = and(io.M_AXI_AWREADY, axi_awvalid)
    when _T_6 :
      axi_awvalid <= UInt<1>("h0")
    node _T_7 = not(axi_bready)
    node _T_8 = and(io.M_AXI_BVALID, _T_7)
    when _T_8 :
      axi_bready <= UInt<1>("h1")
    else :
      when axi_bready :
        axi_bready <= UInt<1>("h0")
      else :
        axi_bready <= axi_bready
    reg write_resp_error : UInt<1>, clock
    node _T_9 = and(axi_bready, io.M_AXI_BVALID)
    node _T_10 = bits(io.M_AXI_BRESP, 1, 1)
    node _T_11 = and(_T_9, _T_10)
    write_resp_error <= _T_11
    node _T_13 = and(io.M_AXI_ARREADY, axi_arvalid)
    when start_single_read :
      node _T_12 = add(read_index, UInt<1>("h1"))
      read_index <= _T_12
      axi_arvalid <= UInt<1>("h1")
    else :
      when _T_13 :
        axi_arvalid <= UInt<1>("h0")
    node _T_14 = not(axi_rready)
    node _T_15 = and(io.M_AXI_RVALID, _T_14)
    when _T_15 :
      axi_rready <= UInt<1>("h1")
    else :
      when axi_rready :
        axi_rready <= UInt<1>("h0")
    reg read_resp_error : UInt<1>, clock
    node _T_16 = and(axi_rready, io.M_AXI_RVALID)
    node _T_17 = bits(io.M_AXI_RRESP, 1, 1)
    node _T_18 = and(_T_16, _T_17)
    read_resp_error <= _T_18
    node _T_19 = and(io.M_AXI_AWREADY, axi_awvalid)
    when _T_19 :
      node _T_20 = add(axi_awaddr, UInt<3>("h4"))
      axi_awaddr <= _T_20
    node _T_21 = and(io.M_AXI_WREADY, axi_wvalid)
    when _T_21 :
      node _T_22 = add(UInt<11>("h666"), write_index)
      axi_wdata <= _T_22
    node _T_23 = and(io.M_AXI_ARREADY, axi_arvalid)
    when _T_23 :
      node _T_24 = add(axi_araddr, UInt<3>("h4"))
      axi_araddr <= _T_24
    node _T_25 = and(io.M_AXI_RVALID, axi_rready)
    when _T_25 :
      node _T_26 = add(read_index, UInt<11>("h666"))
      expected_rdata <= _T_26
    node _T_27 = asUInt(mst_exec_state)
    node _T_28 = eq(_T_27, UInt<2>("h0"))
    node _T_30 = asUInt(mst_exec_state)
    node _T_31 = eq(_T_30, UInt<2>("h1"))
    reg write_issued : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    node _T_43 = asUInt(mst_exec_state)
    node _T_44 = eq(_T_43, UInt<2>("h2"))
    node _T_54 = asUInt(mst_exec_state)
    node _T_55 = eq(_T_54, UInt<2>("h3"))
    when _T_28 :
      node _T_29 = eq(init_txn_pulse, UInt<1>("h1"))
      when _T_29 :
        mst_exec_state <= UInt<2>("h1")
        error_reg <= UInt<1>("h0")
        compare_done <= UInt<1>("h0")
      else :
        mst_exec_state <= UInt<2>("h0")
    else :
      when _T_31 :
        when writes_done :
          mst_exec_state <= UInt<2>("h2")
        else :
          mst_exec_state <= UInt<2>("h1")
          node _T_32 = not(axi_awvalid)
          node _T_33 = not(axi_wvalid)
          node _T_34 = and(_T_32, _T_33)
          node _T_35 = not(io.M_AXI_BVALID)
          node _T_36 = and(_T_34, _T_35)
          node _T_37 = not(last_write)
          node _T_38 = and(_T_36, _T_37)
          node _T_39 = not(start_single_write)
          node _T_40 = and(_T_38, _T_39)
          node _T_41 = not(write_issued)
          node _T_42 = and(_T_40, _T_41)
          when _T_42 :
            start_single_write <= UInt<1>("h1")
            write_issued <= UInt<1>("h1")
          else :
            when axi_bready :
              write_issued <= UInt<1>("h0")
            else :
              start_single_write <= UInt<1>("h0")
      else :
        when _T_44 :
          when reads_done :
            mst_exec_state <= UInt<2>("h3")
          else :
            mst_exec_state <= UInt<2>("h2")
            node _T_45 = not(axi_arvalid)
            node _T_46 = not(io.M_AXI_RVALID)
            node _T_47 = and(_T_45, _T_46)
            node _T_48 = not(last_read)
            node _T_49 = and(_T_47, _T_48)
            node _T_50 = not(start_single_read)
            node _T_51 = and(_T_49, _T_50)
            node _T_52 = not(read_issued)
            node _T_53 = and(_T_51, _T_52)
            when _T_53 :
              start_single_read <= UInt<1>("h1")
              read_issued <= UInt<1>("h1")
            else :
              when axi_rready :
                read_issued <= UInt<1>("h0")
              else :
                start_single_read <= UInt<1>("h0")
        else :
          when _T_55 :
            mst_exec_state <= UInt<2>("h0")
            compare_done <= UInt<1>("h1")
          else :
            mst_exec_state <= UInt<2>("h0")
    node _T_56 = eq(write_index, UInt<3>("h4"))
    node _T_57 = and(_T_56, io.M_AXI_AWREADY)
    when _T_57 :
      last_write <= UInt<1>("h1")
    else :
      last_write <= last_write
    node _T_58 = and(last_write, io.M_AXI_BVALID)
    node _T_59 = and(_T_58, axi_bready)
    when _T_59 :
      writes_done <= UInt<1>("h1")
    else :
      writes_done <= writes_done
    node _T_60 = eq(read_index, UInt<3>("h4"))
    node _T_61 = and(_T_60, io.M_AXI_ARREADY)
    when _T_61 :
      last_read <= UInt<1>("h1")
    else :
      last_read <= last_read
    node _T_62 = and(last_read, io.M_AXI_RVALID)
    node _T_63 = and(_T_62, axi_rready)
    when _T_63 :
      reads_done <= UInt<1>("h1")
    else :
      reads_done <= reads_done
    node _T_64 = and(io.M_AXI_RVALID, axi_rready)
    node _T_65 = neq(io.M_AXI_RDATA, expected_rdata)
    node _T_66 = and(_T_64, _T_65)
    when _T_66 :
      read_mismatch <= UInt<1>("h1")
    else :
      read_mismatch <= read_mismatch
    node _T_67 = or(read_mismatch, write_resp_error)
    node _T_68 = or(_T_67, read_resp_error)
    when _T_68 :
      error_reg <= UInt<1>("h1")
    else :
      error_reg <= error_reg
