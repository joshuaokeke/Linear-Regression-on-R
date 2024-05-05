# Spatial Statistics Lab 2 - Data Analysis
This repository contains R code for analyzing pollen count data and EVI (Enhanced Vegetation Index) over time.

## Table of Contents
- [Introduction](#introduction)
- [Data Description](#data-description)
- [Analysis](#analysis)
- [Visualization](#visualization)
- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This R script is designed to analyze and visualize pollen count data and EVI over time. The script loads the data from a CSV file, performs statistical analysis, fits a linear regression model, and creates visualizations to explore the relationship between pollen count, EVI, and time.

## Data Description
- **Date:** The date of observation.
- **Pollen:** Pollen count for the corresponding date.
- **EVI:** Enhanced Vegetation Index measurement for the corresponding date.
- **Month:** The month of the observation.

## Analysis

The script performs the following analysis:

1. Loads the data from the CSV file and prints a summary.
2. Subsets the data for April and May and performs a two-sample t-test to compare pollen counts between the two months.
3. Fits a linear regression model to explore the relationship between pollen count and EVI.
4. Checks the significance of the predictor (EVI) using the regression model summary.

## Visualization

The script creates the following visualizations:

1. Line plot of pollen count over time.
2. Line plot of EVI over time.
3. Scatter plot of pollen count vs. EVI with a fitted regression line.
4. Scatter plot of residuals vs. EVI to check for homoscedasticity.

## Getting Started

To get started with the analysis, follow these steps:

1. **Clone the repository:** Clone this repository to your local machine using Git by running the following command in your terminal:

   ```bash
   git clone https://github.com/joshuaokeke/R-linear_regression.git
