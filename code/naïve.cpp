#include <iostream>

using namespace std;

bool isPrime(int x) {
    for (int i = 2; i < x; ++i) {
        if (x % i == 0) {
            return false;
        }
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
    cout << nthPrime(10000);
}
