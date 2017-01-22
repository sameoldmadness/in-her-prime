extension Int32 {
    var prime: Bool {
        guard self >= 2 else { return false }
        for i in 2 ..< self {
            if self % i == 0 {
                return false
            }
        }
        return true
    }
}

struct PrimeSequence: Sequence {
    func makeIterator() -> AnyIterator<Int32> {
        var n: Int32 = 0

        return AnyIterator {
            repeat {
                n += 1
                if n.prime {
                    return n
                }
            } while true
        }
    }

    func nth(_ position: Int32) -> Int32 {
        return prefix(Int(position)).suffix(1).map{ $0 }[0]
    }
}

let primes = PrimeSequence()

print(primes.nth(10000))
