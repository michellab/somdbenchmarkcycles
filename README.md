# somdbenchmarkcycles
                                Time   Grad
10cycles-1s                     345s    2.39
100cycles-1ns                   484s    3.01
100cycles-1ns-mincoords         484s   -1.04
10cycles-5ns                   1696s    1.97
100cycles-5ns                  1835s    2.35
10cycles-5ns-mincoords         1612s    2.26

Quick fit suggests overhead are approximately 333s/1ns of sim and 1.5s/cycle
So shorter simulations should use fewer cycles to minimise overheads

Smaller discrepancy of free energy gradients between runs of 5 ns (better converged)

Benchmark run on
 Intel(R) Xeon(R) CPU E5-2640 v3 @ 2.60GHz hyperthreaded
 GeForce GTX 980 Ti

