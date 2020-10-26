circuit ArrayMultiplier :
  module FullAdder :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
  
    node _T = xor(io.x, io.y)
    node _T_1 = xor(_T, io.cin)
    io.s <= _T_1
    node _T_2 = and(io.x, io.y)
    node _T_3 = and(io.x, io.cin)
    node _T_4 = or(_T_2, _T_3)
    node _T_5 = and(io.y, io.cin)
    node _T_6 = or(_T_4, _T_5)
    io.cout <= _T_6

  module HalfAdder :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip x : UInt<1>, flip y : UInt<1>, s : UInt<1>, cout : UInt<1>}
  
    node _T = xor(io.x, io.y)
    io.s <= _T
    node _T_1 = and(io.x, io.y)
    io.cout <= _T_1

  module ArrayMultiplier :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip x : UInt<4>, flip y : UInt<4>, result : UInt<8>}
  
    inst _T of FullAdder
    _T.clock <= clock
    _T.reset <= reset
    _T.io.x <= UInt<1>("h0")
    node _T_1 = bits(io.x, 3, 3)
    node _T_2 = bits(io.y, 1, 1)
    node _T_3 = and(_T_1, _T_2)
    _T.io.y <= _T_3
    inst _T_4 of FullAdder
    _T_4.clock <= clock
    _T_4.reset <= reset
    _T.io.cin <= _T_4.io.cout
    node _T_5 = bits(io.x, 3, 3)
    node _T_6 = bits(io.y, 0, 0)
    node _T_7 = and(_T_5, _T_6)
    _T_4.io.x <= _T_7
    node _T_8 = bits(io.x, 2, 2)
    node _T_9 = bits(io.y, 1, 1)
    node _T_10 = and(_T_8, _T_9)
    _T_4.io.y <= _T_10
    inst _T_11 of FullAdder
    _T_11.clock <= clock
    _T_11.reset <= reset
    _T_4.io.cin <= _T_11.io.cout
    node _T_12 = bits(io.x, 2, 2)
    node _T_13 = bits(io.y, 0, 0)
    node _T_14 = and(_T_12, _T_13)
    _T_11.io.x <= _T_14
    node _T_15 = bits(io.x, 1, 1)
    node _T_16 = bits(io.y, 1, 1)
    node _T_17 = and(_T_15, _T_16)
    _T_11.io.y <= _T_17
    inst _T_18 of HalfAdder
    _T_18.clock <= clock
    _T_18.reset <= reset
    _T_11.io.cin <= _T_18.io.cout
    node _T_19 = bits(io.x, 1, 1)
    node _T_20 = bits(io.y, 0, 0)
    node _T_21 = and(_T_19, _T_20)
    _T_18.io.x <= _T_21
    node _T_22 = bits(io.x, 0, 0)
    node _T_23 = bits(io.y, 1, 1)
    node _T_24 = and(_T_22, _T_23)
    _T_18.io.y <= _T_24
    inst _T_25 of FullAdder
    _T_25.clock <= clock
    _T_25.reset <= reset
    _T_25.io.x <= _T.io.cout
    node _T_26 = bits(io.x, 3, 3)
    node _T_27 = bits(io.y, 2, 2)
    node _T_28 = and(_T_26, _T_27)
    _T_25.io.y <= _T_28
    inst _T_29 of FullAdder
    _T_29.clock <= clock
    _T_29.reset <= reset
    _T_25.io.cin <= _T_29.io.cout
    _T_29.io.x <= _T.io.cout
    node _T_30 = bits(io.x, 2, 2)
    node _T_31 = bits(io.y, 2, 2)
    node _T_32 = and(_T_30, _T_31)
    _T_29.io.y <= _T_32
    inst _T_33 of FullAdder
    _T_33.clock <= clock
    _T_33.reset <= reset
    _T_29.io.cin <= _T_33.io.cout
    _T_33.io.x <= _T_4.io.cout
    node _T_34 = bits(io.x, 1, 1)
    node _T_35 = bits(io.y, 2, 2)
    node _T_36 = and(_T_34, _T_35)
    _T_33.io.y <= _T_36
    inst _T_37 of HalfAdder
    _T_37.clock <= clock
    _T_37.reset <= reset
    _T_33.io.cin <= _T_37.io.cout
    _T_37.io.x <= _T_11.io.cout
    node _T_38 = bits(io.x, 0, 0)
    node _T_39 = bits(io.y, 2, 2)
    node _T_40 = and(_T_38, _T_39)
    _T_37.io.y <= _T_40
    inst _T_41 of FullAdder
    _T_41.clock <= clock
    _T_41.reset <= reset
    _T_41.io.x <= _T_25.io.cout
    node _T_42 = bits(io.x, 3, 3)
    node _T_43 = bits(io.y, 3, 3)
    node _T_44 = and(_T_42, _T_43)
    _T_41.io.y <= _T_44
    inst _T_45 of FullAdder
    _T_45.clock <= clock
    _T_45.reset <= reset
    _T_41.io.cin <= _T_45.io.cout
    _T_45.io.x <= _T_25.io.cout
    node _T_46 = bits(io.x, 2, 2)
    node _T_47 = bits(io.y, 3, 3)
    node _T_48 = and(_T_46, _T_47)
    _T_45.io.y <= _T_48
    inst _T_49 of FullAdder
    _T_49.clock <= clock
    _T_49.reset <= reset
    _T_45.io.cin <= _T_49.io.cout
    _T_49.io.x <= _T_29.io.cout
    node _T_50 = bits(io.x, 1, 1)
    node _T_51 = bits(io.y, 3, 3)
    node _T_52 = and(_T_50, _T_51)
    _T_49.io.y <= _T_52
    inst _T_53 of HalfAdder
    _T_53.clock <= clock
    _T_53.reset <= reset
    _T_49.io.cin <= _T_53.io.cout
    _T_53.io.x <= _T_33.io.cout
    node _T_54 = bits(io.x, 0, 0)
    node _T_55 = bits(io.y, 3, 3)
    node _T_56 = and(_T_54, _T_55)
    _T_53.io.y <= _T_56
    wire _T_57 : UInt<1>
    node _T_58 = bits(io.x, 0, 0)
    node _T_59 = bits(io.y, 0, 0)
    node _T_60 = and(_T_58, _T_59)
    _T_57 <= _T_60
    wire _T_61 : UInt<1>
    _T_61 <= _T.io.s
    wire _T_62 : UInt<1>
    _T_62 <= _T_25.io.s
    wire _T_63 : UInt<1>
    _T_63 <= _T_41.io.s
    wire _T_64 : UInt<1>
    _T_64 <= _T_45.io.s
    wire _T_65 : UInt<1>
    _T_65 <= _T_49.io.s
    wire _T_66 : UInt<1>
    _T_66 <= _T_53.io.s
    wire _T_67 : UInt<1>
    _T_67 <= _T_53.io.cout
    node _T_68 = cat(_T_57, _T_61)
    node _T_69 = cat(_T_62, _T_63)
    node _T_70 = cat(_T_68, _T_69)
    node _T_71 = cat(_T_64, _T_65)
    node _T_72 = cat(_T_66, _T_67)
    node _T_73 = cat(_T_71, _T_72)
    node _T_74 = cat(_T_70, _T_73)
    io.result <= _T_74
