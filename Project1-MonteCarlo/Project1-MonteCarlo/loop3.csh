//#!/bin/bash
#!/bin/csh

/*
g++ montecarlo.cpp -o montecarlo -lm -fopenmp
# number of threads :
for t in 1 2 4 6 8
	do

# number of subdivisions :
for s in 1 10 100 1000 10000 100000 500000 1000000
	do

		./montecarlo $t %n
	done
done
*/


foreach t (1 2 4 6 8)
	echo NUMT = $t

	foreach s (1 10 100 1000 10000 100000 500000 1000000)
	echo NUMTRIALS = $s
	g++ -DNUMTRIALS=$s -DNUMS=$t montecarlo.cpp -o montecarlo - lm - fopenmp
	./montecarlo
	end
end















//#g++ montecarlo.cpp - o montecarlo - lm - fopenmp

//# number of threads :
//#for t in 1 2 4 6 8
//#	do

//# number of subdivisions :
//#for s in 1 10 100 1000 10000 100000 500000 1000000
//#do

//#./montecarlo $t $s
//#done
//#done
