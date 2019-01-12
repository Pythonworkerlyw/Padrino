
<!-- README.md is generated from README.Rmd. Please edit that file -->
Padrino
=======

This repo hosts the code used to generate and upload data to the `Padrino` data base. This is more for back end management and to help COMPADRINOs (we need a better name for this one) to find their way as they get started. I've created a separate repo called `RPadrino` that will be eventually become the equivalent of `Rcompadre`.

Currently, the data base is an Excel file with 11 tables and consists of ASCII representation of model formulae, the coefficients associated with said models, and the upper/lower bounds of the state variables. We are closing in on a finalized design, at which point it seems likely that this will transition to an SQL instance hosted remotely. Eventually, it would be nice to be able to generate `.rda` objects (a la Compadre) and/or query it directly from R through an API.

For now, all commits will go to the `master` branch as this is still so early in development that keeping a separate `devel` branch is pointless. This will change immediately before/after the first major release.

If you think of others who could/should contribute, please let me know and I'll add them!

You can visit the project's webpage [here](https://levisc8.github.io/Padrino.github.io/).

Development of the package `RPadrino` is taking place over [here](https://github.com/levisc8/RPadrino).
