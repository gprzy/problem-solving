#include <iostream>
using namespace std;

int sum_all_multiples_of_3_or_5(int n){
    int sum_value = 0;
    for(int i=0; i<n; i++){
        if(i%3 == 0 || i%5 == 0){
            sum_value += i;
        }
    }
    return sum_value;
}

int main()
{
  cout << sum_all_multiples_of_3_or_5(1000);
  return 0;
}