// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "VTest__Syms.h"
#include "VTest.h"
#include "VTest_DotProduct.h"



// FUNCTIONS
VTest__Syms::VTest__Syms(VTest* topp, const char* namep)
    // Setup locals
    : __Vm_namep(namep)
    , __Vm_activity(false)
    , __Vm_didInit(false)
    // Setup submodule names
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_0(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_0"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_1(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_1"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_10(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_10"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_11(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_11"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_12(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_12"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_13(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_13"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_14(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_14"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_15(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_15"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_2(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_2"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_3(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_3"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_4(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_4"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_5(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_5"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_6(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_6"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_7(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_7"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_8(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_8"))
    , TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_9(Verilated::catName(topp->name(), "Test.vta_shell.core.compute.tensorGemm.mvc.dot_9"))
{
    // Pointer to top level
    TOPp = topp;
    // Setup each module's pointers to their submodules
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_0 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_0;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_1 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_1;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_10 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_10;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_11 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_11;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_12 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_12;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_13 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_13;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_14 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_14;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_15 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_15;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_2 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_2;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_3 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_3;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_4 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_4;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_5 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_5;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_6 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_6;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_7 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_7;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_8 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_8;
    TOPp->__PVT__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_9 = &TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_9;
    // Setup each module's pointer back to symbol table (for public functions)
    TOPp->__Vconfigure(this, true);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_0.__Vconfigure(this, true);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_1.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_10.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_11.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_12.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_13.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_14.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_15.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_2.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_3.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_4.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_5.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_6.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_7.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_8.__Vconfigure(this, false);
    TOP__Test__DOT__vta_shell__DOT__core__DOT__compute__DOT__tensorGemm__DOT__mvc__DOT__dot_9.__Vconfigure(this, false);
    // Setup export functions
    for (int __Vfinal=0; __Vfinal<2; __Vfinal++) {
    }
}
