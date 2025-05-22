# 🧮 Multicycle RISC Processor (Verilog HDL)


## 🔍 Project Overview

This project involves the full design and simulation of a **32-bit multicycle RISC processor** using Verilog. The processor operates on a **5-stage fetch-decode-execute-memory-writeback** cycle. Each instruction executes over **multiple clock cycles**, enhancing resource efficiency while maintaining functional correctness.

📌 **Key Features:**
- 32-bit instruction and word size.
- 16 general-purpose registers (R0–R15).
- Stack Pointer (SP) and Program Counter (PC).
- Stack-based function calling support.
- 4 instruction types: R, I, J, S.
- Separate instruction and data memory.
- ALU with condition flags: Zero, Negative, Overflow.


## 🧩 Instruction Set

| Type | Instruction | Function |
|------|-------------|----------|
| R    | ADD, SUB, AND | Register-based ALU operations |
| I    | ADDI, ANDI, LW, LW.POI, SW | Immediate and memory operations |
| I    | BGT, BLT, BEQ, BNE | Conditional branching |
| J    | JMP, CALL, RET | Control flow |
| S    | PUSH, POP | Stack manipulation |

Instruction encoding and behavior are defined by a 6-bit opcode and additional fields depending on type.


## 🛠️ Design Components

- 🧠 **Finite State Machine (FSM)**: Controls the instruction cycle across multiple clock phases.
- 🔧 **Datapath Modules**: ALU, Register File, Instruction Memory, Data Memory, PC, Extender.
- ⚙️ **Control Logic**:
  - Main control and PC control modules
  - Truth tables and Boolean expressions
  - Control signals: `RegWr`, `MemRd`, `MemWr`, `ALUSrc`, `ExtOp`, `PushSig`, `PopSig`, etc.


## 🧪 Simulation & Testing

We validated each module individually using Verilog testbenches, and then ran complete ISA test programs to ensure integration worked across:
- Arithmetic and logical operations.
- Stack operations with push/pop and call/return.
- Conditional and unconditional branches.
- Memory read/write operations.


## 👥 Team Members
- [**Razan Abdelrahman**](https://github.com/razanodeh01)
- [**Yasmeen Kamal**](https://github.com/yasmeenK15)   
- [**Maisam Alaa**](https://github.com/maisamjuma)

> 🛠️ *"In multicycle design, time becomes a tool—not a constraint."*


