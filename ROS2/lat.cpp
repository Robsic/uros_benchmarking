#include <iostream>

using namespace std;

int main(){
    uint64_t send, recive;

    while (cin >> send >> recive){  
        if(recive > send)
            cout << recive - send << endl;
    }  
}