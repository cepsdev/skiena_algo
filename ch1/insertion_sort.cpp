/*
 *
 * Steven S. Skiena, "The Algorithm Design Manual", 3d edition
 *
 * Implementation in C++.
 *
 * Here: Insertion Sort (page 4).
 *
 * Todo: An implementation using concepts.
 * */


#include <string>
#include <iostream>
#include <vector>
#include <utility>


/*
 * We assume container s implements an index operator, and the elements implement '<'. We ignore iterators. 
 */

template <typename THasAnIndexOperator> void insertion_sort(THasAnIndexOperator & s, size_t n){
 for(size_t i = 1; i < n;++i){
  for(auto j = i; j > 0; --j) {
   if (s[j-1] > s[j]) std::swap(s[j-1],s[j]);else break;
  }
 }
}

std::string test{"INSERTIONSORT"};

int main() {
 insertion_sort(test,test.size());
 std::cout << test << "\n";
}
