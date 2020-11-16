#include <verilated.h>
#include <verilated_vcd_c.h>
#include <time.h>
#include <iostream>
#include "VTop.h"

using namespace std;

VTop *top;
VerilatedVcdC *tfp;

vluint64_t main_time = 0;
const vluint64_t sim_time = 100000; // 100,000 cycles

int main(int argc, char **argv)
{
    clock_t t1 = clock();

    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);

    top = new VTop;
    tfp = new VerilatedVcdC;

    top->trace(tfp, 99);
    tfp->open("./VTop.vcd");

    while(!Verilated::gotFinish() && main_time < sim_time)
    {   
        // Clock
        if (main_time % 2)
        {
            top->clock = 1;
        }else
        {
            top->clock = 0;
        }

        top->eval();
        tfp->dump(main_time);

        main_time++;
        
    }

    tfp->close();
    delete top;
    delete tfp;

    cout << ((clock() - t1) * 1.0 / CLOCKS_PER_SEC * 1000) * 1000 << endl;
    exit(0);
    return 0;
}