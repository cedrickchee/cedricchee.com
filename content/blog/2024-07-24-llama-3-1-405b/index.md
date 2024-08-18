+++
title = "🐐 Llama 3.1 405B Matches Or Beats The Top Foundation Models"
description = "Meta flagship model, Llama 3.1 405B is the first open weights model that is competitive with the top foundation models across a range of tasks, including GPT-4, GPT-4o, and Claude 3.5 Sonnet. The smaller models, 8B and 70B are competitive with Gemma 2 9B, Mistral 7B, Mixtral 8x22B, and GPT 3.5. The upgraded versions are more capable, have a longer context length of 128k, multilingual, and advanced tool use."
date = 2024-07-24T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "llama_model", "ai"]

[extra]
ToC = false
+++

Llama 3.1 405B, 70B, 8B is officially out.
Llama 3.1 405B is the first openly available model that matches or beats the best closed models across many benchmarks.

## Model evaluations

The performance of 405B model is very similar to Claude 3.5 Sonnet. It beats GPT4 on every single benchmark but one.

70B model has an even more impressive performance. It is significantly better than GPT-3.5 Turbo and beats Nemotron 4 340B on many tests.

{{ figure(src="flagship-models-benchmark.png",
       style="width: 100%;",
       position="center"
       caption_position="center",
       caption="Figure 1: Flagship models benchmark"
       caption_style="font-weight: normal; font-style: normal;") }}

{{ figure(src="smaller-models-benchmark.png",
       style="width: 100%;",
       position="center"
       caption_position="center",
       caption="Figure 1: Smaller models benchmark"
       caption_style="font-weight: normal; font-style: normal;") }}

Try 405B at [meta.ai](https://www.meta.ai/), on WhatsApp or on [HuggingChat](https://huggingface.co/chat/).

Notable improvements:
- 128k context length.
- Multilingual abilities.
- Function calling and tool use.
- Open/free weights and code, with a license that enables fine-tuning, distillation into other models, and deployment anywhere 🔥
- 8B and 70B code generation performance improved up to 12%.
- FP8 quantized version available for efficient inference. (Hugging Face provides GPTQ and AWQ quants.)
- Llama Stack API for easy integration.

Important facts:
- Pre-training cut-off date of Dec 2023.
- 405B trained on 15.6T tokens and fine-tuned on 25M human and synthetic examples.
- Leveraged the 405B model to improve the post-training quality of 70B and 8B models.
- TikToken-based tokenizer.

Llama 3.1 collection of large language models (LLMs) will make history with the largest and most capable open model ever released.
Thank you for making AI and LLM more accessible.

[Blog post](https://ai.meta.com/blog/meta-llama-3-1/) | [Llama website](https://llama.meta.com)

Download weights on [llama.meta.com](https://llama.meta.com/llama-downloads/) and [Hugging Face](https://huggingface.co/collections/meta-llama/llama-31-669fc079a0c406a149a5738f)

Cloud providers playgrounds:
- [Groq (70B-versatile)](https://console.groq.com/playground)
- [Together AI](https://api.together.xyz/playground)

Paper: [The Llama 3 Herd of Models](https://ai.meta.com/research/publications/the-llama-3-herd-of-models/) (It's so cool to see an exhaustive and extensive technical report.)

[Model card](https://github.com/meta-llama/llama-models/blob/main/models/llama3_1/MODEL_CARD.md)

[GitHub repo](https://github.com/meta-llama/llama-models/tree/main/models/llama3_1)

Development: All details about Llama 3.1 such as VRAM requirements on [Hugging Face blog](https://huggingface.co/blog/llama31). Learn how to quantize, fine-tune, distil, run inference and more in this blog post. (Overwhelm? If you can only read one thing, let it be this.)

---

Original text (draft): [GitHub Gist](https://gist.github.com/cedrickchee/4c3fc733eb1205cb69b12231d4e857bd)
