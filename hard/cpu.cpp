#include "cpu.hpp"

Ram ram;
ALU alu;
Register reg;
Control_Unit control_unit;
CPU cpu;


std::vector<int> memory;

//constructor which specifies the size
Ram::Ram() {
	memory.resize(32);
}

//function read which returned adress of memory
int Ram::read(int adress) {
	return memory[adress];
}
//function write which write adress and data
void Ram::write(int adress,int data) {
	memory[adress] = data;
}

//function get_arr which returned index of arr
int Register::get_arr(int index) {
	return arr[index];
}

//function set_arr which set adress an data
void Register::set_arr(int adress,int data) {
	arr[adress] = data;
}

//function fetch which The fetch function would read the instruction located at the memory address pointed to by the program counter.
void Control_Unit::fetch() {
	instr = 0;
	instr = ram.read(reg.get_arr(0));
	reg.set_arr(0,reg.get_arr(0) + 1);
	
}

//function decode divides the instruction into parts
void Control_Unit::decode(int x) {
	int a = 0xFF;
	reg.set_arr(1, x >> 24);
	reg.set_arr(2 , x >> 16 & a);
	reg.set_arr(3, x >> 8 & a);
	reg.set_arr(4, x & a);

}

//function exe write in ram action alu
void Control_Unit::exe() {
	reg.set_arr(5,ram.read(reg.get_arr(2)));
	reg.set_arr(6,ram.read(reg.get_arr(3)));
	ram.write(reg.get_arr(4),alu.Action(reg.get_arr(5),reg.get_arr(6), reg.get_arr(1)));
}

//function Action performs arithmetic and logical operations on input data. In the provided code
int ALU::Action(int x,int y,int z) {
	int result = 0;
	switch (z) {
	case 0:
		result = x + y;
		break;
	case 1:
		result = x - y;
		break;
	case 2:
		result = x * y;
		break;
	case 3:
		result = x / y;
		break;
	default:
		std::cout<<"false opcode"<<std::endl;
		break;
		
	}
	return result;
		
}
/*
function The load function is a member function of the CPU class in the provided code. 
It is responsible for loading a program into the RAM
*/
void CPU::load(std::vector<int> program) {
	for (int i = 0;i < program.size();i++) {
		ram.write(i,program[i]);
	}


}
/*
The execute function is a member function of the CPU class in the provided code. 
It is responsible for executing the loaded program by 
coordinating the actions of the various components of the CPU.
*/
void CPU::execute() {
	control_unit.fetch();
	control_unit.decode(control_unit.instr);
	control_unit.exe();
}
