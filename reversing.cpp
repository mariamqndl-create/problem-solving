#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;
    vector<int> a(n);
    for (int i = 0; i < n; i++) cin >> a[i];

    for (int i = 0; i < n; i++) {
        if (a[i] == 0) {
            reverse(a.begin(), a.begin() + i);
        }
    }

    for (int i = 0; i < n; i++) {
        cout << a[i];
        if (i < n - 1) cout << " ";
    }
    cout << "\n";
    return 0;
}
