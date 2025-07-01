# RISC-V Based MYTH: Microprocessor for You in Thirty Hours #

__This repository contains the project work and demonstrations of skills acquired through the "RISC-V Based MYTH (Microprocessor for You in Thirty Hours)" workshop. This intensive course provided a comprehensive deep dive into the RISC-V Instruction Set Architecture (ISA), from software concepts and toolchain utilization to hands-on hardware implementation and optimization.__

## 🚀 Project Overview ##

*The "RISC-V Based MYTH" project involved designing and implementing a RISC-V CPU, progressing from a basic single-cycle microarchitecture to an optimized pipelined design. The focus was on understanding the entire processor design flow, from instruction set fundamentals to digital logic implementation and performance enhancement.*

## 🎯 Skills Focused & Learned ##

This course and project significantly enhanced my expertise in the following areas:

### 1. RISC-V Architecture & Toolchain Mastery ###

   *__RISC-V ISA Fundamentals:__ Deep understanding of the RISC-V instruction set, including instruction formats, addressing modes, and privilege levels.*

   ***GNU Toolchain Proficiency:** Hands-on experience with riscv-gcc for cross-compilation, gdb for debugging, and spike for RISC-V ISA simulation.*

   *__Assembly Language Programming:__ Ability to write, compile, and execute RISC-V assembly programs.*

### 2. Application Binary Interface (ABI) & Verification ###

   ___ABI Comprehension:__ Understanding of function calling conventions, stack management, and register usage in RISC-V systems._

   ___Hardware Verification Techniques:__ Implementation of essential verification methodologies for digital hardware designs, ensuring functional correctness._

### 3. Digital Logic Design with TL-Verilog & Makerchip ###
   
   ___TL-Verilog Proficiency:__ Skilled in using Transaction-Level Verilog (TL-Verilog) for high-level hardware description and design._

   ___Makerchip IDE:__ Extensive experience with the Makerchip interactive IDE for real-time digital logic circuit building, simulation, and visualization._

### 4. RISC-V CPU Microarchitecture Design 
   
   ___Single-Cycle CPU Implementation:__ Designed and implemented a foundational single-cycle RISC-V CPU, covering core components like registers, Arithmetic Logic Units (ALUs), and instruction decoding/execution units._

   ___Pipelined CPU Optimization:__ Advanced to designing a pipelined RISC-V CPU,_ 
   
   _addressing critical challenges such as_

   -___Data Hazards:__ Techniques for forwarding and stalling to resolve data dependencies._

   -___Control Hazards:__ Handling branch prediction and pipeline flushing for control flow instructions._

   -___Memory Operations:__ Integrating memory access (load/store) into the pipeline._

   -___Performance Enhancement:__ Gained practical insights into optimizing CPU performance through pipelining and hazard resolution._

### 5. Embedded Systems & FPGA Concepts ###
   
   ___Hardware-Software Co-design:__ Understanding the interplay between software and the underlying hardware architecture._

   ___FPGA Prototyping Principles:__ While the primary focus was on simulation, the course laid strong foundations for future FPGA implementation of RISC-V cores._

## 🛠️ Technologies & Tools Used ##

### RISC-V ISA ###

### GNU RISC-V Toolchain (riscv-gcc, gdb, spike) ###

### TL-Verilog ###

### Makerchip IDE ###

### Digital Logic Design Principles ###

### Microprocessor Architecture Concepts ###

## ▶️ How to Explore ##

To explore the designs and simulations:

**Makerchip Access:** Visit Makerchip.com (or the specific course link if provided during the workshop) to load and interact with the TL-Verilog designs.

**Code Review:** Navigate through the module 3, 4 &5 directories to review the TL-Verilog code for both single-cycle and pipelined CPU implementations.

**Software Examples:** Check the Module 1 & 2 directory for RISC-V assembly and C programs used for testing and demonstration.

## 📊 Showcasing the Output ##

### RTL Block view ###
![RISC-V CPU](https://github.com/user-attachments/assets/0685ec9d-a3f2-4fde-afb5-a4e91a9e66d6)

### Output Waveform 1 ###
![cpu_op1](https://github.com/user-attachments/assets/7618437f-1755-4ca3-9f33-80b11c01530e)

### Output Waveform 2 ###
![cpu_op2](https://github.com/user-attachments/assets/66b52777-0fd3-4bb3-a222-9090195f7e34)

### Visualisation of CPU working ###
![CPU_Visulization](https://github.com/user-attachments/assets/ee9db337-ed5c-4d65-a5d7-1694ad6b461a)


## 🤝 Connect ##

Feel free to connect with me if you have any questions or would like to discuss RISC-V architecture and digital design!

__Note:__ This README is a reflection of the knowledge and skills gained. Specific project files (e.g., .tlv files) are added to the module directories.
