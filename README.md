# Synchronous FIFO & Digital Logic Design Projects

---

## 🚀 Main Assignment: Synchronous FIFO Circuit

### 📖 Overview
This project implements a **Synchronous First-In-First-Out (FIFO)** memory buffer using Verilog HDL. The design is based on a circular buffer (ring buffer) architecture, where data written first is the first to be read out. This component is critical in digital systems for buffering data between subsystems operating at different speeds.



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

*Written with support of Gemini.*

                                                                                        -01/08/2024-
