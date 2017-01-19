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
```