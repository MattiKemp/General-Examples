// TOPIC: Container Inside of Container

#include <iostream>
#include <vector>
using namespace std;

int main(){
    std::vector<vector<int>> tree;
    int edge, n1, n2;

    cin >> edge;
    tree.resize(edge);

    for(int i = 0; i<edge; i++){
        cin >> n1 >> n2;
        tree[n1].push_back(n2);
    }

    for(const auto &e1: tree){
        for(const auto &e2: e1){
            cout << e2;
        }
        cout << endl;
    }

    return 0;
}
