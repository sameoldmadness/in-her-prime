#include <iostream>

using namespace std;

bool isPrime(int x) {
    if (x < 2) {
        return false;
    }
    int i = x - 1;
    while (i >= 2) {
        if (x % i == 0) {
            return false;
        }
        i -= 1;
    }
    return true;
}

int nthPrime(int n) {
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

int main() {
    cout << nthPrime(10000) << endl;
}