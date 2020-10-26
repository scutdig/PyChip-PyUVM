circuit HFourMulder :
  module HalfAdder :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, s : UInt<1>, cout : UInt<1>}
  
    node _T = xor(io.a, io.b)
    io.s <= _T
    node _T_1 = and(io.a, io.b)
    io.cout <= _T_1

  module FullAdder :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
  
    node _T = xor(io.a, io.b)
    node _T_1 = xor(_T, io.cin)
    io.s <= _T_1
    node _T_2 = and(io.a, io.b)
    node _T_3 = and(io.a, io.cin)
    node _T_4 = or(_T_2, _T_3)
    node _T_5 = and(io.b, io.cin)
    node _T_6 = or(_T_4, _T_5)
    io.cout <= _T_6

  module SevenAdder :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<7>, flip b : UInt<7>, flip cin : UInt<1>, s : UInt<7>, cout : UInt<1>}
  
    wire carry : UInt<1>[8]
    carry[0] <= io.cin
    inst _T of FullAdder
    _T.clock <= clock
    _T.reset <= reset
    node _T_1 = bits(io.a, 0, 0)
    _T.io.a <= _T_1
    node _T_2 = bits(io.b, 0, 0)
    _T.io.b <= _T_2
    _T.io.cin <= carry[0]
    carry[1] <= _T.io.cout
    wire s : UInt<1>[7]
    s[0] <= _T.io.s
    inst _T_3 of FullAdder
    _T_3.clock <= clock
    _T_3.reset <= reset
    node _T_4 = bits(io.a, 1, 1)
    _T_3.io.a <= _T_4
    node _T_5 = bits(io.b, 1, 1)
    _T_3.io.b <= _T_5
    _T_3.io.cin <= carry[1]
    carry[2] <= _T_3.io.cout
    s[1] <= _T_3.io.s
    inst _T_6 of FullAdder
    _T_6.clock <= clock
    _T_6.reset <= reset
    node _T_7 = bits(io.a, 2, 2)
    _T_6.io.a <= _T_7
    node _T_8 = bits(io.b, 2, 2)
    _T_6.io.b <= _T_8
    _T_6.io.cin <= carry[2]
    carry[3] <= _T_6.io.cout
    s[2] <= _T_6.io.s
    inst _T_9 of FullAdder
    _T_9.clock <= clock
    _T_9.reset <= reset
    node _T_10 = bits(io.a, 3, 3)
    _T_9.io.a <= _T_10
    node _T_11 = bits(io.b, 3, 3)
    _T_9.io.b <= _T_11
    _T_9.io.cin <= carry[3]
    carry[4] <= _T_9.io.cout
    s[3] <= _T_9.io.s
    inst _T_12 of FullAdder
    _T_12.clock <= clock
    _T_12.reset <= reset
    node _T_13 = bits(io.a, 4, 4)
    _T_12.io.a <= _T_13
    node _T_14 = bits(io.b, 4, 4)
    _T_12.io.b <= _T_14
    _T_12.io.cin <= carry[4]
    carry[5] <= _T_12.io.cout
    s[4] <= _T_12.io.s
    inst _T_15 of FullAdder
    _T_15.clock <= clock
    _T_15.reset <= reset
    node _T_16 = bits(io.a, 5, 5)
    _T_15.io.a <= _T_16
    node _T_17 = bits(io.b, 5, 5)
    _T_15.io.b <= _T_17
    _T_15.io.cin <= carry[5]
    carry[6] <= _T_15.io.cout
    s[5] <= _T_15.io.s
    inst _T_18 of FullAdder
    _T_18.clock <= clock
    _T_18.reset <= reset
    node _T_19 = bits(io.a, 6, 6)
    _T_18.io.a <= _T_19
    node _T_20 = bits(io.b, 6, 6)
    _T_18.io.b <= _T_20
    _T_18.io.cin <= carry[6]
    carry[7] <= _T_18.io.cout
    s[6] <= _T_18.io.s
    node _T_21 = cat(s[5], s[4])
    node _T_22 = cat(s[6], _T_21)
    node _T_23 = cat(s[3], s[2])
    node _T_24 = cat(s[1], s[0])
    node _T_25 = cat(_T_23, _T_24)
    node _T_26 = cat(_T_22, _T_25)
    io.s <= _T_26
    io.cout <= carry[7]

  module HFourMulder :
    input clock : Clock
    input reset : UInt<1>
    output io : {flip x : UInt<4>, flip y : UInt<4>, c : UInt<8>}
  
    node _T = bits(io.y, 0, 0)
    node _T_1 = eq(_T, UInt<1>("h1"))
    wire _T_2 : UInt<4>
    when _T_1 :
      _T_2 <= io.x
    else :
      _T_2 <= UInt<1>("h0")
    node _T_3 = bits(io.y, 1, 1)
    node _T_4 = eq(_T_3, UInt<1>("h1"))
    wire _T_5 : UInt<4>
    when _T_4 :
      _T_5 <= io.x
    else :
      _T_5 <= UInt<1>("h0")
    node _T_6 = bits(io.y, 2, 2)
    node _T_7 = eq(_T_6, UInt<1>("h1"))
    wire _T_8 : UInt<4>
    when _T_7 :
      _T_8 <= io.x
    else :
      _T_8 <= UInt<1>("h0")
    node _T_9 = bits(io.y, 3, 3)
    node _T_10 = eq(_T_9, UInt<1>("h1"))
    wire _T_11 : UInt<4>
    when _T_10 :
      _T_11 <= io.x
    else :
      _T_11 <= UInt<1>("h0")
    inst _T_12 of HalfAdder
    _T_12.clock <= clock
    _T_12.reset <= reset
    node _T_13 = bits(io.x, 1, 1)
    node _T_14 = bits(io.y, 2, 2)
    node _T_15 = and(_T_13, _T_14)
    _T_12.io.a <= _T_15
    node _T_16 = bits(io.x, 0, 0)
    node _T_17 = bits(io.y, 3, 3)
    node _T_18 = and(_T_16, _T_17)
    _T_12.io.b <= _T_18
    inst _T_19 of HalfAdder
    _T_19.clock <= clock
    _T_19.reset <= reset
    node _T_20 = bits(io.x, 2, 2)
    node _T_21 = bits(io.y, 2, 2)
    node _T_22 = and(_T_20, _T_21)
    _T_19.io.a <= _T_22
    node _T_23 = bits(io.x, 1, 1)
    node _T_24 = bits(io.y, 3, 3)
    node _T_25 = and(_T_23, _T_24)
    _T_19.io.b <= _T_25
    inst _T_26 of HalfAdder
    _T_26.clock <= clock
    _T_26.reset <= reset
    node _T_27 = bits(io.x, 1, 1)
    node _T_28 = bits(io.y, 1, 1)
    node _T_29 = and(_T_27, _T_28)
    _T_26.io.a <= _T_29
    node _T_30 = bits(io.x, 0, 0)
    node _T_31 = bits(io.y, 2, 2)
    node _T_32 = and(_T_30, _T_31)
    _T_26.io.b <= _T_32
    inst _T_33 of FullAdder
    _T_33.clock <= clock
    _T_33.reset <= reset
    node _T_34 = bits(io.x, 3, 3)
    node _T_35 = bits(io.y, 0, 0)
    node _T_36 = and(_T_34, _T_35)
    _T_33.io.a <= _T_36
    node _T_37 = bits(io.x, 2, 2)
    node _T_38 = bits(io.y, 1, 1)
    node _T_39 = and(_T_37, _T_38)
    _T_33.io.b <= _T_39
    _T_33.io.cin <= _T_12.io.s
    inst _T_40 of FullAdder
    _T_40.clock <= clock
    _T_40.reset <= reset
    node _T_41 = bits(io.x, 3, 3)
    node _T_42 = bits(io.y, 1, 1)
    node _T_43 = and(_T_41, _T_42)
    _T_40.io.a <= _T_43
    _T_40.io.b <= _T_19.io.s
    _T_40.io.cin <= _T_12.io.cout
    inst _T_44 of FullAdder
    _T_44.clock <= clock
    _T_44.reset <= reset
    node _T_45 = bits(io.x, 3, 3)
    node _T_46 = bits(io.y, 2, 2)
    node _T_47 = and(_T_45, _T_46)
    _T_44.io.a <= _T_47
    node _T_48 = bits(io.x, 2, 2)
    node _T_49 = bits(io.y, 3, 3)
    node _T_50 = and(_T_48, _T_49)
    _T_44.io.b <= _T_50
    _T_44.io.cin <= _T_19.io.cout
    wire s1 : UInt<1>[7]
    node _T_51 = bits(io.x, 3, 3)
    node _T_52 = bits(io.y, 3, 3)
    node _T_53 = and(_T_51, _T_52)
    s1[6] <= _T_53
    s1[5] <= _T_44.io.s
    s1[4] <= _T_40.io.s
    s1[3] <= _T_33.io.s
    node _T_54 = bits(io.x, 2, 2)
    node _T_55 = bits(io.y, 0, 0)
    node _T_56 = and(_T_54, _T_55)
    s1[2] <= _T_56
    node _T_57 = bits(io.x, 1, 1)
    node _T_58 = bits(io.y, 0, 0)
    node _T_59 = and(_T_57, _T_58)
    s1[1] <= _T_59
    node _T_60 = bits(io.x, 0, 0)
    node _T_61 = bits(io.y, 0, 0)
    node _T_62 = and(_T_60, _T_61)
    s1[0] <= _T_62
    wire s2 : UInt<1>[7]
    s2[6] <= _T_44.io.cout
    s2[5] <= _T_40.io.cout
    s2[4] <= _T_33.io.cout
    s2[3] <= _T_26.io.cout
    s2[2] <= _T_26.io.s
    node _T_63 = bits(io.x, 0, 0)
    node _T_64 = bits(io.y, 1, 1)
    node _T_65 = and(_T_63, _T_64)
    s2[1] <= _T_65
    s2[0] <= UInt<1>("h0")
    inst _T_66 of SevenAdder
    _T_66.clock <= clock
    _T_66.reset <= reset
    node _T_67 = cat(s1[5], s1[4])
    node _T_68 = cat(s1[6], _T_67)
    node _T_69 = cat(s1[3], s1[2])
    node _T_70 = cat(s1[1], s1[0])
    node _T_71 = cat(_T_69, _T_70)
    node _T_72 = cat(_T_68, _T_71)
    _T_66.io.a <= _T_72
    node _T_73 = cat(s2[5], s2[4])
    node _T_74 = cat(s2[6], _T_73)
    node _T_75 = cat(s2[3], s2[2])
    node _T_76 = cat(s2[1], s2[0])
    node _T_77 = cat(_T_75, _T_76)
    node _T_78 = cat(_T_74, _T_77)
    _T_66.io.b <= _T_78
    _T_66.io.cin <= UInt<1>("h0")
    wire WWW : UInt<1>[8]
    node _T_79 = bits(_T_66.io.s, 0, 0)
    WWW[0] <= _T_79
    node _T_80 = bits(_T_66.io.s, 1, 1)
    WWW[1] <= _T_80
    node _T_81 = bits(_T_66.io.s, 2, 2)
    WWW[2] <= _T_81
    node _T_82 = bits(_T_66.io.s, 3, 3)
    WWW[3] <= _T_82
    node _T_83 = bits(_T_66.io.s, 4, 4)
    WWW[4] <= _T_83
    node _T_84 = bits(_T_66.io.s, 5, 5)
    WWW[5] <= _T_84
    node _T_85 = bits(_T_66.io.s, 6, 6)
    WWW[6] <= _T_85
    WWW[7] <= _T_66.io.cout
    node _T_86 = cat(WWW[7], WWW[6])
    node _T_87 = cat(WWW[5], WWW[4])
    node _T_88 = cat(_T_86, _T_87)
    node _T_89 = cat(WWW[3], WWW[2])
    node _T_90 = cat(WWW[1], WWW[0])
    node _T_91 = cat(_T_89, _T_90)
    node _T_92 = cat(_T_88, _T_91)
    io.c <= _T_92
