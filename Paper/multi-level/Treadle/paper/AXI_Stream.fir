circuit AXI_Stream :
  module AXIStreamSlave :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip S_AXIS_TVALID : UInt<1>, flip S_AXIS_TDATA : UInt<32>, flip S_AXIS_TSTRB : UInt<4>, flip S_AXIS_TLAST : UInt<1>, S_AXIS_TREADY : UInt<1>, S_AXIS_FIFO0 : UInt<8>, S_AXIS_FIFO1 : UInt<8>, S_AXIS_FIFO2 : UInt<8>, S_AXIS_FIFO3 : UInt<8>, S_AXIS_FIFO4 : UInt<8>, S_AXIS_FIFO5 : UInt<8>, S_AXIS_FIFO6 : UInt<8>, S_AXIS_FIFO7 : UInt<8>}
  
    reg mst_exec_state : UInt<2>, clock with : 
      reset => (reset, UInt<2>("h0"))
    node _T = eq(mst_exec_state, UInt<2>("h1"))
    reg write_pointer : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_1 = leq(write_pointer, UInt<4>("h8"))
    node axis_tready = and(_T, _T_1)
    io.S_AXIS_TREADY <= axis_tready
    node _T_2 = eq(mst_exec_state, UInt<2>("h0"))
    node _T_3 = eq(mst_exec_state, UInt<2>("h1"))
    reg writes_done : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    when _T_2 :
      when io.S_AXIS_TVALID :
        mst_exec_state <= UInt<2>("h1")
      else :
        mst_exec_state <= UInt<2>("h0")
    else :
      when _T_3 :
        when writes_done :
          mst_exec_state <= UInt<2>("h0")
        else :
          mst_exec_state <= UInt<2>("h1")
    node _T_4 = leq(write_pointer, UInt<4>("h8"))
    node fifo_wren = and(io.S_AXIS_TVALID, axis_tready)
    when _T_4 :
      when fifo_wren :
        node _T_5 = add(write_pointer, UInt<1>("h1"))
        write_pointer <= _T_5
        writes_done <= UInt<1>("h0")
      node _T_6 = eq(write_pointer, UInt<4>("h8"))
      node _T_7 = or(_T_6, io.S_AXIS_TLAST)
      when _T_7 :
        writes_done <= UInt<1>("h1")
    reg stream_data_fifo : UInt<8>[8], clock
    when fifo_wren :
      node _T_8 = sub(write_pointer, UInt<1>("h1"))
      stream_data_fifo[_T_8] <= bits(io.S_AXIS_TDATA, 7, 0)
    io.S_AXIS_FIFO0 <= stream_data_fifo[0]
    io.S_AXIS_FIFO1 <= stream_data_fifo[1]
    io.S_AXIS_FIFO2 <= stream_data_fifo[2]
    io.S_AXIS_FIFO3 <= stream_data_fifo[3]
    io.S_AXIS_FIFO4 <= stream_data_fifo[4]
    io.S_AXIS_FIFO5 <= stream_data_fifo[5]
    io.S_AXIS_FIFO6 <= stream_data_fifo[6]
    io.S_AXIS_FIFO7 <= stream_data_fifo[7]

  module AXIStreamMaster :
    input clock : Clock
    input reset : UInt<1>
    output io : {M_AXIS_TVALID : UInt<1>, M_AXIS_TDATA : UInt<32>, M_AXIS_TSTRB : UInt<4>, M_AXIS_TLAST : UInt<1>, flip M_AXIS_TREADY : UInt<1>}
  
    reg axis_tvalid_delay : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.M_AXIS_TVALID <= axis_tvalid_delay
    reg stream_data_out : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    io.M_AXIS_TDATA <= stream_data_out
    reg axis_tlast_delay : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    io.M_AXIS_TLAST <= axis_tlast_delay
    io.M_AXIS_TSTRB <= UInt<4>("h1")
    reg mst_exec_state : UInt<2>, clock with : 
      reset => (reset, UInt<2>("h0"))
    node _T = eq(mst_exec_state, UInt<2>("h0"))
    node _T_1 = eq(mst_exec_state, UInt<2>("h1"))
    reg count : UInt<6>, clock with : 
      reset => (reset, UInt<6>("h0"))
    node _T_4 = eq(mst_exec_state, UInt<2>("h2"))
    reg tx_done : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    when _T :
      mst_exec_state <= UInt<2>("h1")
    else :
      when _T_1 :
        node _T_2 = eq(count, UInt<5>("h1f"))
        when _T_2 :
          mst_exec_state <= UInt<2>("h2")
        else :
          node _T_3 = add(count, UInt<1>("h1"))
          count <= _T_3
          mst_exec_state <= UInt<2>("h1")
      else :
        when _T_4 :
          when tx_done :
            mst_exec_state <= UInt<2>("h0")
          else :
            mst_exec_state <= UInt<2>("h2")
    node _T_5 = eq(mst_exec_state, UInt<2>("h2"))
    reg read_pointer : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_6 = lt(read_pointer, UInt<4>("h8"))
    node axis_tvalid = and(_T_5, _T_6)
    axis_tvalid_delay <= axis_tvalid
    node axis_tlast = eq(read_pointer, UInt<3>("h7"))
    axis_tlast_delay <= axis_tlast
    node _T_7 = leq(read_pointer, UInt<3>("h7"))
    node tx_en = and(io.M_AXIS_TREADY, axis_tvalid)
    when _T_7 :
      node _T_9 = eq(read_pointer, UInt<4>("h8"))
      when tx_en :
        node _T_8 = add(read_pointer, UInt<1>("h1"))
        read_pointer <= _T_8
        tx_done <= UInt<1>("h0")
      else :
        when _T_9 :
          tx_done <= UInt<1>("h1")
    when tx_en :
      node _T_10 = add(read_pointer, UInt<32>("h1"))
      stream_data_out <= _T_10

  module AXI_Stream :
    input clock : Clock
    input reset : UInt<1>
    output io : {AXIS_TVALID : UInt<1>}
  
    inst slave of AXIStreamSlave
    slave.clock <= clock
    slave.reset <= reset
    inst master of AXIStreamMaster
    master.clock <= clock
    master.reset <= reset
    slave.io.S_AXIS_TVALID <= master.io.M_AXIS_TVALID
    slave.io.S_AXIS_TDATA <= master.io.M_AXIS_TDATA
    slave.io.S_AXIS_TSTRB <= master.io.M_AXIS_TSTRB
    slave.io.S_AXIS_TLAST <= master.io.M_AXIS_TLAST
    master.io.M_AXIS_TREADY <= slave.io.S_AXIS_TREADY
    io.AXIS_TVALID <= master.io.M_AXIS_TVALID
