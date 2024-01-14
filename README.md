# RISC-V-CPU
---

#### The RISC-V CPU will be implemented with IMAF instruction extensions, and also verified using custom verification methods.

---
### Introduction

RISC-V  is an instruction set architecture like ARM based on RISC (Reduced Instruction Set Architecture) principles. What sets RISC-V ISA different from others ISAs is its completely open source and free to use.

Due to being open-source in nature, RISC-V provides a vital step in designing, building and testing new hardware without paying any license fees or royalties

---
### How to compile the CPU and view simulation

First we need to write a C code for the operation we need to perform on our CPU(For example:- We have written a script that generates fibonacci series),
Using RISC-V toolchain, we compile this C code into binary file and then convert into hex files which will be loaded into Instruction memory of our CPU

To compile Verilog files, we are using both Icarus Verilog and Verilator to cross verify our CPU output which will be simulated on Gtkwave.Installation process of above software are linked below:-

-[Icarus Verilog](https://steveicarus.github.io/iverilog/usage/installation.html)
-[Verilator](https://verilator.org/guide/latest/install.html)
-[Gtkwave](https://gtkwave.sourceforge.net/)

All the necessary commands have been added to the Makefile

##### Steps to compile and view simulation-
Navigate to your cloned repository and into the sim folder
``` 
cd RISC_V_CPU/sim  
```
and run the following command to compile with Icarus Verilog
``` 
make sim 
```
or run the following command to compile with Verilator
```
make sim_verilator
```




---
### How to flash the code on FPGA

To flash the code in your FPGA, you must have first have yosys suite installed. Installations can be done from [here](https://github.com/YosysHQ/yosys)

After installation, navigate to your cloned repository and into the flash folder
```
$ cd RISC-V-CPU/flash
```

and run following command 
```
$ make flash
```

This will create binary file for flashing on FPGA, make sure that your FPGA is connected to your device before running above command

---
## Workflow
This a 2-stage processor. In the first stage, 
- The instructions are fetched and decoded.
- Values are read from register file.
- Determination of instruction type. 
- Sending necessary parameters to ALU if needed.
- Writing in DMem and sending read signals. 
- Send jump to PC. 

And in 2nd stage,
- Get ALU output
- Read Data from DMem.
- Control Unit writes to register file 
- PC executes jump instruction 
- Show output on seven segment display.

Following is the block diagram and workflow in simple terms of our CPU:-
![image.png](https://hackmd.io/_uploads/rJScfOEXT.png)


---

### Tech Stack

- Verilog
- Quartus Prime IDE
- Modelsim Altera
- Icarus Verilog
- Verilator
- Gtkwave
- Lattice Framework 
---
### Future Work
- [ ] Fix issues with Seven Segment Display
- [x] Verify CPU output with every cases, possible, edge and false cases.
- [ ] Implement a UART module to enable write compatibility in Instruction memory. 
---
## Contributors

- [Saish Karole](https://github.com/saishock1504)
- [Atharva Kashalkar](https://github.com/RapidRoger18)

--- 
## Mentors 

- [Zain Siddavatam](https://github.com/SuperChamp234)
- [Chanchal Bahrani](https://github.com/Chanchal1010)

---
### Acknowledgements and Resources

- [SRA VJTI Eklavya 2023](https://sravjti.in/)
- https://www.chipverify.com/verilog/verilog-tutorial
- https://www.edx.org/course/building-a-risc-v-cpu-core
---
