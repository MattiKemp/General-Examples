// TOPIC: forward_list in STL
//
// 1. This is single linked list what we know from the C programming language.
// 2. Why forward_list why not single_list?
// 3. We should use this class instead of tranditional single linked list because:
//      a. Well tested
//      b. Bunch of available functions
// 4. Few Available Operations:
//      operator =, assign, front, empty, max_size, clear, insert_after, emplace_after, reverse,
//      sort, merge, splice_after, unique, remove, remove_if, resize

#include <iostream>
#include <forward_list>
using namespace std;

int main(){
    forward_list<int> list1 = {5, 4, 6, 2};
    forward_list<int> list2 = {7, 6, 1, 9};

    list1.insert_after(list1.begin(), 8);
    cout << "printing insert_after(list1.begin(), 8)" << endl;
    for(auto& elm: list1)
        cout << elm << endl;
    
    cout << endl;
    list1.reverse();
    cout << "printing reversed list" << endl;
    for(auto& elm: list1)
        cout << elm << endl;
    
    cout << endl;
    list1.sort();
    cout << "printing sorted list1" << endl;
    for(auto& elm: list1)
        cout << elm << endl;

    cout << endl;
    // if both lists are sorted, merge will sort them so that the new list is also sorted.
    // if both aren't sorted, one will just be concattenated.
    list2.sort();
    list1.merge(list2);
    cout << "printing list1" << endl;
    for(auto& elm: list1)
        cout << elm << endl;
    cout << "printing list2" << endl;
    for(auto& elm: list2)
        cout << elm << endl;
    // as can be seen, list2 is now also empty.
    
    cout << endl;
    // splice_after removes a certain number of elements from list2 and inserts them after a given spot.
    list2 = {1,2,3,4};
    list1.splice_after(list1.begin(), list2);
    cout << "printing list1 splice_after list2" << endl;
    for(auto& elm: list1)
        cout << elm << endl;

    cout << endl;
    cout << "getting the size of a forward_list" << endl;
    list2 = {1,2,3,4,5};
    cout << std::distance(list2.begin(), list2.end()) << endl;
    cout << "printing list2" << endl;
    for(auto& elm: list2)
        cout << elm << endl;

    cout << endl;
    list1.sort();
    list1.unique();
    // only gets rid of unique values if they are consecutive.
    cout << "printing list1 after unique" << endl;
    for(auto& elm: list1)
        cout << elm << endl;

    // remove will remove all matching elements, no matter where they are.
    // remove_if will allow you to remove any entries given some lamda function.
    // Ex: list1.remove_if([] () {
    //    return n > 4;
    // });
    //
    //resize is self explanatory.

    return 0;
}
