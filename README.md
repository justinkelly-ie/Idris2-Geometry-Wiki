# Idris 2 Geometry-Wiki

[![Idris 2 Verification](https://img.shields.io/badge/Idris_2-0.8.0-blue.svg)](https://www.idris-lang.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Verification suite and literate documentation chapter for **Idris2-Geometry**, the discrete 4-metric chromogeometric foundation of the constructivist physical law pipeline.

## Overview

`Idris2-Geometry-Wiki` formalizes geometric invariants across the 4 fundamental metrics:

- **Elliptic Geometry** ($\det g = +1$, $27$ VM): Bound-state confinement and positive metric action $Q > 0$.
- **Hyperbolic Geometry** ($\det g = -1$, $128$ DE): Gauge flux, lightcone phase $Q = 0$, and Stern-Brocot prefix optimality.
- **Parabolic Geometry** ($\det g = 0$, $55$ DM): Remainder dissipation drain and null momentum $p_{\text{null}} = (0, 0)$.
- **Substrate Geometry** ($g_{22} = 0, g_{12} = 1$, $210$ Master): Asymmetric causal arrow $\Delta S \neq 0$ and discrete free energy minimization $\Delta F \le 0$.

## Verification & Build

To compile the literate verification suite and execute the test runner binary:

```bash
idris2 --build Idris2-Geometry-Wiki.ipkg
./build/exec/lgeometry-wiki
```

## Related Repositories

- [Idris2-Geometry](https://github.com/justinkelly-ie/Idris2-Geometry)
- [Idris2-Physics-Wiki](https://github.com/justinkelly-ie/Idris2-Physics-Wiki)
- [Idris2-Universe-Wiki](https://github.com/justinkelly-ie/Idris2-Universe-Wiki)
