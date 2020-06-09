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

<img src="src/eenergy20/none.png" alt="drawing" width="1000"/>

# CSG: Introduction

<img src="src/eenergy20/only_1.png" alt="drawing" width="1000"/>

# CSG: Introduction

<img src="src/eenergy20/only_2.png" alt="drawing" width="1000"/>

# CSG: Introduction

<img src="src/eenergy20/all_but_cost.png" alt="drawing" width="1000"/>

# CSG: Introduction

<img src="src/eenergy20/csg.md_full.png" alt="drawing" width="999"/>

# CSG: Introduction

<img src="src/eenergy20/core4.png" alt="drawing" width="600"/>

# CSG: Example

<img src="src/eenergy20/game.jpg" alt="drawing" width="1000"/>

# CSG: The Core

<img src="src/eenergy20/core.jpg" alt="drawing" width="700"/>

# What was known

::: incremental

* No ramp constraints -> Non-empty core (even with stochastic demand)  [1]
* With ramp constraints and deterministic demand [2]
    - Some families of games had non-empty cores
    - Some families of games were convex.
* No results for discrete battery sizes.

[1] P. Chakraborty et al. 2018. Sharing Storage in a Smart Grid: A Coalitional Game Approach.

[2] D. Kiedanski et al. 2019. The Effect of RampConstraints on Coalitional Storage Games.

:::

# New results

::: incremental

* CSG with continous battery size (deterministic and stochastic)
    - Non-empty core.
    - Efficient algorithm to find a payoff in the core.
* CSG with discrete battery size
    - Core can be empty
    - Maximum insatisfaction is bounded.

:::

# Linear Production Games

## Well studied cooperative game
::: incremental

* Players have resources
* They form coalitions and they build things with their resources
* The value of each coalition is the maximum value they can atain.
* The value is the solution of an LP
* Non-empty cores.
* The proof uses the dual of the Grand Coalition's LP

:::

# CSG: Non-empty core

::: incremental

* Value of each coalition as a solution of an LP
* $v(S) = \min\{ cx \colon Ax \leq B1_S, x\geq0\}$
* Not exactly Linear Production Game, but we can use the same tools.
* Solution of the dual in the core.

:::

# CSG stochastic. Motivation.


::: incremental

* $\Omega = \{ w_0, w_1\}$, $p_0 = p_1 = \frac 1 2$, respectively.
* $L_0 = 0$, $L_1 = 3$
* $p^l = 1, p^h = 5$. Each unit of battery costs $3$ and ramp constraints are large enough.
* $v(B) = \min_B \left\{3B + 1\times\min\{ B, \frac 3 2\} + 5\times\max\{\frac 3 2 - B, 0\} \right\}$
* Solution using average case is $B^* = \frac 3 2$, $v(B^*) = 6$.
* If $w_0$, then observed cost is $\frac 9 2$.
* If $w_1$, then observed cost is $\frac{27}{2}$.
* Average cost of $9$
* Average cost could have been $7.5$ by buying no battery.
* Value of Stochastic Solution: $\frac 3 2$ ($16\%$ of the cost).

:::

<!---
The optimal solution of the problem in Equation ~\ref{eq:example_cost_det} is $B^*=\frac 3 2$  and $v(B^*) = 6$.

Analogously, we can find that, for scenario $w_0$, the optimal battery size is $0$ at a total cost of $0$, while for scenario $w_1$, the optimal battery size is $3$ with a total cost of $12$.

We are interested in the cost incurred by buying the battery obtained solving the average case, but experiencing the real consumption in each of the two scenarios.

For scenario $\omega_0$, the cost is: $C_{\omega_0} \overset{\Delta}{=} 3 \times \frac 3 2 + \min\{\frac 3 2, 0\} + 5\max\{0 - \frac 3 2, 0\} = \frac 9 2 $
and for scenario $\omega_1$ it is: $C_{\omega_1} \overset{\Delta}{=} 3 \times  \frac 3 2 + \min\{\frac 3 2, 3\} + 5\max\{3 - \frac3 2, 0\} = \frac{27}{2}$.

Hence, the average cost experienced is: $C_{\omega_0}p + C_{\omega_0}(1-p) = \frac{1}{2}\frac{9}{2} + \frac{1}{2}\frac{27}{2} = 9$. However, the cost could have been decreased by buying instead a battery of size $0$ for a total cost of $7.5$ with a reduction of $1.5$ ($16\%$). This value, $1.5$, is known by the Stochastic Programming community (see \cite{kall1994stochastic}) as the Value of the Stochastic Solution: it is a measure of how much can be gained by considering the stochastic problem instead of the deterministic one.
-->

# CSG Stochastic

::: incremental

* Two stage stochastic program
    - First decision is to decide on battery size
    - Second stage decision how much energy to buy
* $\Omega < \infty \rightarrow$ is just one big LP
* We can recover techniques from the deterministic case.

::: 

# CSG Discrete

::: incremental

* Core can be empty.
    - The techniques before no longer work
    - Duality gap is non-zero.
* Gap between value of discrete and continuous solution does not depend on the load.
* We can use that to bound the maximum deviation.

:::


# Relative maximum deviation 
## Due to discreteness of the battery.

<img src="src/eenergy20/img01.png" alt="drawing" width="700"/>


# Computing payoffs with observed costs.

<img src="src/eenergy20/img02.png" alt="drawing" width="700"/>

# Conclusions

::: incremental

* Cooperative Storage Games resulted in increase of 150% of the storage capacity of the community.
* Re-evaluating the payoff of the core with the realized costs is an important topic.
* Scenario generation plays an important role in the model and offers a good avenue for imporovemnt.

::: 

# Thanks
