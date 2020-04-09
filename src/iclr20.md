---
author: Diego Kiedanski, Lauren Kuntz, Daniel Kofman
title: 'Benchmarks for Grid Flexibility Prediction: Enabling Progress and Machine Learning Applications'
date: April 10, 2020
---

# Motivation

::: incremental

* Massive deployment of renewables is needed
* Most renewables are intermitent (solar, wind)
* Deploying renewables requires grid flexibility 
* How should we measure and implement grid flexibility?
    - Real time pricing
    - Local energy markets
    - Time of Use tariffs
    - Distributed control of appliances
* A benchmkar is needed!

:::


<!-- Speaker notes -->

:::::::::::::::::::::::::::::: notes

Start: To achieve a deep decarbonization of the grid we need to deploy
renewables.

End: It is unclear what the best demand response mechanism is

::::::::::::::::::::::::::::::



<!--
 
# What is the best demand response program to achieve more flexibility?

::: incremental

* Simple Time-of-Use tariff with 2 or 3 periods?
* Real time pricing of electricity?
* Distributed controll of appliances such as water heaters?
* Local energy markets?

:::



:::::::::::::::::::::::::::::: notes 

Start: Some popular mechanisms are:


End: Underlying all these differences, there is a need of a benchmark to compare
the different applications in a reproducible way. Let's look at the case of
images.

:::::::::::::::::::::::::::::: 

-->





<!-- 

# Images as benchmarks

::::: {.columns}

:::: {.column width="70%"}

![RGB](fig/rgb.jpeg)

::::

:::: {.column width="30%"}

::: incremental

* Standard format to specify an image: RGB
* Can be used to represent any "image"
* Can be used to identify objects: such as circle
* Lacks information: is it a circle, a sphere or a cylinder?

:::

::::

:::::


:::::::::::::::::::::::::::::: notes

Start: 2D objects can be described by images, and the format is widely known.

End: This format, though, is not suited for questions involving the 3d
properties of the object.

::::::::::::::::::::::::::::::

-->






# Datasets in demand response

::: incremental

* Mostly time-series of energy conusmption only.
* Very useful to forecast energy consumption ... _ceteris paribus_
* Not sufficent to measure flexibility:
    -  Users of the dataset with too many degrees of freedom
    -  Reproducibility can not be guaranteed

:::



<!-- Speaker notes -->
:::::::::::::::::::::::::::::: notes

Start: At the consumer level, most datasets contain only energy consumption
information. 

End: This is not sufficient to evaluate grid flexibiliy in a reliable manner. We
need a tighter specification.

::::::::::::::::::::::::::::::




# Benchmark requirements

::: incremental

1. A model of how consumers responsd to changes in price and environment
   (flexibility).
2. A performance metric for flexibility
    - We propose: matched renewable generation with demand.
3. Extra requirements:
    - Enegy generation and mix
    - Power system specification
    - A baseload consumption for each player


<!--
1. Consumer Specification
    - Energy consuption with respect to reference price
    - How consumption changes in response to price
1. Energy Generation
    - Quantity generated and mixture of renewables
2. Power Grid Specification
    - Location of loads, phyisical characteristics of cables, transformers, etc
4. Performance Metrics
    - Measure the ability to match energy demand and renewable generation
-->

:::



<!-- Speaker notes -->
:::::::::::::::::::::::::::::: notes


Start: We identified key ingredients in a grid flexibility benchmark.

End: The proposed specification will enable the collection of large datasets,
enabling interesting artificial intelligence applications. We proceed to present
2 of them.

::::::::::::::::::::::::::::::




# Benchmarks can enable AI: Deep Learning

Example:

::: incremental
* collect large number of datasets
* label data with the maximum flexibility achivable
* learn from the pairs (grid with consumers, maximum flexibility) the relevant features of Dataset
* example: total storage capacity is the only important factor...
* use the learned model to predict flexibility in unseen grids
:::


<!-- Speaker notes -->
:::::::::::::::::::::::::::::: notes

Start: 


::::::::::::::::::::::::::::::



<!--
 


# Use cases for AI: Reinforcement Learning

Example:

::: incremental

* end-customers' flexibility can be obtained as an optimization problem
* use RL to learn the flexibility model 
* use RL trained agents to simply and accelerate simulations

:::


:::::::::::::::::::::::::::::: notes

Start: 

End: 

::::::::::::::::::::::::::::::


-->



# The END
