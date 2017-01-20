using System;

static class Naïve {
	static int NthPrime(int n) {
		var i = 0;
		var j = 2;
		while (i < n) {
			if (j.IsPrime()) {
				i += 1;
			}
			j += 1;
		}
		return j - 1;
	}

	static bool IsPrime(this int x) {
		for (var i = 2; i < x; ++i) {
			if (x % i == 0) {
				return false;
			}
		}
		return true;
	}

	public static void Main() {
		Console.WriteLine(NthPrime(10000));
	}
}