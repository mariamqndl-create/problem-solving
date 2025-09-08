#include <bits/stdc++.h>
using namespace std;

long long factorial(int n) {
    long long result = 1;
    for (int i = 1; i <= n; i++) {
        result *= i;
    }
    return result;
}

int main() {
    int T;
    cin >> T;  
    while (T--) {
        int N;
        cin >> N;
        cout << factorial(N) << endl;
    }
    return 0;
}
