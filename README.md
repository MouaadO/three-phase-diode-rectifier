# Three-Phase Diode Rectifier

Practical implementation and experimental validation of three-phase diode rectification, smoothing and commutation overlap, with a Simulink model and MATLAB analysis.

## Practical implementation and experimental validation

- Studied laboratory half-wave and full-wave three-phase rectifier configurations.
- Measured rectified voltage and investigated commutation overlap as load current varied.
- Analysed voltage/current waveforms and the influence of smoothing and leakage inductance.
- Compared practical measurements with theoretical calculations and simulation waveforms.

The practical measurements and simulation outputs are identified separately in the French report. The image below is a simulation diagram, not a photograph of the physical setup.

![Simulation diagram](simulation-diagram.jpg)

## Repository contents

| File | Purpose |
| --- | --- |
| [diode-rectifier-report-fr.pdf](diode-rectifier-report-fr.pdf) | Full French report: experimental setup, measurements, calculations and simulation comparisons. |
| [results-and-waveforms.zip](results-and-waveforms.zip) | Complete archive of the supplied diagrams, waveforms and spectra. |
| [simulation-diagram.jpg](simulation-diagram.jpg) | Simulation diagram preview shown below. |
| [diode_rectifier.slx](diode_rectifier.slx) | Editable Simulink model. |
| [rectifier-analysis.m](rectifier-analysis.m) | MATLAB analysis script. |

## Getting started

1. Read the French report to understand the circuit, operating conditions and measurement protocol.
2. Extract `results-and-waveforms.zip` to inspect the recorded results and simulation figures.
3. Open `diode_rectifier.slx` in MATLAB/Simulink and inspect the configured circuit and parameters before running it.
4. Use the report to select the operating case to reproduce and compare the voltage/current waveforms.

## Software requirements

MATLAB is required for `.m` scripts. Simulink and the power-system blocks used by the model are required for `.slx` files. Some analytical scripts use `syms`/`vpasolve` and therefore require Symbolic Math Toolbox. The exact original MATLAB release is not specified; model compatibility should be checked in your installation.

## Project context

Academic power-electronics project completed at the National Polytechnic School of Algiers in 2024/2025, including practical laboratory work and simulation. This repository presents Amani Mouaad’s portfolio version of a collaborative academic project.

**Portfolio author:** Amani Mouaad  
**Supervision:** Pr. M. Mahmoudi and Mr. Benachour.

The technical report is retained in French. Repository documentation is in English. The original source documents are preserved separately.

## Reproducibility

The supplied models and scripts are preserved for inspection and reproduction. They have not been rerun in MATLAB/Simulink during repository preparation; published experimental observations come from the supplied report and results.
