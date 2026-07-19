# Verilog Projects 🔧

This repository documents my journey learning **Verilog HDL** — from basic combinational logic to more advanced digital design concepts. Each project includes the code and a testbench, organized in its own folder.

## 📌 About

I'm using this repo to track my progress as I learn Verilog, one design at a time. Each folder/commit represents a new concept or module I've implemented.

## 🗂️ Project List

| # | Project | Modeling Style(s) | Status |
|---|---------|-------------------|--------|
| 1 | Half Adder | Dataflow, Behavioral, Structural | ✅ Done |

*(Table will be updated as new projects are added)*

## 📁 Repository Structure

```
verilog-projects/
│
├── 01_half_adder/
│   ├── half_adder_dataflow.v
│   ├── half_adder_behavioral.v
│   ├── half_adder_structural.v
│   ├── half_adder_tb.v
│   └── README.md
│
├── 02_.../
│
└── README.md   (this file)
```

## 🧩 Project 1: Half Adder (Three Modeling Styles)

A **half adder** takes two single-bit inputs (`a`, `b`) and produces a `sum` and a `carry` output. This project implements the same half adder using three different Verilog modeling styles to understand how the same logic can be described at different levels of abstraction:

- **Dataflow Modeling** — using continuous assignments (`assign`) with boolean expressions
- **Behavioral Modeling** — describing the logic inside an `always` block
- **Structural Modeling** — building the circuit from gate primitives (`xor`, `and`)

A testbench is included to verify all four input combinations against the expected truth table.

## 🚀 Tools Used
- **Icarus Verilog** — compiler/simulator
- **VS Code** — code editor
- **GTKWave** — waveform viewer

## 📈 Progress Log
- **[Date]** — Added Half Adder in three modeling styles (dataflow, behavioral, structural)

## 🎯 Upcoming
- Full Adder (dataflow, behavioral, structural)
- Half Subtractor
- Full Subtractor
- Flip-Flops (SR, D, JK, T)

## 📬 Contact
Feel free to explore, suggest improvements, or reach out with feedback!

---
⭐ If you find this useful for learning Verilog, consider starring the repo!
