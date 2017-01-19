fun nthPrime(n: Int): Int {
	var i = 0
    var j = 2
	while (i < n) {
		if (j.isPrime()) {
			i += 1
		}
		j += 1
	}
	return j - 1
}

fun Int.isPrime(): Boolean {
	for (i in 2 until this) {
        if (this % i == 0) {
            return false
        }
    }
	return true
}

fun main(args: Array<String>) {
    print(nthPrime(10000))
}