# 🕐 Digital Clock Using Verilog

## 📌 Project Overview

This project implements a **Digital Clock using Verilog HDL**. The clock displays **hours, minutes, and seconds** and updates the time continuously using a clock signal.

The design was developed and simulated using **Xilinx Vivado** to verify the functionality through simulation waveforms.

---

## 🎯 Objectives

* Design a digital clock using Verilog HDL.
* Implement **seconds, minutes, and hours counters**.
* Generate accurate timing using a clock signal.
* Understand counter-based digital design.
* Verify the design using a Verilog testbench.
* Analyze simulation waveforms using Vivado.

---

## ⚙️ Features

The digital clock provides:

* ⏱️ Seconds counter
* ⏱️ Minutes counter
* 🕐 Hours counter
* 🔄 Automatic time increment
* 🔁 Reset functionality
* 💻 Verilog RTL implementation
* 🧪 Simulation using Xilinx Vivado

---

## 🧩 Block Diagram

```text
             ┌──────────────────┐
Clock ──────►│ Clock Divider /  │
             │ Timing Generator │
             └────────┬─────────┘
                      │
                      ▼
             ┌──────────────────┐
             │ Seconds Counter  │
             └────────┬─────────┘
                      │
                      ▼
             ┌──────────────────┐
             │ Minutes Counter  │
             └────────┬─────────┘
                      │
                      ▼
             ┌──────────────────┐
             │   Hours Counter  │
             └────────┬─────────┘
                      │
                      ▼
              ┌───────────────┐
              │ Clock Display │
              │ HH : MM : SS  │
              └───────────────┘
```

---

## 🔢 Time Format

The clock follows the **24-hour format**:

```text
HH : MM : SS
```

Example:

```text
12 : 35 : 49
```

The counters operate as follows:

* Seconds: `00 – 59`
* Minutes: `00 – 59`
* Hours: `00 – 23`

After:

```text
23 : 59 : 59
```

the clock rolls over to:

```text
00 : 00 : 00
```

---

## 💻 Technologies Used

* **Verilog HDL**
* **Xilinx Vivado**
* **RTL Design**
* **Digital Logic Design**
* **Simulation & Waveform Analysis**
* **Git & GitHub**

---

## 📂 Project Structure

```text
Digital-Clock/
│
├── rtl/
│   └── digital_clock.v
│
├── simulation/
│   └── digital_clock_tb.v
│
├── screenshots/
│   ├── simulation_waveform.png
│   └── rtl_schematic.png
│
└── README.md
```

---

## 🧪 Simulation

The digital clock was verified using a **Verilog testbench** in Xilinx Vivado.

The testbench applies the clock and reset signals and observes:

```text
hours
minutes
seconds
```

### Example Simulation

```text
Reset = 1

Hours   = 00
Minutes = 00
Seconds = 00
```

After the reset is released:

```text
00 : 00 : 01
00 : 00 : 02
00 : 00 : 03
...
00 : 00 : 59
00 : 01 : 00
```

The simulation waveform confirms the correct counting sequence.

---

## 🔄 Working Principle

The digital clock works using a series of counters.

### 1. Seconds Counter

The seconds counter increments once every second.

```text
00 → 01 → 02 → ... → 59
```

When it reaches `59`, it resets to `00` and increments the minutes counter.

### 2. Minutes Counter

The minutes counter increments when the seconds counter reaches `59`.

```text
00 → 01 → 02 → ... → 59
```

After `59`, it resets to `00` and increments the hours counter.

### 3. Hours Counter

The hours counter increments after every 60 minutes.

```text
00 → 01 → 02 → ... → 23
```

After `23`, it returns to `00`.

---

## 🔄 Reset Operation

The reset signal initializes the clock:

```text
Hours   = 00
Minutes = 00
Seconds = 00
```

This provides a known starting condition for the design.

---

## 🚀 How to Run the Project in Vivado

### Step 1: Open Vivado

Create a new **RTL Project**.

### Step 2: Add Design Source

Add:

```text
digital_clock.v
```

### Step 3: Add Simulation Source

Add:

```text
digital_clock_tb.v
```

### Step 4: Run Simulation

Select:

```text
Flow → Run Simulation → Run Behavioral Simulation
```

### Step 5: Analyze Waveform

Observe:

```text
clk
reset
hours
minutes
seconds
```

in the waveform window.

---

## 📊 Expected Output

| Time     | Hours | Minutes | Seconds |
| -------- | ----- | ------- | ------- |
| Start    | 00    | 00      | 00      |
| +1 sec   | 00    | 00      | 01      |
| +10 sec  | 00    | 00      | 10      |
| +59 sec  | 00    | 00      | 59      |
| +60 sec  | 00    | 01      | 00      |
| +1 hour  | 01    | 00      | 00      |
| 24 hours | 00    | 00      | 00      |

---

## 📈 Verification

The design was simulated in **Xilinx Vivado**.

The simulation verifies:

* Correct seconds counting
* Correct minutes counting
* Correct hours counting
* Proper rollover from `59` seconds to `00`
* Proper rollover from `59` minutes to `00`
* Proper rollover from `23` hours to `00`
* Correct reset operation

Screenshots of the **simulation waveform** and **RTL schematic** can be added to the `screenshots` folder.

---

## 📚 Learning Outcomes

Through this project, I learned:

* Verilog HDL programming
* Sequential circuit design
* Counter implementation
* Clock-based digital systems
* Reset implementation
* RTL design methodology
* Verilog testbench development
* Functional simulation
* Waveform analysis using Vivado

---

## 🔮 Future Improvements

The project can be extended by adding:

* ⏰ Alarm functionality
* ⏱️ Stopwatch mode
* 📅 Date and calendar display
* 🔢 Seven-segment display interface
* 🎛️ Push-button time adjustment
* 🔋 Real-time clock module
* 🖥️ FPGA board implementation

---

## 👩‍💻 Author

**Shabnam Rihana**

ECE | VLSI Enthusiast

---

## ⭐ Conclusion

The **Digital Clock** project demonstrates the implementation of a real-time clock using **Verilog HDL** and digital counters. The design was simulated and verified using **Xilinx Vivado**, providing practical experience in sequential logic, RTL design, counters, and digital system verification.
