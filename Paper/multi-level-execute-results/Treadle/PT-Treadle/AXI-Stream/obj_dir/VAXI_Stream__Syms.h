// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VAXI_Stream__Syms_H_
#define _VAXI_Stream__Syms_H_

#include "verilated.h"

// INCLUDE MODULE CLASSES
#include "VAXI_Stream.h"

// SYMS CLASS
class VAXI_Stream__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_activity;  ///< Used by trace routines to determine change occurred
    bool __Vm_didInit;
    
    // SUBCELL STATE
    VAXI_Stream*                   TOPp;
    
    // CREATORS
    VAXI_Stream__Syms(VAXI_Stream* topp, const char* namep);
    ~VAXI_Stream__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    inline bool getClearActivity() { bool r=__Vm_activity; __Vm_activity=false; return r; }
    
} VL_ATTR_ALIGNED(64);

#endif  // guard
