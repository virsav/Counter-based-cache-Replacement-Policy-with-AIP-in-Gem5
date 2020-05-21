build/X86/gem5.opt --outdir=fluidanimate_RefCount_1MB configs/example/se.py --cpu-type=AtomicSimpleCPU -n 5 --caches --l1i_size=32kB --l1d_size=32kB --l2cache --l2_size=1MB --l2_assoc=16 --l2_rpp="RefCountRP()" -c benchmarks/fluidanimate/fluidanimate -o "4 5 benchmarks/fluidanimate/in_5K.fluid"

build/X86/gem5.opt --outdir=fluidanimate_RefCount_4MB configs/example/se.py --cpu-type=AtomicSimpleCPU -n 5 --caches --l1i_size=32kB --l1d_size=32kB --l2cache --l2_size=4MB --l2_assoc=16 --l2_rpp="RefCountRP()" -c benchmarks/fluidanimate/fluidanimate -o "4 5 benchmarks/fluidanimate/in_5K.fluid"

build/X86/gem5.opt --outdir=fluidanimate_LRU_1MB configs/example/se.py --cpu-type=AtomicSimpleCPU -n 5 --caches --l1i_size=32kB --l1d_size=32kB --l2cache --l2_size=1MB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmarks/fluidanimate/fluidanimate -o "4 5 benchmarks/fluidanimate/in_5K.fluid"

build/X86/gem5.opt --outdir=fluidanimate_LRU_4MB configs/example/se.py --cpu-type=AtomicSimpleCPU -n 5 --caches --l1i_size=32kB --l1d_size=32kB --l2cache --l2_size=4MB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmarks/fluidanimate/fluidanimate -o "4 5 benchmarks/fluidanimate/in_5K.fluid"

build/X86/gem5.opt --outdir=bodytrack_RefCount_1MB configs/example/se.py --cpu-type=AtomicSimpleCPU -n 6 --caches --l1i_size=32kB --l1d_size=32kB --l2cache --l2_size=1MB --l2_assoc=16 --mem-size=8192MB --l2_rpp="RefCountRP()" -c benchmarks/bodytrack/bodytrack -o "benchmarks/bodytrack/sequenceB_1 4 1 100 5 2 4"

build/X86/gem5.opt --outdir=bodytrack_RefCount_4MB configs/example/se.py --cpu-type=AtomicSimpleCPU -n 6 --caches --l1i_size=32kB --l1d_size=32kB --l2cache --l2_size=4MB --l2_assoc=16 --mem-size=8192MB --l2_rpp="RefCountRP()" -c benchmarks/bodytrack/bodytrack -o "benchmarks/bodytrack/sequenceB_1 4 1 100 5 2 4"

build/X86/gem5.opt --outdir=bodytrack_LRU_1MB configs/example/se.py --cpu-type=AtomicSimpleCPU -n 6 --caches --l1i_size=32kB --l1d_size=32kB --l2cache --l2_size=1MB --l2_assoc=16 --mem-size=8192MB --l2_rpp="LRURP()" -c benchmarks/bodytrack/bodytrack -o "benchmarks/bodytrack/sequenceB_1 4 1 100 5 2 4"

build/X86/gem5.opt --outdir=bodytrack_LRU_4MB configs/example/se.py --cpu-type=AtomicSimpleCPU -n 6 --caches --l1i_size=32kB --l1d_size=32kB --l2cache --l2_size=4MB --l2_assoc=16 --mem-size=8192MB --l2_rpp="LRURP()" -c benchmarks/bodytrack/bodytrack -o "benchmarks/bodytrack/sequenceB_1 4 1 100 5 2 4"
