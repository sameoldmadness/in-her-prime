package main

import "fmt"

func nthPrime(n int32) int32 {
	var j, i int32
	j = 2
	for i = 0; i < n; {
		if isPrime(j) {
			i += 1
		}
		j += 1
	}
	return j - 1
}

func isPrime(n int32) bool {
	var i int32
	for i = 2; i < n; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	fmt.Printf("%v", nthPrime(10000))
}
