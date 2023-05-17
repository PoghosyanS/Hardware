#include <iostream>
#include <vector>

/*
declaration class Ram which represents the main memory of the computer system.
It provides methods for reading from and writing to specific memory locations. 
The size of the memory can be configured during initialization.
*/
class Ram {
private:
	std::vector<int> memory;
public:
	Ram();

	int read(int adress);

	void write(int adress,int data);
	
};

/*
declaration class Register which class represents a processor register, 
which is a small storage location within the CPU. 
It provides methods for reading from and writing to the register. 
The size and functionality of the register can be customized during initialization.
*/
class Register {
private:
	int arr[7];
public:
	int get_arr(int index);
	
	void set_arr(int adress,int data );

};
/*
declaration class Alu  represents the arithmetic logic unit of the computer system. 
It provides methods for performing various arithmetic and logical operations such as addition, 
subtraction, multiplication, division, AND, OR, etc.
*/
class ALU {
public:
	int Action(int x,int y,int z);
};

/*
declaration class Control_Unit which represents the control unit of the computer system. 
It controls the flow of data and instructions within the CPU and coordinates the execution of various operations. 
The control unit manages the sequencing of instructions and signals the CPU on which operations to perform.
*/
class Control_Unit {
public:
	int instr;
	void fetch();
	void decode(int x);
	void exe();	

};
/*
declaration class  CPU which represents the central processing unit of the computer system. 
It contains registers and an ALU and performs the execution of instructions. 
The CPU interacts with other components such as the RAM and control unit to fetch instructions, 
process data, and perform operations.
*/
class CPU {
public:
	void load(std::vector<int> program);
	void execute();

};

extern Ram ram;
extern ALU alu;
extern Register reg;
extern Control_Unit control_unit;
extern CPU cpu;
