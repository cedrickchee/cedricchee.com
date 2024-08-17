+++
title = "Google Gemini 1.5 Vibe Check"
description = "Vibe checking the latest Google Gemini models by asking it about fine-tuning Transformer tools."
date = 2024-05-15T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "ai_engineering", "ai"]

[extra]
ToC = false
+++

Today, during the I/O event, Google announced that they are updating Gemini 1.5 Pro, introducing 1.5 Flash, rolling out new developer features and adding two new Gemma models. [^1]

So I tried Gemini as my Pixel Assistant today. I migrated from Google Assistant to Gemini on Android.

As I'm currently fine-tuning large language models, I need to compare fine-tuning Transformer tools.
So I asked Gemini. Here's the link to the [entire chat](https://g.co/gemini/share/12f3199bce8a) below:

```
Prompt:
You are an large language models expert. You have trained deep learning Transformer models. I want to fine-tune a base model with my domain-specific dataset.

What do you think about Axolotl vs Unsloth vs TorchTune?


Output:
I can help you with comparing Axolotl, Unsloth, and TorchTune for fine-tuning a base model with your domain-specific dataset. Here's a brief comparison:

- Axolotl: A lightweight library designed specifically for fine-tuning transformers on small datasets. It excels in tasks where efficiency and ease of use are priorities.
- Unsloth: A comprehensive library that offers various functionalities for fine-tuning transformers, including hyperparameter tuning, regularization techniques, and integration with other libraries. It caters to more complex fine-tuning scenarios.
- TorchTune: A powerful framework built on PyTorch for training and fine-tuning deep learning models, including transformers. It provides a high degree of flexibility and customization but requires more in-depth PyTorch knowledge.

Choosing the best option depends on your specific needs:

- For smaller datasets and ease of use, Axolotl is a strong choice.
- For more complex fine-tuning with additional functionalities, consider Unsloth.
- If you have experience with PyTorch and need maximum flexibility, TorchTune is an option.


Prompt:
What and why Axolotl win the ease of use?


Output:
Axolotl wins in ease of use due to its streamlined design focused on fine-tuning transformers with minimal configuration. Here's a breakdown of its advantages:

- Simpler API: Axolotl offers a concise API that simplifies the fine-tuning process, requiring less code compared to other libraries.
- Automatic Configuration: Axolotl handles many configurations automatically, reducing the need for manual parameter tuning, which can be error-prone and time-consuming.
- Focus on Small Datasets: Axolotl is optimized for smaller datasets, common in domain-specific fine-tuning, making it easier to achieve good results without extensive hyperparameter tuning.
```

A side-by-side comparison:

|                 | [Axolotl](https://github.com/OpenAccess-AI-Collective/axolotl)         | [Unsloth](https://github.com/unslothai/unsloth)                                                                                                | [TorchTune](https://github.com/pytorch/torchtune)                                                                                                                                  |
| --------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Strengths       | Smaller datasets and **ease of use**. Automatic configuration. It just works, because community-maintained best practices implementation. | More **complex** fine-tuning with additional functionalities. Finetune Llama 3, Mistral & Gemma 2-5x faster with 80% less memory _but_ upsell to paid [Unsloth Pro](https://unsloth.ai/) which is 30x faster. | If you have experience with PyTorch and need maximum **flexibility**. Low dependencies. |
| Opinions        | Support more models & techniques.                                      | Prefer to support popular models such as Llama, Mistral                                                                                               |                                                                                                                                                                                                                                                                                                              |
| License         | Open source: Apache 2.0                                                | Open source: Apache 2.0                                                                                                                        | Open source: BSD-3                                                                                                                                                                 |

The latest Gemini 1.5 Pro model is not bad anymore. Interesting. I plan to test it further.

[^1]: [Gemini, Gemma developer updates](https://blog.google/technology/developers/gemini-gemma-developer-updates-may-2024/)
