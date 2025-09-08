#include <bits/stdc++.h>
using namespace std;

int main() {
    long long a, b;
    cin >> a >> b;

    long long diff = a - b;
    if (diff >= 0)
        cout << diff << endl;
    else
        cout << 0 << endl;

    return 0;
}
