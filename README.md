# Synchronous FIFO & Digital Logic Design Projects

[cite_start]**Course:** Logic Design with HDL (Semester 232)
[cite_start]**Institution:** HCMC University of Technology - Faculty of Computer Science and Engineering 
**Group:** 8

---

## 🚀 Main Assignment: Synchronous FIFO Circuit

### 📖 Overview
This project implements a **Synchronous First-In-First-Out (FIFO)** memory buffer using Verilog HDL. [cite_start]The design is based on a circular buffer (ring buffer) architecture, where data written first is the first to be read out. This component is critical in digital systems for buffering data between subsystems operating at different speeds.



### ⚙️ Features & Specifications
* **Architecture:** Circular memory with separate Read and Write pointers.
* **Synchronization:** Uses a synchronous clock domain (designs for `wr_clk` and `rd_clk` are provided, though the testbench synchronizes them).
* **Storage:** Dual-port RAM behavior implemented via a register array.
* **Configurable Parameters:**
    * `DEPTH`: Buffer depth (Default: 8 words).
    * `DWIDTH`: Data width (Default: 16 bits).
* **Status Flags:**
    * `full`: High when the buffer is full (Write Pointer + 1 == Read Pointer).
    * `empty`: High when the buffer is empty (Write Pointer == Read Pointer).

### 📂 File Structure
| File Name | Description |
| :--- | :--- |
| **`Synchro_FIFO.v`** | The main RTL design. Contains logic for write/read pointers, memory array, and flag generation. |
| **`fifo_tb.v`** | Testbench module. Generates clock signals, performs random write/read operations, and verifies `full`/`empty` flag behavior. |
| **`FIFO Report.pdf`** | Comprehensive report detailing the theory, architecture, implementation, and simulation results. |

### 🛠️ Simulation Strategy
The testbench (`fifo_tb.v`) performs the following verification steps:
1. **Initialization:** Resets the FIFO pointers and disables enable signals.
2. **Stress Test (Write):** Continuously writes random data until the `full` flag is triggered.
3. **Stress Test (Read):** Continuously reads data until the `empty` flag is triggered.
4. **Monitor:** Displays timestamps, enable states, and data values (`din`/`dout`) to the console.

---

## 🧪 Lab 1: Combinational & Sequential Logic Exercises

This repository also contains foundational designs from **Lab 1**, covering multiplexers, arithmetic circuits, and comparators.

### 1. 2-to-1 Multiplexer
A structural design using a decoder to select input lines.
* **Files:** `mul_2_to_1.v`, `decoder_1_to_2.v`, `tb_multi.v`.
* **Logic:** Uses a 1-to-2 decoder to generate select signals for the AND-OR logic.


### 2. 4-bit Ripple Carry Adder
A hierarchical adder built from Half Adders and Full Adders.
* **Files:** `ex3_4bitadd.v`, `ex3_fulladd.v`, `ex3_halfadd.v`, `tb_4bitadd.v`.
* **Logic:** Cascades four Full Adders, passing the Carry Out of one stage to the Carry In of the next.


### 3. 4-bit Comparator
A hierarchical magnitude comparator built from 2-bit blocks.
* **Files:** `ex4_compara4bit.v`, `Ex4_2bitcompara.v`, `tb_4bitcompa.v`, `tb_2bitcompara.v`.
* **Logic:** Determines if Input A is Greater, Equal, or Less than Input B by comparing upper bits first, then cascading to lower bits.

---

## 🔧 How to Run
1.  Open your preferred Verilog simulator (e.g., ModelSim, Vivado, Icarus Verilog).
2.  **For the FIFO Assignment:**
    * Compile `Synchro_FIFO.v` and `fifo_tb.v`.
    * Simulate `fifo_tb`.
    * Check the console output for `FIFO is full` and `FIFO is empty` messages to verify pointer logic.
3.  **For Lab 1 Exercises:**
    * Compile the specific design file (e.g., `ex3_4bitadd.v`) and its dependencies (`ex3_fulladd.v`, etc.).
    * Run the corresponding testbench (e.g., `tb_4bitadd.v`).

---
*Written with support of Gemini.*

                                                                                        -01/08/2024-
