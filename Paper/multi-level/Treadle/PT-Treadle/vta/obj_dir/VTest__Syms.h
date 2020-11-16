// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VTEST__SYMS_H_
#define _VTEST__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODULE CLASSES
#include "VTest.h"
#include "VTest_DotProduct.h"

// DPI TYPES for DPI Export callbacks (Internal use)

// SYMS CLASS
class VTest__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_activity;  ///< Used by trace routines to determine change occurred
    bool __Vm_didInit;
    
    // SUBCELL STATE
    VTest*                         TOPp;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_0;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_1;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_10;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_11;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_12;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_13;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_14;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_15;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_2;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_3;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_4;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_5;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_6;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_7;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_8;
    VTest_DotProduct               TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_9;
    
    // CREATORS
    VTest__Syms(VTest* topp, const char* namep);
    ~VTest__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    inline bool getClearActivity() { bool r=__Vm_activity; __Vm_activity=false; return r; }
    
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
