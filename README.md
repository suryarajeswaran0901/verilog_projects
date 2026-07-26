# Verilog Projects 🔧

This repository documents my journey learning **Verilog HDL** — from basic combinational logic to more advanced digital design concepts. Each project includes the code and a testbench, organized in its own folder.

## 📌 About

I'm using this repo to track my progress as I learn Verilog, one design at a time. Each folder/commit represents a new concept or module I've implemented.

## 🗂️ Project List

| # | Project | Modeling Style(s) | Status |
|---|---------|-------------------|--------|
| 1 | Half Adder | Dataflow, Behavioral, Structural | ✅ Done |
| 2 | Full Adder | Dataflow, Behavioral (using two Half Adders) | ✅ Done |

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
│   ├── waveform.jpg
│   ├── README.md
│
├── 02_full_adder/
│   ├── full_adder_dataflow.v
│   ├── full_adder_behavioral.v
│   ├── full_adder_testbench.v
│   ├── waveform.jpg
│   ├── README.md   (this file)
```

## 🧩 Project 1: Half Adder (Three Modeling Styles)

A **half adder** takes two single-bit inputs (`a`, `b`) and produces a `sum` and a `carry` output. This project implements the same half adder using three different Verilog modeling styles to understand how the same logic can be described at different levels of abstraction:

- **Dataflow Modeling** — using continuous assignments (`assign`) with boolean expressions
- **Behavioral Modeling** — describing the logic inside an `always` block
- **Structural Modeling** — building the circuit from gate primitives (`xor`, `and`)

A testbench is included to verify all four input combinations against the expected truth table.

## 🧩 Project 2: Full Adder (Three Modeling Styles)

A **full adder** takes three single-bit inputs (`a`, `b`, `cin`) and produces a `sum` and a `cout` (carry-out) output. This project implements the full adder using three different Verilog modeling styles:

- **Dataflow Modeling** — using continuous assignments (`assign`) with boolean expressions for `sum` and `cout`
- **Behavioral Modeling** — describing the logic inside an `always` block using input combinations
- **Structural Modeling** — built by instantiating **two Half Adders** and combining their outputs with an `OR` gate to generate the final `sum` and `cout`

A testbench is included to verify all eight input combinations against the expected truth table, and the resulting waveform (`waveform.jpg`) is included to visually confirm correct behavior in GTKWave.

## 🚀 Tools Used
- **Icarus Verilog** — compiler/simulator
- **VS Code** — code editor
- **GTKWave** — waveform viewer

## 📈 Progress Log
- **19/07/26** — Added Half Adder in three modeling styles (dataflow, behavioral, structural)
- **26/07/26** — Added Full Adder in three modeling styles (dataflow, behavioral, structural using two half adders) + waveform

## 🎯 Upcoming
- Half Subtractor
- Full Subtractor
- Flip-Flops (SR, D, JK, T)

## 📬 Contact
Feel free to explore, suggest improvements, or reach out with feedback!

---
⭐ If you find this useful for learning Verilog, consider starring the repo!
