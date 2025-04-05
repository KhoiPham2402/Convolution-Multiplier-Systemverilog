# 🧠 SystemVerilog Convolution Multiplier

This project implements a **convolution-style multiplier** designed in **Verilog** using **basic building blocks** such as **AND gates** and **full adders**. The module is developed and synthesized using **Intel Quartus Prime**, targeting FPGA platforms.

---

## 📌 Overview

- ✅ The current implementation performs multiplication following a **bitwise convolution approach**, constructed primarily with:
  - **Full Adder modules**
  - **AND gates** for partial product generation
- 🧮 The logic mimics a manual binary multiplication circuit, which makes it efficient for embedded or educational use.

---

## 🚀 Future Improvements

In upcoming versions, I plan to:
- ✅ Integrate a **shift register input module**, optimized to handle input streams that match **image matrix sizes** (e.g., for 2D convolution in CNNs).
- ✅ Improve modularity to make the design scalable and reusable in different digital systems.

---

## 🔧 Tools & Technologies

- 🛠 **SystemVerilog HDL**
- 💻 **Quartus Prime** (Intel FPGA toolchain)
- 📐 **Basic logic blocks** (FA, AND, Register)

---


