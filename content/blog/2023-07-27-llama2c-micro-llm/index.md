+++
title = "Llama2.c — The rise of micro-LLMs"
description = "The smaller and better language model paradigm, Karpathy's Llama2.c, and Microsoft Phi-1."
date = 2023-07-27T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "llama_model", "gpt", "ai"]

[extra]
ToC = false
+++

A glimpse into the future of smaller, better models.

I like Karpathy's [llama2.c contributing guide](https://github.com/karpathy/llama2.c/tree/master#contributing). It motivates me to write this post.

Below is a copy of it.

> A few words on this repo and the kinds of PRs that are likely to be accepted. What is the goal of this repo? Basically I think there will be a lot of interest in training or finetuning custom **micro-LLMs** (think ~100M - ~1B params, but let's say up to ~10B params) across a large diversity of applications, and deploying them in edge-adjacent environments (think MCUs, phones, web browsers, laptops, etc.). I'd like this repo to be **the simplest, smallest, most hackable repo** to support this workflow, both training and inference. In particular, this repo is not a complex framework with a 1000 knobs controlling inscrutible code across a nested directory structure of hundreds of files. Instead, I expect most applications will wish to create a fork of this repo and hack it to their specific needs and deployment platforms.
>
> **People who care about deployment efficiency above all else should look at [llama.cpp](https://github.com/ggerganov/llama.cpp).** This repo still cares about **efficiency, but not at the cost of simplicity, readability or portability.** Basically, I expect that a lot of people come to this repo because the **training code is 2 readable .py files** and the **inference code is 500 lines of C**. So I'd like this to continue to be a kind of simplest "reference implementation" that can be easily hacked in a separate fork into whatever downstream application people are excited about. It **shouldn't be full-featured. It shouldn't take 100 different options or settings.** It shouldn't be the most efficient. A few examples:
>
> - someone re-ordered two loops to improve data locality for a small efficieny win => instant merge.
> - someone added the one line "pragma omp parallel for", which allows you to compile with OpenMP and dramatically speed up the code, or acts as just a comment if you don't compile it that way => instant merge.
> - bug fixes and touchups etc. => happy to merge

Emphasis mine.

## Research

The **tiny model paradigm** with Ronen Eldan and Yuanzhi Li of MSR.

Paper: [TinyStories: How Small Can Language Models Be and Still Speak Coherent English?](https://arxiv.org/abs/2305.07759), 2023.

Quoting the abstract:

> We hope that TinyStories can facilitate the development, analysis and research of LMs, **especially for low-resource or specialized domains, and shed light on the emergence of language capabilities in LMs.**

Related video: [Internal presentation with Sebastien Bubeck at MSR](https://youtu.be/iNhrW0Nt7zs)

The authors also recently published [Textbooks are All You Need](https://arxiv.org/abs/2306.11644) paper.

Quoting the abstract:

> phi-1, a new large language model for code, with significantly smaller size than competing models: phi-1 is a Transformer-based model with 1.3B parameters, trained for 4 days on 8 A100s, using a selection of ``textbook quality" data from the web ...

As an aside, apparently, C's death has been greatly exaggerated. LMAO.

Original text: [GitHub Gist](https://gist.github.com/cedrickchee/462e8661d9c231deb90513849778e8fc)
