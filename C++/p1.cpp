/* If we list all the natural numbers below that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below.*/

#include <iostream>
using namespace std;

int main() {
	int threshold = 50;
	
	for(int i=0; i<threshold; i++){
		cout << i << endl;
	};

	return 0;
}
