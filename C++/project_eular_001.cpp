#include <iostream>				// std I/O include

using std::cout;
using std::endl;
using std::cin;

bool multiThreeOrFive(int n) {			// function to find multiples
	if(n%3 == 0 || n%5 == 0)		// divisible by 3 or 5?
		return true;				// return true
	else					// otherwise...
		return false;				// return false
}

int main() {
	int result = 0;				// variable to store result
	int i = 0;				// iteration variable
	
	for(i=0;i<1000;i++) {			// for loop 0 to 999
		if(multiThreeOrFive(i))			// check for multiples
			result += i;				// if true add to result
	}

	cout << result << endl;			// output result

	cin.get();				// pause before exit
	return 0;				// exit with status 0
}
