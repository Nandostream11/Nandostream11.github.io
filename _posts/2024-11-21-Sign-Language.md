---
title: American Sign Language(ASL) Recognition Using CNN
date: 2024-11-21 00:00:00 +0530
categories: [Projects, Image processing]
tags: [computer vision, Deep Learning]     # TAG names should always be lowercase
author: <author_id>
# authors: [<author1_id>, <author2_id>]   # for multiple entries
mermaid: true       #diagram gen tool
math: true          #MathJax enabled
image: /assets/images/asl.png    #to simply add an image
# description: Short summary of the post.
# toc: false        #to turn off table of contents on right side for this post
# comments: false      #to turn off comments for this post
# pin: true             #to pin to top of homepage
# image:                        #for thumbnail
#   path: /path/to/image
#   alt: image alternative text
excerpt: "*Breaking communication barriers with deep learning.*"
---


## Overview
American Sign Language (ASL) is a lifeline for millions of deaf and hard-of-hearing individuals. Yet, for many, communication barriers remain when others don’t understand ASL.  
This project tackles that gap by developing a **Convolutional Neural Network (CNN)** model capable of recognizing **36 static ASL gestures (A–Z, 0–9)** from images with **94% accuracy**.

By replacing an earlier & less effective **landmark detection** approach with CNNs, we gained:
- Higher **accuracy** across all classes.
- Better **robustness** to lighting, angles, and hand orientation.
- A scalable base for real-time sign language translation tools.

---

## Problem Statement
- **The Challenge:** Enable machines to interpret ASL hand gestures from images.
- **Goal:** Build a system that can classify static ASL gestures accurately and efficiently.
- **Why It Matters:** This technology can empower inclusive communication for everyone.

---

## 🛠️ Tools & Dependencies
**Core Libraries:**
- `TensorFlow / Keras` → Designing, training, and evaluating the CNN.
- `Matplotlib / Seaborn` → Visualizing training curves & confusion matrices.
- `Scikit-learn` → Accuracy, precision, recall, F1-score.
- `NumPy / Pandas` → Data handling and preprocessing.

**System Requirements:**
- Python 3.7+
- GPU-enabled system (T4 GPU recommended in Google Colab)
- 20 GB storage & 8 GB RAM

**Dataset:**
- 36 classes (A–Z, 0–9)
- 80% training | 10% validation | 10% testing

---

## 🧩 Model Architecture
![CNN Architecture](/assets/images/cnn_architecture.png){: w="400"  }
*A Sequential CNN with three convolutional blocks, regularization, and fully connected layers.*

**Highlights:**
- **Input:** 200×200 RGB images
- **Conv Blocks:** 3 sets of two convolutional layers + ReLU + MaxPooling + Dropout  
- **Dense Layers:** Flatten → Dense(512) → Dense(128) → Output(36, softmax)
- **Optimizer:** Adam  
- **Loss Function:** Categorical Cross-Entropy  
- **Regularization:** Dropout (0.2–0.4)  
- **Callbacks:** EarlyStopping, ReduceLROnPlateau  

---

## 🔄 Methodology
1. **Data Preparation**
   - Resize images → 200×200
   - Rescale pixel values → [0,1]
   - Split into train, val, and test sets
2. **Training**
   - 30 epochs
   - Early stopping to avoid overfitting
   - Dynamic learning rate adjustment
3. **Evaluation**
   - Accuracy, precision, recall, F1-score
   - Confusion matrix analysis

---

## 📊 Results
**Performance Metrics:**
- **Test Accuracy:** 94%
- **Macro Avg:** Precision 96%, Recall 94%, F1-score 95%

![Accuracy & Loss Trends](/assets/images/training_accuracy_loss.png){: w="300"  } 
*Figure 1: Stable convergence with no signs of overfitting.*

![Confusion Matrix](/assets/images/confusion_matrix.png){: w="500"  }
*Figure 2: Minimal misclassifications across 36 classes.*

---

## 🚀 Conclusion & Future Work
This model is a **solid foundation** for ASL recognition tools and can be extended for:
- **Dynamic gesture recognition** using sequences.
- **Mobile/web real-time applications**.
- **Robustness improvements** via diverse training datasets.

> *"Technology’s real power lies in making the world more inclusive."*


## 📂 GitHub Repository
The Github Repo can be found here: [American Sign Language DECODER](https://github.com/kirtiraj2215/Sign-language-decoder-DIP/)