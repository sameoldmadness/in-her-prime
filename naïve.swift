func nthPrime(_ n: Int) -> Int {
	var i = 0
	var j = 2
	while i < n {
		if isPrime(j) {
			i += 1
		}
		j += 1
	}
	return j - 1
}

func isPrime(_ x: Int) -> Bool {
	if x < 2 {
		return false
	}
	var i = x - 1
	while i >= 2 {
		if x % i == 0 {
			return false
		}
		i -= 1
	}
	return true
}

print(nthPrime(10000))
