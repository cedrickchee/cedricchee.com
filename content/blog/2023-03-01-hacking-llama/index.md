+++
title = "Hacking LLaMA Models"
description = "Having some fun hacking LLaMA models to run locally on my own hardware while witnessing the first LLaMA community coming alive."
date = 2023-02-14T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "llama_model", "gpt-3", "ai"]

[extra]
ToC = false
+++

I've been hacking Meta's [LLaMA](https://ai.facebook.com/blog/large-language-model-llama-meta-ai/) ([paper](https://arxiv.org/abs/2302.13971v1)) models before [the leak](https://news.ycombinator.com/item?id=35007978) in [my GitHub repository](https://github.com/cedrickchee/llama).

I [got access to the LLaMA model weights](https://github.com/meta-llama/llama/issues/38#issuecomment-1451393671) on Mar 2, 2023. I participate in the challenge to make LLaMA models run locally on your own GPU. I [help answering questions around LLaMA](https://github.com/meta-llama/llama/issues/101#issuecomment-1454740028).

I think I'm currently witnessing the first LLaMA community coming alive.

Coincidentally, today the [Stable Diffusion moment](https://simonwillison.net/2023/Mar/11/llama/) is happening again right now, for large language models (LLMs) — the tech behind ChatGPT itself. I'm always curious what life is like when you can run a GPT-3 class model on your own laptop? Now you can, for the first time!

The race is on to release the first fully open language model that gives people ChatGPT-like capabilities on their own devices.

I'm joining the fun and I've figured out the hardware requirements for running/inferencing LLaMA models and documented them down:
- [Guide on GPU requirements](https://github.com/cedrickchee/llama/blob/main/chattyllama/hardware.md#guide-on-gpu-requirements) - How much GPU VRAM do I need to run the 7B model? Can 65B fit on 4x RTX 3090?
- [Memory requirements for each model size](https://github.com/cedrickchee/llama/blob/main/chattyllama/hardware.md#guide-on-gpu-requirements) - VRAM before quantization and after 8-bit quantization? Formula for calculating VRAM required for Transformer KV cache.

I will show how you can get them running on 1x A100 40GB GPU. I created [this notebook](https://github.com/cedrickchee/llama/blob/main/notebooks/vi_LLaMA_alpha.ipynb) and you can follow along as I walkthrough the code.

I'm also building [ChattyLLaMA](https://github.com/cedrickchee/llama), a LLaMA-based ChatGPT-like application.

I'm will continue [porting LLaMA](https://github.com/cedrickchee/llama/README.md#llama-2-compatible-port) to support more things, not just hardware.

Not long after the leak, Shawn Presser, who is part of the EleutherAI gang (aka "the people trying to replicate GPT-3 via a public Discord server") cooked up [this project](https://gist.github.com/cedrickchee/a7c23685aace1f75ac31a0c558b6ee91) and shows us how he run LLaMA-65B using his fork of Meta's LLaMA repository. This is getting wild.

The LLaMA community literally exploded at this point. We now have insanely good educational content such as guides and documentations for LLM hackers and engineers. One of them is the unofficial [Meta's LLaMA 4-bit chatbot guide](https://gist.github.com/cedrickchee/255f121a991e75d271035d8a659ae44d). I also written a guide for [installing 8-bit LLaMA with text-generation-webui](https://gist.github.com/cedrickchee/1f24fa3a5e3371910e1959b96a8dff94).

There is so much to cover here but I will stop for now.

This is so exciting! I guess we're living in interesting times. I will write more soon.

Thank you for reading.
