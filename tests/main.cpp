#include <stdio.h>
#include "../Aztec.h"

int main(int argc, char* argv[])
{
	Aztec aztec;

	aztec.AddString("The first string");

	if (aztec.aStrings.size() == 1)
		return 0;

	return 1;
}
