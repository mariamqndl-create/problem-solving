#include <iostream>
using namespace std;

int main() {
    int N;
    cin >> N;   
    int maxNum = -1; 

    for (int i = 0; i < N; i++) {
        long long x;   
        cin >> x;
        if (x > maxNum) {
            maxNum = x;
        }
    }

    cout << maxNum << endl;
    return 0;
}
