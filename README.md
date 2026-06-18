# PwrMark

**FPGA Power Benchmark Suite**

PwrMark is a vendor-neutral, open-source suite of IP cores, reference designs, and ready-to-use bitfiles for systematic FPGA power measurement and benchmarking. It gives FPGA board developers a structured, repeatable way to characterize the power behavior of their products and to compare power efficiency across device families and process nodes.

Licensed by **MicroFPGA** under dual MIT and commercial license.

---

## ⚠️ WARNING: SAFETY NOTICE ⚠️

> **PwrMark is designed to stress the FPGA device and board power delivery to maximum capacity.**
>
> 🔥 **Do NOT touch the FPGA, heatsink, or any board components while PwrMark is running!**
>
> - The FPGA die and surrounding components will become **extremely hot** during testing
> - Ensure adequate **cooling is in place before** starting any test
> - **Allow the board to fully cool down** between consecutive test runs
> - Verify your **power supply and cables** are rated for the expected current
> - Monitor die temperature — never exceed device **Tjunction maximum**
> - Voltage drooping or PSU shutdown may occur on underpowered setups
>
> **PwrMark is a maximum stress tool — treat it with the same respect as a running soldering iron!**

---

## What is PwrMark?

*"How much current does FPGA product XYZ need?"*

This is one of the most common questions FPGA designers and vendors face — and the honest answer is always: *it depends.* It depends on the device, the design, the clock frequency, the switching activity, and the board-level power delivery chain.

PwrMark was created to turn that vague answer into real, measurable, reproducible data.

Unlike vendor power estimator tools, PwrMark measures **total board power from the input rail**, including DCDC conversion losses. This is the number that actually matters for system power budgets, PSU sizing, and thermal design — not a theoretical chip-level estimate.

---

## License

PwrMark is dual licensed:

- **MIT License** — free for open source projects, evaluation, academic use, and community contributions
- **Commercial License** — for proprietary products, confidential measurements, for FPGA and board vendors

Commercial licensing and custom bitfile service inquiries: contact MicroFPGA.

© 2026 MicroFPGA

