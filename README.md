# SimNLOS — Transient‑Data Simulator for Confocal Non‑Line‑of‑Sight Imaging
[![DOI](https://zenodo.org/badge/123456789.svg)](https://zenodo.org/badge/latestdoi/123456789)

> MATLAB implementation for physics‑accurate transient–data synthesis in confocal NLOS imaging.  
> **Main entry point:** `SimNLOS.m`  
> **Repository:** <https://github.com/syjjsy/Non-Line-of-Sight-Imaging-Simulation>

---

## 1  Overview
This simulator generates synthetic transient measurements from depth (and optional albedo) maps by emulating a confocal NLOS capture system.  
It is designed for **algorithm benchmarking**, **data augmentation**, and **deep‑learning pre‑training** where collecting real NLOS data is impractical.

Key characteristics  
* FFT‑accelerated 3‑D convolution grounded in the light‑cone transform  
* User‑defined **spatial / temporal resolution** (default 128 × 128 × 1024, 32 ps per bin)  
* Realistic noise model: Poisson photon noise and optional temporal jitter  
* Batch processing of multiple scenes with a single function call  
* Pure MATLAB: no external toolboxes beyond the standard distribution

---

## 2  Repository Structure
```text
Non-Line-of-Sight-Imaging-Simulation/
├── SimNLOS.m                # ⇦ main script (edit parameters here)
├── resamplingOperator.m
├── definePsf.m
├── utils/                   # helper functions
├── docs/                    # figures / GIFs for README
└── README.md
