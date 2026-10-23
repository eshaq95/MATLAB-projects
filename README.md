# MATLAB Projects

MATLAB code from Mechanical Engineering coursework at the University of Edinburgh: design optimisation and numerical methods for engineering problems.

## 1. Turbine blade optimisation

**Folder:** `1. Bladeoptimization` · **Main file:** `TurbineOptimisation.m`

Developed for the Sustainable Energy Group Design Project (Mechanical Engineering Design 3).

- Takes the design inputs — maximum radius, wind speed, rotor speed, number of blades and blade elements, generator efficiency, stall angle, maximum lift coefficient and lift-to-drag ratio
- Computes the optimal angle of attack, chord length and aerofoil profile for each blade element, giving the blade's twist and chord distribution
- Returns the power coefficient and net power output of the turbine
- The design was validated by 3D printing the blade and testing the prototype in the lab, where it generated measurable electrical output

![Turbine optimisation result](https://user-images.githubusercontent.com/72145252/130123288-71187c26-6fdb-4ff8-bd3b-3c9f8d552aec.png)

## 2. Numerical solution of the heat equation

**Folder:** `2. Numerical_solution_PDE`

Solves the one-dimensional heat conduction equation, u<sub>t</sub> = κ u<sub>xx</sub>, on 0 ≤ x ≤ π/2 with initial condition u(x, 0) = cos x and time-dependent Dirichlet boundary conditions — both analytically and numerically — and compares the two.

| File | Purpose |
| --- | --- |
| `FTCS.m` | One forward-time, centred-space (FTCS) finite-difference step |
| `ETM.m` | Explicit time-marching loop built on the FTCS step |
| `analytical_solution.m` | Truncated series form of the analytical solution |
| `partc.m` | Runs the numerical solver and plots the numerical solution, the analytical solution and their difference (error surface and contours) |
| `b2.m` | Surface and contour plots of the analytical solution |
| `REPORT.docx` | Analytical derivation using the Laplace transform, plus discussion of the results |

The time step is set at the FTCS stability limit (r = κΔt/Δx² = 0.5).

![Analytical surface 1](https://user-images.githubusercontent.com/72145252/131263690-14020626-977c-4ce8-927c-c04951e0d563.png)
![Analytical surface 2](https://user-images.githubusercontent.com/72145252/131263692-86625846-9b90-4333-ae88-4b94ca4aff96.png)

## Usage

1. Open the project folder in MATLAB.
2. Run the main script: `TurbineOptimisation.m` for the turbine project, or `partc.m` for the heat equation.
3. See the comments in each script and `REPORT.docx` for details.
