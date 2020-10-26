circuit Top :
  module Mac :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_1 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_1 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_1 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_1
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_1
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_2 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_2 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_2 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_2
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_2
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_3 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_3 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_3 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_3
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_3
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_4 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_4 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_4 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_4
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_4
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_5 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_5 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_5 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_5
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_5
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module ConvC1 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w_in : UInt<400>[6], flip bias : UInt<96>, flip rdy : UInt<1>, d_out : UInt<16>[6], v : UInt<1>}
  
    inst _T of Node
    _T.clock <= clock
    _T.reset <= reset
    _T.io.d_in <= io.d_in
    _T.io.w <= io.w_in[0]
    _T.io.rdy <= io.rdy
    _T.io.bias <= bits(io.bias, 15, 0)
    io.d_out[0] <= _T.io.d_out
    inst _T_1 of Node_1
    _T_1.clock <= clock
    _T_1.reset <= reset
    _T_1.io.d_in <= io.d_in
    _T_1.io.w <= io.w_in[1]
    _T_1.io.rdy <= io.rdy
    _T_1.io.bias <= bits(io.bias, 15, 0)
    io.d_out[1] <= _T_1.io.d_out
    inst _T_2 of Node_2
    _T_2.clock <= clock
    _T_2.reset <= reset
    _T_2.io.d_in <= io.d_in
    _T_2.io.w <= io.w_in[2]
    _T_2.io.rdy <= io.rdy
    _T_2.io.bias <= bits(io.bias, 15, 0)
    io.d_out[2] <= _T_2.io.d_out
    inst _T_3 of Node_3
    _T_3.clock <= clock
    _T_3.reset <= reset
    _T_3.io.d_in <= io.d_in
    _T_3.io.w <= io.w_in[3]
    _T_3.io.rdy <= io.rdy
    _T_3.io.bias <= bits(io.bias, 15, 0)
    io.d_out[3] <= _T_3.io.d_out
    inst _T_4 of Node_4
    _T_4.clock <= clock
    _T_4.reset <= reset
    _T_4.io.d_in <= io.d_in
    _T_4.io.w <= io.w_in[4]
    _T_4.io.rdy <= io.rdy
    _T_4.io.bias <= bits(io.bias, 15, 0)
    io.d_out[4] <= _T_4.io.d_out
    inst _T_5 of Node_5
    _T_5.clock <= clock
    _T_5.reset <= reset
    _T_5.io.d_in <= io.d_in
    _T_5.io.w <= io.w_in[5]
    _T_5.io.rdy <= io.rdy
    _T_5.io.bias <= bits(io.bias, 15, 0)
    io.d_out[5] <= _T_5.io.d_out
    node _T_6 = and(_T.io.v, _T_1.io.v)
    node _T_7 = and(_T_6, _T_2.io.v)
    node _T_8 = and(_T_7, _T_3.io.v)
    node _T_9 = and(_T_8, _T_4.io.v)
    node _T_10 = and(_T_9, _T_5.io.v)
    io.v <= _T_10

  module MaxPool :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_1 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_1 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_1
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_2 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_2 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_2
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_3 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_3 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_3
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_4 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_4 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_4
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_5 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_5 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_5
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module Tile :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w_in : UInt<400>[6], flip bias : UInt<96>, flip rdy : UInt<1>, v : UInt<1>, d_out : UInt<16>[6], pool_v : UInt<1>}
  
    inst convc1 of ConvC1
    convc1.clock <= clock
    convc1.reset <= reset
    convc1.io.d_in <= io.d_in
    convc1.io.w_in[0] <= io.w_in[0]
    convc1.io.w_in[1] <= io.w_in[1]
    convc1.io.w_in[2] <= io.w_in[2]
    convc1.io.w_in[3] <= io.w_in[3]
    convc1.io.w_in[4] <= io.w_in[4]
    convc1.io.w_in[5] <= io.w_in[5]
    convc1.io.bias <= io.bias
    convc1.io.rdy <= io.rdy
    io.v <= convc1.io.v
    inst _T of MaxPool1
    _T.clock <= clock
    _T.reset <= reset
    _T.io.d_in <= convc1.io.d_out[0]
    _T.io.rdy <= convc1.io.v
    io.d_out[0] <= _T.io.d_out
    inst _T_1 of MaxPool1_1
    _T_1.clock <= clock
    _T_1.reset <= reset
    _T_1.io.d_in <= convc1.io.d_out[1]
    _T_1.io.rdy <= convc1.io.v
    io.d_out[1] <= _T_1.io.d_out
    inst _T_2 of MaxPool1_2
    _T_2.clock <= clock
    _T_2.reset <= reset
    _T_2.io.d_in <= convc1.io.d_out[2]
    _T_2.io.rdy <= convc1.io.v
    io.d_out[2] <= _T_2.io.d_out
    inst _T_3 of MaxPool1_3
    _T_3.clock <= clock
    _T_3.reset <= reset
    _T_3.io.d_in <= convc1.io.d_out[3]
    _T_3.io.rdy <= convc1.io.v
    io.d_out[3] <= _T_3.io.d_out
    inst _T_4 of MaxPool1_4
    _T_4.clock <= clock
    _T_4.reset <= reset
    _T_4.io.d_in <= convc1.io.d_out[4]
    _T_4.io.rdy <= convc1.io.v
    io.d_out[4] <= _T_4.io.d_out
    inst _T_5 of MaxPool1_5
    _T_5.clock <= clock
    _T_5.reset <= reset
    _T_5.io.d_in <= convc1.io.d_out[5]
    _T_5.io.rdy <= convc1.io.v
    io.d_out[5] <= _T_5.io.d_out
    node _T_6 = and(_T.io.v, _T_1.io.v)
    node _T_7 = and(_T_6, _T_2.io.v)
    node _T_8 = and(_T_7, _T_3.io.v)
    node _T_9 = and(_T_8, _T_4.io.v)
    node _T_10 = and(_T_9, _T_5.io.v)
    io.pool_v <= _T_10

  module ShiftRegister :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module Mac_6 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_6 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_6 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_6
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_6
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_7 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_7 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_7 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_7
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_7
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_8 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_8 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_8 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_8
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_8
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_9 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_9 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_9 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_9
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_9
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_10 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_10 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_10 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_10
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_10
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_11 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_11 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_11 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_11
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_11
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_12 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_12 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_12 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_12
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_12
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_13 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_13 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_13 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_13
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_13
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_14 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_14 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_14 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_14
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_14
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_15 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_15 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_15 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_15
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_15
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_16 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_16 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_16 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_16
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_16
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_17 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_17 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_17 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_17
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_17
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_18 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_18 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_18 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_18
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_18
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_19 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_19 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_19 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_19
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_19
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_20 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_20 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_20 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_20
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_20
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_21 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_21 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_21 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_21
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_21
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module ConvC3 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w_in : UInt<400>[16], flip bias : UInt<256>, flip rdy : UInt<1>, d_out : UInt<16>[16], v : UInt<1>}
  
    inst _T of Node_6
    _T.clock <= clock
    _T.reset <= reset
    _T.io.d_in <= io.d_in
    _T.io.w <= io.w_in[0]
    _T.io.rdy <= io.rdy
    _T.io.bias <= bits(io.bias, 15, 0)
    io.d_out[0] <= _T.io.d_out
    inst _T_1 of Node_7
    _T_1.clock <= clock
    _T_1.reset <= reset
    _T_1.io.d_in <= io.d_in
    _T_1.io.w <= io.w_in[1]
    _T_1.io.rdy <= io.rdy
    _T_1.io.bias <= bits(io.bias, 15, 0)
    io.d_out[1] <= _T_1.io.d_out
    inst _T_2 of Node_8
    _T_2.clock <= clock
    _T_2.reset <= reset
    _T_2.io.d_in <= io.d_in
    _T_2.io.w <= io.w_in[2]
    _T_2.io.rdy <= io.rdy
    _T_2.io.bias <= bits(io.bias, 15, 0)
    io.d_out[2] <= _T_2.io.d_out
    inst _T_3 of Node_9
    _T_3.clock <= clock
    _T_3.reset <= reset
    _T_3.io.d_in <= io.d_in
    _T_3.io.w <= io.w_in[3]
    _T_3.io.rdy <= io.rdy
    _T_3.io.bias <= bits(io.bias, 15, 0)
    io.d_out[3] <= _T_3.io.d_out
    inst _T_4 of Node_10
    _T_4.clock <= clock
    _T_4.reset <= reset
    _T_4.io.d_in <= io.d_in
    _T_4.io.w <= io.w_in[4]
    _T_4.io.rdy <= io.rdy
    _T_4.io.bias <= bits(io.bias, 15, 0)
    io.d_out[4] <= _T_4.io.d_out
    inst _T_5 of Node_11
    _T_5.clock <= clock
    _T_5.reset <= reset
    _T_5.io.d_in <= io.d_in
    _T_5.io.w <= io.w_in[5]
    _T_5.io.rdy <= io.rdy
    _T_5.io.bias <= bits(io.bias, 15, 0)
    io.d_out[5] <= _T_5.io.d_out
    inst _T_6 of Node_12
    _T_6.clock <= clock
    _T_6.reset <= reset
    _T_6.io.d_in <= io.d_in
    _T_6.io.w <= io.w_in[6]
    _T_6.io.rdy <= io.rdy
    _T_6.io.bias <= bits(io.bias, 15, 0)
    io.d_out[6] <= _T_6.io.d_out
    inst _T_7 of Node_13
    _T_7.clock <= clock
    _T_7.reset <= reset
    _T_7.io.d_in <= io.d_in
    _T_7.io.w <= io.w_in[7]
    _T_7.io.rdy <= io.rdy
    _T_7.io.bias <= bits(io.bias, 15, 0)
    io.d_out[7] <= _T_7.io.d_out
    inst _T_8 of Node_14
    _T_8.clock <= clock
    _T_8.reset <= reset
    _T_8.io.d_in <= io.d_in
    _T_8.io.w <= io.w_in[8]
    _T_8.io.rdy <= io.rdy
    _T_8.io.bias <= bits(io.bias, 15, 0)
    io.d_out[8] <= _T_8.io.d_out
    inst _T_9 of Node_15
    _T_9.clock <= clock
    _T_9.reset <= reset
    _T_9.io.d_in <= io.d_in
    _T_9.io.w <= io.w_in[9]
    _T_9.io.rdy <= io.rdy
    _T_9.io.bias <= bits(io.bias, 15, 0)
    io.d_out[9] <= _T_9.io.d_out
    inst _T_10 of Node_16
    _T_10.clock <= clock
    _T_10.reset <= reset
    _T_10.io.d_in <= io.d_in
    _T_10.io.w <= io.w_in[10]
    _T_10.io.rdy <= io.rdy
    _T_10.io.bias <= bits(io.bias, 15, 0)
    io.d_out[10] <= _T_10.io.d_out
    inst _T_11 of Node_17
    _T_11.clock <= clock
    _T_11.reset <= reset
    _T_11.io.d_in <= io.d_in
    _T_11.io.w <= io.w_in[11]
    _T_11.io.rdy <= io.rdy
    _T_11.io.bias <= bits(io.bias, 15, 0)
    io.d_out[11] <= _T_11.io.d_out
    inst _T_12 of Node_18
    _T_12.clock <= clock
    _T_12.reset <= reset
    _T_12.io.d_in <= io.d_in
    _T_12.io.w <= io.w_in[12]
    _T_12.io.rdy <= io.rdy
    _T_12.io.bias <= bits(io.bias, 15, 0)
    io.d_out[12] <= _T_12.io.d_out
    inst _T_13 of Node_19
    _T_13.clock <= clock
    _T_13.reset <= reset
    _T_13.io.d_in <= io.d_in
    _T_13.io.w <= io.w_in[13]
    _T_13.io.rdy <= io.rdy
    _T_13.io.bias <= bits(io.bias, 15, 0)
    io.d_out[13] <= _T_13.io.d_out
    inst _T_14 of Node_20
    _T_14.clock <= clock
    _T_14.reset <= reset
    _T_14.io.d_in <= io.d_in
    _T_14.io.w <= io.w_in[14]
    _T_14.io.rdy <= io.rdy
    _T_14.io.bias <= bits(io.bias, 15, 0)
    io.d_out[14] <= _T_14.io.d_out
    inst _T_15 of Node_21
    _T_15.clock <= clock
    _T_15.reset <= reset
    _T_15.io.d_in <= io.d_in
    _T_15.io.w <= io.w_in[15]
    _T_15.io.rdy <= io.rdy
    _T_15.io.bias <= bits(io.bias, 15, 0)
    io.d_out[15] <= _T_15.io.d_out
    node _T_16 = and(_T.io.v, _T_1.io.v)
    node _T_17 = and(_T_16, _T_2.io.v)
    node _T_18 = and(_T_17, _T_3.io.v)
    node _T_19 = and(_T_18, _T_4.io.v)
    node _T_20 = and(_T_19, _T_5.io.v)
    node _T_21 = and(_T_20, _T_6.io.v)
    node _T_22 = and(_T_21, _T_7.io.v)
    node _T_23 = and(_T_22, _T_8.io.v)
    node _T_24 = and(_T_23, _T_9.io.v)
    node _T_25 = and(_T_24, _T_10.io.v)
    node _T_26 = and(_T_25, _T_11.io.v)
    node _T_27 = and(_T_26, _T_12.io.v)
    node _T_28 = and(_T_27, _T_13.io.v)
    node _T_29 = and(_T_28, _T_14.io.v)
    node _T_30 = and(_T_29, _T_15.io.v)
    io.v <= _T_30

  module ShiftRegister_1 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module Mac_22 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_22 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_22 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_22
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_22
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_23 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_23 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_23 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_23
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_23
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_24 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_24 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_24 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_24
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_24
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_25 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_25 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_25 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_25
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_25
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_26 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_26 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_26 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_26
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_26
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_27 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_27 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_27 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_27
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_27
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_28 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_28 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_28 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_28
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_28
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_29 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_29 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_29 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_29
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_29
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_30 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_30 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_30 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_30
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_30
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_31 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_31 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_31 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_31
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_31
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_32 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_32 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_32 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_32
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_32
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_33 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_33 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_33 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_33
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_33
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_34 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_34 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_34 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_34
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_34
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_35 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_35 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_35 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_35
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_35
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_36 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_36 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_36 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_36
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_36
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_37 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_37 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_37 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_37
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_37
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module ConvC3_1 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w_in : UInt<400>[16], flip bias : UInt<256>, flip rdy : UInt<1>, d_out : UInt<16>[16], v : UInt<1>}
  
    inst _T of Node_22
    _T.clock <= clock
    _T.reset <= reset
    _T.io.d_in <= io.d_in
    _T.io.w <= io.w_in[0]
    _T.io.rdy <= io.rdy
    _T.io.bias <= bits(io.bias, 15, 0)
    io.d_out[0] <= _T.io.d_out
    inst _T_1 of Node_23
    _T_1.clock <= clock
    _T_1.reset <= reset
    _T_1.io.d_in <= io.d_in
    _T_1.io.w <= io.w_in[1]
    _T_1.io.rdy <= io.rdy
    _T_1.io.bias <= bits(io.bias, 15, 0)
    io.d_out[1] <= _T_1.io.d_out
    inst _T_2 of Node_24
    _T_2.clock <= clock
    _T_2.reset <= reset
    _T_2.io.d_in <= io.d_in
    _T_2.io.w <= io.w_in[2]
    _T_2.io.rdy <= io.rdy
    _T_2.io.bias <= bits(io.bias, 15, 0)
    io.d_out[2] <= _T_2.io.d_out
    inst _T_3 of Node_25
    _T_3.clock <= clock
    _T_3.reset <= reset
    _T_3.io.d_in <= io.d_in
    _T_3.io.w <= io.w_in[3]
    _T_3.io.rdy <= io.rdy
    _T_3.io.bias <= bits(io.bias, 15, 0)
    io.d_out[3] <= _T_3.io.d_out
    inst _T_4 of Node_26
    _T_4.clock <= clock
    _T_4.reset <= reset
    _T_4.io.d_in <= io.d_in
    _T_4.io.w <= io.w_in[4]
    _T_4.io.rdy <= io.rdy
    _T_4.io.bias <= bits(io.bias, 15, 0)
    io.d_out[4] <= _T_4.io.d_out
    inst _T_5 of Node_27
    _T_5.clock <= clock
    _T_5.reset <= reset
    _T_5.io.d_in <= io.d_in
    _T_5.io.w <= io.w_in[5]
    _T_5.io.rdy <= io.rdy
    _T_5.io.bias <= bits(io.bias, 15, 0)
    io.d_out[5] <= _T_5.io.d_out
    inst _T_6 of Node_28
    _T_6.clock <= clock
    _T_6.reset <= reset
    _T_6.io.d_in <= io.d_in
    _T_6.io.w <= io.w_in[6]
    _T_6.io.rdy <= io.rdy
    _T_6.io.bias <= bits(io.bias, 15, 0)
    io.d_out[6] <= _T_6.io.d_out
    inst _T_7 of Node_29
    _T_7.clock <= clock
    _T_7.reset <= reset
    _T_7.io.d_in <= io.d_in
    _T_7.io.w <= io.w_in[7]
    _T_7.io.rdy <= io.rdy
    _T_7.io.bias <= bits(io.bias, 15, 0)
    io.d_out[7] <= _T_7.io.d_out
    inst _T_8 of Node_30
    _T_8.clock <= clock
    _T_8.reset <= reset
    _T_8.io.d_in <= io.d_in
    _T_8.io.w <= io.w_in[8]
    _T_8.io.rdy <= io.rdy
    _T_8.io.bias <= bits(io.bias, 15, 0)
    io.d_out[8] <= _T_8.io.d_out
    inst _T_9 of Node_31
    _T_9.clock <= clock
    _T_9.reset <= reset
    _T_9.io.d_in <= io.d_in
    _T_9.io.w <= io.w_in[9]
    _T_9.io.rdy <= io.rdy
    _T_9.io.bias <= bits(io.bias, 15, 0)
    io.d_out[9] <= _T_9.io.d_out
    inst _T_10 of Node_32
    _T_10.clock <= clock
    _T_10.reset <= reset
    _T_10.io.d_in <= io.d_in
    _T_10.io.w <= io.w_in[10]
    _T_10.io.rdy <= io.rdy
    _T_10.io.bias <= bits(io.bias, 15, 0)
    io.d_out[10] <= _T_10.io.d_out
    inst _T_11 of Node_33
    _T_11.clock <= clock
    _T_11.reset <= reset
    _T_11.io.d_in <= io.d_in
    _T_11.io.w <= io.w_in[11]
    _T_11.io.rdy <= io.rdy
    _T_11.io.bias <= bits(io.bias, 15, 0)
    io.d_out[11] <= _T_11.io.d_out
    inst _T_12 of Node_34
    _T_12.clock <= clock
    _T_12.reset <= reset
    _T_12.io.d_in <= io.d_in
    _T_12.io.w <= io.w_in[12]
    _T_12.io.rdy <= io.rdy
    _T_12.io.bias <= bits(io.bias, 15, 0)
    io.d_out[12] <= _T_12.io.d_out
    inst _T_13 of Node_35
    _T_13.clock <= clock
    _T_13.reset <= reset
    _T_13.io.d_in <= io.d_in
    _T_13.io.w <= io.w_in[13]
    _T_13.io.rdy <= io.rdy
    _T_13.io.bias <= bits(io.bias, 15, 0)
    io.d_out[13] <= _T_13.io.d_out
    inst _T_14 of Node_36
    _T_14.clock <= clock
    _T_14.reset <= reset
    _T_14.io.d_in <= io.d_in
    _T_14.io.w <= io.w_in[14]
    _T_14.io.rdy <= io.rdy
    _T_14.io.bias <= bits(io.bias, 15, 0)
    io.d_out[14] <= _T_14.io.d_out
    inst _T_15 of Node_37
    _T_15.clock <= clock
    _T_15.reset <= reset
    _T_15.io.d_in <= io.d_in
    _T_15.io.w <= io.w_in[15]
    _T_15.io.rdy <= io.rdy
    _T_15.io.bias <= bits(io.bias, 15, 0)
    io.d_out[15] <= _T_15.io.d_out
    node _T_16 = and(_T.io.v, _T_1.io.v)
    node _T_17 = and(_T_16, _T_2.io.v)
    node _T_18 = and(_T_17, _T_3.io.v)
    node _T_19 = and(_T_18, _T_4.io.v)
    node _T_20 = and(_T_19, _T_5.io.v)
    node _T_21 = and(_T_20, _T_6.io.v)
    node _T_22 = and(_T_21, _T_7.io.v)
    node _T_23 = and(_T_22, _T_8.io.v)
    node _T_24 = and(_T_23, _T_9.io.v)
    node _T_25 = and(_T_24, _T_10.io.v)
    node _T_26 = and(_T_25, _T_11.io.v)
    node _T_27 = and(_T_26, _T_12.io.v)
    node _T_28 = and(_T_27, _T_13.io.v)
    node _T_29 = and(_T_28, _T_14.io.v)
    node _T_30 = and(_T_29, _T_15.io.v)
    io.v <= _T_30

  module ShiftRegister_2 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module Mac_38 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_38 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_38 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_38
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_38
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_39 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_39 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_39 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_39
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_39
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_40 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_40 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_40 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_40
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_40
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_41 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_41 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_41 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_41
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_41
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_42 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_42 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_42 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_42
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_42
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_43 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_43 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_43 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_43
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_43
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_44 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_44 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_44 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_44
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_44
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_45 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_45 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_45 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_45
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_45
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_46 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_46 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_46 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_46
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_46
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_47 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_47 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_47 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_47
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_47
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_48 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_48 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_48 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_48
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_48
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_49 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_49 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_49 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_49
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_49
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_50 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_50 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_50 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_50
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_50
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_51 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_51 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_51 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_51
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_51
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_52 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_52 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_52 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_52
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_52
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_53 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_53 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_53 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_53
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_53
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module ConvC3_2 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w_in : UInt<400>[16], flip bias : UInt<256>, flip rdy : UInt<1>, d_out : UInt<16>[16], v : UInt<1>}
  
    inst _T of Node_38
    _T.clock <= clock
    _T.reset <= reset
    _T.io.d_in <= io.d_in
    _T.io.w <= io.w_in[0]
    _T.io.rdy <= io.rdy
    _T.io.bias <= bits(io.bias, 15, 0)
    io.d_out[0] <= _T.io.d_out
    inst _T_1 of Node_39
    _T_1.clock <= clock
    _T_1.reset <= reset
    _T_1.io.d_in <= io.d_in
    _T_1.io.w <= io.w_in[1]
    _T_1.io.rdy <= io.rdy
    _T_1.io.bias <= bits(io.bias, 15, 0)
    io.d_out[1] <= _T_1.io.d_out
    inst _T_2 of Node_40
    _T_2.clock <= clock
    _T_2.reset <= reset
    _T_2.io.d_in <= io.d_in
    _T_2.io.w <= io.w_in[2]
    _T_2.io.rdy <= io.rdy
    _T_2.io.bias <= bits(io.bias, 15, 0)
    io.d_out[2] <= _T_2.io.d_out
    inst _T_3 of Node_41
    _T_3.clock <= clock
    _T_3.reset <= reset
    _T_3.io.d_in <= io.d_in
    _T_3.io.w <= io.w_in[3]
    _T_3.io.rdy <= io.rdy
    _T_3.io.bias <= bits(io.bias, 15, 0)
    io.d_out[3] <= _T_3.io.d_out
    inst _T_4 of Node_42
    _T_4.clock <= clock
    _T_4.reset <= reset
    _T_4.io.d_in <= io.d_in
    _T_4.io.w <= io.w_in[4]
    _T_4.io.rdy <= io.rdy
    _T_4.io.bias <= bits(io.bias, 15, 0)
    io.d_out[4] <= _T_4.io.d_out
    inst _T_5 of Node_43
    _T_5.clock <= clock
    _T_5.reset <= reset
    _T_5.io.d_in <= io.d_in
    _T_5.io.w <= io.w_in[5]
    _T_5.io.rdy <= io.rdy
    _T_5.io.bias <= bits(io.bias, 15, 0)
    io.d_out[5] <= _T_5.io.d_out
    inst _T_6 of Node_44
    _T_6.clock <= clock
    _T_6.reset <= reset
    _T_6.io.d_in <= io.d_in
    _T_6.io.w <= io.w_in[6]
    _T_6.io.rdy <= io.rdy
    _T_6.io.bias <= bits(io.bias, 15, 0)
    io.d_out[6] <= _T_6.io.d_out
    inst _T_7 of Node_45
    _T_7.clock <= clock
    _T_7.reset <= reset
    _T_7.io.d_in <= io.d_in
    _T_7.io.w <= io.w_in[7]
    _T_7.io.rdy <= io.rdy
    _T_7.io.bias <= bits(io.bias, 15, 0)
    io.d_out[7] <= _T_7.io.d_out
    inst _T_8 of Node_46
    _T_8.clock <= clock
    _T_8.reset <= reset
    _T_8.io.d_in <= io.d_in
    _T_8.io.w <= io.w_in[8]
    _T_8.io.rdy <= io.rdy
    _T_8.io.bias <= bits(io.bias, 15, 0)
    io.d_out[8] <= _T_8.io.d_out
    inst _T_9 of Node_47
    _T_9.clock <= clock
    _T_9.reset <= reset
    _T_9.io.d_in <= io.d_in
    _T_9.io.w <= io.w_in[9]
    _T_9.io.rdy <= io.rdy
    _T_9.io.bias <= bits(io.bias, 15, 0)
    io.d_out[9] <= _T_9.io.d_out
    inst _T_10 of Node_48
    _T_10.clock <= clock
    _T_10.reset <= reset
    _T_10.io.d_in <= io.d_in
    _T_10.io.w <= io.w_in[10]
    _T_10.io.rdy <= io.rdy
    _T_10.io.bias <= bits(io.bias, 15, 0)
    io.d_out[10] <= _T_10.io.d_out
    inst _T_11 of Node_49
    _T_11.clock <= clock
    _T_11.reset <= reset
    _T_11.io.d_in <= io.d_in
    _T_11.io.w <= io.w_in[11]
    _T_11.io.rdy <= io.rdy
    _T_11.io.bias <= bits(io.bias, 15, 0)
    io.d_out[11] <= _T_11.io.d_out
    inst _T_12 of Node_50
    _T_12.clock <= clock
    _T_12.reset <= reset
    _T_12.io.d_in <= io.d_in
    _T_12.io.w <= io.w_in[12]
    _T_12.io.rdy <= io.rdy
    _T_12.io.bias <= bits(io.bias, 15, 0)
    io.d_out[12] <= _T_12.io.d_out
    inst _T_13 of Node_51
    _T_13.clock <= clock
    _T_13.reset <= reset
    _T_13.io.d_in <= io.d_in
    _T_13.io.w <= io.w_in[13]
    _T_13.io.rdy <= io.rdy
    _T_13.io.bias <= bits(io.bias, 15, 0)
    io.d_out[13] <= _T_13.io.d_out
    inst _T_14 of Node_52
    _T_14.clock <= clock
    _T_14.reset <= reset
    _T_14.io.d_in <= io.d_in
    _T_14.io.w <= io.w_in[14]
    _T_14.io.rdy <= io.rdy
    _T_14.io.bias <= bits(io.bias, 15, 0)
    io.d_out[14] <= _T_14.io.d_out
    inst _T_15 of Node_53
    _T_15.clock <= clock
    _T_15.reset <= reset
    _T_15.io.d_in <= io.d_in
    _T_15.io.w <= io.w_in[15]
    _T_15.io.rdy <= io.rdy
    _T_15.io.bias <= bits(io.bias, 15, 0)
    io.d_out[15] <= _T_15.io.d_out
    node _T_16 = and(_T.io.v, _T_1.io.v)
    node _T_17 = and(_T_16, _T_2.io.v)
    node _T_18 = and(_T_17, _T_3.io.v)
    node _T_19 = and(_T_18, _T_4.io.v)
    node _T_20 = and(_T_19, _T_5.io.v)
    node _T_21 = and(_T_20, _T_6.io.v)
    node _T_22 = and(_T_21, _T_7.io.v)
    node _T_23 = and(_T_22, _T_8.io.v)
    node _T_24 = and(_T_23, _T_9.io.v)
    node _T_25 = and(_T_24, _T_10.io.v)
    node _T_26 = and(_T_25, _T_11.io.v)
    node _T_27 = and(_T_26, _T_12.io.v)
    node _T_28 = and(_T_27, _T_13.io.v)
    node _T_29 = and(_T_28, _T_14.io.v)
    node _T_30 = and(_T_29, _T_15.io.v)
    io.v <= _T_30

  module ShiftRegister_3 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module Mac_54 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_54 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_54 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_54
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_54
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_55 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_55 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_55 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_55
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_55
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_56 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_56 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_56 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_56
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_56
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_57 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_57 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_57 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_57
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_57
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_58 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_58 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_58 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_58
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_58
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_59 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_59 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_59 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_59
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_59
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_60 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_60 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_60 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_60
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_60
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_61 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_61 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_61 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_61
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_61
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_62 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_62 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_62 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_62
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_62
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_63 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_63 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_63 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_63
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_63
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_64 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_64 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_64 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_64
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_64
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_65 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_65 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_65 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_65
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_65
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_66 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_66 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_66 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_66
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_66
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_67 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_67 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_67 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_67
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_67
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_68 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_68 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_68 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_68
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_68
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_69 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_69 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_69 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_69
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_69
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module ConvC3_3 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w_in : UInt<400>[16], flip bias : UInt<256>, flip rdy : UInt<1>, d_out : UInt<16>[16], v : UInt<1>}
  
    inst _T of Node_54
    _T.clock <= clock
    _T.reset <= reset
    _T.io.d_in <= io.d_in
    _T.io.w <= io.w_in[0]
    _T.io.rdy <= io.rdy
    _T.io.bias <= bits(io.bias, 15, 0)
    io.d_out[0] <= _T.io.d_out
    inst _T_1 of Node_55
    _T_1.clock <= clock
    _T_1.reset <= reset
    _T_1.io.d_in <= io.d_in
    _T_1.io.w <= io.w_in[1]
    _T_1.io.rdy <= io.rdy
    _T_1.io.bias <= bits(io.bias, 15, 0)
    io.d_out[1] <= _T_1.io.d_out
    inst _T_2 of Node_56
    _T_2.clock <= clock
    _T_2.reset <= reset
    _T_2.io.d_in <= io.d_in
    _T_2.io.w <= io.w_in[2]
    _T_2.io.rdy <= io.rdy
    _T_2.io.bias <= bits(io.bias, 15, 0)
    io.d_out[2] <= _T_2.io.d_out
    inst _T_3 of Node_57
    _T_3.clock <= clock
    _T_3.reset <= reset
    _T_3.io.d_in <= io.d_in
    _T_3.io.w <= io.w_in[3]
    _T_3.io.rdy <= io.rdy
    _T_3.io.bias <= bits(io.bias, 15, 0)
    io.d_out[3] <= _T_3.io.d_out
    inst _T_4 of Node_58
    _T_4.clock <= clock
    _T_4.reset <= reset
    _T_4.io.d_in <= io.d_in
    _T_4.io.w <= io.w_in[4]
    _T_4.io.rdy <= io.rdy
    _T_4.io.bias <= bits(io.bias, 15, 0)
    io.d_out[4] <= _T_4.io.d_out
    inst _T_5 of Node_59
    _T_5.clock <= clock
    _T_5.reset <= reset
    _T_5.io.d_in <= io.d_in
    _T_5.io.w <= io.w_in[5]
    _T_5.io.rdy <= io.rdy
    _T_5.io.bias <= bits(io.bias, 15, 0)
    io.d_out[5] <= _T_5.io.d_out
    inst _T_6 of Node_60
    _T_6.clock <= clock
    _T_6.reset <= reset
    _T_6.io.d_in <= io.d_in
    _T_6.io.w <= io.w_in[6]
    _T_6.io.rdy <= io.rdy
    _T_6.io.bias <= bits(io.bias, 15, 0)
    io.d_out[6] <= _T_6.io.d_out
    inst _T_7 of Node_61
    _T_7.clock <= clock
    _T_7.reset <= reset
    _T_7.io.d_in <= io.d_in
    _T_7.io.w <= io.w_in[7]
    _T_7.io.rdy <= io.rdy
    _T_7.io.bias <= bits(io.bias, 15, 0)
    io.d_out[7] <= _T_7.io.d_out
    inst _T_8 of Node_62
    _T_8.clock <= clock
    _T_8.reset <= reset
    _T_8.io.d_in <= io.d_in
    _T_8.io.w <= io.w_in[8]
    _T_8.io.rdy <= io.rdy
    _T_8.io.bias <= bits(io.bias, 15, 0)
    io.d_out[8] <= _T_8.io.d_out
    inst _T_9 of Node_63
    _T_9.clock <= clock
    _T_9.reset <= reset
    _T_9.io.d_in <= io.d_in
    _T_9.io.w <= io.w_in[9]
    _T_9.io.rdy <= io.rdy
    _T_9.io.bias <= bits(io.bias, 15, 0)
    io.d_out[9] <= _T_9.io.d_out
    inst _T_10 of Node_64
    _T_10.clock <= clock
    _T_10.reset <= reset
    _T_10.io.d_in <= io.d_in
    _T_10.io.w <= io.w_in[10]
    _T_10.io.rdy <= io.rdy
    _T_10.io.bias <= bits(io.bias, 15, 0)
    io.d_out[10] <= _T_10.io.d_out
    inst _T_11 of Node_65
    _T_11.clock <= clock
    _T_11.reset <= reset
    _T_11.io.d_in <= io.d_in
    _T_11.io.w <= io.w_in[11]
    _T_11.io.rdy <= io.rdy
    _T_11.io.bias <= bits(io.bias, 15, 0)
    io.d_out[11] <= _T_11.io.d_out
    inst _T_12 of Node_66
    _T_12.clock <= clock
    _T_12.reset <= reset
    _T_12.io.d_in <= io.d_in
    _T_12.io.w <= io.w_in[12]
    _T_12.io.rdy <= io.rdy
    _T_12.io.bias <= bits(io.bias, 15, 0)
    io.d_out[12] <= _T_12.io.d_out
    inst _T_13 of Node_67
    _T_13.clock <= clock
    _T_13.reset <= reset
    _T_13.io.d_in <= io.d_in
    _T_13.io.w <= io.w_in[13]
    _T_13.io.rdy <= io.rdy
    _T_13.io.bias <= bits(io.bias, 15, 0)
    io.d_out[13] <= _T_13.io.d_out
    inst _T_14 of Node_68
    _T_14.clock <= clock
    _T_14.reset <= reset
    _T_14.io.d_in <= io.d_in
    _T_14.io.w <= io.w_in[14]
    _T_14.io.rdy <= io.rdy
    _T_14.io.bias <= bits(io.bias, 15, 0)
    io.d_out[14] <= _T_14.io.d_out
    inst _T_15 of Node_69
    _T_15.clock <= clock
    _T_15.reset <= reset
    _T_15.io.d_in <= io.d_in
    _T_15.io.w <= io.w_in[15]
    _T_15.io.rdy <= io.rdy
    _T_15.io.bias <= bits(io.bias, 15, 0)
    io.d_out[15] <= _T_15.io.d_out
    node _T_16 = and(_T.io.v, _T_1.io.v)
    node _T_17 = and(_T_16, _T_2.io.v)
    node _T_18 = and(_T_17, _T_3.io.v)
    node _T_19 = and(_T_18, _T_4.io.v)
    node _T_20 = and(_T_19, _T_5.io.v)
    node _T_21 = and(_T_20, _T_6.io.v)
    node _T_22 = and(_T_21, _T_7.io.v)
    node _T_23 = and(_T_22, _T_8.io.v)
    node _T_24 = and(_T_23, _T_9.io.v)
    node _T_25 = and(_T_24, _T_10.io.v)
    node _T_26 = and(_T_25, _T_11.io.v)
    node _T_27 = and(_T_26, _T_12.io.v)
    node _T_28 = and(_T_27, _T_13.io.v)
    node _T_29 = and(_T_28, _T_14.io.v)
    node _T_30 = and(_T_29, _T_15.io.v)
    io.v <= _T_30

  module ShiftRegister_4 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module Mac_70 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_70 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_70 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_70
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_70
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_71 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_71 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_71 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_71
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_71
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_72 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_72 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_72 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_72
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_72
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_73 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_73 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_73 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_73
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_73
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_74 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_74 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_74 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_74
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_74
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_75 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_75 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_75 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_75
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_75
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_76 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_76 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_76 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_76
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_76
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_77 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_77 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_77 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_77
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_77
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_78 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_78 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_78 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_78
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_78
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_79 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_79 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_79 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_79
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_79
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_80 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_80 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_80 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_80
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_80
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_81 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_81 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_81 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_81
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_81
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_82 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_82 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_82 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_82
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_82
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_83 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_83 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_83 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_83
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_83
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_84 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_84 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_84 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_84
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_84
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_85 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_85 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_85 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_85
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_85
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module ConvC3_4 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w_in : UInt<400>[16], flip bias : UInt<256>, flip rdy : UInt<1>, d_out : UInt<16>[16], v : UInt<1>}
  
    inst _T of Node_70
    _T.clock <= clock
    _T.reset <= reset
    _T.io.d_in <= io.d_in
    _T.io.w <= io.w_in[0]
    _T.io.rdy <= io.rdy
    _T.io.bias <= bits(io.bias, 15, 0)
    io.d_out[0] <= _T.io.d_out
    inst _T_1 of Node_71
    _T_1.clock <= clock
    _T_1.reset <= reset
    _T_1.io.d_in <= io.d_in
    _T_1.io.w <= io.w_in[1]
    _T_1.io.rdy <= io.rdy
    _T_1.io.bias <= bits(io.bias, 15, 0)
    io.d_out[1] <= _T_1.io.d_out
    inst _T_2 of Node_72
    _T_2.clock <= clock
    _T_2.reset <= reset
    _T_2.io.d_in <= io.d_in
    _T_2.io.w <= io.w_in[2]
    _T_2.io.rdy <= io.rdy
    _T_2.io.bias <= bits(io.bias, 15, 0)
    io.d_out[2] <= _T_2.io.d_out
    inst _T_3 of Node_73
    _T_3.clock <= clock
    _T_3.reset <= reset
    _T_3.io.d_in <= io.d_in
    _T_3.io.w <= io.w_in[3]
    _T_3.io.rdy <= io.rdy
    _T_3.io.bias <= bits(io.bias, 15, 0)
    io.d_out[3] <= _T_3.io.d_out
    inst _T_4 of Node_74
    _T_4.clock <= clock
    _T_4.reset <= reset
    _T_4.io.d_in <= io.d_in
    _T_4.io.w <= io.w_in[4]
    _T_4.io.rdy <= io.rdy
    _T_4.io.bias <= bits(io.bias, 15, 0)
    io.d_out[4] <= _T_4.io.d_out
    inst _T_5 of Node_75
    _T_5.clock <= clock
    _T_5.reset <= reset
    _T_5.io.d_in <= io.d_in
    _T_5.io.w <= io.w_in[5]
    _T_5.io.rdy <= io.rdy
    _T_5.io.bias <= bits(io.bias, 15, 0)
    io.d_out[5] <= _T_5.io.d_out
    inst _T_6 of Node_76
    _T_6.clock <= clock
    _T_6.reset <= reset
    _T_6.io.d_in <= io.d_in
    _T_6.io.w <= io.w_in[6]
    _T_6.io.rdy <= io.rdy
    _T_6.io.bias <= bits(io.bias, 15, 0)
    io.d_out[6] <= _T_6.io.d_out
    inst _T_7 of Node_77
    _T_7.clock <= clock
    _T_7.reset <= reset
    _T_7.io.d_in <= io.d_in
    _T_7.io.w <= io.w_in[7]
    _T_7.io.rdy <= io.rdy
    _T_7.io.bias <= bits(io.bias, 15, 0)
    io.d_out[7] <= _T_7.io.d_out
    inst _T_8 of Node_78
    _T_8.clock <= clock
    _T_8.reset <= reset
    _T_8.io.d_in <= io.d_in
    _T_8.io.w <= io.w_in[8]
    _T_8.io.rdy <= io.rdy
    _T_8.io.bias <= bits(io.bias, 15, 0)
    io.d_out[8] <= _T_8.io.d_out
    inst _T_9 of Node_79
    _T_9.clock <= clock
    _T_9.reset <= reset
    _T_9.io.d_in <= io.d_in
    _T_9.io.w <= io.w_in[9]
    _T_9.io.rdy <= io.rdy
    _T_9.io.bias <= bits(io.bias, 15, 0)
    io.d_out[9] <= _T_9.io.d_out
    inst _T_10 of Node_80
    _T_10.clock <= clock
    _T_10.reset <= reset
    _T_10.io.d_in <= io.d_in
    _T_10.io.w <= io.w_in[10]
    _T_10.io.rdy <= io.rdy
    _T_10.io.bias <= bits(io.bias, 15, 0)
    io.d_out[10] <= _T_10.io.d_out
    inst _T_11 of Node_81
    _T_11.clock <= clock
    _T_11.reset <= reset
    _T_11.io.d_in <= io.d_in
    _T_11.io.w <= io.w_in[11]
    _T_11.io.rdy <= io.rdy
    _T_11.io.bias <= bits(io.bias, 15, 0)
    io.d_out[11] <= _T_11.io.d_out
    inst _T_12 of Node_82
    _T_12.clock <= clock
    _T_12.reset <= reset
    _T_12.io.d_in <= io.d_in
    _T_12.io.w <= io.w_in[12]
    _T_12.io.rdy <= io.rdy
    _T_12.io.bias <= bits(io.bias, 15, 0)
    io.d_out[12] <= _T_12.io.d_out
    inst _T_13 of Node_83
    _T_13.clock <= clock
    _T_13.reset <= reset
    _T_13.io.d_in <= io.d_in
    _T_13.io.w <= io.w_in[13]
    _T_13.io.rdy <= io.rdy
    _T_13.io.bias <= bits(io.bias, 15, 0)
    io.d_out[13] <= _T_13.io.d_out
    inst _T_14 of Node_84
    _T_14.clock <= clock
    _T_14.reset <= reset
    _T_14.io.d_in <= io.d_in
    _T_14.io.w <= io.w_in[14]
    _T_14.io.rdy <= io.rdy
    _T_14.io.bias <= bits(io.bias, 15, 0)
    io.d_out[14] <= _T_14.io.d_out
    inst _T_15 of Node_85
    _T_15.clock <= clock
    _T_15.reset <= reset
    _T_15.io.d_in <= io.d_in
    _T_15.io.w <= io.w_in[15]
    _T_15.io.rdy <= io.rdy
    _T_15.io.bias <= bits(io.bias, 15, 0)
    io.d_out[15] <= _T_15.io.d_out
    node _T_16 = and(_T.io.v, _T_1.io.v)
    node _T_17 = and(_T_16, _T_2.io.v)
    node _T_18 = and(_T_17, _T_3.io.v)
    node _T_19 = and(_T_18, _T_4.io.v)
    node _T_20 = and(_T_19, _T_5.io.v)
    node _T_21 = and(_T_20, _T_6.io.v)
    node _T_22 = and(_T_21, _T_7.io.v)
    node _T_23 = and(_T_22, _T_8.io.v)
    node _T_24 = and(_T_23, _T_9.io.v)
    node _T_25 = and(_T_24, _T_10.io.v)
    node _T_26 = and(_T_25, _T_11.io.v)
    node _T_27 = and(_T_26, _T_12.io.v)
    node _T_28 = and(_T_27, _T_13.io.v)
    node _T_29 = and(_T_28, _T_14.io.v)
    node _T_30 = and(_T_29, _T_15.io.v)
    io.v <= _T_30

  module ShiftRegister_5 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module Mac_86 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_86 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_86 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_86
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_86
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_87 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_87 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_87 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_87
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_87
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_88 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_88 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_88 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_88
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_88
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_89 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_89 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_89 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_89
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_89
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_90 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_90 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_90 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_90
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_90
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_91 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_91 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_91 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_91
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_91
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_92 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_92 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_92 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_92
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_92
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_93 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_93 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_93 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_93
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_93
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_94 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_94 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_94 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_94
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_94
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_95 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_95 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_95 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_95
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_95
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_96 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_96 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_96 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_96
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_96
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_97 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_97 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_97 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_97
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_97
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_98 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_98 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_98 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_98
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_98
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_99 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_99 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_99 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_99
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_99
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_100 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_100 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_100 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_100
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_100
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module Mac_101 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<400>, flip b : UInt<400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[25]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[25]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<5>, clock with : 
      reset => (reset, UInt<5>("h0"))
    node _T_53 = eq(i, UInt<5>("h19"))
    node _T_54 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_50 = mul(a[i], b[i])
      node _T_51 = add(sum, _T_50)
      sum <= _T_51
      node _T_52 = add(i, UInt<1>("h1"))
      i <= _T_52
    else :
      when _T_53 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_54 :
          node _T_55 = add(i, UInt<1>("h1"))
          i <= _T_55
          node _T_56 = mul(a[i], b[i])
          node _T_57 = add(sum, _T_56)
          sum <= _T_57
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_101 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_101 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w : UInt<400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_101
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_101
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module ConvC3_5 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w_in : UInt<400>[16], flip bias : UInt<256>, flip rdy : UInt<1>, d_out : UInt<16>[16], v : UInt<1>}
  
    inst _T of Node_86
    _T.clock <= clock
    _T.reset <= reset
    _T.io.d_in <= io.d_in
    _T.io.w <= io.w_in[0]
    _T.io.rdy <= io.rdy
    _T.io.bias <= bits(io.bias, 15, 0)
    io.d_out[0] <= _T.io.d_out
    inst _T_1 of Node_87
    _T_1.clock <= clock
    _T_1.reset <= reset
    _T_1.io.d_in <= io.d_in
    _T_1.io.w <= io.w_in[1]
    _T_1.io.rdy <= io.rdy
    _T_1.io.bias <= bits(io.bias, 15, 0)
    io.d_out[1] <= _T_1.io.d_out
    inst _T_2 of Node_88
    _T_2.clock <= clock
    _T_2.reset <= reset
    _T_2.io.d_in <= io.d_in
    _T_2.io.w <= io.w_in[2]
    _T_2.io.rdy <= io.rdy
    _T_2.io.bias <= bits(io.bias, 15, 0)
    io.d_out[2] <= _T_2.io.d_out
    inst _T_3 of Node_89
    _T_3.clock <= clock
    _T_3.reset <= reset
    _T_3.io.d_in <= io.d_in
    _T_3.io.w <= io.w_in[3]
    _T_3.io.rdy <= io.rdy
    _T_3.io.bias <= bits(io.bias, 15, 0)
    io.d_out[3] <= _T_3.io.d_out
    inst _T_4 of Node_90
    _T_4.clock <= clock
    _T_4.reset <= reset
    _T_4.io.d_in <= io.d_in
    _T_4.io.w <= io.w_in[4]
    _T_4.io.rdy <= io.rdy
    _T_4.io.bias <= bits(io.bias, 15, 0)
    io.d_out[4] <= _T_4.io.d_out
    inst _T_5 of Node_91
    _T_5.clock <= clock
    _T_5.reset <= reset
    _T_5.io.d_in <= io.d_in
    _T_5.io.w <= io.w_in[5]
    _T_5.io.rdy <= io.rdy
    _T_5.io.bias <= bits(io.bias, 15, 0)
    io.d_out[5] <= _T_5.io.d_out
    inst _T_6 of Node_92
    _T_6.clock <= clock
    _T_6.reset <= reset
    _T_6.io.d_in <= io.d_in
    _T_6.io.w <= io.w_in[6]
    _T_6.io.rdy <= io.rdy
    _T_6.io.bias <= bits(io.bias, 15, 0)
    io.d_out[6] <= _T_6.io.d_out
    inst _T_7 of Node_93
    _T_7.clock <= clock
    _T_7.reset <= reset
    _T_7.io.d_in <= io.d_in
    _T_7.io.w <= io.w_in[7]
    _T_7.io.rdy <= io.rdy
    _T_7.io.bias <= bits(io.bias, 15, 0)
    io.d_out[7] <= _T_7.io.d_out
    inst _T_8 of Node_94
    _T_8.clock <= clock
    _T_8.reset <= reset
    _T_8.io.d_in <= io.d_in
    _T_8.io.w <= io.w_in[8]
    _T_8.io.rdy <= io.rdy
    _T_8.io.bias <= bits(io.bias, 15, 0)
    io.d_out[8] <= _T_8.io.d_out
    inst _T_9 of Node_95
    _T_9.clock <= clock
    _T_9.reset <= reset
    _T_9.io.d_in <= io.d_in
    _T_9.io.w <= io.w_in[9]
    _T_9.io.rdy <= io.rdy
    _T_9.io.bias <= bits(io.bias, 15, 0)
    io.d_out[9] <= _T_9.io.d_out
    inst _T_10 of Node_96
    _T_10.clock <= clock
    _T_10.reset <= reset
    _T_10.io.d_in <= io.d_in
    _T_10.io.w <= io.w_in[10]
    _T_10.io.rdy <= io.rdy
    _T_10.io.bias <= bits(io.bias, 15, 0)
    io.d_out[10] <= _T_10.io.d_out
    inst _T_11 of Node_97
    _T_11.clock <= clock
    _T_11.reset <= reset
    _T_11.io.d_in <= io.d_in
    _T_11.io.w <= io.w_in[11]
    _T_11.io.rdy <= io.rdy
    _T_11.io.bias <= bits(io.bias, 15, 0)
    io.d_out[11] <= _T_11.io.d_out
    inst _T_12 of Node_98
    _T_12.clock <= clock
    _T_12.reset <= reset
    _T_12.io.d_in <= io.d_in
    _T_12.io.w <= io.w_in[12]
    _T_12.io.rdy <= io.rdy
    _T_12.io.bias <= bits(io.bias, 15, 0)
    io.d_out[12] <= _T_12.io.d_out
    inst _T_13 of Node_99
    _T_13.clock <= clock
    _T_13.reset <= reset
    _T_13.io.d_in <= io.d_in
    _T_13.io.w <= io.w_in[13]
    _T_13.io.rdy <= io.rdy
    _T_13.io.bias <= bits(io.bias, 15, 0)
    io.d_out[13] <= _T_13.io.d_out
    inst _T_14 of Node_100
    _T_14.clock <= clock
    _T_14.reset <= reset
    _T_14.io.d_in <= io.d_in
    _T_14.io.w <= io.w_in[14]
    _T_14.io.rdy <= io.rdy
    _T_14.io.bias <= bits(io.bias, 15, 0)
    io.d_out[14] <= _T_14.io.d_out
    inst _T_15 of Node_101
    _T_15.clock <= clock
    _T_15.reset <= reset
    _T_15.io.d_in <= io.d_in
    _T_15.io.w <= io.w_in[15]
    _T_15.io.rdy <= io.rdy
    _T_15.io.bias <= bits(io.bias, 15, 0)
    io.d_out[15] <= _T_15.io.d_out
    node _T_16 = and(_T.io.v, _T_1.io.v)
    node _T_17 = and(_T_16, _T_2.io.v)
    node _T_18 = and(_T_17, _T_3.io.v)
    node _T_19 = and(_T_18, _T_4.io.v)
    node _T_20 = and(_T_19, _T_5.io.v)
    node _T_21 = and(_T_20, _T_6.io.v)
    node _T_22 = and(_T_21, _T_7.io.v)
    node _T_23 = and(_T_22, _T_8.io.v)
    node _T_24 = and(_T_23, _T_9.io.v)
    node _T_25 = and(_T_24, _T_10.io.v)
    node _T_26 = and(_T_25, _T_11.io.v)
    node _T_27 = and(_T_26, _T_12.io.v)
    node _T_28 = and(_T_27, _T_13.io.v)
    node _T_29 = and(_T_28, _T_14.io.v)
    node _T_30 = and(_T_29, _T_15.io.v)
    io.v <= _T_30

  module Tile2 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>[6], flip w_in : UInt<400>[16][6], flip bias : UInt<256>, flip rdy : UInt<1>, c3_v : UInt<1>, d_out : UInt<16>[16]}
  
    inst _T of ShiftRegister
    _T.clock <= clock
    _T.reset <= reset
    _T.io.d_in <= io.d_in[0]
    _T.io.en <= io.rdy
    inst _T_1 of ConvC3
    _T_1.clock <= clock
    _T_1.reset <= reset
    _T_1.io.d_in <= _T.io.d_out
    _T_1.io.rdy <= UInt<1>("h0")
    _T_1.io.w_in[0] <= io.w_in[0][0]
    _T_1.io.w_in[1] <= io.w_in[0][1]
    _T_1.io.w_in[2] <= io.w_in[0][2]
    _T_1.io.w_in[3] <= io.w_in[0][3]
    _T_1.io.w_in[4] <= io.w_in[0][4]
    _T_1.io.w_in[5] <= io.w_in[0][5]
    _T_1.io.w_in[6] <= io.w_in[0][6]
    _T_1.io.w_in[7] <= io.w_in[0][7]
    _T_1.io.w_in[8] <= io.w_in[0][8]
    _T_1.io.w_in[9] <= io.w_in[0][9]
    _T_1.io.w_in[10] <= io.w_in[0][10]
    _T_1.io.w_in[11] <= io.w_in[0][11]
    _T_1.io.w_in[12] <= io.w_in[0][12]
    _T_1.io.w_in[13] <= io.w_in[0][13]
    _T_1.io.w_in[14] <= io.w_in[0][14]
    _T_1.io.w_in[15] <= io.w_in[0][15]
    _T_1.io.bias <= UInt<1>("h0")
    inst _T_2 of ShiftRegister_1
    _T_2.clock <= clock
    _T_2.reset <= reset
    _T_2.io.d_in <= io.d_in[1]
    _T_2.io.en <= io.rdy
    inst _T_3 of ConvC3_1
    _T_3.clock <= clock
    _T_3.reset <= reset
    _T_3.io.d_in <= _T_2.io.d_out
    _T_3.io.rdy <= UInt<1>("h0")
    _T_3.io.w_in[0] <= io.w_in[1][0]
    _T_3.io.w_in[1] <= io.w_in[1][1]
    _T_3.io.w_in[2] <= io.w_in[1][2]
    _T_3.io.w_in[3] <= io.w_in[1][3]
    _T_3.io.w_in[4] <= io.w_in[1][4]
    _T_3.io.w_in[5] <= io.w_in[1][5]
    _T_3.io.w_in[6] <= io.w_in[1][6]
    _T_3.io.w_in[7] <= io.w_in[1][7]
    _T_3.io.w_in[8] <= io.w_in[1][8]
    _T_3.io.w_in[9] <= io.w_in[1][9]
    _T_3.io.w_in[10] <= io.w_in[1][10]
    _T_3.io.w_in[11] <= io.w_in[1][11]
    _T_3.io.w_in[12] <= io.w_in[1][12]
    _T_3.io.w_in[13] <= io.w_in[1][13]
    _T_3.io.w_in[14] <= io.w_in[1][14]
    _T_3.io.w_in[15] <= io.w_in[1][15]
    _T_3.io.bias <= UInt<1>("h0")
    inst _T_4 of ShiftRegister_2
    _T_4.clock <= clock
    _T_4.reset <= reset
    _T_4.io.d_in <= io.d_in[2]
    _T_4.io.en <= io.rdy
    inst _T_5 of ConvC3_2
    _T_5.clock <= clock
    _T_5.reset <= reset
    _T_5.io.d_in <= _T_4.io.d_out
    _T_5.io.rdy <= UInt<1>("h0")
    _T_5.io.w_in[0] <= io.w_in[2][0]
    _T_5.io.w_in[1] <= io.w_in[2][1]
    _T_5.io.w_in[2] <= io.w_in[2][2]
    _T_5.io.w_in[3] <= io.w_in[2][3]
    _T_5.io.w_in[4] <= io.w_in[2][4]
    _T_5.io.w_in[5] <= io.w_in[2][5]
    _T_5.io.w_in[6] <= io.w_in[2][6]
    _T_5.io.w_in[7] <= io.w_in[2][7]
    _T_5.io.w_in[8] <= io.w_in[2][8]
    _T_5.io.w_in[9] <= io.w_in[2][9]
    _T_5.io.w_in[10] <= io.w_in[2][10]
    _T_5.io.w_in[11] <= io.w_in[2][11]
    _T_5.io.w_in[12] <= io.w_in[2][12]
    _T_5.io.w_in[13] <= io.w_in[2][13]
    _T_5.io.w_in[14] <= io.w_in[2][14]
    _T_5.io.w_in[15] <= io.w_in[2][15]
    _T_5.io.bias <= UInt<1>("h0")
    inst _T_6 of ShiftRegister_3
    _T_6.clock <= clock
    _T_6.reset <= reset
    _T_6.io.d_in <= io.d_in[3]
    _T_6.io.en <= io.rdy
    inst _T_7 of ConvC3_3
    _T_7.clock <= clock
    _T_7.reset <= reset
    _T_7.io.d_in <= _T_6.io.d_out
    _T_7.io.rdy <= UInt<1>("h0")
    _T_7.io.w_in[0] <= io.w_in[3][0]
    _T_7.io.w_in[1] <= io.w_in[3][1]
    _T_7.io.w_in[2] <= io.w_in[3][2]
    _T_7.io.w_in[3] <= io.w_in[3][3]
    _T_7.io.w_in[4] <= io.w_in[3][4]
    _T_7.io.w_in[5] <= io.w_in[3][5]
    _T_7.io.w_in[6] <= io.w_in[3][6]
    _T_7.io.w_in[7] <= io.w_in[3][7]
    _T_7.io.w_in[8] <= io.w_in[3][8]
    _T_7.io.w_in[9] <= io.w_in[3][9]
    _T_7.io.w_in[10] <= io.w_in[3][10]
    _T_7.io.w_in[11] <= io.w_in[3][11]
    _T_7.io.w_in[12] <= io.w_in[3][12]
    _T_7.io.w_in[13] <= io.w_in[3][13]
    _T_7.io.w_in[14] <= io.w_in[3][14]
    _T_7.io.w_in[15] <= io.w_in[3][15]
    _T_7.io.bias <= UInt<1>("h0")
    inst _T_8 of ShiftRegister_4
    _T_8.clock <= clock
    _T_8.reset <= reset
    _T_8.io.d_in <= io.d_in[4]
    _T_8.io.en <= io.rdy
    inst _T_9 of ConvC3_4
    _T_9.clock <= clock
    _T_9.reset <= reset
    _T_9.io.d_in <= _T_8.io.d_out
    _T_9.io.rdy <= UInt<1>("h0")
    _T_9.io.w_in[0] <= io.w_in[4][0]
    _T_9.io.w_in[1] <= io.w_in[4][1]
    _T_9.io.w_in[2] <= io.w_in[4][2]
    _T_9.io.w_in[3] <= io.w_in[4][3]
    _T_9.io.w_in[4] <= io.w_in[4][4]
    _T_9.io.w_in[5] <= io.w_in[4][5]
    _T_9.io.w_in[6] <= io.w_in[4][6]
    _T_9.io.w_in[7] <= io.w_in[4][7]
    _T_9.io.w_in[8] <= io.w_in[4][8]
    _T_9.io.w_in[9] <= io.w_in[4][9]
    _T_9.io.w_in[10] <= io.w_in[4][10]
    _T_9.io.w_in[11] <= io.w_in[4][11]
    _T_9.io.w_in[12] <= io.w_in[4][12]
    _T_9.io.w_in[13] <= io.w_in[4][13]
    _T_9.io.w_in[14] <= io.w_in[4][14]
    _T_9.io.w_in[15] <= io.w_in[4][15]
    _T_9.io.bias <= UInt<1>("h0")
    inst _T_10 of ShiftRegister_5
    _T_10.clock <= clock
    _T_10.reset <= reset
    _T_10.io.d_in <= io.d_in[5]
    _T_10.io.en <= io.rdy
    inst _T_11 of ConvC3_5
    _T_11.clock <= clock
    _T_11.reset <= reset
    _T_11.io.d_in <= _T_10.io.d_out
    _T_11.io.rdy <= UInt<1>("h0")
    _T_11.io.w_in[0] <= io.w_in[5][0]
    _T_11.io.w_in[1] <= io.w_in[5][1]
    _T_11.io.w_in[2] <= io.w_in[5][2]
    _T_11.io.w_in[3] <= io.w_in[5][3]
    _T_11.io.w_in[4] <= io.w_in[5][4]
    _T_11.io.w_in[5] <= io.w_in[5][5]
    _T_11.io.w_in[6] <= io.w_in[5][6]
    _T_11.io.w_in[7] <= io.w_in[5][7]
    _T_11.io.w_in[8] <= io.w_in[5][8]
    _T_11.io.w_in[9] <= io.w_in[5][9]
    _T_11.io.w_in[10] <= io.w_in[5][10]
    _T_11.io.w_in[11] <= io.w_in[5][11]
    _T_11.io.w_in[12] <= io.w_in[5][12]
    _T_11.io.w_in[13] <= io.w_in[5][13]
    _T_11.io.w_in[14] <= io.w_in[5][14]
    _T_11.io.w_in[15] <= io.w_in[5][15]
    _T_11.io.bias <= UInt<1>("h0")
    reg C1_counter : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_12 = eq(C1_counter, UInt<5>("h19"))
    when _T_12 :
      C1_counter <= UInt<1>("h0")
      _T_1.io.rdy <= UInt<1>("h1")
      _T_3.io.rdy <= UInt<1>("h1")
      _T_5.io.rdy <= UInt<1>("h1")
      _T_7.io.rdy <= UInt<1>("h1")
      _T_9.io.rdy <= UInt<1>("h1")
      _T_11.io.rdy <= UInt<1>("h1")
    else :
      when io.rdy :
        node _T_13 = add(C1_counter, UInt<1>("h1"))
        C1_counter <= _T_13
      else :
        C1_counter <= C1_counter
    node _T_14 = and(_T_1.io.v, _T_3.io.v)
    node _T_15 = and(_T_14, _T_5.io.v)
    node _T_16 = and(_T_15, _T_7.io.v)
    node _T_17 = and(_T_16, _T_9.io.v)
    node _T_18 = and(_T_17, _T_11.io.v)
    io.c3_v <= _T_18
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_20 = add(_T_1.io.d_out[0], _T_3.io.d_out[0])
    node _T_21 = add(_T_20, _T_5.io.d_out[0])
    node _T_22 = add(_T_21, _T_7.io.d_out[0])
    node _T_23 = add(_T_22, _T_9.io.d_out[0])
    node _T_24 = add(_T_23, _T_11.io.d_out[0])
    node _T_25 = bits(io.bias, 0, 0)
    node _T_26 = add(_T_24, _T_25)
    _T_19 <= _T_26
    reg _T_27 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_28 = add(_T_1.io.d_out[1], _T_3.io.d_out[1])
    node _T_29 = add(_T_28, _T_5.io.d_out[1])
    node _T_30 = add(_T_29, _T_7.io.d_out[1])
    node _T_31 = add(_T_30, _T_9.io.d_out[1])
    node _T_32 = add(_T_31, _T_11.io.d_out[1])
    node _T_33 = bits(io.bias, 1, 1)
    node _T_34 = add(_T_32, _T_33)
    _T_27 <= _T_34
    reg _T_35 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_36 = add(_T_1.io.d_out[2], _T_3.io.d_out[2])
    node _T_37 = add(_T_36, _T_5.io.d_out[2])
    node _T_38 = add(_T_37, _T_7.io.d_out[2])
    node _T_39 = add(_T_38, _T_9.io.d_out[2])
    node _T_40 = add(_T_39, _T_11.io.d_out[2])
    node _T_41 = bits(io.bias, 2, 2)
    node _T_42 = add(_T_40, _T_41)
    _T_35 <= _T_42
    reg _T_43 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_44 = add(_T_1.io.d_out[3], _T_3.io.d_out[3])
    node _T_45 = add(_T_44, _T_5.io.d_out[3])
    node _T_46 = add(_T_45, _T_7.io.d_out[3])
    node _T_47 = add(_T_46, _T_9.io.d_out[3])
    node _T_48 = add(_T_47, _T_11.io.d_out[3])
    node _T_49 = bits(io.bias, 3, 3)
    node _T_50 = add(_T_48, _T_49)
    _T_43 <= _T_50
    reg _T_51 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_52 = add(_T_1.io.d_out[4], _T_3.io.d_out[4])
    node _T_53 = add(_T_52, _T_5.io.d_out[4])
    node _T_54 = add(_T_53, _T_7.io.d_out[4])
    node _T_55 = add(_T_54, _T_9.io.d_out[4])
    node _T_56 = add(_T_55, _T_11.io.d_out[4])
    node _T_57 = bits(io.bias, 4, 4)
    node _T_58 = add(_T_56, _T_57)
    _T_51 <= _T_58
    reg _T_59 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_60 = add(_T_1.io.d_out[5], _T_3.io.d_out[5])
    node _T_61 = add(_T_60, _T_5.io.d_out[5])
    node _T_62 = add(_T_61, _T_7.io.d_out[5])
    node _T_63 = add(_T_62, _T_9.io.d_out[5])
    node _T_64 = add(_T_63, _T_11.io.d_out[5])
    node _T_65 = bits(io.bias, 5, 5)
    node _T_66 = add(_T_64, _T_65)
    _T_59 <= _T_66
    reg _T_67 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_68 = add(_T_1.io.d_out[6], _T_3.io.d_out[6])
    node _T_69 = add(_T_68, _T_5.io.d_out[6])
    node _T_70 = add(_T_69, _T_7.io.d_out[6])
    node _T_71 = add(_T_70, _T_9.io.d_out[6])
    node _T_72 = add(_T_71, _T_11.io.d_out[6])
    node _T_73 = bits(io.bias, 6, 6)
    node _T_74 = add(_T_72, _T_73)
    _T_67 <= _T_74
    reg _T_75 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_76 = add(_T_1.io.d_out[7], _T_3.io.d_out[7])
    node _T_77 = add(_T_76, _T_5.io.d_out[7])
    node _T_78 = add(_T_77, _T_7.io.d_out[7])
    node _T_79 = add(_T_78, _T_9.io.d_out[7])
    node _T_80 = add(_T_79, _T_11.io.d_out[7])
    node _T_81 = bits(io.bias, 7, 7)
    node _T_82 = add(_T_80, _T_81)
    _T_75 <= _T_82
    reg _T_83 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_84 = add(_T_1.io.d_out[8], _T_3.io.d_out[8])
    node _T_85 = add(_T_84, _T_5.io.d_out[8])
    node _T_86 = add(_T_85, _T_7.io.d_out[8])
    node _T_87 = add(_T_86, _T_9.io.d_out[8])
    node _T_88 = add(_T_87, _T_11.io.d_out[8])
    node _T_89 = bits(io.bias, 8, 8)
    node _T_90 = add(_T_88, _T_89)
    _T_83 <= _T_90
    reg _T_91 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_92 = add(_T_1.io.d_out[9], _T_3.io.d_out[9])
    node _T_93 = add(_T_92, _T_5.io.d_out[9])
    node _T_94 = add(_T_93, _T_7.io.d_out[9])
    node _T_95 = add(_T_94, _T_9.io.d_out[9])
    node _T_96 = add(_T_95, _T_11.io.d_out[9])
    node _T_97 = bits(io.bias, 9, 9)
    node _T_98 = add(_T_96, _T_97)
    _T_91 <= _T_98
    reg _T_99 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_100 = add(_T_1.io.d_out[10], _T_3.io.d_out[10])
    node _T_101 = add(_T_100, _T_5.io.d_out[10])
    node _T_102 = add(_T_101, _T_7.io.d_out[10])
    node _T_103 = add(_T_102, _T_9.io.d_out[10])
    node _T_104 = add(_T_103, _T_11.io.d_out[10])
    node _T_105 = bits(io.bias, 10, 10)
    node _T_106 = add(_T_104, _T_105)
    _T_99 <= _T_106
    reg _T_107 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_108 = add(_T_1.io.d_out[11], _T_3.io.d_out[11])
    node _T_109 = add(_T_108, _T_5.io.d_out[11])
    node _T_110 = add(_T_109, _T_7.io.d_out[11])
    node _T_111 = add(_T_110, _T_9.io.d_out[11])
    node _T_112 = add(_T_111, _T_11.io.d_out[11])
    node _T_113 = bits(io.bias, 11, 11)
    node _T_114 = add(_T_112, _T_113)
    _T_107 <= _T_114
    reg _T_115 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_116 = add(_T_1.io.d_out[12], _T_3.io.d_out[12])
    node _T_117 = add(_T_116, _T_5.io.d_out[12])
    node _T_118 = add(_T_117, _T_7.io.d_out[12])
    node _T_119 = add(_T_118, _T_9.io.d_out[12])
    node _T_120 = add(_T_119, _T_11.io.d_out[12])
    node _T_121 = bits(io.bias, 12, 12)
    node _T_122 = add(_T_120, _T_121)
    _T_115 <= _T_122
    reg _T_123 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_124 = add(_T_1.io.d_out[13], _T_3.io.d_out[13])
    node _T_125 = add(_T_124, _T_5.io.d_out[13])
    node _T_126 = add(_T_125, _T_7.io.d_out[13])
    node _T_127 = add(_T_126, _T_9.io.d_out[13])
    node _T_128 = add(_T_127, _T_11.io.d_out[13])
    node _T_129 = bits(io.bias, 13, 13)
    node _T_130 = add(_T_128, _T_129)
    _T_123 <= _T_130
    reg _T_131 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_132 = add(_T_1.io.d_out[14], _T_3.io.d_out[14])
    node _T_133 = add(_T_132, _T_5.io.d_out[14])
    node _T_134 = add(_T_133, _T_7.io.d_out[14])
    node _T_135 = add(_T_134, _T_9.io.d_out[14])
    node _T_136 = add(_T_135, _T_11.io.d_out[14])
    node _T_137 = bits(io.bias, 14, 14)
    node _T_138 = add(_T_136, _T_137)
    _T_131 <= _T_138
    reg _T_139 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T_140 = add(_T_1.io.d_out[15], _T_3.io.d_out[15])
    node _T_141 = add(_T_140, _T_5.io.d_out[15])
    node _T_142 = add(_T_141, _T_7.io.d_out[15])
    node _T_143 = add(_T_142, _T_9.io.d_out[15])
    node _T_144 = add(_T_143, _T_11.io.d_out[15])
    node _T_145 = bits(io.bias, 15, 15)
    node _T_146 = add(_T_144, _T_145)
    _T_139 <= _T_146
    io.d_out[0] <= _T_19
    io.d_out[1] <= _T_27
    io.d_out[2] <= _T_35
    io.d_out[3] <= _T_43
    io.d_out[4] <= _T_51
    io.d_out[5] <= _T_59
    io.d_out[6] <= _T_67
    io.d_out[7] <= _T_75
    io.d_out[8] <= _T_83
    io.d_out[9] <= _T_91
    io.d_out[10] <= _T_99
    io.d_out[11] <= _T_107
    io.d_out[12] <= _T_115
    io.d_out[13] <= _T_123
    io.d_out[14] <= _T_131
    io.d_out[15] <= _T_139

  module MaxPool_6 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_6 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_6
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_7 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_7 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_7
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_8 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_8 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_8
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_9 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_9 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_9
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_10 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_10 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_10
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_11 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_11 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_11
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_12 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_12 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_12
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_13 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_13 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_13
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_14 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_14 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_14
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_15 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_15 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_15
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_16 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_16 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_16
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_17 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_17 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_17
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_18 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_18 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_18
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_19 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_19 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_19
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_20 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_20 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_20
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module MaxPool_21 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<64>, flip rdy : UInt<1>, q : UInt<16>, v : UInt<1>}
  
    wire _T : UInt<16>[4]
    node _T_1 = bits(io.d_in, 15, 0)
    _T[0] <= _T_1
    node _T_2 = bits(io.d_in, 31, 16)
    _T[1] <= _T_2
    node _T_3 = bits(io.d_in, 47, 32)
    _T[2] <= _T_3
    node _T_4 = bits(io.d_in, 63, 48)
    _T[3] <= _T_4
    node _T_5 = gt(_T[0], _T[1])
    wire _T_6 : UInt<16>[2]
    when _T_5 :
      _T_6[0] <= _T[0]
    else :
      _T_6[0] <= _T[1]
    node _T_7 = gt(_T[2], _T[3])
    when _T_7 :
      _T_6[1] <= _T[2]
    else :
      _T_6[1] <= _T[3]
    node _T_8 = gt(_T_6[0], _T_6[1])
    wire _T_9 : UInt<16>[1]
    when _T_8 :
      _T_9[0] <= _T_6[0]
    else :
      _T_9[0] <= _T_6[1]
    io.q <= _T_9[0]
    io.v <= io.rdy

  module MaxPool1_21 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip rdy : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    inst maxpool of MaxPool_21
    maxpool.clock <= clock
    maxpool.reset <= reset
    maxpool.io.rdy <= UInt<1>("h0")
    reg pool : UInt<64>, clock with : 
      reset => (reset, UInt<64>("h0"))
    maxpool.io.d_in <= pool
    io.d_out <= maxpool.io.q
    io.v <= maxpool.io.v
    reg counter : UInt<3>, clock with : 
      reset => (reset, UInt<3>("h0"))
    node _T = eq(counter, UInt<3>("h4"))
    when _T :
      counter <= UInt<1>("h0")
      maxpool.io.rdy <= UInt<1>("h1")
      pool <= UInt<1>("h0")
    else :
      when io.rdy :
        node _T_1 = add(counter, UInt<1>("h1"))
        counter <= _T_1
        node _T_2 = mul(UInt<5>("h10"), counter)
        node _T_3 = dshl(io.d_in, _T_2)
        node _T_4 = add(pool, _T_3)
        pool <= bits(_T_4, 63, 0)
      else :
        counter <= counter

  module C2MaxPool :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>[16], flip rdy : UInt<1>, d_out : UInt<16>[16], pool_v : UInt<1>}
  
    inst _T of MaxPool1_6
    _T.clock <= clock
    _T.reset <= reset
    _T.io.d_in <= io.d_in[0]
    _T.io.rdy <= io.rdy
    io.d_out[0] <= _T.io.d_out
    inst _T_1 of MaxPool1_7
    _T_1.clock <= clock
    _T_1.reset <= reset
    _T_1.io.d_in <= io.d_in[1]
    _T_1.io.rdy <= io.rdy
    io.d_out[1] <= _T_1.io.d_out
    inst _T_2 of MaxPool1_8
    _T_2.clock <= clock
    _T_2.reset <= reset
    _T_2.io.d_in <= io.d_in[2]
    _T_2.io.rdy <= io.rdy
    io.d_out[2] <= _T_2.io.d_out
    inst _T_3 of MaxPool1_9
    _T_3.clock <= clock
    _T_3.reset <= reset
    _T_3.io.d_in <= io.d_in[3]
    _T_3.io.rdy <= io.rdy
    io.d_out[3] <= _T_3.io.d_out
    inst _T_4 of MaxPool1_10
    _T_4.clock <= clock
    _T_4.reset <= reset
    _T_4.io.d_in <= io.d_in[4]
    _T_4.io.rdy <= io.rdy
    io.d_out[4] <= _T_4.io.d_out
    inst _T_5 of MaxPool1_11
    _T_5.clock <= clock
    _T_5.reset <= reset
    _T_5.io.d_in <= io.d_in[5]
    _T_5.io.rdy <= io.rdy
    io.d_out[5] <= _T_5.io.d_out
    inst _T_6 of MaxPool1_12
    _T_6.clock <= clock
    _T_6.reset <= reset
    _T_6.io.d_in <= io.d_in[6]
    _T_6.io.rdy <= io.rdy
    io.d_out[6] <= _T_6.io.d_out
    inst _T_7 of MaxPool1_13
    _T_7.clock <= clock
    _T_7.reset <= reset
    _T_7.io.d_in <= io.d_in[7]
    _T_7.io.rdy <= io.rdy
    io.d_out[7] <= _T_7.io.d_out
    inst _T_8 of MaxPool1_14
    _T_8.clock <= clock
    _T_8.reset <= reset
    _T_8.io.d_in <= io.d_in[8]
    _T_8.io.rdy <= io.rdy
    io.d_out[8] <= _T_8.io.d_out
    inst _T_9 of MaxPool1_15
    _T_9.clock <= clock
    _T_9.reset <= reset
    _T_9.io.d_in <= io.d_in[9]
    _T_9.io.rdy <= io.rdy
    io.d_out[9] <= _T_9.io.d_out
    inst _T_10 of MaxPool1_16
    _T_10.clock <= clock
    _T_10.reset <= reset
    _T_10.io.d_in <= io.d_in[10]
    _T_10.io.rdy <= io.rdy
    io.d_out[10] <= _T_10.io.d_out
    inst _T_11 of MaxPool1_17
    _T_11.clock <= clock
    _T_11.reset <= reset
    _T_11.io.d_in <= io.d_in[11]
    _T_11.io.rdy <= io.rdy
    io.d_out[11] <= _T_11.io.d_out
    inst _T_12 of MaxPool1_18
    _T_12.clock <= clock
    _T_12.reset <= reset
    _T_12.io.d_in <= io.d_in[12]
    _T_12.io.rdy <= io.rdy
    io.d_out[12] <= _T_12.io.d_out
    inst _T_13 of MaxPool1_19
    _T_13.clock <= clock
    _T_13.reset <= reset
    _T_13.io.d_in <= io.d_in[13]
    _T_13.io.rdy <= io.rdy
    io.d_out[13] <= _T_13.io.d_out
    inst _T_14 of MaxPool1_20
    _T_14.clock <= clock
    _T_14.reset <= reset
    _T_14.io.d_in <= io.d_in[14]
    _T_14.io.rdy <= io.rdy
    io.d_out[14] <= _T_14.io.d_out
    inst _T_15 of MaxPool1_21
    _T_15.clock <= clock
    _T_15.reset <= reset
    _T_15.io.d_in <= io.d_in[15]
    _T_15.io.rdy <= io.rdy
    io.d_out[15] <= _T_15.io.d_out
    node _T_16 = and(_T.io.v, _T_1.io.v)
    node _T_17 = and(_T_16, _T_2.io.v)
    node _T_18 = and(_T_17, _T_3.io.v)
    node _T_19 = and(_T_18, _T_4.io.v)
    node _T_20 = and(_T_19, _T_5.io.v)
    node _T_21 = and(_T_20, _T_6.io.v)
    node _T_22 = and(_T_21, _T_7.io.v)
    node _T_23 = and(_T_22, _T_8.io.v)
    node _T_24 = and(_T_23, _T_9.io.v)
    node _T_25 = and(_T_24, _T_10.io.v)
    node _T_26 = and(_T_25, _T_11.io.v)
    node _T_27 = and(_T_26, _T_12.io.v)
    node _T_28 = and(_T_27, _T_13.io.v)
    node _T_29 = and(_T_28, _T_14.io.v)
    node _T_30 = and(_T_29, _T_15.io.v)
    io.pool_v <= _T_30

  module ShiftRegister_6 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_7 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_8 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_9 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_10 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_11 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_12 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_13 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_14 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_15 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_16 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_17 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_18 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_19 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_20 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module ShiftRegister_21 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<400>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
    node _T_25 = cat(_T_1, _T_2)
    node _T_26 = cat(_T, _T_25)
    node _T_27 = cat(_T_4, _T_5)
    node _T_28 = cat(_T_3, _T_27)
    node _T_29 = cat(_T_26, _T_28)
    node _T_30 = cat(_T_7, _T_8)
    node _T_31 = cat(_T_6, _T_30)
    node _T_32 = cat(_T_10, _T_11)
    node _T_33 = cat(_T_9, _T_32)
    node _T_34 = cat(_T_31, _T_33)
    node _T_35 = cat(_T_29, _T_34)
    node _T_36 = cat(_T_13, _T_14)
    node _T_37 = cat(_T_12, _T_36)
    node _T_38 = cat(_T_16, _T_17)
    node _T_39 = cat(_T_15, _T_38)
    node _T_40 = cat(_T_37, _T_39)
    node _T_41 = cat(_T_19, _T_20)
    node _T_42 = cat(_T_18, _T_41)
    node _T_43 = cat(_T_21, _T_22)
    node _T_44 = cat(_T_23, _T_24)
    node _T_45 = cat(_T_43, _T_44)
    node _T_46 = cat(_T_42, _T_45)
    node _T_47 = cat(_T_40, _T_46)
    node _T_48 = cat(_T_35, _T_47)
    io.d_out <= _T_48

  module Mac_102 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<6400>, flip b : UInt<6400>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[400]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[400]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    node _T_50 = bits(io.a, 415, 400)
    a[25] <= _T_50
    node _T_51 = bits(io.b, 415, 400)
    b[25] <= _T_51
    node _T_52 = bits(io.a, 431, 416)
    a[26] <= _T_52
    node _T_53 = bits(io.b, 431, 416)
    b[26] <= _T_53
    node _T_54 = bits(io.a, 447, 432)
    a[27] <= _T_54
    node _T_55 = bits(io.b, 447, 432)
    b[27] <= _T_55
    node _T_56 = bits(io.a, 463, 448)
    a[28] <= _T_56
    node _T_57 = bits(io.b, 463, 448)
    b[28] <= _T_57
    node _T_58 = bits(io.a, 479, 464)
    a[29] <= _T_58
    node _T_59 = bits(io.b, 479, 464)
    b[29] <= _T_59
    node _T_60 = bits(io.a, 495, 480)
    a[30] <= _T_60
    node _T_61 = bits(io.b, 495, 480)
    b[30] <= _T_61
    node _T_62 = bits(io.a, 511, 496)
    a[31] <= _T_62
    node _T_63 = bits(io.b, 511, 496)
    b[31] <= _T_63
    node _T_64 = bits(io.a, 527, 512)
    a[32] <= _T_64
    node _T_65 = bits(io.b, 527, 512)
    b[32] <= _T_65
    node _T_66 = bits(io.a, 543, 528)
    a[33] <= _T_66
    node _T_67 = bits(io.b, 543, 528)
    b[33] <= _T_67
    node _T_68 = bits(io.a, 559, 544)
    a[34] <= _T_68
    node _T_69 = bits(io.b, 559, 544)
    b[34] <= _T_69
    node _T_70 = bits(io.a, 575, 560)
    a[35] <= _T_70
    node _T_71 = bits(io.b, 575, 560)
    b[35] <= _T_71
    node _T_72 = bits(io.a, 591, 576)
    a[36] <= _T_72
    node _T_73 = bits(io.b, 591, 576)
    b[36] <= _T_73
    node _T_74 = bits(io.a, 607, 592)
    a[37] <= _T_74
    node _T_75 = bits(io.b, 607, 592)
    b[37] <= _T_75
    node _T_76 = bits(io.a, 623, 608)
    a[38] <= _T_76
    node _T_77 = bits(io.b, 623, 608)
    b[38] <= _T_77
    node _T_78 = bits(io.a, 639, 624)
    a[39] <= _T_78
    node _T_79 = bits(io.b, 639, 624)
    b[39] <= _T_79
    node _T_80 = bits(io.a, 655, 640)
    a[40] <= _T_80
    node _T_81 = bits(io.b, 655, 640)
    b[40] <= _T_81
    node _T_82 = bits(io.a, 671, 656)
    a[41] <= _T_82
    node _T_83 = bits(io.b, 671, 656)
    b[41] <= _T_83
    node _T_84 = bits(io.a, 687, 672)
    a[42] <= _T_84
    node _T_85 = bits(io.b, 687, 672)
    b[42] <= _T_85
    node _T_86 = bits(io.a, 703, 688)
    a[43] <= _T_86
    node _T_87 = bits(io.b, 703, 688)
    b[43] <= _T_87
    node _T_88 = bits(io.a, 719, 704)
    a[44] <= _T_88
    node _T_89 = bits(io.b, 719, 704)
    b[44] <= _T_89
    node _T_90 = bits(io.a, 735, 720)
    a[45] <= _T_90
    node _T_91 = bits(io.b, 735, 720)
    b[45] <= _T_91
    node _T_92 = bits(io.a, 751, 736)
    a[46] <= _T_92
    node _T_93 = bits(io.b, 751, 736)
    b[46] <= _T_93
    node _T_94 = bits(io.a, 767, 752)
    a[47] <= _T_94
    node _T_95 = bits(io.b, 767, 752)
    b[47] <= _T_95
    node _T_96 = bits(io.a, 783, 768)
    a[48] <= _T_96
    node _T_97 = bits(io.b, 783, 768)
    b[48] <= _T_97
    node _T_98 = bits(io.a, 799, 784)
    a[49] <= _T_98
    node _T_99 = bits(io.b, 799, 784)
    b[49] <= _T_99
    node _T_100 = bits(io.a, 815, 800)
    a[50] <= _T_100
    node _T_101 = bits(io.b, 815, 800)
    b[50] <= _T_101
    node _T_102 = bits(io.a, 831, 816)
    a[51] <= _T_102
    node _T_103 = bits(io.b, 831, 816)
    b[51] <= _T_103
    node _T_104 = bits(io.a, 847, 832)
    a[52] <= _T_104
    node _T_105 = bits(io.b, 847, 832)
    b[52] <= _T_105
    node _T_106 = bits(io.a, 863, 848)
    a[53] <= _T_106
    node _T_107 = bits(io.b, 863, 848)
    b[53] <= _T_107
    node _T_108 = bits(io.a, 879, 864)
    a[54] <= _T_108
    node _T_109 = bits(io.b, 879, 864)
    b[54] <= _T_109
    node _T_110 = bits(io.a, 895, 880)
    a[55] <= _T_110
    node _T_111 = bits(io.b, 895, 880)
    b[55] <= _T_111
    node _T_112 = bits(io.a, 911, 896)
    a[56] <= _T_112
    node _T_113 = bits(io.b, 911, 896)
    b[56] <= _T_113
    node _T_114 = bits(io.a, 927, 912)
    a[57] <= _T_114
    node _T_115 = bits(io.b, 927, 912)
    b[57] <= _T_115
    node _T_116 = bits(io.a, 943, 928)
    a[58] <= _T_116
    node _T_117 = bits(io.b, 943, 928)
    b[58] <= _T_117
    node _T_118 = bits(io.a, 959, 944)
    a[59] <= _T_118
    node _T_119 = bits(io.b, 959, 944)
    b[59] <= _T_119
    node _T_120 = bits(io.a, 975, 960)
    a[60] <= _T_120
    node _T_121 = bits(io.b, 975, 960)
    b[60] <= _T_121
    node _T_122 = bits(io.a, 991, 976)
    a[61] <= _T_122
    node _T_123 = bits(io.b, 991, 976)
    b[61] <= _T_123
    node _T_124 = bits(io.a, 1007, 992)
    a[62] <= _T_124
    node _T_125 = bits(io.b, 1007, 992)
    b[62] <= _T_125
    node _T_126 = bits(io.a, 1023, 1008)
    a[63] <= _T_126
    node _T_127 = bits(io.b, 1023, 1008)
    b[63] <= _T_127
    node _T_128 = bits(io.a, 1039, 1024)
    a[64] <= _T_128
    node _T_129 = bits(io.b, 1039, 1024)
    b[64] <= _T_129
    node _T_130 = bits(io.a, 1055, 1040)
    a[65] <= _T_130
    node _T_131 = bits(io.b, 1055, 1040)
    b[65] <= _T_131
    node _T_132 = bits(io.a, 1071, 1056)
    a[66] <= _T_132
    node _T_133 = bits(io.b, 1071, 1056)
    b[66] <= _T_133
    node _T_134 = bits(io.a, 1087, 1072)
    a[67] <= _T_134
    node _T_135 = bits(io.b, 1087, 1072)
    b[67] <= _T_135
    node _T_136 = bits(io.a, 1103, 1088)
    a[68] <= _T_136
    node _T_137 = bits(io.b, 1103, 1088)
    b[68] <= _T_137
    node _T_138 = bits(io.a, 1119, 1104)
    a[69] <= _T_138
    node _T_139 = bits(io.b, 1119, 1104)
    b[69] <= _T_139
    node _T_140 = bits(io.a, 1135, 1120)
    a[70] <= _T_140
    node _T_141 = bits(io.b, 1135, 1120)
    b[70] <= _T_141
    node _T_142 = bits(io.a, 1151, 1136)
    a[71] <= _T_142
    node _T_143 = bits(io.b, 1151, 1136)
    b[71] <= _T_143
    node _T_144 = bits(io.a, 1167, 1152)
    a[72] <= _T_144
    node _T_145 = bits(io.b, 1167, 1152)
    b[72] <= _T_145
    node _T_146 = bits(io.a, 1183, 1168)
    a[73] <= _T_146
    node _T_147 = bits(io.b, 1183, 1168)
    b[73] <= _T_147
    node _T_148 = bits(io.a, 1199, 1184)
    a[74] <= _T_148
    node _T_149 = bits(io.b, 1199, 1184)
    b[74] <= _T_149
    node _T_150 = bits(io.a, 1215, 1200)
    a[75] <= _T_150
    node _T_151 = bits(io.b, 1215, 1200)
    b[75] <= _T_151
    node _T_152 = bits(io.a, 1231, 1216)
    a[76] <= _T_152
    node _T_153 = bits(io.b, 1231, 1216)
    b[76] <= _T_153
    node _T_154 = bits(io.a, 1247, 1232)
    a[77] <= _T_154
    node _T_155 = bits(io.b, 1247, 1232)
    b[77] <= _T_155
    node _T_156 = bits(io.a, 1263, 1248)
    a[78] <= _T_156
    node _T_157 = bits(io.b, 1263, 1248)
    b[78] <= _T_157
    node _T_158 = bits(io.a, 1279, 1264)
    a[79] <= _T_158
    node _T_159 = bits(io.b, 1279, 1264)
    b[79] <= _T_159
    node _T_160 = bits(io.a, 1295, 1280)
    a[80] <= _T_160
    node _T_161 = bits(io.b, 1295, 1280)
    b[80] <= _T_161
    node _T_162 = bits(io.a, 1311, 1296)
    a[81] <= _T_162
    node _T_163 = bits(io.b, 1311, 1296)
    b[81] <= _T_163
    node _T_164 = bits(io.a, 1327, 1312)
    a[82] <= _T_164
    node _T_165 = bits(io.b, 1327, 1312)
    b[82] <= _T_165
    node _T_166 = bits(io.a, 1343, 1328)
    a[83] <= _T_166
    node _T_167 = bits(io.b, 1343, 1328)
    b[83] <= _T_167
    node _T_168 = bits(io.a, 1359, 1344)
    a[84] <= _T_168
    node _T_169 = bits(io.b, 1359, 1344)
    b[84] <= _T_169
    node _T_170 = bits(io.a, 1375, 1360)
    a[85] <= _T_170
    node _T_171 = bits(io.b, 1375, 1360)
    b[85] <= _T_171
    node _T_172 = bits(io.a, 1391, 1376)
    a[86] <= _T_172
    node _T_173 = bits(io.b, 1391, 1376)
    b[86] <= _T_173
    node _T_174 = bits(io.a, 1407, 1392)
    a[87] <= _T_174
    node _T_175 = bits(io.b, 1407, 1392)
    b[87] <= _T_175
    node _T_176 = bits(io.a, 1423, 1408)
    a[88] <= _T_176
    node _T_177 = bits(io.b, 1423, 1408)
    b[88] <= _T_177
    node _T_178 = bits(io.a, 1439, 1424)
    a[89] <= _T_178
    node _T_179 = bits(io.b, 1439, 1424)
    b[89] <= _T_179
    node _T_180 = bits(io.a, 1455, 1440)
    a[90] <= _T_180
    node _T_181 = bits(io.b, 1455, 1440)
    b[90] <= _T_181
    node _T_182 = bits(io.a, 1471, 1456)
    a[91] <= _T_182
    node _T_183 = bits(io.b, 1471, 1456)
    b[91] <= _T_183
    node _T_184 = bits(io.a, 1487, 1472)
    a[92] <= _T_184
    node _T_185 = bits(io.b, 1487, 1472)
    b[92] <= _T_185
    node _T_186 = bits(io.a, 1503, 1488)
    a[93] <= _T_186
    node _T_187 = bits(io.b, 1503, 1488)
    b[93] <= _T_187
    node _T_188 = bits(io.a, 1519, 1504)
    a[94] <= _T_188
    node _T_189 = bits(io.b, 1519, 1504)
    b[94] <= _T_189
    node _T_190 = bits(io.a, 1535, 1520)
    a[95] <= _T_190
    node _T_191 = bits(io.b, 1535, 1520)
    b[95] <= _T_191
    node _T_192 = bits(io.a, 1551, 1536)
    a[96] <= _T_192
    node _T_193 = bits(io.b, 1551, 1536)
    b[96] <= _T_193
    node _T_194 = bits(io.a, 1567, 1552)
    a[97] <= _T_194
    node _T_195 = bits(io.b, 1567, 1552)
    b[97] <= _T_195
    node _T_196 = bits(io.a, 1583, 1568)
    a[98] <= _T_196
    node _T_197 = bits(io.b, 1583, 1568)
    b[98] <= _T_197
    node _T_198 = bits(io.a, 1599, 1584)
    a[99] <= _T_198
    node _T_199 = bits(io.b, 1599, 1584)
    b[99] <= _T_199
    node _T_200 = bits(io.a, 1615, 1600)
    a[100] <= _T_200
    node _T_201 = bits(io.b, 1615, 1600)
    b[100] <= _T_201
    node _T_202 = bits(io.a, 1631, 1616)
    a[101] <= _T_202
    node _T_203 = bits(io.b, 1631, 1616)
    b[101] <= _T_203
    node _T_204 = bits(io.a, 1647, 1632)
    a[102] <= _T_204
    node _T_205 = bits(io.b, 1647, 1632)
    b[102] <= _T_205
    node _T_206 = bits(io.a, 1663, 1648)
    a[103] <= _T_206
    node _T_207 = bits(io.b, 1663, 1648)
    b[103] <= _T_207
    node _T_208 = bits(io.a, 1679, 1664)
    a[104] <= _T_208
    node _T_209 = bits(io.b, 1679, 1664)
    b[104] <= _T_209
    node _T_210 = bits(io.a, 1695, 1680)
    a[105] <= _T_210
    node _T_211 = bits(io.b, 1695, 1680)
    b[105] <= _T_211
    node _T_212 = bits(io.a, 1711, 1696)
    a[106] <= _T_212
    node _T_213 = bits(io.b, 1711, 1696)
    b[106] <= _T_213
    node _T_214 = bits(io.a, 1727, 1712)
    a[107] <= _T_214
    node _T_215 = bits(io.b, 1727, 1712)
    b[107] <= _T_215
    node _T_216 = bits(io.a, 1743, 1728)
    a[108] <= _T_216
    node _T_217 = bits(io.b, 1743, 1728)
    b[108] <= _T_217
    node _T_218 = bits(io.a, 1759, 1744)
    a[109] <= _T_218
    node _T_219 = bits(io.b, 1759, 1744)
    b[109] <= _T_219
    node _T_220 = bits(io.a, 1775, 1760)
    a[110] <= _T_220
    node _T_221 = bits(io.b, 1775, 1760)
    b[110] <= _T_221
    node _T_222 = bits(io.a, 1791, 1776)
    a[111] <= _T_222
    node _T_223 = bits(io.b, 1791, 1776)
    b[111] <= _T_223
    node _T_224 = bits(io.a, 1807, 1792)
    a[112] <= _T_224
    node _T_225 = bits(io.b, 1807, 1792)
    b[112] <= _T_225
    node _T_226 = bits(io.a, 1823, 1808)
    a[113] <= _T_226
    node _T_227 = bits(io.b, 1823, 1808)
    b[113] <= _T_227
    node _T_228 = bits(io.a, 1839, 1824)
    a[114] <= _T_228
    node _T_229 = bits(io.b, 1839, 1824)
    b[114] <= _T_229
    node _T_230 = bits(io.a, 1855, 1840)
    a[115] <= _T_230
    node _T_231 = bits(io.b, 1855, 1840)
    b[115] <= _T_231
    node _T_232 = bits(io.a, 1871, 1856)
    a[116] <= _T_232
    node _T_233 = bits(io.b, 1871, 1856)
    b[116] <= _T_233
    node _T_234 = bits(io.a, 1887, 1872)
    a[117] <= _T_234
    node _T_235 = bits(io.b, 1887, 1872)
    b[117] <= _T_235
    node _T_236 = bits(io.a, 1903, 1888)
    a[118] <= _T_236
    node _T_237 = bits(io.b, 1903, 1888)
    b[118] <= _T_237
    node _T_238 = bits(io.a, 1919, 1904)
    a[119] <= _T_238
    node _T_239 = bits(io.b, 1919, 1904)
    b[119] <= _T_239
    node _T_240 = bits(io.a, 1935, 1920)
    a[120] <= _T_240
    node _T_241 = bits(io.b, 1935, 1920)
    b[120] <= _T_241
    node _T_242 = bits(io.a, 1951, 1936)
    a[121] <= _T_242
    node _T_243 = bits(io.b, 1951, 1936)
    b[121] <= _T_243
    node _T_244 = bits(io.a, 1967, 1952)
    a[122] <= _T_244
    node _T_245 = bits(io.b, 1967, 1952)
    b[122] <= _T_245
    node _T_246 = bits(io.a, 1983, 1968)
    a[123] <= _T_246
    node _T_247 = bits(io.b, 1983, 1968)
    b[123] <= _T_247
    node _T_248 = bits(io.a, 1999, 1984)
    a[124] <= _T_248
    node _T_249 = bits(io.b, 1999, 1984)
    b[124] <= _T_249
    node _T_250 = bits(io.a, 2015, 2000)
    a[125] <= _T_250
    node _T_251 = bits(io.b, 2015, 2000)
    b[125] <= _T_251
    node _T_252 = bits(io.a, 2031, 2016)
    a[126] <= _T_252
    node _T_253 = bits(io.b, 2031, 2016)
    b[126] <= _T_253
    node _T_254 = bits(io.a, 2047, 2032)
    a[127] <= _T_254
    node _T_255 = bits(io.b, 2047, 2032)
    b[127] <= _T_255
    node _T_256 = bits(io.a, 2063, 2048)
    a[128] <= _T_256
    node _T_257 = bits(io.b, 2063, 2048)
    b[128] <= _T_257
    node _T_258 = bits(io.a, 2079, 2064)
    a[129] <= _T_258
    node _T_259 = bits(io.b, 2079, 2064)
    b[129] <= _T_259
    node _T_260 = bits(io.a, 2095, 2080)
    a[130] <= _T_260
    node _T_261 = bits(io.b, 2095, 2080)
    b[130] <= _T_261
    node _T_262 = bits(io.a, 2111, 2096)
    a[131] <= _T_262
    node _T_263 = bits(io.b, 2111, 2096)
    b[131] <= _T_263
    node _T_264 = bits(io.a, 2127, 2112)
    a[132] <= _T_264
    node _T_265 = bits(io.b, 2127, 2112)
    b[132] <= _T_265
    node _T_266 = bits(io.a, 2143, 2128)
    a[133] <= _T_266
    node _T_267 = bits(io.b, 2143, 2128)
    b[133] <= _T_267
    node _T_268 = bits(io.a, 2159, 2144)
    a[134] <= _T_268
    node _T_269 = bits(io.b, 2159, 2144)
    b[134] <= _T_269
    node _T_270 = bits(io.a, 2175, 2160)
    a[135] <= _T_270
    node _T_271 = bits(io.b, 2175, 2160)
    b[135] <= _T_271
    node _T_272 = bits(io.a, 2191, 2176)
    a[136] <= _T_272
    node _T_273 = bits(io.b, 2191, 2176)
    b[136] <= _T_273
    node _T_274 = bits(io.a, 2207, 2192)
    a[137] <= _T_274
    node _T_275 = bits(io.b, 2207, 2192)
    b[137] <= _T_275
    node _T_276 = bits(io.a, 2223, 2208)
    a[138] <= _T_276
    node _T_277 = bits(io.b, 2223, 2208)
    b[138] <= _T_277
    node _T_278 = bits(io.a, 2239, 2224)
    a[139] <= _T_278
    node _T_279 = bits(io.b, 2239, 2224)
    b[139] <= _T_279
    node _T_280 = bits(io.a, 2255, 2240)
    a[140] <= _T_280
    node _T_281 = bits(io.b, 2255, 2240)
    b[140] <= _T_281
    node _T_282 = bits(io.a, 2271, 2256)
    a[141] <= _T_282
    node _T_283 = bits(io.b, 2271, 2256)
    b[141] <= _T_283
    node _T_284 = bits(io.a, 2287, 2272)
    a[142] <= _T_284
    node _T_285 = bits(io.b, 2287, 2272)
    b[142] <= _T_285
    node _T_286 = bits(io.a, 2303, 2288)
    a[143] <= _T_286
    node _T_287 = bits(io.b, 2303, 2288)
    b[143] <= _T_287
    node _T_288 = bits(io.a, 2319, 2304)
    a[144] <= _T_288
    node _T_289 = bits(io.b, 2319, 2304)
    b[144] <= _T_289
    node _T_290 = bits(io.a, 2335, 2320)
    a[145] <= _T_290
    node _T_291 = bits(io.b, 2335, 2320)
    b[145] <= _T_291
    node _T_292 = bits(io.a, 2351, 2336)
    a[146] <= _T_292
    node _T_293 = bits(io.b, 2351, 2336)
    b[146] <= _T_293
    node _T_294 = bits(io.a, 2367, 2352)
    a[147] <= _T_294
    node _T_295 = bits(io.b, 2367, 2352)
    b[147] <= _T_295
    node _T_296 = bits(io.a, 2383, 2368)
    a[148] <= _T_296
    node _T_297 = bits(io.b, 2383, 2368)
    b[148] <= _T_297
    node _T_298 = bits(io.a, 2399, 2384)
    a[149] <= _T_298
    node _T_299 = bits(io.b, 2399, 2384)
    b[149] <= _T_299
    node _T_300 = bits(io.a, 2415, 2400)
    a[150] <= _T_300
    node _T_301 = bits(io.b, 2415, 2400)
    b[150] <= _T_301
    node _T_302 = bits(io.a, 2431, 2416)
    a[151] <= _T_302
    node _T_303 = bits(io.b, 2431, 2416)
    b[151] <= _T_303
    node _T_304 = bits(io.a, 2447, 2432)
    a[152] <= _T_304
    node _T_305 = bits(io.b, 2447, 2432)
    b[152] <= _T_305
    node _T_306 = bits(io.a, 2463, 2448)
    a[153] <= _T_306
    node _T_307 = bits(io.b, 2463, 2448)
    b[153] <= _T_307
    node _T_308 = bits(io.a, 2479, 2464)
    a[154] <= _T_308
    node _T_309 = bits(io.b, 2479, 2464)
    b[154] <= _T_309
    node _T_310 = bits(io.a, 2495, 2480)
    a[155] <= _T_310
    node _T_311 = bits(io.b, 2495, 2480)
    b[155] <= _T_311
    node _T_312 = bits(io.a, 2511, 2496)
    a[156] <= _T_312
    node _T_313 = bits(io.b, 2511, 2496)
    b[156] <= _T_313
    node _T_314 = bits(io.a, 2527, 2512)
    a[157] <= _T_314
    node _T_315 = bits(io.b, 2527, 2512)
    b[157] <= _T_315
    node _T_316 = bits(io.a, 2543, 2528)
    a[158] <= _T_316
    node _T_317 = bits(io.b, 2543, 2528)
    b[158] <= _T_317
    node _T_318 = bits(io.a, 2559, 2544)
    a[159] <= _T_318
    node _T_319 = bits(io.b, 2559, 2544)
    b[159] <= _T_319
    node _T_320 = bits(io.a, 2575, 2560)
    a[160] <= _T_320
    node _T_321 = bits(io.b, 2575, 2560)
    b[160] <= _T_321
    node _T_322 = bits(io.a, 2591, 2576)
    a[161] <= _T_322
    node _T_323 = bits(io.b, 2591, 2576)
    b[161] <= _T_323
    node _T_324 = bits(io.a, 2607, 2592)
    a[162] <= _T_324
    node _T_325 = bits(io.b, 2607, 2592)
    b[162] <= _T_325
    node _T_326 = bits(io.a, 2623, 2608)
    a[163] <= _T_326
    node _T_327 = bits(io.b, 2623, 2608)
    b[163] <= _T_327
    node _T_328 = bits(io.a, 2639, 2624)
    a[164] <= _T_328
    node _T_329 = bits(io.b, 2639, 2624)
    b[164] <= _T_329
    node _T_330 = bits(io.a, 2655, 2640)
    a[165] <= _T_330
    node _T_331 = bits(io.b, 2655, 2640)
    b[165] <= _T_331
    node _T_332 = bits(io.a, 2671, 2656)
    a[166] <= _T_332
    node _T_333 = bits(io.b, 2671, 2656)
    b[166] <= _T_333
    node _T_334 = bits(io.a, 2687, 2672)
    a[167] <= _T_334
    node _T_335 = bits(io.b, 2687, 2672)
    b[167] <= _T_335
    node _T_336 = bits(io.a, 2703, 2688)
    a[168] <= _T_336
    node _T_337 = bits(io.b, 2703, 2688)
    b[168] <= _T_337
    node _T_338 = bits(io.a, 2719, 2704)
    a[169] <= _T_338
    node _T_339 = bits(io.b, 2719, 2704)
    b[169] <= _T_339
    node _T_340 = bits(io.a, 2735, 2720)
    a[170] <= _T_340
    node _T_341 = bits(io.b, 2735, 2720)
    b[170] <= _T_341
    node _T_342 = bits(io.a, 2751, 2736)
    a[171] <= _T_342
    node _T_343 = bits(io.b, 2751, 2736)
    b[171] <= _T_343
    node _T_344 = bits(io.a, 2767, 2752)
    a[172] <= _T_344
    node _T_345 = bits(io.b, 2767, 2752)
    b[172] <= _T_345
    node _T_346 = bits(io.a, 2783, 2768)
    a[173] <= _T_346
    node _T_347 = bits(io.b, 2783, 2768)
    b[173] <= _T_347
    node _T_348 = bits(io.a, 2799, 2784)
    a[174] <= _T_348
    node _T_349 = bits(io.b, 2799, 2784)
    b[174] <= _T_349
    node _T_350 = bits(io.a, 2815, 2800)
    a[175] <= _T_350
    node _T_351 = bits(io.b, 2815, 2800)
    b[175] <= _T_351
    node _T_352 = bits(io.a, 2831, 2816)
    a[176] <= _T_352
    node _T_353 = bits(io.b, 2831, 2816)
    b[176] <= _T_353
    node _T_354 = bits(io.a, 2847, 2832)
    a[177] <= _T_354
    node _T_355 = bits(io.b, 2847, 2832)
    b[177] <= _T_355
    node _T_356 = bits(io.a, 2863, 2848)
    a[178] <= _T_356
    node _T_357 = bits(io.b, 2863, 2848)
    b[178] <= _T_357
    node _T_358 = bits(io.a, 2879, 2864)
    a[179] <= _T_358
    node _T_359 = bits(io.b, 2879, 2864)
    b[179] <= _T_359
    node _T_360 = bits(io.a, 2895, 2880)
    a[180] <= _T_360
    node _T_361 = bits(io.b, 2895, 2880)
    b[180] <= _T_361
    node _T_362 = bits(io.a, 2911, 2896)
    a[181] <= _T_362
    node _T_363 = bits(io.b, 2911, 2896)
    b[181] <= _T_363
    node _T_364 = bits(io.a, 2927, 2912)
    a[182] <= _T_364
    node _T_365 = bits(io.b, 2927, 2912)
    b[182] <= _T_365
    node _T_366 = bits(io.a, 2943, 2928)
    a[183] <= _T_366
    node _T_367 = bits(io.b, 2943, 2928)
    b[183] <= _T_367
    node _T_368 = bits(io.a, 2959, 2944)
    a[184] <= _T_368
    node _T_369 = bits(io.b, 2959, 2944)
    b[184] <= _T_369
    node _T_370 = bits(io.a, 2975, 2960)
    a[185] <= _T_370
    node _T_371 = bits(io.b, 2975, 2960)
    b[185] <= _T_371
    node _T_372 = bits(io.a, 2991, 2976)
    a[186] <= _T_372
    node _T_373 = bits(io.b, 2991, 2976)
    b[186] <= _T_373
    node _T_374 = bits(io.a, 3007, 2992)
    a[187] <= _T_374
    node _T_375 = bits(io.b, 3007, 2992)
    b[187] <= _T_375
    node _T_376 = bits(io.a, 3023, 3008)
    a[188] <= _T_376
    node _T_377 = bits(io.b, 3023, 3008)
    b[188] <= _T_377
    node _T_378 = bits(io.a, 3039, 3024)
    a[189] <= _T_378
    node _T_379 = bits(io.b, 3039, 3024)
    b[189] <= _T_379
    node _T_380 = bits(io.a, 3055, 3040)
    a[190] <= _T_380
    node _T_381 = bits(io.b, 3055, 3040)
    b[190] <= _T_381
    node _T_382 = bits(io.a, 3071, 3056)
    a[191] <= _T_382
    node _T_383 = bits(io.b, 3071, 3056)
    b[191] <= _T_383
    node _T_384 = bits(io.a, 3087, 3072)
    a[192] <= _T_384
    node _T_385 = bits(io.b, 3087, 3072)
    b[192] <= _T_385
    node _T_386 = bits(io.a, 3103, 3088)
    a[193] <= _T_386
    node _T_387 = bits(io.b, 3103, 3088)
    b[193] <= _T_387
    node _T_388 = bits(io.a, 3119, 3104)
    a[194] <= _T_388
    node _T_389 = bits(io.b, 3119, 3104)
    b[194] <= _T_389
    node _T_390 = bits(io.a, 3135, 3120)
    a[195] <= _T_390
    node _T_391 = bits(io.b, 3135, 3120)
    b[195] <= _T_391
    node _T_392 = bits(io.a, 3151, 3136)
    a[196] <= _T_392
    node _T_393 = bits(io.b, 3151, 3136)
    b[196] <= _T_393
    node _T_394 = bits(io.a, 3167, 3152)
    a[197] <= _T_394
    node _T_395 = bits(io.b, 3167, 3152)
    b[197] <= _T_395
    node _T_396 = bits(io.a, 3183, 3168)
    a[198] <= _T_396
    node _T_397 = bits(io.b, 3183, 3168)
    b[198] <= _T_397
    node _T_398 = bits(io.a, 3199, 3184)
    a[199] <= _T_398
    node _T_399 = bits(io.b, 3199, 3184)
    b[199] <= _T_399
    node _T_400 = bits(io.a, 3215, 3200)
    a[200] <= _T_400
    node _T_401 = bits(io.b, 3215, 3200)
    b[200] <= _T_401
    node _T_402 = bits(io.a, 3231, 3216)
    a[201] <= _T_402
    node _T_403 = bits(io.b, 3231, 3216)
    b[201] <= _T_403
    node _T_404 = bits(io.a, 3247, 3232)
    a[202] <= _T_404
    node _T_405 = bits(io.b, 3247, 3232)
    b[202] <= _T_405
    node _T_406 = bits(io.a, 3263, 3248)
    a[203] <= _T_406
    node _T_407 = bits(io.b, 3263, 3248)
    b[203] <= _T_407
    node _T_408 = bits(io.a, 3279, 3264)
    a[204] <= _T_408
    node _T_409 = bits(io.b, 3279, 3264)
    b[204] <= _T_409
    node _T_410 = bits(io.a, 3295, 3280)
    a[205] <= _T_410
    node _T_411 = bits(io.b, 3295, 3280)
    b[205] <= _T_411
    node _T_412 = bits(io.a, 3311, 3296)
    a[206] <= _T_412
    node _T_413 = bits(io.b, 3311, 3296)
    b[206] <= _T_413
    node _T_414 = bits(io.a, 3327, 3312)
    a[207] <= _T_414
    node _T_415 = bits(io.b, 3327, 3312)
    b[207] <= _T_415
    node _T_416 = bits(io.a, 3343, 3328)
    a[208] <= _T_416
    node _T_417 = bits(io.b, 3343, 3328)
    b[208] <= _T_417
    node _T_418 = bits(io.a, 3359, 3344)
    a[209] <= _T_418
    node _T_419 = bits(io.b, 3359, 3344)
    b[209] <= _T_419
    node _T_420 = bits(io.a, 3375, 3360)
    a[210] <= _T_420
    node _T_421 = bits(io.b, 3375, 3360)
    b[210] <= _T_421
    node _T_422 = bits(io.a, 3391, 3376)
    a[211] <= _T_422
    node _T_423 = bits(io.b, 3391, 3376)
    b[211] <= _T_423
    node _T_424 = bits(io.a, 3407, 3392)
    a[212] <= _T_424
    node _T_425 = bits(io.b, 3407, 3392)
    b[212] <= _T_425
    node _T_426 = bits(io.a, 3423, 3408)
    a[213] <= _T_426
    node _T_427 = bits(io.b, 3423, 3408)
    b[213] <= _T_427
    node _T_428 = bits(io.a, 3439, 3424)
    a[214] <= _T_428
    node _T_429 = bits(io.b, 3439, 3424)
    b[214] <= _T_429
    node _T_430 = bits(io.a, 3455, 3440)
    a[215] <= _T_430
    node _T_431 = bits(io.b, 3455, 3440)
    b[215] <= _T_431
    node _T_432 = bits(io.a, 3471, 3456)
    a[216] <= _T_432
    node _T_433 = bits(io.b, 3471, 3456)
    b[216] <= _T_433
    node _T_434 = bits(io.a, 3487, 3472)
    a[217] <= _T_434
    node _T_435 = bits(io.b, 3487, 3472)
    b[217] <= _T_435
    node _T_436 = bits(io.a, 3503, 3488)
    a[218] <= _T_436
    node _T_437 = bits(io.b, 3503, 3488)
    b[218] <= _T_437
    node _T_438 = bits(io.a, 3519, 3504)
    a[219] <= _T_438
    node _T_439 = bits(io.b, 3519, 3504)
    b[219] <= _T_439
    node _T_440 = bits(io.a, 3535, 3520)
    a[220] <= _T_440
    node _T_441 = bits(io.b, 3535, 3520)
    b[220] <= _T_441
    node _T_442 = bits(io.a, 3551, 3536)
    a[221] <= _T_442
    node _T_443 = bits(io.b, 3551, 3536)
    b[221] <= _T_443
    node _T_444 = bits(io.a, 3567, 3552)
    a[222] <= _T_444
    node _T_445 = bits(io.b, 3567, 3552)
    b[222] <= _T_445
    node _T_446 = bits(io.a, 3583, 3568)
    a[223] <= _T_446
    node _T_447 = bits(io.b, 3583, 3568)
    b[223] <= _T_447
    node _T_448 = bits(io.a, 3599, 3584)
    a[224] <= _T_448
    node _T_449 = bits(io.b, 3599, 3584)
    b[224] <= _T_449
    node _T_450 = bits(io.a, 3615, 3600)
    a[225] <= _T_450
    node _T_451 = bits(io.b, 3615, 3600)
    b[225] <= _T_451
    node _T_452 = bits(io.a, 3631, 3616)
    a[226] <= _T_452
    node _T_453 = bits(io.b, 3631, 3616)
    b[226] <= _T_453
    node _T_454 = bits(io.a, 3647, 3632)
    a[227] <= _T_454
    node _T_455 = bits(io.b, 3647, 3632)
    b[227] <= _T_455
    node _T_456 = bits(io.a, 3663, 3648)
    a[228] <= _T_456
    node _T_457 = bits(io.b, 3663, 3648)
    b[228] <= _T_457
    node _T_458 = bits(io.a, 3679, 3664)
    a[229] <= _T_458
    node _T_459 = bits(io.b, 3679, 3664)
    b[229] <= _T_459
    node _T_460 = bits(io.a, 3695, 3680)
    a[230] <= _T_460
    node _T_461 = bits(io.b, 3695, 3680)
    b[230] <= _T_461
    node _T_462 = bits(io.a, 3711, 3696)
    a[231] <= _T_462
    node _T_463 = bits(io.b, 3711, 3696)
    b[231] <= _T_463
    node _T_464 = bits(io.a, 3727, 3712)
    a[232] <= _T_464
    node _T_465 = bits(io.b, 3727, 3712)
    b[232] <= _T_465
    node _T_466 = bits(io.a, 3743, 3728)
    a[233] <= _T_466
    node _T_467 = bits(io.b, 3743, 3728)
    b[233] <= _T_467
    node _T_468 = bits(io.a, 3759, 3744)
    a[234] <= _T_468
    node _T_469 = bits(io.b, 3759, 3744)
    b[234] <= _T_469
    node _T_470 = bits(io.a, 3775, 3760)
    a[235] <= _T_470
    node _T_471 = bits(io.b, 3775, 3760)
    b[235] <= _T_471
    node _T_472 = bits(io.a, 3791, 3776)
    a[236] <= _T_472
    node _T_473 = bits(io.b, 3791, 3776)
    b[236] <= _T_473
    node _T_474 = bits(io.a, 3807, 3792)
    a[237] <= _T_474
    node _T_475 = bits(io.b, 3807, 3792)
    b[237] <= _T_475
    node _T_476 = bits(io.a, 3823, 3808)
    a[238] <= _T_476
    node _T_477 = bits(io.b, 3823, 3808)
    b[238] <= _T_477
    node _T_478 = bits(io.a, 3839, 3824)
    a[239] <= _T_478
    node _T_479 = bits(io.b, 3839, 3824)
    b[239] <= _T_479
    node _T_480 = bits(io.a, 3855, 3840)
    a[240] <= _T_480
    node _T_481 = bits(io.b, 3855, 3840)
    b[240] <= _T_481
    node _T_482 = bits(io.a, 3871, 3856)
    a[241] <= _T_482
    node _T_483 = bits(io.b, 3871, 3856)
    b[241] <= _T_483
    node _T_484 = bits(io.a, 3887, 3872)
    a[242] <= _T_484
    node _T_485 = bits(io.b, 3887, 3872)
    b[242] <= _T_485
    node _T_486 = bits(io.a, 3903, 3888)
    a[243] <= _T_486
    node _T_487 = bits(io.b, 3903, 3888)
    b[243] <= _T_487
    node _T_488 = bits(io.a, 3919, 3904)
    a[244] <= _T_488
    node _T_489 = bits(io.b, 3919, 3904)
    b[244] <= _T_489
    node _T_490 = bits(io.a, 3935, 3920)
    a[245] <= _T_490
    node _T_491 = bits(io.b, 3935, 3920)
    b[245] <= _T_491
    node _T_492 = bits(io.a, 3951, 3936)
    a[246] <= _T_492
    node _T_493 = bits(io.b, 3951, 3936)
    b[246] <= _T_493
    node _T_494 = bits(io.a, 3967, 3952)
    a[247] <= _T_494
    node _T_495 = bits(io.b, 3967, 3952)
    b[247] <= _T_495
    node _T_496 = bits(io.a, 3983, 3968)
    a[248] <= _T_496
    node _T_497 = bits(io.b, 3983, 3968)
    b[248] <= _T_497
    node _T_498 = bits(io.a, 3999, 3984)
    a[249] <= _T_498
    node _T_499 = bits(io.b, 3999, 3984)
    b[249] <= _T_499
    node _T_500 = bits(io.a, 4015, 4000)
    a[250] <= _T_500
    node _T_501 = bits(io.b, 4015, 4000)
    b[250] <= _T_501
    node _T_502 = bits(io.a, 4031, 4016)
    a[251] <= _T_502
    node _T_503 = bits(io.b, 4031, 4016)
    b[251] <= _T_503
    node _T_504 = bits(io.a, 4047, 4032)
    a[252] <= _T_504
    node _T_505 = bits(io.b, 4047, 4032)
    b[252] <= _T_505
    node _T_506 = bits(io.a, 4063, 4048)
    a[253] <= _T_506
    node _T_507 = bits(io.b, 4063, 4048)
    b[253] <= _T_507
    node _T_508 = bits(io.a, 4079, 4064)
    a[254] <= _T_508
    node _T_509 = bits(io.b, 4079, 4064)
    b[254] <= _T_509
    node _T_510 = bits(io.a, 4095, 4080)
    a[255] <= _T_510
    node _T_511 = bits(io.b, 4095, 4080)
    b[255] <= _T_511
    node _T_512 = bits(io.a, 4111, 4096)
    a[256] <= _T_512
    node _T_513 = bits(io.b, 4111, 4096)
    b[256] <= _T_513
    node _T_514 = bits(io.a, 4127, 4112)
    a[257] <= _T_514
    node _T_515 = bits(io.b, 4127, 4112)
    b[257] <= _T_515
    node _T_516 = bits(io.a, 4143, 4128)
    a[258] <= _T_516
    node _T_517 = bits(io.b, 4143, 4128)
    b[258] <= _T_517
    node _T_518 = bits(io.a, 4159, 4144)
    a[259] <= _T_518
    node _T_519 = bits(io.b, 4159, 4144)
    b[259] <= _T_519
    node _T_520 = bits(io.a, 4175, 4160)
    a[260] <= _T_520
    node _T_521 = bits(io.b, 4175, 4160)
    b[260] <= _T_521
    node _T_522 = bits(io.a, 4191, 4176)
    a[261] <= _T_522
    node _T_523 = bits(io.b, 4191, 4176)
    b[261] <= _T_523
    node _T_524 = bits(io.a, 4207, 4192)
    a[262] <= _T_524
    node _T_525 = bits(io.b, 4207, 4192)
    b[262] <= _T_525
    node _T_526 = bits(io.a, 4223, 4208)
    a[263] <= _T_526
    node _T_527 = bits(io.b, 4223, 4208)
    b[263] <= _T_527
    node _T_528 = bits(io.a, 4239, 4224)
    a[264] <= _T_528
    node _T_529 = bits(io.b, 4239, 4224)
    b[264] <= _T_529
    node _T_530 = bits(io.a, 4255, 4240)
    a[265] <= _T_530
    node _T_531 = bits(io.b, 4255, 4240)
    b[265] <= _T_531
    node _T_532 = bits(io.a, 4271, 4256)
    a[266] <= _T_532
    node _T_533 = bits(io.b, 4271, 4256)
    b[266] <= _T_533
    node _T_534 = bits(io.a, 4287, 4272)
    a[267] <= _T_534
    node _T_535 = bits(io.b, 4287, 4272)
    b[267] <= _T_535
    node _T_536 = bits(io.a, 4303, 4288)
    a[268] <= _T_536
    node _T_537 = bits(io.b, 4303, 4288)
    b[268] <= _T_537
    node _T_538 = bits(io.a, 4319, 4304)
    a[269] <= _T_538
    node _T_539 = bits(io.b, 4319, 4304)
    b[269] <= _T_539
    node _T_540 = bits(io.a, 4335, 4320)
    a[270] <= _T_540
    node _T_541 = bits(io.b, 4335, 4320)
    b[270] <= _T_541
    node _T_542 = bits(io.a, 4351, 4336)
    a[271] <= _T_542
    node _T_543 = bits(io.b, 4351, 4336)
    b[271] <= _T_543
    node _T_544 = bits(io.a, 4367, 4352)
    a[272] <= _T_544
    node _T_545 = bits(io.b, 4367, 4352)
    b[272] <= _T_545
    node _T_546 = bits(io.a, 4383, 4368)
    a[273] <= _T_546
    node _T_547 = bits(io.b, 4383, 4368)
    b[273] <= _T_547
    node _T_548 = bits(io.a, 4399, 4384)
    a[274] <= _T_548
    node _T_549 = bits(io.b, 4399, 4384)
    b[274] <= _T_549
    node _T_550 = bits(io.a, 4415, 4400)
    a[275] <= _T_550
    node _T_551 = bits(io.b, 4415, 4400)
    b[275] <= _T_551
    node _T_552 = bits(io.a, 4431, 4416)
    a[276] <= _T_552
    node _T_553 = bits(io.b, 4431, 4416)
    b[276] <= _T_553
    node _T_554 = bits(io.a, 4447, 4432)
    a[277] <= _T_554
    node _T_555 = bits(io.b, 4447, 4432)
    b[277] <= _T_555
    node _T_556 = bits(io.a, 4463, 4448)
    a[278] <= _T_556
    node _T_557 = bits(io.b, 4463, 4448)
    b[278] <= _T_557
    node _T_558 = bits(io.a, 4479, 4464)
    a[279] <= _T_558
    node _T_559 = bits(io.b, 4479, 4464)
    b[279] <= _T_559
    node _T_560 = bits(io.a, 4495, 4480)
    a[280] <= _T_560
    node _T_561 = bits(io.b, 4495, 4480)
    b[280] <= _T_561
    node _T_562 = bits(io.a, 4511, 4496)
    a[281] <= _T_562
    node _T_563 = bits(io.b, 4511, 4496)
    b[281] <= _T_563
    node _T_564 = bits(io.a, 4527, 4512)
    a[282] <= _T_564
    node _T_565 = bits(io.b, 4527, 4512)
    b[282] <= _T_565
    node _T_566 = bits(io.a, 4543, 4528)
    a[283] <= _T_566
    node _T_567 = bits(io.b, 4543, 4528)
    b[283] <= _T_567
    node _T_568 = bits(io.a, 4559, 4544)
    a[284] <= _T_568
    node _T_569 = bits(io.b, 4559, 4544)
    b[284] <= _T_569
    node _T_570 = bits(io.a, 4575, 4560)
    a[285] <= _T_570
    node _T_571 = bits(io.b, 4575, 4560)
    b[285] <= _T_571
    node _T_572 = bits(io.a, 4591, 4576)
    a[286] <= _T_572
    node _T_573 = bits(io.b, 4591, 4576)
    b[286] <= _T_573
    node _T_574 = bits(io.a, 4607, 4592)
    a[287] <= _T_574
    node _T_575 = bits(io.b, 4607, 4592)
    b[287] <= _T_575
    node _T_576 = bits(io.a, 4623, 4608)
    a[288] <= _T_576
    node _T_577 = bits(io.b, 4623, 4608)
    b[288] <= _T_577
    node _T_578 = bits(io.a, 4639, 4624)
    a[289] <= _T_578
    node _T_579 = bits(io.b, 4639, 4624)
    b[289] <= _T_579
    node _T_580 = bits(io.a, 4655, 4640)
    a[290] <= _T_580
    node _T_581 = bits(io.b, 4655, 4640)
    b[290] <= _T_581
    node _T_582 = bits(io.a, 4671, 4656)
    a[291] <= _T_582
    node _T_583 = bits(io.b, 4671, 4656)
    b[291] <= _T_583
    node _T_584 = bits(io.a, 4687, 4672)
    a[292] <= _T_584
    node _T_585 = bits(io.b, 4687, 4672)
    b[292] <= _T_585
    node _T_586 = bits(io.a, 4703, 4688)
    a[293] <= _T_586
    node _T_587 = bits(io.b, 4703, 4688)
    b[293] <= _T_587
    node _T_588 = bits(io.a, 4719, 4704)
    a[294] <= _T_588
    node _T_589 = bits(io.b, 4719, 4704)
    b[294] <= _T_589
    node _T_590 = bits(io.a, 4735, 4720)
    a[295] <= _T_590
    node _T_591 = bits(io.b, 4735, 4720)
    b[295] <= _T_591
    node _T_592 = bits(io.a, 4751, 4736)
    a[296] <= _T_592
    node _T_593 = bits(io.b, 4751, 4736)
    b[296] <= _T_593
    node _T_594 = bits(io.a, 4767, 4752)
    a[297] <= _T_594
    node _T_595 = bits(io.b, 4767, 4752)
    b[297] <= _T_595
    node _T_596 = bits(io.a, 4783, 4768)
    a[298] <= _T_596
    node _T_597 = bits(io.b, 4783, 4768)
    b[298] <= _T_597
    node _T_598 = bits(io.a, 4799, 4784)
    a[299] <= _T_598
    node _T_599 = bits(io.b, 4799, 4784)
    b[299] <= _T_599
    node _T_600 = bits(io.a, 4815, 4800)
    a[300] <= _T_600
    node _T_601 = bits(io.b, 4815, 4800)
    b[300] <= _T_601
    node _T_602 = bits(io.a, 4831, 4816)
    a[301] <= _T_602
    node _T_603 = bits(io.b, 4831, 4816)
    b[301] <= _T_603
    node _T_604 = bits(io.a, 4847, 4832)
    a[302] <= _T_604
    node _T_605 = bits(io.b, 4847, 4832)
    b[302] <= _T_605
    node _T_606 = bits(io.a, 4863, 4848)
    a[303] <= _T_606
    node _T_607 = bits(io.b, 4863, 4848)
    b[303] <= _T_607
    node _T_608 = bits(io.a, 4879, 4864)
    a[304] <= _T_608
    node _T_609 = bits(io.b, 4879, 4864)
    b[304] <= _T_609
    node _T_610 = bits(io.a, 4895, 4880)
    a[305] <= _T_610
    node _T_611 = bits(io.b, 4895, 4880)
    b[305] <= _T_611
    node _T_612 = bits(io.a, 4911, 4896)
    a[306] <= _T_612
    node _T_613 = bits(io.b, 4911, 4896)
    b[306] <= _T_613
    node _T_614 = bits(io.a, 4927, 4912)
    a[307] <= _T_614
    node _T_615 = bits(io.b, 4927, 4912)
    b[307] <= _T_615
    node _T_616 = bits(io.a, 4943, 4928)
    a[308] <= _T_616
    node _T_617 = bits(io.b, 4943, 4928)
    b[308] <= _T_617
    node _T_618 = bits(io.a, 4959, 4944)
    a[309] <= _T_618
    node _T_619 = bits(io.b, 4959, 4944)
    b[309] <= _T_619
    node _T_620 = bits(io.a, 4975, 4960)
    a[310] <= _T_620
    node _T_621 = bits(io.b, 4975, 4960)
    b[310] <= _T_621
    node _T_622 = bits(io.a, 4991, 4976)
    a[311] <= _T_622
    node _T_623 = bits(io.b, 4991, 4976)
    b[311] <= _T_623
    node _T_624 = bits(io.a, 5007, 4992)
    a[312] <= _T_624
    node _T_625 = bits(io.b, 5007, 4992)
    b[312] <= _T_625
    node _T_626 = bits(io.a, 5023, 5008)
    a[313] <= _T_626
    node _T_627 = bits(io.b, 5023, 5008)
    b[313] <= _T_627
    node _T_628 = bits(io.a, 5039, 5024)
    a[314] <= _T_628
    node _T_629 = bits(io.b, 5039, 5024)
    b[314] <= _T_629
    node _T_630 = bits(io.a, 5055, 5040)
    a[315] <= _T_630
    node _T_631 = bits(io.b, 5055, 5040)
    b[315] <= _T_631
    node _T_632 = bits(io.a, 5071, 5056)
    a[316] <= _T_632
    node _T_633 = bits(io.b, 5071, 5056)
    b[316] <= _T_633
    node _T_634 = bits(io.a, 5087, 5072)
    a[317] <= _T_634
    node _T_635 = bits(io.b, 5087, 5072)
    b[317] <= _T_635
    node _T_636 = bits(io.a, 5103, 5088)
    a[318] <= _T_636
    node _T_637 = bits(io.b, 5103, 5088)
    b[318] <= _T_637
    node _T_638 = bits(io.a, 5119, 5104)
    a[319] <= _T_638
    node _T_639 = bits(io.b, 5119, 5104)
    b[319] <= _T_639
    node _T_640 = bits(io.a, 5135, 5120)
    a[320] <= _T_640
    node _T_641 = bits(io.b, 5135, 5120)
    b[320] <= _T_641
    node _T_642 = bits(io.a, 5151, 5136)
    a[321] <= _T_642
    node _T_643 = bits(io.b, 5151, 5136)
    b[321] <= _T_643
    node _T_644 = bits(io.a, 5167, 5152)
    a[322] <= _T_644
    node _T_645 = bits(io.b, 5167, 5152)
    b[322] <= _T_645
    node _T_646 = bits(io.a, 5183, 5168)
    a[323] <= _T_646
    node _T_647 = bits(io.b, 5183, 5168)
    b[323] <= _T_647
    node _T_648 = bits(io.a, 5199, 5184)
    a[324] <= _T_648
    node _T_649 = bits(io.b, 5199, 5184)
    b[324] <= _T_649
    node _T_650 = bits(io.a, 5215, 5200)
    a[325] <= _T_650
    node _T_651 = bits(io.b, 5215, 5200)
    b[325] <= _T_651
    node _T_652 = bits(io.a, 5231, 5216)
    a[326] <= _T_652
    node _T_653 = bits(io.b, 5231, 5216)
    b[326] <= _T_653
    node _T_654 = bits(io.a, 5247, 5232)
    a[327] <= _T_654
    node _T_655 = bits(io.b, 5247, 5232)
    b[327] <= _T_655
    node _T_656 = bits(io.a, 5263, 5248)
    a[328] <= _T_656
    node _T_657 = bits(io.b, 5263, 5248)
    b[328] <= _T_657
    node _T_658 = bits(io.a, 5279, 5264)
    a[329] <= _T_658
    node _T_659 = bits(io.b, 5279, 5264)
    b[329] <= _T_659
    node _T_660 = bits(io.a, 5295, 5280)
    a[330] <= _T_660
    node _T_661 = bits(io.b, 5295, 5280)
    b[330] <= _T_661
    node _T_662 = bits(io.a, 5311, 5296)
    a[331] <= _T_662
    node _T_663 = bits(io.b, 5311, 5296)
    b[331] <= _T_663
    node _T_664 = bits(io.a, 5327, 5312)
    a[332] <= _T_664
    node _T_665 = bits(io.b, 5327, 5312)
    b[332] <= _T_665
    node _T_666 = bits(io.a, 5343, 5328)
    a[333] <= _T_666
    node _T_667 = bits(io.b, 5343, 5328)
    b[333] <= _T_667
    node _T_668 = bits(io.a, 5359, 5344)
    a[334] <= _T_668
    node _T_669 = bits(io.b, 5359, 5344)
    b[334] <= _T_669
    node _T_670 = bits(io.a, 5375, 5360)
    a[335] <= _T_670
    node _T_671 = bits(io.b, 5375, 5360)
    b[335] <= _T_671
    node _T_672 = bits(io.a, 5391, 5376)
    a[336] <= _T_672
    node _T_673 = bits(io.b, 5391, 5376)
    b[336] <= _T_673
    node _T_674 = bits(io.a, 5407, 5392)
    a[337] <= _T_674
    node _T_675 = bits(io.b, 5407, 5392)
    b[337] <= _T_675
    node _T_676 = bits(io.a, 5423, 5408)
    a[338] <= _T_676
    node _T_677 = bits(io.b, 5423, 5408)
    b[338] <= _T_677
    node _T_678 = bits(io.a, 5439, 5424)
    a[339] <= _T_678
    node _T_679 = bits(io.b, 5439, 5424)
    b[339] <= _T_679
    node _T_680 = bits(io.a, 5455, 5440)
    a[340] <= _T_680
    node _T_681 = bits(io.b, 5455, 5440)
    b[340] <= _T_681
    node _T_682 = bits(io.a, 5471, 5456)
    a[341] <= _T_682
    node _T_683 = bits(io.b, 5471, 5456)
    b[341] <= _T_683
    node _T_684 = bits(io.a, 5487, 5472)
    a[342] <= _T_684
    node _T_685 = bits(io.b, 5487, 5472)
    b[342] <= _T_685
    node _T_686 = bits(io.a, 5503, 5488)
    a[343] <= _T_686
    node _T_687 = bits(io.b, 5503, 5488)
    b[343] <= _T_687
    node _T_688 = bits(io.a, 5519, 5504)
    a[344] <= _T_688
    node _T_689 = bits(io.b, 5519, 5504)
    b[344] <= _T_689
    node _T_690 = bits(io.a, 5535, 5520)
    a[345] <= _T_690
    node _T_691 = bits(io.b, 5535, 5520)
    b[345] <= _T_691
    node _T_692 = bits(io.a, 5551, 5536)
    a[346] <= _T_692
    node _T_693 = bits(io.b, 5551, 5536)
    b[346] <= _T_693
    node _T_694 = bits(io.a, 5567, 5552)
    a[347] <= _T_694
    node _T_695 = bits(io.b, 5567, 5552)
    b[347] <= _T_695
    node _T_696 = bits(io.a, 5583, 5568)
    a[348] <= _T_696
    node _T_697 = bits(io.b, 5583, 5568)
    b[348] <= _T_697
    node _T_698 = bits(io.a, 5599, 5584)
    a[349] <= _T_698
    node _T_699 = bits(io.b, 5599, 5584)
    b[349] <= _T_699
    node _T_700 = bits(io.a, 5615, 5600)
    a[350] <= _T_700
    node _T_701 = bits(io.b, 5615, 5600)
    b[350] <= _T_701
    node _T_702 = bits(io.a, 5631, 5616)
    a[351] <= _T_702
    node _T_703 = bits(io.b, 5631, 5616)
    b[351] <= _T_703
    node _T_704 = bits(io.a, 5647, 5632)
    a[352] <= _T_704
    node _T_705 = bits(io.b, 5647, 5632)
    b[352] <= _T_705
    node _T_706 = bits(io.a, 5663, 5648)
    a[353] <= _T_706
    node _T_707 = bits(io.b, 5663, 5648)
    b[353] <= _T_707
    node _T_708 = bits(io.a, 5679, 5664)
    a[354] <= _T_708
    node _T_709 = bits(io.b, 5679, 5664)
    b[354] <= _T_709
    node _T_710 = bits(io.a, 5695, 5680)
    a[355] <= _T_710
    node _T_711 = bits(io.b, 5695, 5680)
    b[355] <= _T_711
    node _T_712 = bits(io.a, 5711, 5696)
    a[356] <= _T_712
    node _T_713 = bits(io.b, 5711, 5696)
    b[356] <= _T_713
    node _T_714 = bits(io.a, 5727, 5712)
    a[357] <= _T_714
    node _T_715 = bits(io.b, 5727, 5712)
    b[357] <= _T_715
    node _T_716 = bits(io.a, 5743, 5728)
    a[358] <= _T_716
    node _T_717 = bits(io.b, 5743, 5728)
    b[358] <= _T_717
    node _T_718 = bits(io.a, 5759, 5744)
    a[359] <= _T_718
    node _T_719 = bits(io.b, 5759, 5744)
    b[359] <= _T_719
    node _T_720 = bits(io.a, 5775, 5760)
    a[360] <= _T_720
    node _T_721 = bits(io.b, 5775, 5760)
    b[360] <= _T_721
    node _T_722 = bits(io.a, 5791, 5776)
    a[361] <= _T_722
    node _T_723 = bits(io.b, 5791, 5776)
    b[361] <= _T_723
    node _T_724 = bits(io.a, 5807, 5792)
    a[362] <= _T_724
    node _T_725 = bits(io.b, 5807, 5792)
    b[362] <= _T_725
    node _T_726 = bits(io.a, 5823, 5808)
    a[363] <= _T_726
    node _T_727 = bits(io.b, 5823, 5808)
    b[363] <= _T_727
    node _T_728 = bits(io.a, 5839, 5824)
    a[364] <= _T_728
    node _T_729 = bits(io.b, 5839, 5824)
    b[364] <= _T_729
    node _T_730 = bits(io.a, 5855, 5840)
    a[365] <= _T_730
    node _T_731 = bits(io.b, 5855, 5840)
    b[365] <= _T_731
    node _T_732 = bits(io.a, 5871, 5856)
    a[366] <= _T_732
    node _T_733 = bits(io.b, 5871, 5856)
    b[366] <= _T_733
    node _T_734 = bits(io.a, 5887, 5872)
    a[367] <= _T_734
    node _T_735 = bits(io.b, 5887, 5872)
    b[367] <= _T_735
    node _T_736 = bits(io.a, 5903, 5888)
    a[368] <= _T_736
    node _T_737 = bits(io.b, 5903, 5888)
    b[368] <= _T_737
    node _T_738 = bits(io.a, 5919, 5904)
    a[369] <= _T_738
    node _T_739 = bits(io.b, 5919, 5904)
    b[369] <= _T_739
    node _T_740 = bits(io.a, 5935, 5920)
    a[370] <= _T_740
    node _T_741 = bits(io.b, 5935, 5920)
    b[370] <= _T_741
    node _T_742 = bits(io.a, 5951, 5936)
    a[371] <= _T_742
    node _T_743 = bits(io.b, 5951, 5936)
    b[371] <= _T_743
    node _T_744 = bits(io.a, 5967, 5952)
    a[372] <= _T_744
    node _T_745 = bits(io.b, 5967, 5952)
    b[372] <= _T_745
    node _T_746 = bits(io.a, 5983, 5968)
    a[373] <= _T_746
    node _T_747 = bits(io.b, 5983, 5968)
    b[373] <= _T_747
    node _T_748 = bits(io.a, 5999, 5984)
    a[374] <= _T_748
    node _T_749 = bits(io.b, 5999, 5984)
    b[374] <= _T_749
    node _T_750 = bits(io.a, 6015, 6000)
    a[375] <= _T_750
    node _T_751 = bits(io.b, 6015, 6000)
    b[375] <= _T_751
    node _T_752 = bits(io.a, 6031, 6016)
    a[376] <= _T_752
    node _T_753 = bits(io.b, 6031, 6016)
    b[376] <= _T_753
    node _T_754 = bits(io.a, 6047, 6032)
    a[377] <= _T_754
    node _T_755 = bits(io.b, 6047, 6032)
    b[377] <= _T_755
    node _T_756 = bits(io.a, 6063, 6048)
    a[378] <= _T_756
    node _T_757 = bits(io.b, 6063, 6048)
    b[378] <= _T_757
    node _T_758 = bits(io.a, 6079, 6064)
    a[379] <= _T_758
    node _T_759 = bits(io.b, 6079, 6064)
    b[379] <= _T_759
    node _T_760 = bits(io.a, 6095, 6080)
    a[380] <= _T_760
    node _T_761 = bits(io.b, 6095, 6080)
    b[380] <= _T_761
    node _T_762 = bits(io.a, 6111, 6096)
    a[381] <= _T_762
    node _T_763 = bits(io.b, 6111, 6096)
    b[381] <= _T_763
    node _T_764 = bits(io.a, 6127, 6112)
    a[382] <= _T_764
    node _T_765 = bits(io.b, 6127, 6112)
    b[382] <= _T_765
    node _T_766 = bits(io.a, 6143, 6128)
    a[383] <= _T_766
    node _T_767 = bits(io.b, 6143, 6128)
    b[383] <= _T_767
    node _T_768 = bits(io.a, 6159, 6144)
    a[384] <= _T_768
    node _T_769 = bits(io.b, 6159, 6144)
    b[384] <= _T_769
    node _T_770 = bits(io.a, 6175, 6160)
    a[385] <= _T_770
    node _T_771 = bits(io.b, 6175, 6160)
    b[385] <= _T_771
    node _T_772 = bits(io.a, 6191, 6176)
    a[386] <= _T_772
    node _T_773 = bits(io.b, 6191, 6176)
    b[386] <= _T_773
    node _T_774 = bits(io.a, 6207, 6192)
    a[387] <= _T_774
    node _T_775 = bits(io.b, 6207, 6192)
    b[387] <= _T_775
    node _T_776 = bits(io.a, 6223, 6208)
    a[388] <= _T_776
    node _T_777 = bits(io.b, 6223, 6208)
    b[388] <= _T_777
    node _T_778 = bits(io.a, 6239, 6224)
    a[389] <= _T_778
    node _T_779 = bits(io.b, 6239, 6224)
    b[389] <= _T_779
    node _T_780 = bits(io.a, 6255, 6240)
    a[390] <= _T_780
    node _T_781 = bits(io.b, 6255, 6240)
    b[390] <= _T_781
    node _T_782 = bits(io.a, 6271, 6256)
    a[391] <= _T_782
    node _T_783 = bits(io.b, 6271, 6256)
    b[391] <= _T_783
    node _T_784 = bits(io.a, 6287, 6272)
    a[392] <= _T_784
    node _T_785 = bits(io.b, 6287, 6272)
    b[392] <= _T_785
    node _T_786 = bits(io.a, 6303, 6288)
    a[393] <= _T_786
    node _T_787 = bits(io.b, 6303, 6288)
    b[393] <= _T_787
    node _T_788 = bits(io.a, 6319, 6304)
    a[394] <= _T_788
    node _T_789 = bits(io.b, 6319, 6304)
    b[394] <= _T_789
    node _T_790 = bits(io.a, 6335, 6320)
    a[395] <= _T_790
    node _T_791 = bits(io.b, 6335, 6320)
    b[395] <= _T_791
    node _T_792 = bits(io.a, 6351, 6336)
    a[396] <= _T_792
    node _T_793 = bits(io.b, 6351, 6336)
    b[396] <= _T_793
    node _T_794 = bits(io.a, 6367, 6352)
    a[397] <= _T_794
    node _T_795 = bits(io.b, 6367, 6352)
    b[397] <= _T_795
    node _T_796 = bits(io.a, 6383, 6368)
    a[398] <= _T_796
    node _T_797 = bits(io.b, 6383, 6368)
    b[398] <= _T_797
    node _T_798 = bits(io.a, 6399, 6384)
    a[399] <= _T_798
    node _T_799 = bits(io.b, 6399, 6384)
    b[399] <= _T_799
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<9>, clock with : 
      reset => (reset, UInt<9>("h0"))
    node _T_803 = eq(i, UInt<9>("h190"))
    node _T_804 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_800 = mul(a[i], b[i])
      node _T_801 = add(sum, _T_800)
      sum <= _T_801
      node _T_802 = add(i, UInt<1>("h1"))
      i <= _T_802
    else :
      when _T_803 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_804 :
          node _T_805 = add(i, UInt<1>("h1"))
          i <= _T_805
          node _T_806 = mul(a[i], b[i])
          node _T_807 = add(sum, _T_806)
          sum <= _T_807
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_102 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_102 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<6400>, flip w : UInt<6400>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_102
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_102
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module FC1 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>[16], flip wa_in : UInt<3200>, flip wb_in : UInt<3200>, flip bias : UInt<16>, flip rdy : UInt<1>, flip rom_rdy : UInt<1>, flip done : UInt<1>, d_out : UInt<16>, v : UInt<1>}
  
    reg din : UInt<6400>, clock with : 
      reset => (reset, UInt<6400>("h0"))
    din <= din
    reg first_rdy : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    first_rdy <= UInt<1>("h0")
    reg channel_counter : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T = eq(channel_counter, UInt<5>("h19"))
    inst _T_1 of ShiftRegister_6
    _T_1.clock <= clock
    _T_1.reset <= reset
    inst _T_2 of ShiftRegister_7
    _T_2.clock <= clock
    _T_2.reset <= reset
    inst _T_4 of ShiftRegister_8
    _T_4.clock <= clock
    _T_4.reset <= reset
    inst _T_5 of ShiftRegister_9
    _T_5.clock <= clock
    _T_5.reset <= reset
    inst _T_8 of ShiftRegister_10
    _T_8.clock <= clock
    _T_8.reset <= reset
    inst _T_9 of ShiftRegister_11
    _T_9.clock <= clock
    _T_9.reset <= reset
    inst _T_11 of ShiftRegister_12
    _T_11.clock <= clock
    _T_11.reset <= reset
    inst _T_12 of ShiftRegister_13
    _T_12.clock <= clock
    _T_12.reset <= reset
    inst _T_16 of ShiftRegister_14
    _T_16.clock <= clock
    _T_16.reset <= reset
    inst _T_17 of ShiftRegister_15
    _T_17.clock <= clock
    _T_17.reset <= reset
    inst _T_19 of ShiftRegister_16
    _T_19.clock <= clock
    _T_19.reset <= reset
    inst _T_20 of ShiftRegister_17
    _T_20.clock <= clock
    _T_20.reset <= reset
    inst _T_23 of ShiftRegister_18
    _T_23.clock <= clock
    _T_23.reset <= reset
    inst _T_24 of ShiftRegister_19
    _T_24.clock <= clock
    _T_24.reset <= reset
    inst _T_26 of ShiftRegister_20
    _T_26.clock <= clock
    _T_26.reset <= reset
    inst _T_27 of ShiftRegister_21
    _T_27.clock <= clock
    _T_27.reset <= reset
    when _T :
      channel_counter <= UInt<1>("h0")
      first_rdy <= UInt<1>("h1")
      node _T_3 = cat(_T_1.io.d_out, _T_2.io.d_out)
      node _T_6 = cat(_T_4.io.d_out, _T_5.io.d_out)
      node _T_7 = cat(_T_3, _T_6)
      node _T_10 = cat(_T_8.io.d_out, _T_9.io.d_out)
      node _T_13 = cat(_T_11.io.d_out, _T_12.io.d_out)
      node _T_14 = cat(_T_10, _T_13)
      node _T_15 = cat(_T_7, _T_14)
      node _T_18 = cat(_T_16.io.d_out, _T_17.io.d_out)
      node _T_21 = cat(_T_19.io.d_out, _T_20.io.d_out)
      node _T_22 = cat(_T_18, _T_21)
      node _T_25 = cat(_T_23.io.d_out, _T_24.io.d_out)
      node _T_28 = cat(_T_26.io.d_out, _T_27.io.d_out)
      node _T_29 = cat(_T_25, _T_28)
      node _T_30 = cat(_T_22, _T_29)
      node _T_31 = cat(_T_15, _T_30)
      din <= _T_31
    else :
      when io.rdy :
        node _T_32 = add(channel_counter, UInt<1>("h1"))
        channel_counter <= _T_32
      else :
        channel_counter <= channel_counter
    reg is_done : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    when io.done :
      is_done <= UInt<1>("h1")
    else :
      is_done <= is_done
    _T_1.io.d_in <= io.d_in[0]
    _T_1.io.en <= io.rdy
    _T_2.io.d_in <= io.d_in[1]
    _T_2.io.en <= io.rdy
    _T_4.io.d_in <= io.d_in[2]
    _T_4.io.en <= io.rdy
    _T_5.io.d_in <= io.d_in[3]
    _T_5.io.en <= io.rdy
    _T_8.io.d_in <= io.d_in[4]
    _T_8.io.en <= io.rdy
    _T_9.io.d_in <= io.d_in[5]
    _T_9.io.en <= io.rdy
    _T_11.io.d_in <= io.d_in[6]
    _T_11.io.en <= io.rdy
    _T_12.io.d_in <= io.d_in[7]
    _T_12.io.en <= io.rdy
    _T_16.io.d_in <= io.d_in[8]
    _T_16.io.en <= io.rdy
    _T_17.io.d_in <= io.d_in[9]
    _T_17.io.en <= io.rdy
    _T_19.io.d_in <= io.d_in[10]
    _T_19.io.en <= io.rdy
    _T_20.io.d_in <= io.d_in[11]
    _T_20.io.en <= io.rdy
    _T_23.io.d_in <= io.d_in[12]
    _T_23.io.en <= io.rdy
    _T_24.io.d_in <= io.d_in[13]
    _T_24.io.en <= io.rdy
    _T_26.io.d_in <= io.d_in[14]
    _T_26.io.en <= io.rdy
    _T_27.io.d_in <= io.d_in[15]
    _T_27.io.en <= io.rdy
    wire weight : UInt<6400>
    node _T_33 = cat(io.wa_in, io.wb_in)
    weight <= _T_33
    inst conv_node of Node_102
    conv_node.clock <= clock
    conv_node.reset <= reset
    conv_node.io.rdy <= UInt<1>("h0")
    reg rdy : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    when is_done :
      rdy <= UInt<1>("h0")
    else :
      node _T_34 = or(first_rdy, conv_node.io.v)
      rdy <= _T_34
    conv_node.io.d_in <= din
    conv_node.io.w <= weight
    conv_node.io.bias <= io.bias
    conv_node.io.rdy <= rdy
    io.d_out <= conv_node.io.d_out
    io.v <= conv_node.io.v

  module ShiftRegister_22 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<1920>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_25 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_26 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_27 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_28 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_29 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_30 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_31 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_32 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_33 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_34 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_35 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_36 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_37 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_38 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_39 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_40 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_41 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_42 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_43 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_44 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_45 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_46 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_47 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_48 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_49 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_50 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_51 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_52 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_53 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_54 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_55 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_56 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_57 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_58 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_59 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_60 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_61 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_62 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_63 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_64 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_65 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_66 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_67 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_68 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_69 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_70 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_71 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_72 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_73 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_74 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_75 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_76 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_77 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_78 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_79 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_80 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_81 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_82 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_83 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_84 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_85 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_86 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_87 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_88 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_89 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_90 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_91 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_92 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_93 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_94 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_95 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_96 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_97 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_98 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_99 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_100 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_101 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_102 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_103 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_104 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_105 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_106 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_107 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_108 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_109 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_110 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_111 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_112 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_113 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_114 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_115 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_116 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_117 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_118 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_119 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
      _T_25 <= _T_24
      _T_26 <= _T_25
      _T_27 <= _T_26
      _T_28 <= _T_27
      _T_29 <= _T_28
      _T_30 <= _T_29
      _T_31 <= _T_30
      _T_32 <= _T_31
      _T_33 <= _T_32
      _T_34 <= _T_33
      _T_35 <= _T_34
      _T_36 <= _T_35
      _T_37 <= _T_36
      _T_38 <= _T_37
      _T_39 <= _T_38
      _T_40 <= _T_39
      _T_41 <= _T_40
      _T_42 <= _T_41
      _T_43 <= _T_42
      _T_44 <= _T_43
      _T_45 <= _T_44
      _T_46 <= _T_45
      _T_47 <= _T_46
      _T_48 <= _T_47
      _T_49 <= _T_48
      _T_50 <= _T_49
      _T_51 <= _T_50
      _T_52 <= _T_51
      _T_53 <= _T_52
      _T_54 <= _T_53
      _T_55 <= _T_54
      _T_56 <= _T_55
      _T_57 <= _T_56
      _T_58 <= _T_57
      _T_59 <= _T_58
      _T_60 <= _T_59
      _T_61 <= _T_60
      _T_62 <= _T_61
      _T_63 <= _T_62
      _T_64 <= _T_63
      _T_65 <= _T_64
      _T_66 <= _T_65
      _T_67 <= _T_66
      _T_68 <= _T_67
      _T_69 <= _T_68
      _T_70 <= _T_69
      _T_71 <= _T_70
      _T_72 <= _T_71
      _T_73 <= _T_72
      _T_74 <= _T_73
      _T_75 <= _T_74
      _T_76 <= _T_75
      _T_77 <= _T_76
      _T_78 <= _T_77
      _T_79 <= _T_78
      _T_80 <= _T_79
      _T_81 <= _T_80
      _T_82 <= _T_81
      _T_83 <= _T_82
      _T_84 <= _T_83
      _T_85 <= _T_84
      _T_86 <= _T_85
      _T_87 <= _T_86
      _T_88 <= _T_87
      _T_89 <= _T_88
      _T_90 <= _T_89
      _T_91 <= _T_90
      _T_92 <= _T_91
      _T_93 <= _T_92
      _T_94 <= _T_93
      _T_95 <= _T_94
      _T_96 <= _T_95
      _T_97 <= _T_96
      _T_98 <= _T_97
      _T_99 <= _T_98
      _T_100 <= _T_99
      _T_101 <= _T_100
      _T_102 <= _T_101
      _T_103 <= _T_102
      _T_104 <= _T_103
      _T_105 <= _T_104
      _T_106 <= _T_105
      _T_107 <= _T_106
      _T_108 <= _T_107
      _T_109 <= _T_108
      _T_110 <= _T_109
      _T_111 <= _T_110
      _T_112 <= _T_111
      _T_113 <= _T_112
      _T_114 <= _T_113
      _T_115 <= _T_114
      _T_116 <= _T_115
      _T_117 <= _T_116
      _T_118 <= _T_117
      _T_119 <= _T_118
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
      _T_25 <= _T_25
      _T_26 <= _T_26
      _T_27 <= _T_27
      _T_28 <= _T_28
      _T_29 <= _T_29
      _T_30 <= _T_30
      _T_31 <= _T_31
      _T_32 <= _T_32
      _T_33 <= _T_33
      _T_34 <= _T_34
      _T_35 <= _T_35
      _T_36 <= _T_36
      _T_37 <= _T_37
      _T_38 <= _T_38
      _T_39 <= _T_39
      _T_40 <= _T_40
      _T_41 <= _T_41
      _T_42 <= _T_42
      _T_43 <= _T_43
      _T_44 <= _T_44
      _T_45 <= _T_45
      _T_46 <= _T_46
      _T_47 <= _T_47
      _T_48 <= _T_48
      _T_49 <= _T_49
      _T_50 <= _T_50
      _T_51 <= _T_51
      _T_52 <= _T_52
      _T_53 <= _T_53
      _T_54 <= _T_54
      _T_55 <= _T_55
      _T_56 <= _T_56
      _T_57 <= _T_57
      _T_58 <= _T_58
      _T_59 <= _T_59
      _T_60 <= _T_60
      _T_61 <= _T_61
      _T_62 <= _T_62
      _T_63 <= _T_63
      _T_64 <= _T_64
      _T_65 <= _T_65
      _T_66 <= _T_66
      _T_67 <= _T_67
      _T_68 <= _T_68
      _T_69 <= _T_69
      _T_70 <= _T_70
      _T_71 <= _T_71
      _T_72 <= _T_72
      _T_73 <= _T_73
      _T_74 <= _T_74
      _T_75 <= _T_75
      _T_76 <= _T_76
      _T_77 <= _T_77
      _T_78 <= _T_78
      _T_79 <= _T_79
      _T_80 <= _T_80
      _T_81 <= _T_81
      _T_82 <= _T_82
      _T_83 <= _T_83
      _T_84 <= _T_84
      _T_85 <= _T_85
      _T_86 <= _T_86
      _T_87 <= _T_87
      _T_88 <= _T_88
      _T_89 <= _T_89
      _T_90 <= _T_90
      _T_91 <= _T_91
      _T_92 <= _T_92
      _T_93 <= _T_93
      _T_94 <= _T_94
      _T_95 <= _T_95
      _T_96 <= _T_96
      _T_97 <= _T_97
      _T_98 <= _T_98
      _T_99 <= _T_99
      _T_100 <= _T_100
      _T_101 <= _T_101
      _T_102 <= _T_102
      _T_103 <= _T_103
      _T_104 <= _T_104
      _T_105 <= _T_105
      _T_106 <= _T_106
      _T_107 <= _T_107
      _T_108 <= _T_108
      _T_109 <= _T_109
      _T_110 <= _T_110
      _T_111 <= _T_111
      _T_112 <= _T_112
      _T_113 <= _T_113
      _T_114 <= _T_114
      _T_115 <= _T_115
      _T_116 <= _T_116
      _T_117 <= _T_117
      _T_118 <= _T_118
      _T_119 <= _T_119
    node _T_120 = cat(_T_1, _T_2)
    node _T_121 = cat(_T, _T_120)
    node _T_122 = cat(_T_3, _T_4)
    node _T_123 = cat(_T_5, _T_6)
    node _T_124 = cat(_T_122, _T_123)
    node _T_125 = cat(_T_121, _T_124)
    node _T_126 = cat(_T_7, _T_8)
    node _T_127 = cat(_T_9, _T_10)
    node _T_128 = cat(_T_126, _T_127)
    node _T_129 = cat(_T_11, _T_12)
    node _T_130 = cat(_T_13, _T_14)
    node _T_131 = cat(_T_129, _T_130)
    node _T_132 = cat(_T_128, _T_131)
    node _T_133 = cat(_T_125, _T_132)
    node _T_134 = cat(_T_16, _T_17)
    node _T_135 = cat(_T_15, _T_134)
    node _T_136 = cat(_T_18, _T_19)
    node _T_137 = cat(_T_20, _T_21)
    node _T_138 = cat(_T_136, _T_137)
    node _T_139 = cat(_T_135, _T_138)
    node _T_140 = cat(_T_22, _T_23)
    node _T_141 = cat(_T_24, _T_25)
    node _T_142 = cat(_T_140, _T_141)
    node _T_143 = cat(_T_26, _T_27)
    node _T_144 = cat(_T_28, _T_29)
    node _T_145 = cat(_T_143, _T_144)
    node _T_146 = cat(_T_142, _T_145)
    node _T_147 = cat(_T_139, _T_146)
    node _T_148 = cat(_T_133, _T_147)
    node _T_149 = cat(_T_31, _T_32)
    node _T_150 = cat(_T_30, _T_149)
    node _T_151 = cat(_T_33, _T_34)
    node _T_152 = cat(_T_35, _T_36)
    node _T_153 = cat(_T_151, _T_152)
    node _T_154 = cat(_T_150, _T_153)
    node _T_155 = cat(_T_37, _T_38)
    node _T_156 = cat(_T_39, _T_40)
    node _T_157 = cat(_T_155, _T_156)
    node _T_158 = cat(_T_41, _T_42)
    node _T_159 = cat(_T_43, _T_44)
    node _T_160 = cat(_T_158, _T_159)
    node _T_161 = cat(_T_157, _T_160)
    node _T_162 = cat(_T_154, _T_161)
    node _T_163 = cat(_T_46, _T_47)
    node _T_164 = cat(_T_45, _T_163)
    node _T_165 = cat(_T_48, _T_49)
    node _T_166 = cat(_T_50, _T_51)
    node _T_167 = cat(_T_165, _T_166)
    node _T_168 = cat(_T_164, _T_167)
    node _T_169 = cat(_T_52, _T_53)
    node _T_170 = cat(_T_54, _T_55)
    node _T_171 = cat(_T_169, _T_170)
    node _T_172 = cat(_T_56, _T_57)
    node _T_173 = cat(_T_58, _T_59)
    node _T_174 = cat(_T_172, _T_173)
    node _T_175 = cat(_T_171, _T_174)
    node _T_176 = cat(_T_168, _T_175)
    node _T_177 = cat(_T_162, _T_176)
    node _T_178 = cat(_T_148, _T_177)
    node _T_179 = cat(_T_61, _T_62)
    node _T_180 = cat(_T_60, _T_179)
    node _T_181 = cat(_T_63, _T_64)
    node _T_182 = cat(_T_65, _T_66)
    node _T_183 = cat(_T_181, _T_182)
    node _T_184 = cat(_T_180, _T_183)
    node _T_185 = cat(_T_67, _T_68)
    node _T_186 = cat(_T_69, _T_70)
    node _T_187 = cat(_T_185, _T_186)
    node _T_188 = cat(_T_71, _T_72)
    node _T_189 = cat(_T_73, _T_74)
    node _T_190 = cat(_T_188, _T_189)
    node _T_191 = cat(_T_187, _T_190)
    node _T_192 = cat(_T_184, _T_191)
    node _T_193 = cat(_T_76, _T_77)
    node _T_194 = cat(_T_75, _T_193)
    node _T_195 = cat(_T_78, _T_79)
    node _T_196 = cat(_T_80, _T_81)
    node _T_197 = cat(_T_195, _T_196)
    node _T_198 = cat(_T_194, _T_197)
    node _T_199 = cat(_T_82, _T_83)
    node _T_200 = cat(_T_84, _T_85)
    node _T_201 = cat(_T_199, _T_200)
    node _T_202 = cat(_T_86, _T_87)
    node _T_203 = cat(_T_88, _T_89)
    node _T_204 = cat(_T_202, _T_203)
    node _T_205 = cat(_T_201, _T_204)
    node _T_206 = cat(_T_198, _T_205)
    node _T_207 = cat(_T_192, _T_206)
    node _T_208 = cat(_T_91, _T_92)
    node _T_209 = cat(_T_90, _T_208)
    node _T_210 = cat(_T_93, _T_94)
    node _T_211 = cat(_T_95, _T_96)
    node _T_212 = cat(_T_210, _T_211)
    node _T_213 = cat(_T_209, _T_212)
    node _T_214 = cat(_T_97, _T_98)
    node _T_215 = cat(_T_99, _T_100)
    node _T_216 = cat(_T_214, _T_215)
    node _T_217 = cat(_T_101, _T_102)
    node _T_218 = cat(_T_103, _T_104)
    node _T_219 = cat(_T_217, _T_218)
    node _T_220 = cat(_T_216, _T_219)
    node _T_221 = cat(_T_213, _T_220)
    node _T_222 = cat(_T_106, _T_107)
    node _T_223 = cat(_T_105, _T_222)
    node _T_224 = cat(_T_108, _T_109)
    node _T_225 = cat(_T_110, _T_111)
    node _T_226 = cat(_T_224, _T_225)
    node _T_227 = cat(_T_223, _T_226)
    node _T_228 = cat(_T_112, _T_113)
    node _T_229 = cat(_T_114, _T_115)
    node _T_230 = cat(_T_228, _T_229)
    node _T_231 = cat(_T_116, _T_117)
    node _T_232 = cat(_T_118, _T_119)
    node _T_233 = cat(_T_231, _T_232)
    node _T_234 = cat(_T_230, _T_233)
    node _T_235 = cat(_T_227, _T_234)
    node _T_236 = cat(_T_221, _T_235)
    node _T_237 = cat(_T_207, _T_236)
    node _T_238 = cat(_T_178, _T_237)
    io.d_out <= _T_238

  module Mac_103 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1920>, flip b : UInt<1920>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[120]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[120]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    node _T_50 = bits(io.a, 415, 400)
    a[25] <= _T_50
    node _T_51 = bits(io.b, 415, 400)
    b[25] <= _T_51
    node _T_52 = bits(io.a, 431, 416)
    a[26] <= _T_52
    node _T_53 = bits(io.b, 431, 416)
    b[26] <= _T_53
    node _T_54 = bits(io.a, 447, 432)
    a[27] <= _T_54
    node _T_55 = bits(io.b, 447, 432)
    b[27] <= _T_55
    node _T_56 = bits(io.a, 463, 448)
    a[28] <= _T_56
    node _T_57 = bits(io.b, 463, 448)
    b[28] <= _T_57
    node _T_58 = bits(io.a, 479, 464)
    a[29] <= _T_58
    node _T_59 = bits(io.b, 479, 464)
    b[29] <= _T_59
    node _T_60 = bits(io.a, 495, 480)
    a[30] <= _T_60
    node _T_61 = bits(io.b, 495, 480)
    b[30] <= _T_61
    node _T_62 = bits(io.a, 511, 496)
    a[31] <= _T_62
    node _T_63 = bits(io.b, 511, 496)
    b[31] <= _T_63
    node _T_64 = bits(io.a, 527, 512)
    a[32] <= _T_64
    node _T_65 = bits(io.b, 527, 512)
    b[32] <= _T_65
    node _T_66 = bits(io.a, 543, 528)
    a[33] <= _T_66
    node _T_67 = bits(io.b, 543, 528)
    b[33] <= _T_67
    node _T_68 = bits(io.a, 559, 544)
    a[34] <= _T_68
    node _T_69 = bits(io.b, 559, 544)
    b[34] <= _T_69
    node _T_70 = bits(io.a, 575, 560)
    a[35] <= _T_70
    node _T_71 = bits(io.b, 575, 560)
    b[35] <= _T_71
    node _T_72 = bits(io.a, 591, 576)
    a[36] <= _T_72
    node _T_73 = bits(io.b, 591, 576)
    b[36] <= _T_73
    node _T_74 = bits(io.a, 607, 592)
    a[37] <= _T_74
    node _T_75 = bits(io.b, 607, 592)
    b[37] <= _T_75
    node _T_76 = bits(io.a, 623, 608)
    a[38] <= _T_76
    node _T_77 = bits(io.b, 623, 608)
    b[38] <= _T_77
    node _T_78 = bits(io.a, 639, 624)
    a[39] <= _T_78
    node _T_79 = bits(io.b, 639, 624)
    b[39] <= _T_79
    node _T_80 = bits(io.a, 655, 640)
    a[40] <= _T_80
    node _T_81 = bits(io.b, 655, 640)
    b[40] <= _T_81
    node _T_82 = bits(io.a, 671, 656)
    a[41] <= _T_82
    node _T_83 = bits(io.b, 671, 656)
    b[41] <= _T_83
    node _T_84 = bits(io.a, 687, 672)
    a[42] <= _T_84
    node _T_85 = bits(io.b, 687, 672)
    b[42] <= _T_85
    node _T_86 = bits(io.a, 703, 688)
    a[43] <= _T_86
    node _T_87 = bits(io.b, 703, 688)
    b[43] <= _T_87
    node _T_88 = bits(io.a, 719, 704)
    a[44] <= _T_88
    node _T_89 = bits(io.b, 719, 704)
    b[44] <= _T_89
    node _T_90 = bits(io.a, 735, 720)
    a[45] <= _T_90
    node _T_91 = bits(io.b, 735, 720)
    b[45] <= _T_91
    node _T_92 = bits(io.a, 751, 736)
    a[46] <= _T_92
    node _T_93 = bits(io.b, 751, 736)
    b[46] <= _T_93
    node _T_94 = bits(io.a, 767, 752)
    a[47] <= _T_94
    node _T_95 = bits(io.b, 767, 752)
    b[47] <= _T_95
    node _T_96 = bits(io.a, 783, 768)
    a[48] <= _T_96
    node _T_97 = bits(io.b, 783, 768)
    b[48] <= _T_97
    node _T_98 = bits(io.a, 799, 784)
    a[49] <= _T_98
    node _T_99 = bits(io.b, 799, 784)
    b[49] <= _T_99
    node _T_100 = bits(io.a, 815, 800)
    a[50] <= _T_100
    node _T_101 = bits(io.b, 815, 800)
    b[50] <= _T_101
    node _T_102 = bits(io.a, 831, 816)
    a[51] <= _T_102
    node _T_103 = bits(io.b, 831, 816)
    b[51] <= _T_103
    node _T_104 = bits(io.a, 847, 832)
    a[52] <= _T_104
    node _T_105 = bits(io.b, 847, 832)
    b[52] <= _T_105
    node _T_106 = bits(io.a, 863, 848)
    a[53] <= _T_106
    node _T_107 = bits(io.b, 863, 848)
    b[53] <= _T_107
    node _T_108 = bits(io.a, 879, 864)
    a[54] <= _T_108
    node _T_109 = bits(io.b, 879, 864)
    b[54] <= _T_109
    node _T_110 = bits(io.a, 895, 880)
    a[55] <= _T_110
    node _T_111 = bits(io.b, 895, 880)
    b[55] <= _T_111
    node _T_112 = bits(io.a, 911, 896)
    a[56] <= _T_112
    node _T_113 = bits(io.b, 911, 896)
    b[56] <= _T_113
    node _T_114 = bits(io.a, 927, 912)
    a[57] <= _T_114
    node _T_115 = bits(io.b, 927, 912)
    b[57] <= _T_115
    node _T_116 = bits(io.a, 943, 928)
    a[58] <= _T_116
    node _T_117 = bits(io.b, 943, 928)
    b[58] <= _T_117
    node _T_118 = bits(io.a, 959, 944)
    a[59] <= _T_118
    node _T_119 = bits(io.b, 959, 944)
    b[59] <= _T_119
    node _T_120 = bits(io.a, 975, 960)
    a[60] <= _T_120
    node _T_121 = bits(io.b, 975, 960)
    b[60] <= _T_121
    node _T_122 = bits(io.a, 991, 976)
    a[61] <= _T_122
    node _T_123 = bits(io.b, 991, 976)
    b[61] <= _T_123
    node _T_124 = bits(io.a, 1007, 992)
    a[62] <= _T_124
    node _T_125 = bits(io.b, 1007, 992)
    b[62] <= _T_125
    node _T_126 = bits(io.a, 1023, 1008)
    a[63] <= _T_126
    node _T_127 = bits(io.b, 1023, 1008)
    b[63] <= _T_127
    node _T_128 = bits(io.a, 1039, 1024)
    a[64] <= _T_128
    node _T_129 = bits(io.b, 1039, 1024)
    b[64] <= _T_129
    node _T_130 = bits(io.a, 1055, 1040)
    a[65] <= _T_130
    node _T_131 = bits(io.b, 1055, 1040)
    b[65] <= _T_131
    node _T_132 = bits(io.a, 1071, 1056)
    a[66] <= _T_132
    node _T_133 = bits(io.b, 1071, 1056)
    b[66] <= _T_133
    node _T_134 = bits(io.a, 1087, 1072)
    a[67] <= _T_134
    node _T_135 = bits(io.b, 1087, 1072)
    b[67] <= _T_135
    node _T_136 = bits(io.a, 1103, 1088)
    a[68] <= _T_136
    node _T_137 = bits(io.b, 1103, 1088)
    b[68] <= _T_137
    node _T_138 = bits(io.a, 1119, 1104)
    a[69] <= _T_138
    node _T_139 = bits(io.b, 1119, 1104)
    b[69] <= _T_139
    node _T_140 = bits(io.a, 1135, 1120)
    a[70] <= _T_140
    node _T_141 = bits(io.b, 1135, 1120)
    b[70] <= _T_141
    node _T_142 = bits(io.a, 1151, 1136)
    a[71] <= _T_142
    node _T_143 = bits(io.b, 1151, 1136)
    b[71] <= _T_143
    node _T_144 = bits(io.a, 1167, 1152)
    a[72] <= _T_144
    node _T_145 = bits(io.b, 1167, 1152)
    b[72] <= _T_145
    node _T_146 = bits(io.a, 1183, 1168)
    a[73] <= _T_146
    node _T_147 = bits(io.b, 1183, 1168)
    b[73] <= _T_147
    node _T_148 = bits(io.a, 1199, 1184)
    a[74] <= _T_148
    node _T_149 = bits(io.b, 1199, 1184)
    b[74] <= _T_149
    node _T_150 = bits(io.a, 1215, 1200)
    a[75] <= _T_150
    node _T_151 = bits(io.b, 1215, 1200)
    b[75] <= _T_151
    node _T_152 = bits(io.a, 1231, 1216)
    a[76] <= _T_152
    node _T_153 = bits(io.b, 1231, 1216)
    b[76] <= _T_153
    node _T_154 = bits(io.a, 1247, 1232)
    a[77] <= _T_154
    node _T_155 = bits(io.b, 1247, 1232)
    b[77] <= _T_155
    node _T_156 = bits(io.a, 1263, 1248)
    a[78] <= _T_156
    node _T_157 = bits(io.b, 1263, 1248)
    b[78] <= _T_157
    node _T_158 = bits(io.a, 1279, 1264)
    a[79] <= _T_158
    node _T_159 = bits(io.b, 1279, 1264)
    b[79] <= _T_159
    node _T_160 = bits(io.a, 1295, 1280)
    a[80] <= _T_160
    node _T_161 = bits(io.b, 1295, 1280)
    b[80] <= _T_161
    node _T_162 = bits(io.a, 1311, 1296)
    a[81] <= _T_162
    node _T_163 = bits(io.b, 1311, 1296)
    b[81] <= _T_163
    node _T_164 = bits(io.a, 1327, 1312)
    a[82] <= _T_164
    node _T_165 = bits(io.b, 1327, 1312)
    b[82] <= _T_165
    node _T_166 = bits(io.a, 1343, 1328)
    a[83] <= _T_166
    node _T_167 = bits(io.b, 1343, 1328)
    b[83] <= _T_167
    node _T_168 = bits(io.a, 1359, 1344)
    a[84] <= _T_168
    node _T_169 = bits(io.b, 1359, 1344)
    b[84] <= _T_169
    node _T_170 = bits(io.a, 1375, 1360)
    a[85] <= _T_170
    node _T_171 = bits(io.b, 1375, 1360)
    b[85] <= _T_171
    node _T_172 = bits(io.a, 1391, 1376)
    a[86] <= _T_172
    node _T_173 = bits(io.b, 1391, 1376)
    b[86] <= _T_173
    node _T_174 = bits(io.a, 1407, 1392)
    a[87] <= _T_174
    node _T_175 = bits(io.b, 1407, 1392)
    b[87] <= _T_175
    node _T_176 = bits(io.a, 1423, 1408)
    a[88] <= _T_176
    node _T_177 = bits(io.b, 1423, 1408)
    b[88] <= _T_177
    node _T_178 = bits(io.a, 1439, 1424)
    a[89] <= _T_178
    node _T_179 = bits(io.b, 1439, 1424)
    b[89] <= _T_179
    node _T_180 = bits(io.a, 1455, 1440)
    a[90] <= _T_180
    node _T_181 = bits(io.b, 1455, 1440)
    b[90] <= _T_181
    node _T_182 = bits(io.a, 1471, 1456)
    a[91] <= _T_182
    node _T_183 = bits(io.b, 1471, 1456)
    b[91] <= _T_183
    node _T_184 = bits(io.a, 1487, 1472)
    a[92] <= _T_184
    node _T_185 = bits(io.b, 1487, 1472)
    b[92] <= _T_185
    node _T_186 = bits(io.a, 1503, 1488)
    a[93] <= _T_186
    node _T_187 = bits(io.b, 1503, 1488)
    b[93] <= _T_187
    node _T_188 = bits(io.a, 1519, 1504)
    a[94] <= _T_188
    node _T_189 = bits(io.b, 1519, 1504)
    b[94] <= _T_189
    node _T_190 = bits(io.a, 1535, 1520)
    a[95] <= _T_190
    node _T_191 = bits(io.b, 1535, 1520)
    b[95] <= _T_191
    node _T_192 = bits(io.a, 1551, 1536)
    a[96] <= _T_192
    node _T_193 = bits(io.b, 1551, 1536)
    b[96] <= _T_193
    node _T_194 = bits(io.a, 1567, 1552)
    a[97] <= _T_194
    node _T_195 = bits(io.b, 1567, 1552)
    b[97] <= _T_195
    node _T_196 = bits(io.a, 1583, 1568)
    a[98] <= _T_196
    node _T_197 = bits(io.b, 1583, 1568)
    b[98] <= _T_197
    node _T_198 = bits(io.a, 1599, 1584)
    a[99] <= _T_198
    node _T_199 = bits(io.b, 1599, 1584)
    b[99] <= _T_199
    node _T_200 = bits(io.a, 1615, 1600)
    a[100] <= _T_200
    node _T_201 = bits(io.b, 1615, 1600)
    b[100] <= _T_201
    node _T_202 = bits(io.a, 1631, 1616)
    a[101] <= _T_202
    node _T_203 = bits(io.b, 1631, 1616)
    b[101] <= _T_203
    node _T_204 = bits(io.a, 1647, 1632)
    a[102] <= _T_204
    node _T_205 = bits(io.b, 1647, 1632)
    b[102] <= _T_205
    node _T_206 = bits(io.a, 1663, 1648)
    a[103] <= _T_206
    node _T_207 = bits(io.b, 1663, 1648)
    b[103] <= _T_207
    node _T_208 = bits(io.a, 1679, 1664)
    a[104] <= _T_208
    node _T_209 = bits(io.b, 1679, 1664)
    b[104] <= _T_209
    node _T_210 = bits(io.a, 1695, 1680)
    a[105] <= _T_210
    node _T_211 = bits(io.b, 1695, 1680)
    b[105] <= _T_211
    node _T_212 = bits(io.a, 1711, 1696)
    a[106] <= _T_212
    node _T_213 = bits(io.b, 1711, 1696)
    b[106] <= _T_213
    node _T_214 = bits(io.a, 1727, 1712)
    a[107] <= _T_214
    node _T_215 = bits(io.b, 1727, 1712)
    b[107] <= _T_215
    node _T_216 = bits(io.a, 1743, 1728)
    a[108] <= _T_216
    node _T_217 = bits(io.b, 1743, 1728)
    b[108] <= _T_217
    node _T_218 = bits(io.a, 1759, 1744)
    a[109] <= _T_218
    node _T_219 = bits(io.b, 1759, 1744)
    b[109] <= _T_219
    node _T_220 = bits(io.a, 1775, 1760)
    a[110] <= _T_220
    node _T_221 = bits(io.b, 1775, 1760)
    b[110] <= _T_221
    node _T_222 = bits(io.a, 1791, 1776)
    a[111] <= _T_222
    node _T_223 = bits(io.b, 1791, 1776)
    b[111] <= _T_223
    node _T_224 = bits(io.a, 1807, 1792)
    a[112] <= _T_224
    node _T_225 = bits(io.b, 1807, 1792)
    b[112] <= _T_225
    node _T_226 = bits(io.a, 1823, 1808)
    a[113] <= _T_226
    node _T_227 = bits(io.b, 1823, 1808)
    b[113] <= _T_227
    node _T_228 = bits(io.a, 1839, 1824)
    a[114] <= _T_228
    node _T_229 = bits(io.b, 1839, 1824)
    b[114] <= _T_229
    node _T_230 = bits(io.a, 1855, 1840)
    a[115] <= _T_230
    node _T_231 = bits(io.b, 1855, 1840)
    b[115] <= _T_231
    node _T_232 = bits(io.a, 1871, 1856)
    a[116] <= _T_232
    node _T_233 = bits(io.b, 1871, 1856)
    b[116] <= _T_233
    node _T_234 = bits(io.a, 1887, 1872)
    a[117] <= _T_234
    node _T_235 = bits(io.b, 1887, 1872)
    b[117] <= _T_235
    node _T_236 = bits(io.a, 1903, 1888)
    a[118] <= _T_236
    node _T_237 = bits(io.b, 1903, 1888)
    b[118] <= _T_237
    node _T_238 = bits(io.a, 1919, 1904)
    a[119] <= _T_238
    node _T_239 = bits(io.b, 1919, 1904)
    b[119] <= _T_239
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<7>, clock with : 
      reset => (reset, UInt<7>("h0"))
    node _T_243 = eq(i, UInt<7>("h78"))
    node _T_244 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_240 = mul(a[i], b[i])
      node _T_241 = add(sum, _T_240)
      sum <= _T_241
      node _T_242 = add(i, UInt<1>("h1"))
      i <= _T_242
    else :
      when _T_243 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_244 :
          node _T_245 = add(i, UInt<1>("h1"))
          i <= _T_245
          node _T_246 = mul(a[i], b[i])
          node _T_247 = add(sum, _T_246)
          sum <= _T_247
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_103 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_103 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<1920>, flip w : UInt<1920>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_103
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_103
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module FC2 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip w_in : UInt<1920>, flip bias : UInt<16>, flip rdy : UInt<1>, flip rom_rdy : UInt<1>, flip done : UInt<1>, d_out : UInt<16>, v : UInt<1>, fc1_done : UInt<1>}
  
    inst in_channel of ShiftRegister_22
    in_channel.clock <= clock
    in_channel.reset <= reset
    in_channel.io.d_in <= io.d_in
    in_channel.io.en <= io.rdy
    reg rdy : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    rdy <= UInt<1>("h0")
    reg store : UInt<1920>, clock with : 
      reset => (reset, UInt<1920>("h0"))
    store <= store
    io.fc1_done <= UInt<1>("h0")
    reg first_rdy : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    first_rdy <= UInt<1>("h0")
    reg in_counter : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T = eq(in_counter, UInt<7>("h78"))
    when _T :
      in_counter <= UInt<1>("h0")
      first_rdy <= UInt<1>("h1")
      store <= in_channel.io.d_out
      io.fc1_done <= UInt<1>("h1")
    else :
      when io.rdy :
        node _T_1 = add(in_counter, UInt<1>("h1"))
        in_counter <= _T_1
      else :
        in_counter <= in_counter
    reg is_done : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    when io.done :
      is_done <= UInt<1>("h1")
    else :
      is_done <= is_done
    inst conv_node2 of Node_103
    conv_node2.clock <= clock
    conv_node2.reset <= reset
    when is_done :
      rdy <= UInt<1>("h0")
    else :
      node _T_2 = or(first_rdy, conv_node2.io.v)
      rdy <= _T_2
    conv_node2.io.d_in <= store
    conv_node2.io.w <= io.w_in
    conv_node2.io.bias <= io.bias
    conv_node2.io.rdy <= rdy
    io.d_out <= conv_node2.io.d_out
    io.v <= conv_node2.io.v

  module ShiftRegister_23 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip en : UInt<1>, d_out : UInt<1344>}
  
    reg _T : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_1 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_2 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_3 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_4 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_5 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_6 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_7 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_8 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_9 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_10 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_11 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_12 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_13 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_14 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_15 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_16 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_17 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_18 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_19 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_20 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_21 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_22 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_23 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_24 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_25 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_26 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_27 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_28 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_29 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_30 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_31 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_32 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_33 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_34 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_35 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_36 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_37 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_38 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_39 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_40 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_41 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_42 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_43 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_44 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_45 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_46 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_47 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_48 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_49 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_50 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_51 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_52 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_53 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_54 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_55 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_56 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_57 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_58 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_59 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_60 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_61 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_62 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_63 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_64 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_65 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_66 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_67 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_68 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_69 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_70 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_71 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_72 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_73 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_74 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_75 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_76 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_77 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_78 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_79 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_80 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_81 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_82 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    reg _T_83 : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    when io.en :
      _T <= io.d_in
      _T_1 <= _T
      _T_2 <= _T_1
      _T_3 <= _T_2
      _T_4 <= _T_3
      _T_5 <= _T_4
      _T_6 <= _T_5
      _T_7 <= _T_6
      _T_8 <= _T_7
      _T_9 <= _T_8
      _T_10 <= _T_9
      _T_11 <= _T_10
      _T_12 <= _T_11
      _T_13 <= _T_12
      _T_14 <= _T_13
      _T_15 <= _T_14
      _T_16 <= _T_15
      _T_17 <= _T_16
      _T_18 <= _T_17
      _T_19 <= _T_18
      _T_20 <= _T_19
      _T_21 <= _T_20
      _T_22 <= _T_21
      _T_23 <= _T_22
      _T_24 <= _T_23
      _T_25 <= _T_24
      _T_26 <= _T_25
      _T_27 <= _T_26
      _T_28 <= _T_27
      _T_29 <= _T_28
      _T_30 <= _T_29
      _T_31 <= _T_30
      _T_32 <= _T_31
      _T_33 <= _T_32
      _T_34 <= _T_33
      _T_35 <= _T_34
      _T_36 <= _T_35
      _T_37 <= _T_36
      _T_38 <= _T_37
      _T_39 <= _T_38
      _T_40 <= _T_39
      _T_41 <= _T_40
      _T_42 <= _T_41
      _T_43 <= _T_42
      _T_44 <= _T_43
      _T_45 <= _T_44
      _T_46 <= _T_45
      _T_47 <= _T_46
      _T_48 <= _T_47
      _T_49 <= _T_48
      _T_50 <= _T_49
      _T_51 <= _T_50
      _T_52 <= _T_51
      _T_53 <= _T_52
      _T_54 <= _T_53
      _T_55 <= _T_54
      _T_56 <= _T_55
      _T_57 <= _T_56
      _T_58 <= _T_57
      _T_59 <= _T_58
      _T_60 <= _T_59
      _T_61 <= _T_60
      _T_62 <= _T_61
      _T_63 <= _T_62
      _T_64 <= _T_63
      _T_65 <= _T_64
      _T_66 <= _T_65
      _T_67 <= _T_66
      _T_68 <= _T_67
      _T_69 <= _T_68
      _T_70 <= _T_69
      _T_71 <= _T_70
      _T_72 <= _T_71
      _T_73 <= _T_72
      _T_74 <= _T_73
      _T_75 <= _T_74
      _T_76 <= _T_75
      _T_77 <= _T_76
      _T_78 <= _T_77
      _T_79 <= _T_78
      _T_80 <= _T_79
      _T_81 <= _T_80
      _T_82 <= _T_81
      _T_83 <= _T_82
    else :
      _T <= _T
      _T_1 <= _T_1
      _T_2 <= _T_2
      _T_3 <= _T_3
      _T_4 <= _T_4
      _T_5 <= _T_5
      _T_6 <= _T_6
      _T_7 <= _T_7
      _T_8 <= _T_8
      _T_9 <= _T_9
      _T_10 <= _T_10
      _T_11 <= _T_11
      _T_12 <= _T_12
      _T_13 <= _T_13
      _T_14 <= _T_14
      _T_15 <= _T_15
      _T_16 <= _T_16
      _T_17 <= _T_17
      _T_18 <= _T_18
      _T_19 <= _T_19
      _T_20 <= _T_20
      _T_21 <= _T_21
      _T_22 <= _T_22
      _T_23 <= _T_23
      _T_24 <= _T_24
      _T_25 <= _T_25
      _T_26 <= _T_26
      _T_27 <= _T_27
      _T_28 <= _T_28
      _T_29 <= _T_29
      _T_30 <= _T_30
      _T_31 <= _T_31
      _T_32 <= _T_32
      _T_33 <= _T_33
      _T_34 <= _T_34
      _T_35 <= _T_35
      _T_36 <= _T_36
      _T_37 <= _T_37
      _T_38 <= _T_38
      _T_39 <= _T_39
      _T_40 <= _T_40
      _T_41 <= _T_41
      _T_42 <= _T_42
      _T_43 <= _T_43
      _T_44 <= _T_44
      _T_45 <= _T_45
      _T_46 <= _T_46
      _T_47 <= _T_47
      _T_48 <= _T_48
      _T_49 <= _T_49
      _T_50 <= _T_50
      _T_51 <= _T_51
      _T_52 <= _T_52
      _T_53 <= _T_53
      _T_54 <= _T_54
      _T_55 <= _T_55
      _T_56 <= _T_56
      _T_57 <= _T_57
      _T_58 <= _T_58
      _T_59 <= _T_59
      _T_60 <= _T_60
      _T_61 <= _T_61
      _T_62 <= _T_62
      _T_63 <= _T_63
      _T_64 <= _T_64
      _T_65 <= _T_65
      _T_66 <= _T_66
      _T_67 <= _T_67
      _T_68 <= _T_68
      _T_69 <= _T_69
      _T_70 <= _T_70
      _T_71 <= _T_71
      _T_72 <= _T_72
      _T_73 <= _T_73
      _T_74 <= _T_74
      _T_75 <= _T_75
      _T_76 <= _T_76
      _T_77 <= _T_77
      _T_78 <= _T_78
      _T_79 <= _T_79
      _T_80 <= _T_80
      _T_81 <= _T_81
      _T_82 <= _T_82
      _T_83 <= _T_83
    node _T_84 = cat(_T, _T_1)
    node _T_85 = cat(_T_3, _T_4)
    node _T_86 = cat(_T_2, _T_85)
    node _T_87 = cat(_T_84, _T_86)
    node _T_88 = cat(_T_5, _T_6)
    node _T_89 = cat(_T_8, _T_9)
    node _T_90 = cat(_T_7, _T_89)
    node _T_91 = cat(_T_88, _T_90)
    node _T_92 = cat(_T_87, _T_91)
    node _T_93 = cat(_T_10, _T_11)
    node _T_94 = cat(_T_13, _T_14)
    node _T_95 = cat(_T_12, _T_94)
    node _T_96 = cat(_T_93, _T_95)
    node _T_97 = cat(_T_16, _T_17)
    node _T_98 = cat(_T_15, _T_97)
    node _T_99 = cat(_T_19, _T_20)
    node _T_100 = cat(_T_18, _T_99)
    node _T_101 = cat(_T_98, _T_100)
    node _T_102 = cat(_T_96, _T_101)
    node _T_103 = cat(_T_92, _T_102)
    node _T_104 = cat(_T_21, _T_22)
    node _T_105 = cat(_T_24, _T_25)
    node _T_106 = cat(_T_23, _T_105)
    node _T_107 = cat(_T_104, _T_106)
    node _T_108 = cat(_T_26, _T_27)
    node _T_109 = cat(_T_29, _T_30)
    node _T_110 = cat(_T_28, _T_109)
    node _T_111 = cat(_T_108, _T_110)
    node _T_112 = cat(_T_107, _T_111)
    node _T_113 = cat(_T_31, _T_32)
    node _T_114 = cat(_T_34, _T_35)
    node _T_115 = cat(_T_33, _T_114)
    node _T_116 = cat(_T_113, _T_115)
    node _T_117 = cat(_T_37, _T_38)
    node _T_118 = cat(_T_36, _T_117)
    node _T_119 = cat(_T_40, _T_41)
    node _T_120 = cat(_T_39, _T_119)
    node _T_121 = cat(_T_118, _T_120)
    node _T_122 = cat(_T_116, _T_121)
    node _T_123 = cat(_T_112, _T_122)
    node _T_124 = cat(_T_103, _T_123)
    node _T_125 = cat(_T_42, _T_43)
    node _T_126 = cat(_T_45, _T_46)
    node _T_127 = cat(_T_44, _T_126)
    node _T_128 = cat(_T_125, _T_127)
    node _T_129 = cat(_T_47, _T_48)
    node _T_130 = cat(_T_50, _T_51)
    node _T_131 = cat(_T_49, _T_130)
    node _T_132 = cat(_T_129, _T_131)
    node _T_133 = cat(_T_128, _T_132)
    node _T_134 = cat(_T_52, _T_53)
    node _T_135 = cat(_T_55, _T_56)
    node _T_136 = cat(_T_54, _T_135)
    node _T_137 = cat(_T_134, _T_136)
    node _T_138 = cat(_T_58, _T_59)
    node _T_139 = cat(_T_57, _T_138)
    node _T_140 = cat(_T_61, _T_62)
    node _T_141 = cat(_T_60, _T_140)
    node _T_142 = cat(_T_139, _T_141)
    node _T_143 = cat(_T_137, _T_142)
    node _T_144 = cat(_T_133, _T_143)
    node _T_145 = cat(_T_63, _T_64)
    node _T_146 = cat(_T_66, _T_67)
    node _T_147 = cat(_T_65, _T_146)
    node _T_148 = cat(_T_145, _T_147)
    node _T_149 = cat(_T_68, _T_69)
    node _T_150 = cat(_T_71, _T_72)
    node _T_151 = cat(_T_70, _T_150)
    node _T_152 = cat(_T_149, _T_151)
    node _T_153 = cat(_T_148, _T_152)
    node _T_154 = cat(_T_73, _T_74)
    node _T_155 = cat(_T_76, _T_77)
    node _T_156 = cat(_T_75, _T_155)
    node _T_157 = cat(_T_154, _T_156)
    node _T_158 = cat(_T_79, _T_80)
    node _T_159 = cat(_T_78, _T_158)
    node _T_160 = cat(_T_82, _T_83)
    node _T_161 = cat(_T_81, _T_160)
    node _T_162 = cat(_T_159, _T_161)
    node _T_163 = cat(_T_157, _T_162)
    node _T_164 = cat(_T_153, _T_163)
    node _T_165 = cat(_T_144, _T_164)
    node _T_166 = cat(_T_124, _T_165)
    io.d_out <= _T_166

  module Mac_104 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1344>, flip b : UInt<1344>, flip rdy : UInt<1>, q : UInt<32>, v : UInt<1>}
  
    io.q <= UInt<1>("h0")
    io.v <= UInt<1>("h0")
    wire a : UInt<16>[84]
    node _T = bits(io.a, 15, 0)
    a[0] <= _T
    wire b : UInt<16>[84]
    node _T_1 = bits(io.b, 15, 0)
    b[0] <= _T_1
    node _T_2 = bits(io.a, 31, 16)
    a[1] <= _T_2
    node _T_3 = bits(io.b, 31, 16)
    b[1] <= _T_3
    node _T_4 = bits(io.a, 47, 32)
    a[2] <= _T_4
    node _T_5 = bits(io.b, 47, 32)
    b[2] <= _T_5
    node _T_6 = bits(io.a, 63, 48)
    a[3] <= _T_6
    node _T_7 = bits(io.b, 63, 48)
    b[3] <= _T_7
    node _T_8 = bits(io.a, 79, 64)
    a[4] <= _T_8
    node _T_9 = bits(io.b, 79, 64)
    b[4] <= _T_9
    node _T_10 = bits(io.a, 95, 80)
    a[5] <= _T_10
    node _T_11 = bits(io.b, 95, 80)
    b[5] <= _T_11
    node _T_12 = bits(io.a, 111, 96)
    a[6] <= _T_12
    node _T_13 = bits(io.b, 111, 96)
    b[6] <= _T_13
    node _T_14 = bits(io.a, 127, 112)
    a[7] <= _T_14
    node _T_15 = bits(io.b, 127, 112)
    b[7] <= _T_15
    node _T_16 = bits(io.a, 143, 128)
    a[8] <= _T_16
    node _T_17 = bits(io.b, 143, 128)
    b[8] <= _T_17
    node _T_18 = bits(io.a, 159, 144)
    a[9] <= _T_18
    node _T_19 = bits(io.b, 159, 144)
    b[9] <= _T_19
    node _T_20 = bits(io.a, 175, 160)
    a[10] <= _T_20
    node _T_21 = bits(io.b, 175, 160)
    b[10] <= _T_21
    node _T_22 = bits(io.a, 191, 176)
    a[11] <= _T_22
    node _T_23 = bits(io.b, 191, 176)
    b[11] <= _T_23
    node _T_24 = bits(io.a, 207, 192)
    a[12] <= _T_24
    node _T_25 = bits(io.b, 207, 192)
    b[12] <= _T_25
    node _T_26 = bits(io.a, 223, 208)
    a[13] <= _T_26
    node _T_27 = bits(io.b, 223, 208)
    b[13] <= _T_27
    node _T_28 = bits(io.a, 239, 224)
    a[14] <= _T_28
    node _T_29 = bits(io.b, 239, 224)
    b[14] <= _T_29
    node _T_30 = bits(io.a, 255, 240)
    a[15] <= _T_30
    node _T_31 = bits(io.b, 255, 240)
    b[15] <= _T_31
    node _T_32 = bits(io.a, 271, 256)
    a[16] <= _T_32
    node _T_33 = bits(io.b, 271, 256)
    b[16] <= _T_33
    node _T_34 = bits(io.a, 287, 272)
    a[17] <= _T_34
    node _T_35 = bits(io.b, 287, 272)
    b[17] <= _T_35
    node _T_36 = bits(io.a, 303, 288)
    a[18] <= _T_36
    node _T_37 = bits(io.b, 303, 288)
    b[18] <= _T_37
    node _T_38 = bits(io.a, 319, 304)
    a[19] <= _T_38
    node _T_39 = bits(io.b, 319, 304)
    b[19] <= _T_39
    node _T_40 = bits(io.a, 335, 320)
    a[20] <= _T_40
    node _T_41 = bits(io.b, 335, 320)
    b[20] <= _T_41
    node _T_42 = bits(io.a, 351, 336)
    a[21] <= _T_42
    node _T_43 = bits(io.b, 351, 336)
    b[21] <= _T_43
    node _T_44 = bits(io.a, 367, 352)
    a[22] <= _T_44
    node _T_45 = bits(io.b, 367, 352)
    b[22] <= _T_45
    node _T_46 = bits(io.a, 383, 368)
    a[23] <= _T_46
    node _T_47 = bits(io.b, 383, 368)
    b[23] <= _T_47
    node _T_48 = bits(io.a, 399, 384)
    a[24] <= _T_48
    node _T_49 = bits(io.b, 399, 384)
    b[24] <= _T_49
    node _T_50 = bits(io.a, 415, 400)
    a[25] <= _T_50
    node _T_51 = bits(io.b, 415, 400)
    b[25] <= _T_51
    node _T_52 = bits(io.a, 431, 416)
    a[26] <= _T_52
    node _T_53 = bits(io.b, 431, 416)
    b[26] <= _T_53
    node _T_54 = bits(io.a, 447, 432)
    a[27] <= _T_54
    node _T_55 = bits(io.b, 447, 432)
    b[27] <= _T_55
    node _T_56 = bits(io.a, 463, 448)
    a[28] <= _T_56
    node _T_57 = bits(io.b, 463, 448)
    b[28] <= _T_57
    node _T_58 = bits(io.a, 479, 464)
    a[29] <= _T_58
    node _T_59 = bits(io.b, 479, 464)
    b[29] <= _T_59
    node _T_60 = bits(io.a, 495, 480)
    a[30] <= _T_60
    node _T_61 = bits(io.b, 495, 480)
    b[30] <= _T_61
    node _T_62 = bits(io.a, 511, 496)
    a[31] <= _T_62
    node _T_63 = bits(io.b, 511, 496)
    b[31] <= _T_63
    node _T_64 = bits(io.a, 527, 512)
    a[32] <= _T_64
    node _T_65 = bits(io.b, 527, 512)
    b[32] <= _T_65
    node _T_66 = bits(io.a, 543, 528)
    a[33] <= _T_66
    node _T_67 = bits(io.b, 543, 528)
    b[33] <= _T_67
    node _T_68 = bits(io.a, 559, 544)
    a[34] <= _T_68
    node _T_69 = bits(io.b, 559, 544)
    b[34] <= _T_69
    node _T_70 = bits(io.a, 575, 560)
    a[35] <= _T_70
    node _T_71 = bits(io.b, 575, 560)
    b[35] <= _T_71
    node _T_72 = bits(io.a, 591, 576)
    a[36] <= _T_72
    node _T_73 = bits(io.b, 591, 576)
    b[36] <= _T_73
    node _T_74 = bits(io.a, 607, 592)
    a[37] <= _T_74
    node _T_75 = bits(io.b, 607, 592)
    b[37] <= _T_75
    node _T_76 = bits(io.a, 623, 608)
    a[38] <= _T_76
    node _T_77 = bits(io.b, 623, 608)
    b[38] <= _T_77
    node _T_78 = bits(io.a, 639, 624)
    a[39] <= _T_78
    node _T_79 = bits(io.b, 639, 624)
    b[39] <= _T_79
    node _T_80 = bits(io.a, 655, 640)
    a[40] <= _T_80
    node _T_81 = bits(io.b, 655, 640)
    b[40] <= _T_81
    node _T_82 = bits(io.a, 671, 656)
    a[41] <= _T_82
    node _T_83 = bits(io.b, 671, 656)
    b[41] <= _T_83
    node _T_84 = bits(io.a, 687, 672)
    a[42] <= _T_84
    node _T_85 = bits(io.b, 687, 672)
    b[42] <= _T_85
    node _T_86 = bits(io.a, 703, 688)
    a[43] <= _T_86
    node _T_87 = bits(io.b, 703, 688)
    b[43] <= _T_87
    node _T_88 = bits(io.a, 719, 704)
    a[44] <= _T_88
    node _T_89 = bits(io.b, 719, 704)
    b[44] <= _T_89
    node _T_90 = bits(io.a, 735, 720)
    a[45] <= _T_90
    node _T_91 = bits(io.b, 735, 720)
    b[45] <= _T_91
    node _T_92 = bits(io.a, 751, 736)
    a[46] <= _T_92
    node _T_93 = bits(io.b, 751, 736)
    b[46] <= _T_93
    node _T_94 = bits(io.a, 767, 752)
    a[47] <= _T_94
    node _T_95 = bits(io.b, 767, 752)
    b[47] <= _T_95
    node _T_96 = bits(io.a, 783, 768)
    a[48] <= _T_96
    node _T_97 = bits(io.b, 783, 768)
    b[48] <= _T_97
    node _T_98 = bits(io.a, 799, 784)
    a[49] <= _T_98
    node _T_99 = bits(io.b, 799, 784)
    b[49] <= _T_99
    node _T_100 = bits(io.a, 815, 800)
    a[50] <= _T_100
    node _T_101 = bits(io.b, 815, 800)
    b[50] <= _T_101
    node _T_102 = bits(io.a, 831, 816)
    a[51] <= _T_102
    node _T_103 = bits(io.b, 831, 816)
    b[51] <= _T_103
    node _T_104 = bits(io.a, 847, 832)
    a[52] <= _T_104
    node _T_105 = bits(io.b, 847, 832)
    b[52] <= _T_105
    node _T_106 = bits(io.a, 863, 848)
    a[53] <= _T_106
    node _T_107 = bits(io.b, 863, 848)
    b[53] <= _T_107
    node _T_108 = bits(io.a, 879, 864)
    a[54] <= _T_108
    node _T_109 = bits(io.b, 879, 864)
    b[54] <= _T_109
    node _T_110 = bits(io.a, 895, 880)
    a[55] <= _T_110
    node _T_111 = bits(io.b, 895, 880)
    b[55] <= _T_111
    node _T_112 = bits(io.a, 911, 896)
    a[56] <= _T_112
    node _T_113 = bits(io.b, 911, 896)
    b[56] <= _T_113
    node _T_114 = bits(io.a, 927, 912)
    a[57] <= _T_114
    node _T_115 = bits(io.b, 927, 912)
    b[57] <= _T_115
    node _T_116 = bits(io.a, 943, 928)
    a[58] <= _T_116
    node _T_117 = bits(io.b, 943, 928)
    b[58] <= _T_117
    node _T_118 = bits(io.a, 959, 944)
    a[59] <= _T_118
    node _T_119 = bits(io.b, 959, 944)
    b[59] <= _T_119
    node _T_120 = bits(io.a, 975, 960)
    a[60] <= _T_120
    node _T_121 = bits(io.b, 975, 960)
    b[60] <= _T_121
    node _T_122 = bits(io.a, 991, 976)
    a[61] <= _T_122
    node _T_123 = bits(io.b, 991, 976)
    b[61] <= _T_123
    node _T_124 = bits(io.a, 1007, 992)
    a[62] <= _T_124
    node _T_125 = bits(io.b, 1007, 992)
    b[62] <= _T_125
    node _T_126 = bits(io.a, 1023, 1008)
    a[63] <= _T_126
    node _T_127 = bits(io.b, 1023, 1008)
    b[63] <= _T_127
    node _T_128 = bits(io.a, 1039, 1024)
    a[64] <= _T_128
    node _T_129 = bits(io.b, 1039, 1024)
    b[64] <= _T_129
    node _T_130 = bits(io.a, 1055, 1040)
    a[65] <= _T_130
    node _T_131 = bits(io.b, 1055, 1040)
    b[65] <= _T_131
    node _T_132 = bits(io.a, 1071, 1056)
    a[66] <= _T_132
    node _T_133 = bits(io.b, 1071, 1056)
    b[66] <= _T_133
    node _T_134 = bits(io.a, 1087, 1072)
    a[67] <= _T_134
    node _T_135 = bits(io.b, 1087, 1072)
    b[67] <= _T_135
    node _T_136 = bits(io.a, 1103, 1088)
    a[68] <= _T_136
    node _T_137 = bits(io.b, 1103, 1088)
    b[68] <= _T_137
    node _T_138 = bits(io.a, 1119, 1104)
    a[69] <= _T_138
    node _T_139 = bits(io.b, 1119, 1104)
    b[69] <= _T_139
    node _T_140 = bits(io.a, 1135, 1120)
    a[70] <= _T_140
    node _T_141 = bits(io.b, 1135, 1120)
    b[70] <= _T_141
    node _T_142 = bits(io.a, 1151, 1136)
    a[71] <= _T_142
    node _T_143 = bits(io.b, 1151, 1136)
    b[71] <= _T_143
    node _T_144 = bits(io.a, 1167, 1152)
    a[72] <= _T_144
    node _T_145 = bits(io.b, 1167, 1152)
    b[72] <= _T_145
    node _T_146 = bits(io.a, 1183, 1168)
    a[73] <= _T_146
    node _T_147 = bits(io.b, 1183, 1168)
    b[73] <= _T_147
    node _T_148 = bits(io.a, 1199, 1184)
    a[74] <= _T_148
    node _T_149 = bits(io.b, 1199, 1184)
    b[74] <= _T_149
    node _T_150 = bits(io.a, 1215, 1200)
    a[75] <= _T_150
    node _T_151 = bits(io.b, 1215, 1200)
    b[75] <= _T_151
    node _T_152 = bits(io.a, 1231, 1216)
    a[76] <= _T_152
    node _T_153 = bits(io.b, 1231, 1216)
    b[76] <= _T_153
    node _T_154 = bits(io.a, 1247, 1232)
    a[77] <= _T_154
    node _T_155 = bits(io.b, 1247, 1232)
    b[77] <= _T_155
    node _T_156 = bits(io.a, 1263, 1248)
    a[78] <= _T_156
    node _T_157 = bits(io.b, 1263, 1248)
    b[78] <= _T_157
    node _T_158 = bits(io.a, 1279, 1264)
    a[79] <= _T_158
    node _T_159 = bits(io.b, 1279, 1264)
    b[79] <= _T_159
    node _T_160 = bits(io.a, 1295, 1280)
    a[80] <= _T_160
    node _T_161 = bits(io.b, 1295, 1280)
    b[80] <= _T_161
    node _T_162 = bits(io.a, 1311, 1296)
    a[81] <= _T_162
    node _T_163 = bits(io.b, 1311, 1296)
    b[81] <= _T_163
    node _T_164 = bits(io.a, 1327, 1312)
    a[82] <= _T_164
    node _T_165 = bits(io.b, 1327, 1312)
    b[82] <= _T_165
    node _T_166 = bits(io.a, 1343, 1328)
    a[83] <= _T_166
    node _T_167 = bits(io.b, 1343, 1328)
    b[83] <= _T_167
    reg sum : UInt<32>, clock with : 
      reset => (reset, UInt<32>("h0"))
    reg i : UInt<7>, clock with : 
      reset => (reset, UInt<7>("h0"))
    node _T_171 = eq(i, UInt<7>("h54"))
    node _T_172 = neq(i, UInt<1>("h0"))
    when io.rdy :
      node _T_168 = mul(a[i], b[i])
      node _T_169 = add(sum, _T_168)
      sum <= _T_169
      node _T_170 = add(i, UInt<1>("h1"))
      i <= _T_170
    else :
      when _T_171 :
        i <= UInt<1>("h0")
        io.v <= UInt<1>("h1")
        io.q <= sum
        sum <= UInt<1>("h0")
      else :
        when _T_172 :
          node _T_173 = add(i, UInt<1>("h1"))
          i <= _T_173
          node _T_174 = mul(a[i], b[i])
          node _T_175 = add(sum, _T_174)
          sum <= _T_175
        else :
          i <= UInt<1>("h0")
          sum <= UInt<1>("h0")

  module ReLU_104 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip q : UInt<32>, flip bias : UInt<16>, flip v_in : UInt<1>, d : UInt<16>, v_out : UInt<1>}
  
    wire qc : UInt<16>
    node _T = bits(io.q, 15, 0)
    qc <= _T
    io.v_out <= io.v_in
    when io.v_in :
      node _T_2 = add(qc, io.bias)
      node _T_3 = gt(_T_2, UInt<1>("h0"))
      node _T_4 = add(qc, io.bias)
      node _T_1 = mux(_T_3, _T_4, UInt<1>("h0"))
      io.d <= _T_1
    else :
      io.d <= UInt<1>("h0")

  module Node_104 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<1344>, flip w : UInt<1344>, flip rdy : UInt<1>, flip bias : UInt<16>, d_out : UInt<16>, v : UInt<1>}
  
    inst muladdc of Mac_104
    muladdc.clock <= clock
    muladdc.reset <= reset
    muladdc.io.a <= io.d_in
    muladdc.io.b <= io.w
    muladdc.io.rdy <= io.rdy
    inst act of ReLU_104
    act.clock <= clock
    act.reset <= reset
    act.io.q <= muladdc.io.q
    act.io.bias <= io.bias
    act.io.v_in <= muladdc.io.v
    io.d_out <= act.io.d
    io.v <= act.io.v_out

  module FC3 :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<16>, flip w_in : UInt<1344>, flip bias : UInt<160>, flip rdy : UInt<1>, flip rom_rdy : UInt<1>, flip done : UInt<1>, d_out : UInt<16>, v : UInt<1>, fc2_done : UInt<1>}
  
    inst in_channel of ShiftRegister_23
    in_channel.clock <= clock
    in_channel.reset <= reset
    in_channel.io.d_in <= io.d_in
    in_channel.io.en <= io.rdy
    reg rdy : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    rdy <= UInt<1>("h0")
    reg store : UInt<1344>, clock with : 
      reset => (reset, UInt<1344>("h0"))
    store <= store
    io.fc2_done <= UInt<1>("h0")
    reg first_rdy : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    first_rdy <= UInt<1>("h0")
    reg in_counter : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T = eq(in_counter, UInt<7>("h54"))
    when _T :
      in_counter <= UInt<1>("h0")
      rdy <= UInt<1>("h1")
      store <= in_channel.io.d_out
      io.fc2_done <= UInt<1>("h1")
      first_rdy <= UInt<1>("h1")
    else :
      when io.rdy :
        node _T_1 = add(in_counter, UInt<1>("h1"))
        in_counter <= _T_1
      else :
        in_counter <= in_counter
    reg is_done : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    when io.done :
      is_done <= UInt<1>("h1")
    else :
      is_done <= is_done
    inst conv_node3 of Node_104
    conv_node3.clock <= clock
    conv_node3.reset <= reset
    when is_done :
      rdy <= UInt<1>("h0")
    else :
      node _T_2 = or(first_rdy, conv_node3.io.v)
      rdy <= _T_2
    conv_node3.io.d_in <= store
    conv_node3.io.w <= io.w_in
    conv_node3.io.bias <= bits(io.bias, 15, 0)
    conv_node3.io.rdy <= rdy
    io.d_out <= conv_node3.io.d_out
    io.v <= conv_node3.io.v

  module Top :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip d_in : UInt<400>, flip w_in : UInt<400>[6], flip bias : UInt<96>, flip rdy : UInt<1>, v : UInt<1>, c3_v : UInt<1>, pool_v : UInt<1>, flip fc1_wa_in : UInt<3200>, flip fc1_wb_in : UInt<3200>, flip fc1_bias : UInt<16>, flip fc1_rom_rdy : UInt<1>, fc1_v : UInt<1>, fc1_fc_v : UInt<1>, flip fc2_w_in : UInt<1920>, flip fc2_bias : UInt<16>, flip fc2_rom_rdy : UInt<1>, fc2_v : UInt<1>, fc2_fc_v : UInt<1>, flip fc3_w_in : UInt<1344>, flip fc3_bias : UInt<16>, flip fc3_rom_rdy : UInt<1>, fc3_d_out : UInt<16>, fc3_v : UInt<1>, fc3_fc_v : UInt<1>}
  
    inst t1 of Tile
    t1.clock <= clock
    t1.reset <= reset
    t1.io.d_in <= io.d_in
    t1.io.w_in[0] <= io.w_in[0]
    t1.io.w_in[1] <= io.w_in[1]
    t1.io.w_in[2] <= io.w_in[2]
    t1.io.w_in[3] <= io.w_in[3]
    t1.io.w_in[4] <= io.w_in[4]
    t1.io.w_in[5] <= io.w_in[5]
    t1.io.bias <= io.bias
    t1.io.rdy <= io.rdy
    inst t2 of Tile2
    t2.clock <= clock
    t2.reset <= reset
    t2.io.d_in[0] <= t1.io.d_out[0]
    t2.io.d_in[1] <= t1.io.d_out[1]
    t2.io.d_in[2] <= t1.io.d_out[2]
    t2.io.d_in[3] <= t1.io.d_out[3]
    t2.io.d_in[4] <= t1.io.d_out[4]
    t2.io.d_in[5] <= t1.io.d_out[5]
    t2.io.w_in[0][0] <= UInt<1>("h0")
    t2.io.w_in[0][1] <= UInt<1>("h0")
    t2.io.w_in[0][2] <= UInt<1>("h0")
    t2.io.w_in[0][3] <= UInt<1>("h0")
    t2.io.w_in[0][4] <= UInt<1>("h0")
    t2.io.w_in[0][5] <= UInt<1>("h0")
    t2.io.w_in[0][6] <= UInt<1>("h0")
    t2.io.w_in[0][7] <= UInt<1>("h0")
    t2.io.w_in[0][8] <= UInt<1>("h0")
    t2.io.w_in[0][9] <= UInt<1>("h0")
    t2.io.w_in[0][10] <= UInt<1>("h0")
    t2.io.w_in[0][11] <= UInt<1>("h0")
    t2.io.w_in[0][12] <= UInt<1>("h0")
    t2.io.w_in[0][13] <= UInt<1>("h0")
    t2.io.w_in[0][14] <= UInt<1>("h0")
    t2.io.w_in[0][15] <= UInt<1>("h0")
    t2.io.w_in[1][0] <= UInt<1>("h1")
    t2.io.w_in[1][1] <= UInt<1>("h1")
    t2.io.w_in[1][2] <= UInt<1>("h1")
    t2.io.w_in[1][3] <= UInt<1>("h1")
    t2.io.w_in[1][4] <= UInt<1>("h1")
    t2.io.w_in[1][5] <= UInt<1>("h1")
    t2.io.w_in[1][6] <= UInt<1>("h1")
    t2.io.w_in[1][7] <= UInt<1>("h1")
    t2.io.w_in[1][8] <= UInt<1>("h1")
    t2.io.w_in[1][9] <= UInt<1>("h1")
    t2.io.w_in[1][10] <= UInt<1>("h1")
    t2.io.w_in[1][11] <= UInt<1>("h1")
    t2.io.w_in[1][12] <= UInt<1>("h1")
    t2.io.w_in[1][13] <= UInt<1>("h1")
    t2.io.w_in[1][14] <= UInt<1>("h1")
    t2.io.w_in[1][15] <= UInt<1>("h1")
    t2.io.w_in[2][0] <= UInt<2>("h2")
    t2.io.w_in[2][1] <= UInt<2>("h2")
    t2.io.w_in[2][2] <= UInt<2>("h2")
    t2.io.w_in[2][3] <= UInt<2>("h2")
    t2.io.w_in[2][4] <= UInt<2>("h2")
    t2.io.w_in[2][5] <= UInt<2>("h2")
    t2.io.w_in[2][6] <= UInt<2>("h2")
    t2.io.w_in[2][7] <= UInt<2>("h2")
    t2.io.w_in[2][8] <= UInt<2>("h2")
    t2.io.w_in[2][9] <= UInt<2>("h2")
    t2.io.w_in[2][10] <= UInt<2>("h2")
    t2.io.w_in[2][11] <= UInt<2>("h2")
    t2.io.w_in[2][12] <= UInt<2>("h2")
    t2.io.w_in[2][13] <= UInt<2>("h2")
    t2.io.w_in[2][14] <= UInt<2>("h2")
    t2.io.w_in[2][15] <= UInt<2>("h2")
    t2.io.w_in[3][0] <= UInt<2>("h3")
    t2.io.w_in[3][1] <= UInt<2>("h3")
    t2.io.w_in[3][2] <= UInt<2>("h3")
    t2.io.w_in[3][3] <= UInt<2>("h3")
    t2.io.w_in[3][4] <= UInt<2>("h3")
    t2.io.w_in[3][5] <= UInt<2>("h3")
    t2.io.w_in[3][6] <= UInt<2>("h3")
    t2.io.w_in[3][7] <= UInt<2>("h3")
    t2.io.w_in[3][8] <= UInt<2>("h3")
    t2.io.w_in[3][9] <= UInt<2>("h3")
    t2.io.w_in[3][10] <= UInt<2>("h3")
    t2.io.w_in[3][11] <= UInt<2>("h3")
    t2.io.w_in[3][12] <= UInt<2>("h3")
    t2.io.w_in[3][13] <= UInt<2>("h3")
    t2.io.w_in[3][14] <= UInt<2>("h3")
    t2.io.w_in[3][15] <= UInt<2>("h3")
    t2.io.w_in[4][0] <= UInt<3>("h4")
    t2.io.w_in[4][1] <= UInt<3>("h4")
    t2.io.w_in[4][2] <= UInt<3>("h4")
    t2.io.w_in[4][3] <= UInt<3>("h4")
    t2.io.w_in[4][4] <= UInt<3>("h4")
    t2.io.w_in[4][5] <= UInt<3>("h4")
    t2.io.w_in[4][6] <= UInt<3>("h4")
    t2.io.w_in[4][7] <= UInt<3>("h4")
    t2.io.w_in[4][8] <= UInt<3>("h4")
    t2.io.w_in[4][9] <= UInt<3>("h4")
    t2.io.w_in[4][10] <= UInt<3>("h4")
    t2.io.w_in[4][11] <= UInt<3>("h4")
    t2.io.w_in[4][12] <= UInt<3>("h4")
    t2.io.w_in[4][13] <= UInt<3>("h4")
    t2.io.w_in[4][14] <= UInt<3>("h4")
    t2.io.w_in[4][15] <= UInt<3>("h4")
    t2.io.w_in[5][0] <= UInt<3>("h5")
    t2.io.w_in[5][1] <= UInt<3>("h5")
    t2.io.w_in[5][2] <= UInt<3>("h5")
    t2.io.w_in[5][3] <= UInt<3>("h5")
    t2.io.w_in[5][4] <= UInt<3>("h5")
    t2.io.w_in[5][5] <= UInt<3>("h5")
    t2.io.w_in[5][6] <= UInt<3>("h5")
    t2.io.w_in[5][7] <= UInt<3>("h5")
    t2.io.w_in[5][8] <= UInt<3>("h5")
    t2.io.w_in[5][9] <= UInt<3>("h5")
    t2.io.w_in[5][10] <= UInt<3>("h5")
    t2.io.w_in[5][11] <= UInt<3>("h5")
    t2.io.w_in[5][12] <= UInt<3>("h5")
    t2.io.w_in[5][13] <= UInt<3>("h5")
    t2.io.w_in[5][14] <= UInt<3>("h5")
    t2.io.w_in[5][15] <= UInt<3>("h5")
    t2.io.bias <= UInt<1>("h1")
    t2.io.rdy <= t1.io.pool_v
    io.v <= t1.io.v
    reg delay_c3 : UInt<1>, clock with : 
      reset => (reset, UInt<1>("h0"))
    delay_c3 <= t2.io.c3_v
    io.c3_v <= delay_c3
    inst c2mp of C2MaxPool
    c2mp.clock <= clock
    c2mp.reset <= reset
    c2mp.io.d_in[0] <= t2.io.d_out[0]
    c2mp.io.d_in[1] <= t2.io.d_out[1]
    c2mp.io.d_in[2] <= t2.io.d_out[2]
    c2mp.io.d_in[3] <= t2.io.d_out[3]
    c2mp.io.d_in[4] <= t2.io.d_out[4]
    c2mp.io.d_in[5] <= t2.io.d_out[5]
    c2mp.io.d_in[6] <= t2.io.d_out[6]
    c2mp.io.d_in[7] <= t2.io.d_out[7]
    c2mp.io.d_in[8] <= t2.io.d_out[8]
    c2mp.io.d_in[9] <= t2.io.d_out[9]
    c2mp.io.d_in[10] <= t2.io.d_out[10]
    c2mp.io.d_in[11] <= t2.io.d_out[11]
    c2mp.io.d_in[12] <= t2.io.d_out[12]
    c2mp.io.d_in[13] <= t2.io.d_out[13]
    c2mp.io.d_in[14] <= t2.io.d_out[14]
    c2mp.io.d_in[15] <= t2.io.d_out[15]
    c2mp.io.rdy <= delay_c3
    io.pool_v <= c2mp.io.pool_v
    inst f1 of FC1
    f1.clock <= clock
    f1.reset <= reset
    f1.io.d_in[0] <= c2mp.io.d_out[0]
    f1.io.d_in[1] <= c2mp.io.d_out[1]
    f1.io.d_in[2] <= c2mp.io.d_out[2]
    f1.io.d_in[3] <= c2mp.io.d_out[3]
    f1.io.d_in[4] <= c2mp.io.d_out[4]
    f1.io.d_in[5] <= c2mp.io.d_out[5]
    f1.io.d_in[6] <= c2mp.io.d_out[6]
    f1.io.d_in[7] <= c2mp.io.d_out[7]
    f1.io.d_in[8] <= c2mp.io.d_out[8]
    f1.io.d_in[9] <= c2mp.io.d_out[9]
    f1.io.d_in[10] <= c2mp.io.d_out[10]
    f1.io.d_in[11] <= c2mp.io.d_out[11]
    f1.io.d_in[12] <= c2mp.io.d_out[12]
    f1.io.d_in[13] <= c2mp.io.d_out[13]
    f1.io.d_in[14] <= c2mp.io.d_out[14]
    f1.io.d_in[15] <= c2mp.io.d_out[15]
    f1.io.wa_in <= io.fc1_wa_in
    f1.io.wb_in <= io.fc1_wb_in
    f1.io.bias <= io.fc1_bias
    f1.io.rdy <= c2mp.io.pool_v
    f1.io.rom_rdy <= io.fc1_rom_rdy
    inst f2 of FC2
    f2.clock <= clock
    f2.reset <= reset
    f1.io.done <= f2.io.fc1_done
    io.fc1_v <= f1.io.v
    f2.io.d_in <= f1.io.d_out
    f2.io.w_in <= io.fc2_w_in
    f2.io.bias <= io.fc2_bias
    f2.io.rdy <= f1.io.v
    f2.io.rom_rdy <= io.fc2_rom_rdy
    inst f3 of FC3
    f3.clock <= clock
    f3.reset <= reset
    f2.io.done <= f3.io.fc2_done
    io.fc2_v <= f2.io.v
    f3.io.d_in <= f2.io.d_out
    f3.io.w_in <= io.fc3_w_in
    f3.io.bias <= io.fc3_bias
    f3.io.rdy <= f2.io.v
    f3.io.rom_rdy <= io.fc3_rom_rdy
    io.fc3_d_out <= f3.io.d_out
    io.fc3_v <= f3.io.v
    f3.io.done <= UInt<1>("h0")
    reg fc3_counter : UInt<16>, clock with : 
      reset => (reset, UInt<16>("h0"))
    node _T = eq(fc3_counter, UInt<4>("ha"))
    when _T :
      fc3_counter <= UInt<1>("h0")
      f3.io.done <= UInt<1>("h1")
    else :
      when f3.io.v :
        node _T_1 = add(fc3_counter, UInt<1>("h1"))
        fc3_counter <= _T_1
      else :
        fc3_counter <= fc3_counter
    io.fc1_fc_v <= f1.io.v
    io.fc2_fc_v <= f2.io.v
    io.fc3_fc_v <= f3.io.v
