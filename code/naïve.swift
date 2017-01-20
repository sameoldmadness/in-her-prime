func nthPrime(_ n: Int) -> Int {
    var i = 0, j = 2
    while i < n {
        if isPrime(j) {
            i += 1
        }
        j += 1
    }
    return j - 1
}

func isPrime(_ x: Int) -> Bool {
    for i in 2..<x {
        if x % i == 0 {
            return false
        }
    }
    return true
}

print(nthPrime(10000))
