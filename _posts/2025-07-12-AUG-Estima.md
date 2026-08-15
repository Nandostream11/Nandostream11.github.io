---
title: AUG Design ESTIMA
date: 2025-07-12 00:00:00 +0530
categories: [Projects, Machine Learning, Design]
tags: [machine learning, Underwater glider, design]     # TAG names should always be lowercase
author: anand
# authors: [<author1_id>, <author2_id>]   # for multiple entries
mermaid: true       #diagram gen tool
math: true          #MathJax enabled
image: /assets/images/glider.png    #to simply add an image
# description: This is a project based on a problem that I came across while modelling the constraints, equations and analysing CFD simulations used for designing the body of a Gliderduring my Summer Internship at an Underwater Robotics based company. Operation-selective Design Parameters optimization for Underwater Gliders- AUG Design ESTIMA
# toc: false        #to turn off table of contents on right side for this post
# comments: false      #to turn off comments for this post
# pin: true             #to pin to top of homepage
# image:                        #for thumbnail
#   path: /path/to/image
#   alt: image alternative text
excerpt: "Isn't running CFD simulations every time a glider needs to optimize a certain performance aspect too hectic or just less on ROI?"
featured: true
---

<div class="project-specs">
  <div class="specs-heading">
    <i class="fas fa-water"></i> System Specifications
  </div>
  <div class="specs-grid">
    <div class="spec-item">
      <span class="spec-label">Domain</span>
      <span class="spec-value">Underwater Robotics & Inverse Computational Design</span>
    </div>
    <div class="spec-item">
      <span class="spec-label">Core Method</span>
      <span class="spec-value">Machine Learning (Random Forest) for Hydrodynamic Estimation</span>
    </div>
    <div class="spec-item">
      <span class="spec-label">Physics & Data</span>
      <span class="spec-value">Physics-based AUG Simulator, Variable Buoyancy & Lift Constraints</span>
    </div>
    <div class="spec-item">
      <span class="spec-label">Tooling & Stack</span>
      <span class="spec-value">Python, Scikit-learn, NumPy, Pandas, Jupyter</span>
    </div>
    <div class="spec-item">
      <span class="spec-label">Primary Objective</span>
      <span class="spec-value">Rapid Parameter Optimization without Repeated Costly CFD Cycles</span>
    </div>
    <div class="spec-item">
      <span class="spec-label">Repository</span>
      <span class="spec-value"><a href="https://github.com/Nandostream11/AUG_Design_ESTIMA" target="_blank" rel="noopener noreferrer">AUG_Design_ESTIMA</a></span>
    </div>
  </div>
</div>

PS: This is a project based on a problem that I came across while modelling the constraints, equations and analysing CFD simulations used for designing the body of a Glider during my Summer Internship at an Underwater Robotics based company.

## Introduction
Isn't running CFD simulations every time a glider needs to optimize a certain performance aspect too hectic or just less on ROI
The scope of this project is as narrow as the last unexplored frontier itself—**the deep underwater domain**. Despite the exponential rise of aerial and space autonomy tools, we still lack robust, modular, and data-driven tools for **optimizing and designing Autonomous Underwater Vehicles (AUVs)**.

In particular, **Autonomous Underwater Gliders (AUGs)**—which operate by changing buoyancy and exploiting hydrodynamic lift—pose a unique challenge for simulation and iterative design. Current development workflows rely heavily on **computationally intensive CFD (Computational Fluid Dynamics)** simulations or simplified design heuristics, which are not scalable or intelligent enough for rapid prototyping.

This is where the idea behind **AUG Design ESTIMA** was born.

---

### Project Motivation

While researching tools for conceptual design and performance estimation, I came across data-driven aerodynamic optimizers developed for aircraft design—particularly systems using machine learning to evaluate drag, stability, and energy efficiency directly from geometric and control parameters.

These methods are widely used in aerospace engineering to reduce reliance on expensive, iterative CFD simulations. However, comparable ML-accelerated workflows remain scarce in underwater vehicle design despite the sector's operational constraints.

---

## Objective

To build a machine learning pipeline that predicts hydrodynamic performance metrics and guides parameter modifications for Autonomous Underwater Gliders (AUGs) using physics-derived simulation data. This accelerates initial design space exploration without requiring computationally heavy CFD re-evaluations for every control surface or mass distribution adjustment.

> “Instead of running a full CFD simulation for each iteration, learn from the parameter space and estimate optimal vehicle configurations directly.”

---

## Technical Methodology

### 1. Simulation Ground Truth

The pipeline uses the [**AUG Simulator**](https://github.com/AUG-Simulator) developed by [Bhaswanth Ayapilla](https://www.linkedin.com/in/bhaswanth-a/) to generate performance data across target design parameters:

- Buoyancy engine frequency  
- Center of mass offset  
- Wing area and angle of attack  
- Actuator response delay  
- Hydrodynamic damping coefficients

The simulator outputs key metrics including pitch stability, glide angle, energy consumption, range, and controllability.

---

### 2. Data Collection Pipeline

A batch-sampling script varies input parameters, runs the physics simulator, and logs:

- Input geometry and mass configuration parameters  
- Output performance metrics (displacement, glide ratio, energy loss)  
- Stability indicators (convergence rate, steady-state error)

Configurations are scored through a multi-objective evaluation function targeting:

- Maximum distance per unit energy  
- Long-duration pitch and roll stability  
- Trajectory linearity  

---

### 3. Machine Learning Estimation Model

Regression models (evaluating **Random Forest**, **XGBoost**, and Multilayer Perceptrons) learn the inverse mapping:

**Desired Performance Constraints** ➝ **Optimal Design Parameters**

#### Inputs:
- Target motion profile  
- Maximum allowable energy budget  
- Operating depth and target range  

#### Outputs:
- Estimated geometric and mass distribution parameters  
- Predicted hydrodynamic performance with confidence intervals  

This inverse design workflow enables rapid sizing and parameter screening, narrowing down candidates for final high-fidelity verification.

---

## Future Work

- Integrate **active learning** to improve sample efficiency during data generation  
- Implement a **generative geometry loop** for parametric hull and foil optimization  
- Enforce physical feasibility and hydro-static constraints directly in the loss function  
- Expand support to Remotely Operated Vehicles (ROVs) and hybrid glider configurations  

---

## Repository Structure

| Directory        | Description                                                  |
| ---------------- | ------------------------------------------------------------ |
| `sim_interface/` | Scripts to interface with the AUG Simulator across parameter sets |
| `data/`          | Processed configurations, sensor traces, and performance data |
| `models/`        | Trained regression models and training checkpoints           |
| `notebooks/`     | Jupyter notebooks for analysis, validation, and plotting     |
| `docs/`          | Technical notes, equation derivations, and methodology       |

---

## Source & Details

- **GitHub Repository:** [AUG Design ESTIMA](https://github.com/Nandostream11/AUG_Design_ESTIMA)  
- **Stack:** Python, Scikit-learn, XGBoost, NumPy, Pandas, AUG Simulator  
- **Tags:** Underwater Robotics, Machine Learning, Computational Design, AUVs  
