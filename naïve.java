class Naïve {
    static int nthPrime(int n) {
    	int i = 0;
        int j = 2;
    	while (i < n) {
    		if (isPrime(j)) {
    			i += 1;
    		}
    		j += 1;
    	}
    	return j - 1;
    }

    static boolean isPrime(int x) {
    	for (int i = 2; i < x; ++i) {
            if (x % i == 0) {
                return false;
            }
        }
    	return true;
    }

    public static void main(String[] args) {
        System.out.print(nthPrime(10000));
    }
}