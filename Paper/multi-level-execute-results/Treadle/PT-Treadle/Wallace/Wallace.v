module HalfAdder(
  input   io_a,
  input   io_b,
  output  io_s,
  output  io_cout
);
  assign io_s = io_a ^ io_b;
  assign io_cout = io_a & io_b;
endmodule
module FullAdder(
  input   io_a,
  input   io_b,
  input   io_cin,
  output  io_s,
  output  io_cout
);
  wire  _T;
  wire  _T_2;
  wire  _T_3;
  wire  _T_4;
  wire  _T_5;
  assign _T = io_a ^ io_b;
  assign _T_2 = io_a & io_b;
  assign _T_3 = io_a & io_cin;
  assign _T_4 = _T_2 | _T_3;
  assign _T_5 = io_b & io_cin;
  assign io_s = _T ^ io_cin;
  assign io_cout = _T_4 | _T_5;
endmodule
module SevenAdder(
  input  [6:0] io_a,
  input  [6:0] io_b,
  output [6:0] io_s,
  output       io_cout
);
  wire  _T_io_a;
  wire  _T_io_b;
  wire  _T_io_cin;
  wire  _T_io_s;
  wire  _T_io_cout;
  wire  _T_3_io_a;
  wire  _T_3_io_b;
  wire  _T_3_io_cin;
  wire  _T_3_io_s;
  wire  _T_3_io_cout;
  wire  _T_6_io_a;
  wire  _T_6_io_b;
  wire  _T_6_io_cin;
  wire  _T_6_io_s;
  wire  _T_6_io_cout;
  wire  _T_9_io_a;
  wire  _T_9_io_b;
  wire  _T_9_io_cin;
  wire  _T_9_io_s;
  wire  _T_9_io_cout;
  wire  _T_12_io_a;
  wire  _T_12_io_b;
  wire  _T_12_io_cin;
  wire  _T_12_io_s;
  wire  _T_12_io_cout;
  wire  _T_15_io_a;
  wire  _T_15_io_b;
  wire  _T_15_io_cin;
  wire  _T_15_io_s;
  wire  _T_15_io_cout;
  wire  _T_18_io_a;
  wire  _T_18_io_b;
  wire  _T_18_io_cin;
  wire  _T_18_io_s;
  wire  _T_18_io_cout;
  wire  s_5;
  wire  s_4;
  wire  s_6;
  wire [2:0] _T_22;
  wire  s_3;
  wire  s_2;
  wire  s_1;
  wire  s_0;
  wire [3:0] _T_25;
  FullAdder _T (
    .io_a(_T_io_a),
    .io_b(_T_io_b),
    .io_cin(_T_io_cin),
    .io_s(_T_io_s),
    .io_cout(_T_io_cout)
  );
  FullAdder _T_3 (
    .io_a(_T_3_io_a),
    .io_b(_T_3_io_b),
    .io_cin(_T_3_io_cin),
    .io_s(_T_3_io_s),
    .io_cout(_T_3_io_cout)
  );
  FullAdder _T_6 (
    .io_a(_T_6_io_a),
    .io_b(_T_6_io_b),
    .io_cin(_T_6_io_cin),
    .io_s(_T_6_io_s),
    .io_cout(_T_6_io_cout)
  );
  FullAdder _T_9 (
    .io_a(_T_9_io_a),
    .io_b(_T_9_io_b),
    .io_cin(_T_9_io_cin),
    .io_s(_T_9_io_s),
    .io_cout(_T_9_io_cout)
  );
  FullAdder _T_12 (
    .io_a(_T_12_io_a),
    .io_b(_T_12_io_b),
    .io_cin(_T_12_io_cin),
    .io_s(_T_12_io_s),
    .io_cout(_T_12_io_cout)
  );
  FullAdder _T_15 (
    .io_a(_T_15_io_a),
    .io_b(_T_15_io_b),
    .io_cin(_T_15_io_cin),
    .io_s(_T_15_io_s),
    .io_cout(_T_15_io_cout)
  );
  FullAdder _T_18 (
    .io_a(_T_18_io_a),
    .io_b(_T_18_io_b),
    .io_cin(_T_18_io_cin),
    .io_s(_T_18_io_s),
    .io_cout(_T_18_io_cout)
  );
  assign s_5 = _T_15_io_s;
  assign s_4 = _T_12_io_s;
  assign s_6 = _T_18_io_s;
  assign _T_22 = {s_6,s_5,s_4};
  assign s_3 = _T_9_io_s;
  assign s_2 = _T_6_io_s;
  assign s_1 = _T_3_io_s;
  assign s_0 = _T_io_s;
  assign _T_25 = {s_3,s_2,s_1,s_0};
  assign io_s = {_T_22,_T_25};
  assign io_cout = _T_18_io_cout;
  assign _T_io_a = io_a[0];
  assign _T_io_b = io_b[0];
  assign _T_io_cin = 1'h0;
  assign _T_3_io_a = io_a[1];
  assign _T_3_io_b = io_b[1];
  assign _T_3_io_cin = _T_io_cout;
  assign _T_6_io_a = io_a[2];
  assign _T_6_io_b = io_b[2];
  assign _T_6_io_cin = _T_3_io_cout;
  assign _T_9_io_a = io_a[3];
  assign _T_9_io_b = io_b[3];
  assign _T_9_io_cin = _T_6_io_cout;
  assign _T_12_io_a = io_a[4];
  assign _T_12_io_b = io_b[4];
  assign _T_12_io_cin = _T_9_io_cout;
  assign _T_15_io_a = io_a[5];
  assign _T_15_io_b = io_b[5];
  assign _T_15_io_cin = _T_12_io_cout;
  assign _T_18_io_a = io_a[6];
  assign _T_18_io_b = io_b[6];
  assign _T_18_io_cin = _T_15_io_cout;
endmodule
module Wallace(
  input        clock,
  input        reset,
  input  [3:0] io_x,
  input  [3:0] io_y,
  output [7:0] io_c
);
  wire  _T_12_io_a;
  wire  _T_12_io_b;
  wire  _T_12_io_s;
  wire  _T_12_io_cout;
  wire  _T_19_io_a;
  wire  _T_19_io_b;
  wire  _T_19_io_s;
  wire  _T_19_io_cout;
  wire  _T_26_io_a;
  wire  _T_26_io_b;
  wire  _T_26_io_s;
  wire  _T_26_io_cout;
  wire  _T_33_io_a;
  wire  _T_33_io_b;
  wire  _T_33_io_cin;
  wire  _T_33_io_s;
  wire  _T_33_io_cout;
  wire  _T_40_io_a;
  wire  _T_40_io_b;
  wire  _T_40_io_cin;
  wire  _T_40_io_s;
  wire  _T_40_io_cout;
  wire  _T_44_io_a;
  wire  _T_44_io_b;
  wire  _T_44_io_cin;
  wire  _T_44_io_s;
  wire  _T_44_io_cout;
  wire [6:0] _T_66_io_a;
  wire [6:0] _T_66_io_b;
  wire [6:0] _T_66_io_s;
  wire  _T_66_io_cout;
  wire  _T;
  wire  _T_3;
  wire  _T_6;
  wire  _T_9;
  wire  _T_13;
  wire  _T_16;
  wire  _T_20;
  wire  _T_34;
  wire  s1_6;
  wire  s1_2;
  wire  s1_1;
  wire  s1_0;
  wire  s2_1;
  wire  s1_5;
  wire  s1_4;
  wire [2:0] _T_68;
  wire  s1_3;
  wire [3:0] _T_71;
  wire  s2_5;
  wire  s2_4;
  wire  s2_6;
  wire [2:0] _T_74;
  wire  s2_3;
  wire  s2_2;
  wire [3:0] _T_77;
  wire  WWW_0;
  wire  WWW_1;
  wire  WWW_2;
  wire  WWW_3;
  wire  WWW_4;
  wire  WWW_5;
  wire  WWW_6;
  wire  WWW_7;
  wire [3:0] _T_88;
  wire [3:0] _T_91;
  HalfAdder _T_12 (
    .io_a(_T_12_io_a),
    .io_b(_T_12_io_b),
    .io_s(_T_12_io_s),
    .io_cout(_T_12_io_cout)
  );
  HalfAdder _T_19 (
    .io_a(_T_19_io_a),
    .io_b(_T_19_io_b),
    .io_s(_T_19_io_s),
    .io_cout(_T_19_io_cout)
  );
  HalfAdder _T_26 (
    .io_a(_T_26_io_a),
    .io_b(_T_26_io_b),
    .io_s(_T_26_io_s),
    .io_cout(_T_26_io_cout)
  );
  FullAdder _T_33 (
    .io_a(_T_33_io_a),
    .io_b(_T_33_io_b),
    .io_cin(_T_33_io_cin),
    .io_s(_T_33_io_s),
    .io_cout(_T_33_io_cout)
  );
  FullAdder _T_40 (
    .io_a(_T_40_io_a),
    .io_b(_T_40_io_b),
    .io_cin(_T_40_io_cin),
    .io_s(_T_40_io_s),
    .io_cout(_T_40_io_cout)
  );
  FullAdder _T_44 (
    .io_a(_T_44_io_a),
    .io_b(_T_44_io_b),
    .io_cin(_T_44_io_cin),
    .io_s(_T_44_io_s),
    .io_cout(_T_44_io_cout)
  );
  SevenAdder _T_66 (
    .io_a(_T_66_io_a),
    .io_b(_T_66_io_b),
    .io_s(_T_66_io_s),
    .io_cout(_T_66_io_cout)
  );
  assign _T = io_y[0];
  assign _T_3 = io_y[1];
  assign _T_6 = io_y[2];
  assign _T_9 = io_y[3];
  assign _T_13 = io_x[1];
  assign _T_16 = io_x[0];
  assign _T_20 = io_x[2];
  assign _T_34 = io_x[3];
  assign s1_6 = _T_34 & _T_9;
  assign s1_2 = _T_20 & _T;
  assign s1_1 = _T_13 & _T;
  assign s1_0 = _T_16 & _T;
  assign s2_1 = _T_16 & _T_3;
  assign s1_5 = _T_44_io_s;
  assign s1_4 = _T_40_io_s;
  assign _T_68 = {s1_6,s1_5,s1_4};
  assign s1_3 = _T_33_io_s;
  assign _T_71 = {s1_3,s1_2,s1_1,s1_0};
  assign s2_5 = _T_40_io_cout;
  assign s2_4 = _T_33_io_cout;
  assign s2_6 = _T_44_io_cout;
  assign _T_74 = {s2_6,s2_5,s2_4};
  assign s2_3 = _T_26_io_cout;
  assign s2_2 = _T_26_io_s;
  assign _T_77 = {s2_3,s2_2,s2_1,1'h0};
  assign WWW_0 = _T_66_io_s[0];
  assign WWW_1 = _T_66_io_s[1];
  assign WWW_2 = _T_66_io_s[2];
  assign WWW_3 = _T_66_io_s[3];
  assign WWW_4 = _T_66_io_s[4];
  assign WWW_5 = _T_66_io_s[5];
  assign WWW_6 = _T_66_io_s[6];
  assign WWW_7 = _T_66_io_cout;
  assign _T_88 = {WWW_7,WWW_6,WWW_5,WWW_4};
  assign _T_91 = {WWW_3,WWW_2,WWW_1,WWW_0};
  assign io_c = {_T_88,_T_91};
  assign _T_12_io_a = _T_13 & _T_6;
  assign _T_12_io_b = _T_16 & _T_9;
  assign _T_19_io_a = _T_20 & _T_6;
  assign _T_19_io_b = _T_13 & _T_9;
  assign _T_26_io_a = _T_13 & _T_3;
  assign _T_26_io_b = _T_16 & _T_6;
  assign _T_33_io_a = _T_34 & _T;
  assign _T_33_io_b = _T_20 & _T_3;
  assign _T_33_io_cin = _T_12_io_s;
  assign _T_40_io_a = _T_34 & _T_3;
  assign _T_40_io_b = _T_19_io_s;
  assign _T_40_io_cin = _T_12_io_cout;
  assign _T_44_io_a = _T_34 & _T_6;
  assign _T_44_io_b = _T_20 & _T_9;
  assign _T_44_io_cin = _T_19_io_cout;
  assign _T_66_io_a = {_T_68,_T_71};
  assign _T_66_io_b = {_T_74,_T_77};
endmodule
