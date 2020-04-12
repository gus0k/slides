---
author: Diego Kiedanski, Lauren Kuntz, Daniel Kofman
title: 'Benchmarks for Grid Flexibility Prediction: Enabling Progress and Machine Learning Applications'
date: April 10, 2020
---

# Motivation

::: incremental

* Massive deployment of renewable energy resources is needed
* Most renewables are intermittent (solar, wind)
* Deploying renewables requires grid flexibility 
* Grid flexibility is hard to measure.
* How should we implement more grid flexibility?
* A benchmark is needed!

:::

# Datasets in demand response

::: incremental

* Mostly time-series of energy consumption only.
* Very useful to forecast energy consumption ... _ceteris paribus_
* Not sufficient to measure flexibility:
    -  Users of the dataset with too many degrees of freedom
    -  Reproducibility can not be guaranteed

:::


# Benchmark requirements

::: incremental

1. A model of how consumers respond to changes in price and environment
   (flexibility).
2. A performance metric for flexibility
    - We propose: matched renewable generation with demand.
3. Extra requirements:
    - Energy generation and mix
    - Power system specification
    - A base load consumption for each player
:::



# Benchmarks can enable AI: Deep Learning

Example:

::: incremental
* Collect large number of datasets
* Label data with the maximum flexibility achievable
* Learn from the pairs (grid with consumers, maximum flexibility) the relevant features of Dataset
* Use the learned model to predict flexibility in new grids
:::


# The END

More details in the paper
