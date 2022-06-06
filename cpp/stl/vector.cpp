// TOPIC: std::vector
//
// NOTES:
// 1. std::vector is a sequence container and also known as Dynamic Array or Array List. 
// 2. Its size can grow and shrink dynamically, and no need to provide size at compile time.
//
// ELEMENT ACCESS
// at(), [], front(), back(), data()
// same as std::array, at() has bounded size access while [] doesn't.
//
// MODIFIERS:
// insert(), emplace(), push_back(), emplace_back(), pop_back(), resize(), swap(), erase(), clear()

#include <iostream>
#include <vector>
using namespace std;

int main(){
    
    // Declarations
    std::vector<int> arr1;
    std::vector<int> arr2 (5,20);
    std::vector<int> arr3 = {1,2,3,4,5}; //init list
    std::vector<int> arr4 {1,2,3,4,5}; //uniform init

    // Accessing Elements
    arr2[3] = 10;
    arr2.at(3) = 10;

    // push_back(), basic ArrayList doubling size concept. Amortized O(n)
    // capacity(): total size the current array can be before it has to double and copy.
    // size(): total number of stored elements in the array.

    vector<int> vec;
    // if we know a certain range that the size of the vector will be bounded by, we should reserve a a capacity within that range to save resources as the vector will not have to double and copy ever.
    vec.reserve(32);
    for(int i = 0; i<32; i++){
        vec.push_back(i);
        cout << vec.size() << " " << vec.capacity() << endl;
    }

    return 0;
}
