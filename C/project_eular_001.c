#include <stdio.h>

int main() {
	int result = 0;
	int i = 0;

	for(i=0; i < 1000; i++) {
		if(i % 3 == 0 || i % 5 == 0)
			result += i;
	}
	printf("%d", result);
	return 0;
}
