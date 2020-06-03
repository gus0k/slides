---
author: Diego Kiedanski, Ariel Orda, Daniel Kofman
title: 'Discrete and Stochastic Coalitional Storage Games'
date: June 22, 2020
---

# Outline

::: incremental

1. What are coalitional storage games?
2. What was known about them?
3. New results
    - General existance of the core.
    - Extending the model: stochasticity.
    - Extending the model: discretness.
4. Numerical results
5. Perspectives

:::

# CSG: Introduction

<img src="src/description.jpg" alt="drawing" width="1000"/>

# CSG: Example

<img src="src/game.jpg" alt="drawing" width="1000"/>

# CSG: The Core

<img src="src/core.jpg" alt="drawing" width="700"/>

# What was known

::: incremental

* No ramp constraints -> Non-empty core (even with stochastic demand) 
* With ramp constraints and deterministic demand
    - Some families of games had non-empty cores
    - Some families of games were convex.
* No results for discrete battery sizes.

:::

# New results

::: incremental

* All coalitional storage games with continuous battery size and deterministic profiles have non-empty cores.
* Non-empty core also for the case with stochastic demand profiles.
* Core can be empty for discrete battery-sizes, but the error is small.

:::

# Existance of the core for the general case

## Idea

Write the problem as an LP, use results from Linear Programming Games.
