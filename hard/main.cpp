#include "cpu.hpp"
int main() {
	std::vector<int> program = {0b00000000'00000100'00000101'00001100,
				    0b00000001'00000100'00000101'00001101,
				    0b00000010'00000100'00000101'00001110,
				    0b00000011'00000100'00000101'00001111};
	ram.memory[4] = 10;
	ram.memory[5] = 2;
	cpu.load(program);
	cpu.execute();
	std::cout<<ram.memory[12]<<std::endl;
	std::cout<<ram.memory[13]<<std::endl;
	std::cout<<ram.memory[14]<<std::endl;
	std::cout<<ram.memory[15]<<std::endl;
	return 0;
}
