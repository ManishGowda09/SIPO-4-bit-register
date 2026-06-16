# SIPO-4-bit-register
## Overview
This project implements a **4-Bit Serial-In Parallel-Out (SIPO) Shift Register** using Verilog HDL.

A SIPO shift register accepts data serially (one bit at a time) through a single input line and, after four clock cycles, makes the complete 4-bit data available simultaneously on the parallel outputs.

## Features
- 4-bit data storage
- Serial data input
- Parallel data output
- Synchronous operation using clock signal
- Verilog HDL implementation
- Suitable for FPGA and digital design learning

## Block Diagram

```
 Serial Input
      |
      v
 +----+----+----+----+
 | FF0| FF1| FF2| FF3|
 +----+----+----+----+
      |    |    |    |
      v    v    v    v
 Parallel Output [3:0]
```

## Working

At every rising edge of the clock:

- New serial data enters the least significant stage.
- Existing bits shift one position to the left.
- After four clock pulses, the complete 4-bit word appears at the output.

### Example

| Clock Cycle | Serial Input | Output (Q[3:0]) |
|------------|-------------|----------------|
| 1 | 1 | 1111 |
| 2 | 0 | 1110 |
| 3 | 1 | 1100 |
| 4 | 1 | 1000 |

## Applications

- Serial-to-parallel data conversion
- Digital communication systems
- Data buffering
- Embedded systems
- FPGA and ASIC designs

## Tools Used

- Verilog HDL
- Xilinx Vivado / ModelSim / QuestaSim
- FPGA Development Boards

## Learning Outcomes

This project helps in understanding:

- Shift register operation
- Sequential logic design
- Clock-driven circuits
- Verilog HDL coding practices
  
# Waveform
<img width="1565" height="485" alt="SIPO 4 bit register" src="https://github.com/user-attachments/assets/e4639fb5-8224-4d2f-afcd-1b047d570673" />
