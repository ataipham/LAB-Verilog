# Synchronous FIFO & Digital Logic Design Projects

[cite_start]**Course:** Logic Design with HDL (Semester 232) [cite: 3525]
[cite_start]**Institution:** HCMC University of Technology - Faculty of Computer Science and Engineering [cite: 3521]
**Group:** 8

## 👥 Group Members
* [cite_start]**Phạm Anh Tài** (ID: 2350023) [cite: 2033]
* [cite_start]**Phạm Ngọc Huy** (ID: 2352404) [cite: 2033]
* [cite_start]**Trần Đình Duy Khương** (ID: 2352638) [cite: 2033]
* [cite_start]**Lục Tấn Phúc** (ID: 2352935) [cite: 2033]

---

## 🚀 Main Assignment: Synchronous FIFO Circuit

### 📖 Overview
This project implements a **Synchronous First-In-First-Out (FIFO)** memory buffer using Verilog HDL. [cite_start]The design is based on a circular buffer (ring buffer) architecture, where data written first is the first to be read out[cite: 2128, 3560]. [cite_start]This component is critical in digital systems for buffering data between subsystems operating at different speeds[cite: 3561].



### ⚙️ Features & Specifications
* [cite_start]**Architecture:** Circular memory with separate Read and Write pointers[cite: 2931].
* [cite_start]**Synchronization:** Uses a synchronous clock domain (designs for `wr_clk` and `rd_clk` are provided, though the testbench synchronizes them)[cite: 3600, 3509].
* [cite_start]**Storage:** Dual-port RAM behavior implemented via a register array[cite: 3602].
* **Configurable Parameters:**
    * [cite_start]`DEPTH`: Buffer depth (Default: 8 words)[cite: 3600].
    * [cite_start]`DWIDTH`: Data width (Default: 16 bits)[cite: 3600].
* **Status Flags:**
    * [cite_start]`full`: High when the buffer is full (Write Pointer + 1 == Read Pointer)[cite: 3608].
    * [cite_start]`empty`: High when the buffer is empty (Write Pointer == Read Pointer)[cite: 3609].

### 📂 File Structure
| File Name | Description |
| :--- | :--- |
| **`Synchro_FIFO.v`** | The main RTL design. [cite_start]Contains logic for write/read pointers, memory array, and flag generation[cite: 3600]. |
| **`fifo_tb.v`** | Testbench module. [cite_start]Generates clock signals, performs random write/read operations, and verifies `full`/`empty` flag behavior[cite: 3506]. |
| **`FIFO Report.pdf`** | [cite_start]Comprehensive report detailing the theory, architecture, implementation, and simulation results[cite: 2025]. |

### 🛠️ Simulation Strategy
The testbench (`fifo_tb.v`) performs the following verification steps:
1.  [cite_start]**Initialization:** Resets the FIFO pointers and disables enable signals[cite: 3509].
2.  [cite_start]**Stress Test (Write):** Continuously writes random data until the `full` flag is triggered[cite: 3512].
3.  [cite_start]**Stress Test (Read):** Continuously reads data until the `empty` flag is triggered[cite: 3517].
4.  [cite_start]**Monitor:** Displays timestamps, enable states, and data values (`din`/`dout`) to the console[cite: 3519].

---

## 🧪 Lab 1: Combinational & Sequential Logic Exercises

This repository also contains foundational designs from **Lab 1**, covering multiplexers, arithmetic circuits, and comparators.

### 1. 2-to-1 Multiplexer
A structural design using a decoder to select input lines.
* [cite_start]**Files:** `mul_2_to_1.v`, `decoder_1_to_2.v`, `tb_multi.v`[cite: 3611].
* [cite_start]**Logic:** Uses a 1-to-2 decoder to generate select signals for the AND-OR logic[cite: 3611].


### 2. 4-bit Ripple Carry Adder
A hierarchical adder built from Half Adders and Full Adders.
* [cite_start]**Files:** `ex3_4bitadd.v`, `ex3_fulladd.v`, `ex3_halfadd.v`, `tb_4bitadd.v`[cite: 3615, 3617].
* [cite_start]**Logic:** Cascades four Full Adders, passing the Carry Out of one stage to the Carry In of the next[cite: 3616].


### 3. 4-bit Comparator
A hierarchical magnitude comparator built from 2-bit blocks.
* **Files:** `ex4_compara4bit.v`, `Ex4_2bitcompara.v`, `tb_4bitcompa.v`, `tb_2bitcompara.v`.
* [cite_start]**Logic:** Determines if Input A is Greater, Equal, or Less than Input B by comparing upper bits first, then cascading to lower bits[cite: 3629].

---

## 🔧 How to Run
1.  Open your preferred Verilog simulator (e.g., ModelSim, Vivado, Icarus Verilog).
2.  **For the FIFO Assignment:**
    * Compile `Synchro_FIFO.v` and `fifo_tb.v`.
    * Simulate `fifo_tb`.
    * [cite_start]Check the console output for `FIFO is full` and `FIFO is empty` messages to verify pointer logic[cite: 3513, 3518].
3.  **For Lab 1 Exercises:**
    * Compile the specific design file (e.g., `ex3_4bitadd.v`) and its dependencies (`ex3_fulladd.v`, etc.).
    * Run the corresponding testbench (e.g., `tb_4bitadd.v`).

---
*Generated based on project files and reports submitted by Group 8.*

                                                                                        -01/08/2024-
