# SimNLOS — Transient‑Data Simulator for Confocal Non‑Line‑of‑Sight Imaging


> MATLAB implementation for physics‑accurate transient–data synthesis in confocal NLOS imaging.  
> **Main entry point:** `SimNLOS.m`  
> **Repository:** <https://github.com/syjjsy/Non-Line-of-Sight-Imaging-Simulation>

---
> **Entry point:** `SimNLOS.m` | MATLAB R2020a + recommended  
> Generates physics‑accurate transient volumes from depth maps for algorithm benchmarking and deep‑learning pre‑training.

---

## 1 Features
* FFT‑accelerated 3‑D convolution grounded in the light‑cone transform  
* Adjustable **spatial / temporal resolution** (default 128 × 128 × 1024, 32 ps per bin)  
* Poisson photon noise & optional 70 ps FWHM temporal jitter  
* Single‑call batch processing of multiple scenes  
* Core functions distributed as **P‑code (`*.p`)** for efficient execution

---

## 2 File List
| File | Type | Role |
| ---- | ---- | ---- |
| `SimNLOS.m` | MATLAB script | **Main driver** — set parameters & launch simulation |
| `data_augmentation.p` | P‑code | Generates depth / albedo augmentations & writes output |
| `definePsf.p` | P‑code | Builds the 3‑D confocal point‑spread function |
| `depth_to_transient.p` | P‑code | Converts depth maps to transient volumes |
| `depth_to_vol.p` | P‑code | Helper for depth‑to‑voxel mapping |
| `resamplingOperator.p` | P‑code | Constructs temporal resampling matrix |


> **关于 P‑code**  
> `*.p` 文件是 MATLAB 编译代码，无法查看源，但可直接像 `.m` 文件一样调用。

---

## 3 Quick Start

```bash
git clone https://github.com/syjjsy/Non-Line-of-Sight-Imaging-Simulation.git
cd Non-Line-of-Sight-Imaging-Simulation
