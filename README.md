# 4-Bit ALU in Verilog Beginners Guide Tutorial

This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. It performs a basic set of operations including addition, subtraction, AND, OR, XOR, NOT, and pass-through logic, selected by a 3-bit control signal. The design is simulated using Icarus Verilog and visualized with GTKWave.

#Operations Table:
| sel | Operation | Description      |
| --- | --------- | ---------------- |
| 000 | A + B     | Addition         |
| 001 | A - B     | Subtraction      |
| 010 | A & B     | Bitwise AND      |
| 011 | A | B    | Bitwise OR       |
| 100 | A ^ B     | Bitwise XOR      |
| 101 | ~A       | Bitwise NOT of A |
| 110 | B         | Pass-through B   |
| 111 | 0         | Default          |

#Includes:
- 4-bit inputs `A` and `B`
- 3-bit `sel` signal to choose the operation
- Supports:
  - ADD (`A + B`)
  - SUB (`A - B`)
  - AND (`A & B`)
  - OR (`A | B`)
  - XOR (`A ^ B`)
  - NOT (`~A`)
  - Pass-through (`B`)
  - Default to `0`
- Functional testbench with expected outputs
- Waveform inspection using GTKWave

#Files:
alu.v # ALU module
alu_tb.v # Testbench
alu.vcd # Value Change Dump (after simulation)

#How to use:
- Icarus Verilog
- GTKWave

Compile:
-   bash
- iverilog -o alu_tb alu_tb.v alu.v

Simulate:
- vvp alu_tb

View waveform:
- gtkwave alu.vcd

Proper waveform screenshot:
Up to 80000 1ps
<img width="1177" height="181" alt="image" src="https://github.com/user-attachments/assets/188ca487-825d-41fb-8726-d1bcdc17889d" />
