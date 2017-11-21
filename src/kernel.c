#include "include/screen.h"

kmain() {
	clearScreen();
	print("Nate-OS v0.0.0.1\n\n");
	while(1) {
		print("> ");
		clearScreen();
	}
}
