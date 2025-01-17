## PyCAC features and non-features

### Features

The PyCAC code can simulate monatomic pure face-centered cubic (FCC) or pure body-centered cubic (BCC) metals using the Lennard-Jones (LJ) or the embedded-atom method (EAM) potentials in a constant temperature field. In the coarse-grained domain, 3D trilinear rhombohedral elements are employed to accommodate dislocations in 9 out of 12 sets of $$\{111\}\left<110\right>$$ slip systems in an FCC lattice, as well as 6 out of 12 sets of $$\{110\}\left<111\right>$$ slip systems in a BCC lattice.

### Non-features

While the CAC method is applicable to thermo/mechanical problems in almost all crystalline materials, current version of the PyCAC code has not yet been extended to simulate:

* dislocations in 12 sets of $$\{112\}\left<111\right>$$-type and 24 sets of $$\{123\}\left<111\right>$$-type slip systems in a BCC lattice;
* crystal structures other than FCC and BCC, e.g., simple cubic, diamond cubic, hexagonal close-packed;
* interatomic potentials other than LJ and EAM, e.g., Stillinger-Weber potential, Tersoff potential, or modified EAM (MEAM) potential;
* 1D or 2D materials that require 1D or 2D elements, respectively, as well as materials requiring 3D elements different from the rhombohedral ones;
* multicomponent, multi-constituent, multiphase, or polyatomic crystalline materials, e.g., alloys, intermetallics, composite materials, ceramic, mineral;
* materials in a non-constant temperature field.

Moreover, the [adaptive mesh refinement scheme](http://dx.doi.org/10.1016/j.ijsolstr.2016.03.030) is not implemented in the current PyCAC code.