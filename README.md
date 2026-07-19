# verilog_projects
beginner to advance verilog 
# Verilog Projects 🔧

This repository documents my journey learning **Verilog HDL** — from basic combinational logic to more advanced digital design concepts. Each project includes the code, a brief explanation, and (where applicable) a testbench.

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

A **half adder** takes two single-bit inputs (`a`, `b`) and produces:
- `sum = a XOR b`
- `carry = a AND b`

This project implements the same half adder using three different Verilog modeling styles to understand how the same logic can be described at different abstraction levels.

### 1️⃣ Dataflow Modeling
Uses continuous assignment (`assign`) with boolean expressions.

```verilog
module half_adder_dataflow(
    input  a, b,
    output sum, carry
);
    assign sum   = a ^ b;
    assign carry = a & b;
endmodule
```

### 2️⃣ Behavioral Modeling
Describes *what* the circuit does using an `always` block, without specifying gate-level structure.

```verilog
module half_adder_behavioral(
    input  a, b,
    output reg sum, carry
);
    always @(*) begin
        sum   = a ^ b;
        carry = a & b;
    end
endmodule
```

### 3️⃣ Structural Modeling
Describes the circuit as an interconnection of gate primitives (`xor`, `and`) — closest to actual hardware.

```verilog
module half_adder_structural(
    input  a, b,
    output sum, carry
);
    xor (sum, a, b);
    and (carry, a, b);
endmodule
```

### ✅ Testbench

```verilog
module half_adder_tb;
    reg a, b;
    wire sum, carry;

    half_adder_structural uut (.a(a), .b(b), .sum(sum), .carry(carry));

    initial begin
        $monitor("a=%b b=%b | sum=%b carry=%b", a, b, sum, carry);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule
```

### 📊 Truth Table

| a | b | sum | carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

## 🚀 Tools Used
- Icarus Verilog / ModelSim / Vivado (simulation)
- GTKWave (waveform viewing)

## 📈 Progress Log
- **[Date]** — Added Half Adder in three modeling styles (dataflow, behavioral, structural)

## 🎯 Upcoming
- Full Adder (dataflow, behavioral, structural, gate-level)
- 4-bit Ripple Carry Adder
- Multiplexers & Demultiplexers
- Flip-Flops and Registers
- FSM-based designs

## 📬 Contact
Feel free to explore, suggest improvements, or reach out with feedback!

---
⭐ If you find this useful for learning Verilog, consider starring the repo!
