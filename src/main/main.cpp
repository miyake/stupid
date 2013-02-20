#include "sub/print.h"
#include <string>

extern void sub::print(std::string str);

int main() {
	std::string string = "hello";
	sub::print("hello");
	return 0;
}
