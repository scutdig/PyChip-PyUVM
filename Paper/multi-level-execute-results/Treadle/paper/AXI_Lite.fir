circuit AXI_Lite :
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

  module AXILiteSlave :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip S_AXI_AWADDR : UInt<32>, flip S_AXI_AWPROT : UInt<3>, flip S_AXI_AWVALID : UInt<1>, S_AXI_AWREADY : UInt<1>, flip S_AXI_WDATA : UInt<32>, flip S_AXI_WSTRB : UInt<4>, flip S_AXI_WVALID : UInt<1>, S_AXI_WREADY : UInt<1>, S_AXI_BRESP : UInt<2>, S_AXI_BVALID : UInt<1>, flip S_AXI_BREADY : UInt<1>, flip S_AXI_ARADDR : UInt<32>, flip S_AXI_ARPROT : UInt<3>, flip S_AXI_ARVALID : UInt<1>, S_AXI_ARREADY : UInt<1>, S_AXI_RDATA : UInt<32>, S_AXI_RRESP : UInt<2>, S_AXI_RVALID : UInt<1>, flip S_AXI_RREADY : UInt<1>}
  
    reg axi_awready : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.S_AXI_AWREADY <= axi_awready
    reg axi_wready : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.S_AXI_WREADY <= axi_wready
    reg axi_bresp : UInt<2>, clock with : 
      reset => (reset, UInt<2>("h0"))
    io.S_AXI_BRESP <= axi_bresp
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
    reg axi_rvalid : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.S_AXI_RVALID <= axi_rvalid
    node _T = not(axi_awready)
    node _T_1 = and(_T, io.S_AXI_AWVALID)
    node _T_2 = and(_T_1, io.S_AXI_WVALID)
    reg aw_en : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h1"))
    node _T_3 = and(_T_2, aw_en)
    node _T_4 = and(io.S_AXI_BREADY, axi_bvalid)
    when _T_3 :
      axi_awready <= UInt<1>("h1")
      aw_en <= UInt<1>("h0")
    else :
      when _T_4 :
        aw_en <= UInt<1>("h1")
        axi_awready <= UInt<1>("h0")
      else :
        axi_awready <= UInt<1>("h0")
    node _T_5 = not(axi_awready)
    node _T_6 = and(_T_5, io.S_AXI_AWVALID)
    node _T_7 = and(_T_6, io.S_AXI_WVALID)
    node _T_8 = and(_T_7, aw_en)
    reg axi_awaddr : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    when _T_8 :
      axi_awaddr <= io.S_AXI_AWADDR
    node _T_9 = not(axi_wready)
    node _T_10 = and(_T_9, io.S_AXI_WVALID)
    node _T_11 = and(_T_10, io.S_AXI_AWVALID)
    node _T_12 = and(_T_11, aw_en)
    when _T_12 :
      axi_wready <= UInt<1>("h1")
    else :
      axi_wready <= UInt<1>("h0")
    node _T_13 = and(axi_wready, io.S_AXI_WVALID)
    node _T_14 = and(_T_13, axi_awready)
    node slv_reg_wren = and(_T_14, io.S_AXI_AWVALID)
    reg slv_reg0 : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg slv_reg1 : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg slv_reg2 : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg slv_reg3 : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    when slv_reg_wren :
      node _T_15 = bits(axi_awaddr, 3, 2)
      node _T_16 = eq(_T_15, UInt<1>("h0"))
      node _T_25 = bits(axi_awaddr, 3, 2)
      node _T_26 = eq(_T_25, UInt<1>("h1"))
      node _T_35 = bits(axi_awaddr, 3, 2)
      node _T_36 = eq(_T_35, UInt<2>("h2"))
      node _T_45 = bits(axi_awaddr, 3, 2)
      node _T_46 = eq(_T_45, UInt<2>("h3"))
      when _T_16 :
        node _T_17 = bits(io.S_AXI_WSTRB, 0, 0)
        node _T_18 = eq(_T_17, UInt<1>("h1"))
        when _T_18 :
          slv_reg0 <= io.S_AXI_WDATA
        node _T_19 = bits(io.S_AXI_WSTRB, 1, 1)
        node _T_20 = eq(_T_19, UInt<1>("h1"))
        when _T_20 :
          slv_reg0 <= io.S_AXI_WDATA
        node _T_21 = bits(io.S_AXI_WSTRB, 2, 2)
        node _T_22 = eq(_T_21, UInt<1>("h1"))
        when _T_22 :
          slv_reg0 <= io.S_AXI_WDATA
        node _T_23 = bits(io.S_AXI_WSTRB, 3, 3)
        node _T_24 = eq(_T_23, UInt<1>("h1"))
        when _T_24 :
          slv_reg0 <= io.S_AXI_WDATA
      else :
        when _T_26 :
          node _T_27 = bits(io.S_AXI_WSTRB, 0, 0)
          node _T_28 = eq(_T_27, UInt<1>("h1"))
          when _T_28 :
            slv_reg1 <= io.S_AXI_WDATA
          node _T_29 = bits(io.S_AXI_WSTRB, 1, 1)
          node _T_30 = eq(_T_29, UInt<1>("h1"))
          when _T_30 :
            slv_reg1 <= io.S_AXI_WDATA
          node _T_31 = bits(io.S_AXI_WSTRB, 2, 2)
          node _T_32 = eq(_T_31, UInt<1>("h1"))
          when _T_32 :
            slv_reg1 <= io.S_AXI_WDATA
          node _T_33 = bits(io.S_AXI_WSTRB, 3, 3)
          node _T_34 = eq(_T_33, UInt<1>("h1"))
          when _T_34 :
            slv_reg1 <= io.S_AXI_WDATA
        else :
          when _T_36 :
            node _T_37 = bits(io.S_AXI_WSTRB, 0, 0)
            node _T_38 = eq(_T_37, UInt<1>("h1"))
            when _T_38 :
              slv_reg2 <= io.S_AXI_WDATA
            node _T_39 = bits(io.S_AXI_WSTRB, 1, 1)
            node _T_40 = eq(_T_39, UInt<1>("h1"))
            when _T_40 :
              slv_reg2 <= io.S_AXI_WDATA
            node _T_41 = bits(io.S_AXI_WSTRB, 2, 2)
            node _T_42 = eq(_T_41, UInt<1>("h1"))
            when _T_42 :
              slv_reg2 <= io.S_AXI_WDATA
            node _T_43 = bits(io.S_AXI_WSTRB, 3, 3)
            node _T_44 = eq(_T_43, UInt<1>("h1"))
            when _T_44 :
              slv_reg2 <= io.S_AXI_WDATA
          else :
            when _T_46 :
              node _T_47 = bits(io.S_AXI_WSTRB, 0, 0)
              node _T_48 = eq(_T_47, UInt<1>("h1"))
              when _T_48 :
                slv_reg3 <= io.S_AXI_WDATA
              node _T_49 = bits(io.S_AXI_WSTRB, 1, 1)
              node _T_50 = eq(_T_49, UInt<1>("h1"))
              when _T_50 :
                slv_reg3 <= io.S_AXI_WDATA
              node _T_51 = bits(io.S_AXI_WSTRB, 2, 2)
              node _T_52 = eq(_T_51, UInt<1>("h1"))
              when _T_52 :
                slv_reg3 <= io.S_AXI_WDATA
              node _T_53 = bits(io.S_AXI_WSTRB, 3, 3)
              node _T_54 = eq(_T_53, UInt<1>("h1"))
              when _T_54 :
                slv_reg3 <= io.S_AXI_WDATA
            else :
              slv_reg0 <= slv_reg0
              slv_reg1 <= slv_reg1
              slv_reg2 <= slv_reg2
              slv_reg3 <= slv_reg3
    node _T_55 = and(axi_awready, io.S_AXI_AWVALID)
    node _T_56 = not(axi_bvalid)
    node _T_57 = and(_T_55, _T_56)
    node _T_58 = and(_T_57, axi_wready)
    node _T_59 = and(_T_58, io.S_AXI_WVALID)
    when _T_59 :
      axi_bvalid <= UInt<1>("h1")
      axi_bresp <= UInt<1>("h0")
    else :
      node _T_60 = and(io.S_AXI_BREADY, axi_bvalid)
      when _T_60 :
        axi_bvalid <= UInt<1>("h0")
    node _T_61 = not(axi_arready)
    node _T_62 = and(_T_61, io.S_AXI_ARVALID)
    reg axi_araddr : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    when _T_62 :
      axi_arready <= UInt<1>("h1")
      axi_araddr <= io.S_AXI_ARADDR
    else :
      axi_arready <= UInt<1>("h0")
    node _T_63 = and(axi_arready, io.S_AXI_ARVALID)
    node _T_64 = not(axi_rvalid)
    node _T_65 = and(_T_63, _T_64)
    node _T_66 = and(axi_rvalid, io.S_AXI_RREADY)
    when _T_65 :
      axi_rvalid <= UInt<1>("h1")
      axi_rresp <= UInt<1>("h0")
    else :
      when _T_66 :
        axi_rvalid <= UInt<1>("h0")
    node _T_67 = and(axi_arready, io.S_AXI_ARVALID)
    node _T_68 = not(axi_rvalid)
    node slv_reg_rden = and(_T_67, _T_68)
    node _T_69 = bits(axi_araddr, 3, 2)
    node _T_70 = eq(UInt<1>("h0"), _T_69)
    node _T_72 = eq(UInt<1>("h1"), _T_69)
    node _T_74 = eq(UInt<2>("h2"), _T_69)
    node _T_76 = eq(UInt<2>("h3"), _T_69)
    node _T_75 = mux(_T_76, slv_reg3, UInt<1>("h0"))
    node _T_73 = mux(_T_74, slv_reg2, _T_75)
    node _T_71 = mux(_T_72, slv_reg1, _T_73)
    node reg_data_out = mux(_T_70, slv_reg0, _T_71)
    when slv_reg_rden :
      axi_rdata <= reg_data_out

  module AXI_Lite :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip INIT_AXI_TXN : UInt<1>, TXN_DONE : UInt<1>, ERROR : UInt<1>}
  
    inst master of AXILiteMaster
    master.clock <= clock
    master.reset <= reset
    master.io.INIT_AXI_TXN <= io.INIT_AXI_TXN
    io.TXN_DONE <= master.io.TXN_DONE
    io.ERROR <= master.io.ERROR
    inst slave of AXILiteSlave
    slave.clock <= clock
    slave.reset <= reset
    slave.io.S_AXI_AWADDR <= master.io.M_AXI_AWADDR
    slave.io.S_AXI_AWPROT <= master.io.M_AXI_AWPROT
    slave.io.S_AXI_AWVALID <= master.io.M_AXI_AWVALID
    master.io.M_AXI_AWREADY <= slave.io.S_AXI_AWREADY
    slave.io.S_AXI_WDATA <= master.io.M_AXI_WDATA
    slave.io.S_AXI_WSTRB <= master.io.M_AXI_WSTRB
    slave.io.S_AXI_WVALID <= master.io.M_AXI_WVALID
    master.io.M_AXI_WREADY <= slave.io.S_AXI_WREADY
    master.io.M_AXI_BRESP <= slave.io.S_AXI_BRESP
    master.io.M_AXI_BVALID <= slave.io.S_AXI_BVALID
    slave.io.S_AXI_BREADY <= master.io.M_AXI_BREADY
    slave.io.S_AXI_ARADDR <= master.io.M_AXI_ARADDR
    slave.io.S_AXI_ARPROT <= master.io.M_AXI_ARPROT
    slave.io.S_AXI_ARVALID <= master.io.M_AXI_ARVALID
    master.io.M_AXI_ARREADY <= slave.io.S_AXI_ARREADY
    master.io.M_AXI_RDATA <= slave.io.S_AXI_RDATA
    master.io.M_AXI_RRESP <= slave.io.S_AXI_RRESP
    master.io.M_AXI_RVALID <= slave.io.S_AXI_RVALID
    slave.io.S_AXI_RREADY <= master.io.M_AXI_RREADY
