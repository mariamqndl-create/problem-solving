#include <bits/stdc++.h>
using namespace std;

void printNumbers(int n) {
    for (int i = 1; i <= n; i++) {
        cout << i;
        if (i < n) cout << " "; 
    }
    cout << endl;
}

int main() {
    int n;
    cin >> n;
    printNumbers(n);
    return 0;
}
