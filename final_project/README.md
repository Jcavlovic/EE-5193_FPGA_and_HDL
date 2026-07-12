# RISC Processor Implementation on the Nexys A7 FPGA Development Board

## Overview

This project implements a custom **Reduced Instruction Set Computer (RISC)** processor using **Verilog HDL** on the **Digilent Nexys A7 FPGA Development Board**. The processor was designed, simulated, synthesized, and deployed using **Xilinx Vivado**.

The objective of this project is to demonstrate the complete FPGA design flow, from hardware description and simulation to synthesis, implementation, and execution on physical hardware.

---

## Features

- 32-bit RISC processor architecture
- Modular Verilog design
- Arithmetic Logic Unit (ALU)
- Register File
- Program Counter (PC)
- Instruction Memory
- Data Memory
- Control Unit
- Branch and Jump support
- FPGA implementation on the Nexys A7
- Simulation and verification using Vivado

---

## Hardware

- Digilent Nexys A7 FPGA Development Board
- Xilinx Artix-7 FPGA (XC7A100T or XC7A50T)

---

## Software

- Xilinx Vivado
- Verilog HDL

---

## Project Structure

```
final_project/
│
├── final_project.srcs/
│   └── sources_1/
│       └── new/
│           ├── a_addr_sel.v
│           ├── address_select.v
│           ├── alu.v
│           ├── d_flipflop.v
│           ├── final_project.v
│           ├── instruction_register.v
│           └── pc.v
│
├── final_project.cache/
├── final_project.hw/
│   └── final_project.lpr
├── final_project.ip_user_files/
├── final_project.sim/
│
├── final_project.xpr
└── README.md
```

---

## Processor Architecture

The processor consists of the following major components:

- Program Counter
- Instruction Memory
- Register File
- Control Unit
- ALU
- Data Memory
- Immediate Generator
- Multiplexers
- Branch Logic

```
                +----------------+
                | Program Counter|
                +-------+--------+
                        |
                        v
              +-------------------+
              | Instruction Memory|
              +---------+---------+
                        |
        +---------------+--------------+
        |                              |
        v                              v
+---------------+              +---------------+
| Control Unit  |              | Register File |
+-------+-------+              +-------+-------+
        |                              |
        |                              |
        +-------------+----------------+
                      |
                      v
                +-----------+
                |    ALU    |
                +-----+-----+
                      |
          +-----------+-----------+
          |                       |
          v                       v
   Data Memory             Write Back
```

---

## Supported Instructions

Example instruction set:

| Instruction | Description |
|------------|-------------|
| ADD | Addition |
| SUB | Subtraction |
| AND | Logical AND |
| OR | Logical OR |
| XOR | Logical XOR |
| SLT | Set Less Than |
| LW | Load Word |
| SW | Store Word |
| BEQ | Branch if Equal |
| JAL | Jump and Link |

---

## Building the Project

### 1. Clone the repository

```bash
git clone https://github.com/username/RISC-Processor.git
cd RISC-Processor
```

### 2. Open Vivado

Launch Xilinx Vivado.

### 3. Create a New Project

- Create a new RTL Project.
- Add all Verilog source files.
- Add simulation files.
- Add the Nexys A7 constraints (.xdc) file.

### 4. Select the Target Device

Choose the FPGA that matches your board:

- XC7A100T (Nexys A7-100T)
- XC7A50T (Nexys A7-50T)

### 5. Run Simulation

Run Behavioral Simulation to verify functionality.

### 6. Synthesize the Design

Run:

- Synthesis
- Implementation
- Generate Bitstream

---

## Programming the FPGA

1. Connect the Nexys A7 board via USB.
2. Open Hardware Manager in Vivado.
3. Open Target.
4. Program Device.
5. Select the generated `.bit` file.

The processor will now execute on the FPGA.

---

## Simulation

Simulation verifies:

- ALU operations
- Register reads/writes
- Memory operations
- Branch execution
- Instruction decoding
- Processor execution flow

---

## Future Improvements

- Five-stage pipeline
- Hazard Detection Unit
- Forwarding Unit
- Branch Prediction
- Interrupt Handling
- UART Debug Interface
- SPI Peripheral
- Timer Module
- Cache Memory
- RISC-V ISA compatibility

---

## Learning Objectives

This project demonstrates:

- Digital logic design
- Computer architecture
- FPGA implementation
- RTL design using Verilog
- Simulation and verification
- FPGA synthesis and implementation
- Hardware debugging

---

## References

- Computer Organization and Design
- Digital Design and Computer Architecture
- Xilinx Vivado Documentation
- Digilent Nexys A7 Reference Manual

---

## License

This project is intended for educational purposes.