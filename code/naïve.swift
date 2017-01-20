extension Int32 {
    var prime: Bool {
        for i in 2 ..< self {
            if self % i == 0 {
                return false
            }
        }
        return true
    }
}

func nthPrime(_ n: Int32) -> Int32 {
    var i: Int32 = 0, j: Int32 = 2
    while i < n {
        if j.prime {
            i += 1
        }
        j += 1
    }
    return j - 1
}

print(nthPrime(10000))
