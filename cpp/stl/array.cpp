// Syntax: std::array<T, N> array;
// 1. std::arry is a container that encapsulates fixed sized arrays.
// 2. arraysize is needed at compile time.
// 3. assign by value is actually by value.
// 4. access elements:
//      a. at() // bounded size access.
//      b. [] // will not throw out of bound exception.
//      c. front()
//      d. back()
//      e. data() // gives access to the underlying array

#include <iostream>
#include <array>
using namespace std;

int main(){
    std::array<int, 5> myarray;
    // init
    std::array<int, 5> myarray = {1,2,3,4,5}; // init list
    std::array<int, 5> myarry2 {1,2,3,4,5}; // uniform init

    // assign using initalizer list
    std::array<int, 5> myarray;
    myarray = {1,2,3,4,5};
    
    return 0;
}
