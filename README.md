Brutforce `nth prime` implementations in various languages.

```bash
g++ naïve.cpp && time ./a.out
104729

real	0m2.142s
user	0m2.104s
sys	0m0.015s

javac naïve.java && time java Naïve
104729
real	0m1.768s
user	0m1.698s
sys	0m0.038s

time node naïve.js
104729

real	0m2.824s
user	0m2.625s
sys	0m0.045s

kotlinc naïve.kt -include-runtime -d naïve.jar && time java -jar naïve.jar
104729
real	0m1.871s
user	0m1.841s
sys	0m0.030s

time swift naïve.swift
104729

real	0m8.245s
user	0m8.108s
sys	0m0.047s

go build naïve.go && time ./naïve
104729

real  0m5.386s
user  0m5.300s
sys 0m0.029s

ghc naïve.hs && time ./naïve
104729

real  1m29.003s
user  1m22.668s
sys 0m1.002s

time python naïve.py
104723

real  1m49.280s
user  1m44.513s
sys 0m2.293s
``
