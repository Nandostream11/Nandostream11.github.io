---
title: CauESC- A Causal-Aware Model for Emotional Support Conversations
date: 2024-10-24 00:00:00 +0530
categories: [Projects, Machine Learning]
tags: [machine learning, chat model]     # TAG names should always be lowercase
author: <strikers> 
mermaid: true       #diagram gen tool
math: true          #MathJax enabled
image: /assets/images/ml-archi.png    #to simply add an image
description: Short summary of the post.
excerpt: "A machine learning model"
---

## Introduction  
With the increasing reliance on AI-driven chatbots in mental health and support services, the ability of machines to engage empathetically has never been more important. Traditional Emotional Support Conversation (ESC) models often fall short—they provide surface-level comfort but lack the depth needed to truly understand and respond to human emotions.  

![The need of a novel mechanism in ES Conversation](/assets/images/Emotional-support.png){: w="400" }
*The need of a novel mechanism in ES Conversation*

Our project, **CauESC: A Causal-Aware Emotional Support Conversation Model**, addresses this gap. Developed as part of our Machine Learning curriculum under the guidance of **Dr. Rajesh Kumar Mundotiya**, CauESC integrates causal reasoning and commonsense knowledge to enhance empathy in AI-driven conversations.  

## Problem Statement  
Emotional Support Conversation models aim to comfort individuals in distress. However, existing approaches face three critical limitations:  

![Problems](/assets/images/esc-problems.png){: w="500" }
*Limitations of existing approaches*

1. **Inability to Identify Root Causes** – Most models respond only to the immediate context, overlooking deeper emotional triggers.  
2. **Static Interaction** – Responses fail to dynamically adapt to evolving emotional states.  
3. **Lack of Empathy** – Generated replies often sound generic, leaving users feeling misunderstood.  

These shortcomings can lead to user frustration, undermining the very purpose of emotional support systems.  

## Our Approach: CauESC  
CauESC builds upon prior research while introducing novel elements to address these challenges:  

![CauESC architecture](/assets/images/ml-archi.png){: w="500" }
*CauESC architecture*

- **Cause-Aware Encoding** – The model identifies the underlying causes of emotional distress using attention mechanisms.  
- **Integration of Commonsense Knowledge** – Leveraging **COMET (Commonsense Transformers)**, CauESC reasons about both *intra-effects* (impact on the user’s emotions) and *inter-effects* (impact on conversation flow).  
- **Multi-Strategy Execution** – The model can combine strategies like reflection of feelings, suggestions, and self-disclosure within a single response for more personalized support.  

This makes CauESC not only contextually aware but also causally informed—a step closer to real empathy in AI.  

## Dataset and Preparation  
We used the **ESConv dataset**, a benchmark for emotional support conversations. The dataset was carefully annotated to capture:  
![Dataset strategy](/assets/images/ml-dataset.png){: w="500" }

- **Emotion Causes** – Identifying utterances that triggered distress.  
- **Support Strategies** – Categorizing different supportive techniques.  
- **Emotional Effects** – Tracking changes in the seeker’s emotional state.  

Data cleaning was also a crucial step to ensure ethical integrity and model reliability.  

## Implementation Highlights  
1. **COMET Integration** – Instead of simply analyzing conversation context, CauESC feeds supporter utterances into COMET to generate causal inferences about emotional outcomes.  
2. **Cause-Aware Attention Mechanism** – Helps the model focus on the root cause rather than just the latest message.  
3. **Strategy Executor** – Dynamically combines multiple support strategies for coherent, empathetic responses.  

![external process flow](/assets/images/comet-in-esc.png){: w="500" }
*Common Sense transformer Integration in ESC generation*

The architecture effectively bridges the gap between emotion recognition and empathetic response generation.  

## Results and Insights  
Through experimentation, CauESC demonstrated:  

- Better recognition of **emotional distress causes** compared to traditional ESC models.  
- More **contextually appropriate responses**, guided by commonsense reasoning.  
- Increased potential to sustain meaningful emotional engagement with users in distress.  
![external process flow](/assets/images/External-processflow.png){: w="800" }
*Abstract view of workflow*

While challenges in dataset consistency and fine-tuning persisted, our progress validated the promise of causal-aware approaches in emotional AI.  

## Conclusion  
CauESC represents a step forward in building emotionally intelligent conversational agents. By incorporating causal reasoning and commonsense knowledge, the model lays the foundation for chatbots that don’t just listen, but truly understand.  

This project not only fulfilled our academic objectives but also underscored the real-world importance of empathy in AI systems. Future work can expand CauESC into scalable, real-time applications in mental health and beyond, paving the way for technology that meaningfully supports human well-being.  

📂 **GitHub Repository:** [CauESC: Emotional Support Conversation Model](https://github.com/Akshatjamadagni/Emotional-Support-Conversation-with-fine-grained-emotion-and-emotional-dynamics)
