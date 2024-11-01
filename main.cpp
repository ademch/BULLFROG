#include <stdio.h>
#include "Aztec.h"

int CreateHTTPserver();


int main(int argc, char* argv[])
{
	Aztec aztec;

	aztec.AddString("The first string");
	aztec.AddString("The second string");

	aztec.ShowText();

	CreateHTTPserver();

	return 0;
}

