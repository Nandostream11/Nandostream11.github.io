---
title: AUG Design ESTIMA
date: 2025-06-12 00:00:00 +0530
categories: [Projects, Machine Learning, Design]
tags: [machine learning, Underwater glider, design]     # TAG names should always be lowercase
author: <author_id>
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
excerpt: "ML-Guided Design Optimization for Autonomous Underwater Gliders(Slocum model with parameteric variability)"
---

PS: This is a project based on a problem that I came across while modelling the constraints, equations and analysing CFD simulations used for designing the body of a Glider during my Summer Internship at an Underwater Robotics based company. 

## Introduction
Isn't running CFD simulations every time a glider needs to optimize a certain performance aspect too hectic or just less on ROI
The scope of this project is as narrow as the last unexplored frontier itself—**the deep underwater domain**. Despite the exponential rise of aerial and space autonomy tools, we still lack robust, modular, and data-driven tools for **optimizing and designing Autonomous Underwater Vehicles (AUVs)**.

In particular, **Autonomous Underwater Gliders (AUGs)**—which operate by changing buoyancy and exploiting hydrodynamic lift—pose a unique challenge for simulation and iterative design. Current development workflows rely heavily on **computationally intensive CFD (Computational Fluid Dynamics)** simulations or simplified design heuristics, which are not scalable or intelligent enough for rapid prototyping.

This is where the idea behind **AUG Design ESTIMA** was born.

---

### 🚀 Project Motivation

While researching tools for conceptual design and performance estimation, I came across **AI-guided aerodynamic optimizers** developed for aircraft design—particularly those that use data-driven approaches to evaluate drag, stability, and energy efficiency from shape and control parameters.

These are widely used by **space and defense organizations** to reduce the dependency on expensive real-time CFD simulations. Unfortunately, no such **ML-accelerated system exists for underwater vehicles** despite their growing importance in naval, climate, and research domains.

---

## 🎯 Objective

To build an ML-powered tool that can **predict performance metrics** and **advise design modifications** for AUGs based on training over CFD-like simulation data. This reduces the need to run thousands of costly simulations every time we tweak a control surface or modify mass distribution.

> “Instead of running a full simulation for each iteration, why not learn from simulations and estimate the optimal design space?”

---

## ⚙️ How It Works

### 1. Simulator as a Ground Truth Engine

We use the [**AUG Simulator**](https://github.com/AUG-Simulator) developed by [Bhaswanth Ayapilla](https://www.linkedin.com/in/bhaswanth-a/) to generate performance data for various design parameters such as:

- Buoyancy frequency  
- Mass center offset  
- Wing area and angle  
- Control delay  
- Hydrodynamic damping coefficients

This simulator provides high-fidelity outputs like pitch stability, energy consumption, glider range, and controllability.

---

### 2. Data Collection Pipeline

A script batch-generates parameter combinations, executes the simulator for each, and stores:

- Input configuration parameters  
- Output performance metrics (travel distance, energy loss, etc.)  
- Stability indicators (convergence, steady-state error)

We also label configurations with a **“quality score”** based on a multi-objective evaluation function prioritizing:

- Max distance per energy unit  
- Stability over long durations  
- Smooth trajectory  

---

### 3. ML Model Training

We train ML regression models (currently experimenting with **XGBoost**, **Random Forest**, and **Neural Networks**) to learn the inverse mapping from:

**Desired Performance** ➝ **Design Parameters**

#### Input:
- Desired motion profile  
- Max allowable energy consumption  
- Required range and operational depth  

#### Output:
- Estimated optimal parameter configuration  
- Predicted performance (with confidence)  

This **inverse design** model helps find viable configurations quickly, which can later be refined using traditional simulation or evolutionary search.

---

## 🧠 Future Work

- 🧪 Integrate **active learning** to optimize sample efficiency  
- 🔁 Add a **generative design loop** for shape prediction  
- 🧼 Add explainability and constraints to ensure physical feasibility  
- 🌊 Extend to ROVs and other AUV types  

---

## 📌 Repository Structure

| Directory        | Description                                                  |
| ---------------- | ------------------------------------------------------------ |
| `sim_interface/` | Scripts to run the AUG Simulator with various parameter sets |
| `data/`          | Cleaned dataset of configurations and outcomes               |
| `models/`        | Trained ML models and hyperparameter configs                 |
| `notebooks/`     | Jupyter notebooks for visualization and training             |
| `docs/`          | Technical writeups, plots, and methodology notes             |

---

## 🙌 Collaboration & Contact

I'm actively seeking collaborators who are working in:

- Marine Vehicle Simulation & Optimization  
- AI for Physical Systems  
- CFD + ML pipelines  
- Underwater Robotics  

If you’re building in this space, **let’s connect**!

---

## 💬 Final Thoughts

With the rise of autonomy across domains, underwater remains one of the most **challenging and underexplored** environments. This project is a small step towards creating intelligent co-pilots for marine vehicle design. If even a few researchers or developers benefit from this tool and accelerate their development loop, that would be a win.

> Let’s build smarter systems — even beneath the waves 🌊

---

**🔗 GitHub:** [AUG Design ESTIMA](https://github.com/Nandostream11/AUG_Design_ESTIMA)  
**💡 Tech Stack:** Python, Scikit-learn, XGBoost, Matplotlib, AUG Simulator  
**⚡ Related:** `#UnderwaterRobotics` `#MachineLearning` `#AUV` `#DesignAutomation` `#RoboticsEngineering`  
