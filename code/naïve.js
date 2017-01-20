function nthPrime(n, j = 2) {
	for (let i = 0; i < n; j += 1)
		if (isPrime(j)) i += 1
	return j - 1
}

function isPrime(x) {
	for (let i = 2; i < x; i++)
		if (x % i === 0) return false
	return true
}

console.log(nthPrime(10 ** 4))