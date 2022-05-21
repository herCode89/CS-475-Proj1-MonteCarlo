#!/bin/bash



# number of threads:
for t in 1 2 4 6 8
	do

# number of subdivisions:
for s in 1 10 100 1000 10000 100000 500000 1000000
do
    g++ -DNUMTRIALS=$s -DNUMT=$t montecarlo.cpp -o montecarlo -lm -fopenmp
    ./montecarlo
  done
done
















#g++ montecarlo.cpp -o montecarlo -lm -fopenmp

# number of threads:
#for t in 1 2 4 6 8
#	do

# number of subdivisions:
#for s in 1 10 100 1000 10000 100000 500000 1000000
#do

	#./montecarlo $t $s
	#done
#done
