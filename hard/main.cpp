#include "cpu.hpp"
int main() {
	std::vector<int> program = {0b00000000'00000011'00000010'00000100,10,2,0};
	CPU cpu;
	cpu.load(program);
	cpu.execute();
	return 0;
}
