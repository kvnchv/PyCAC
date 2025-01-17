## minimize

### Syntax

	minimize mini_style max_iteration tolerance

* `mini_style` = _cg_ or _sd_ or _fire_ or _qm_

* `max_iteration` = positive integer

* `tolerance` = positive real number

### Examples

	minimize cg 1000 1d-5
	minimize fire 100 1d-6

### Description

This command sets the style and two parameters for the energy minimization in [quasistatic and hybrid CAC](simulator.md).

There are four `mini_style`: congjugate gradient (_cg_), steepest descent (_sd_), fast inertial relaxation engine (_fire_), and quick min (_qm_).

Both _cg_ and _sd_ use the negative gradient of internal energy as the initial direction; from the second step, however, the _sd_ style uses the current negative gradient while the _cg_ style uses the negative gradient conjugated to the current potential surface. Once the direction is set, the inner iterations begin in which a [line search](https://en.wikipedia.org/wiki/Line_search) is conducted to determine the length by which the nodes/atoms need to move along the designated direction to find the minimized energy. For more information of the energy minimization with these two styles, read chapter 3 of [Shuozhi Xu's Ph.D. dissertation](https://smartech.gatech.edu/handle/1853/56314).

The _fire_ style is based on [Bitzek et al., 2006](http://dx.doi.org/10.1103/PhysRevLett.97.170201) while the _qm_ style is based on quenched dynamics which is used also in [dynamic CAC](dynamics.md). The difference is that only one quenched dynamics iteration is carried out at each [simulation step](run.md) in [dynamic CAC](dynamics.md) while many quenched dynamics iterations are performed at each [simulation step](run.md) during the energy minimization until the internal energy converges at that step. For the _fire_ and _qm_ styles, the inner iteration is irrelevant.

The energy minimization is considered to converge when either the number of outer iterations reaches `max_iteraction` or the energy variation between successive outer iterations divided by the energy of the current iteration is less than `tolerance`.

### Related commands

This command is relevant only when [`simulation_style`](simulator.md) = _statics_ or _hybrid_.

### Related files

`quasi_statics.f90`, `mini_init.f90`, `update_mini.f90`, `mini_energy.f90`, `hybrid.f90`, `conjugate_gradient.f90`, `steepest_descent.f90`, `quick_mini.f90`, and `fire.f90`

### Default

	minimize cg 1000 1d-6