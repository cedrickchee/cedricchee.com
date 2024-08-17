+++
title = "State of GPT 2023"
description = "Text version of Karpathy's State of GPT 2023 presentation."
date = 2024-05-12T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "gpt", "llama_model", "ai"]

[extra]
ToC = true
+++

On May 2023, Andrej Karpathy delivered the "State of GPT" presentation for the Microsoft Build event.

{{ youtube(id="bZQun8Y4L2A", autoplay=false, class="youtube") }}

This presentation is filled with educational nuggets. Since I prefer text rather than video for ease of searching and discoverability later, so I created a text version of this presentation talk below.

I hope people find this useful.

---

## Intro

- First part: how to train (Chat)GPT Assistant - an emerging recipe
- Second part: Use these assistant effectively for your applications

## Part 1: GPT Assistant Training Pipeline

![GPT Assistant Training Pipeline](https://gist.github.com/assets/145605/1f6c4a89-1b0b-4acc-95b3-9006f40263c5)

## Data Collection

First, we're going to gather a large amount of data.

![Data Collection](https://gist.github.com/assets/145605/75249532-11b3-4439-96b3-185cf8f77a0a)

Preprocessing step: **Tokenization**

![Tokenization](https://gist.github.com/assets/145605/c4d98ba0-2529-442f-9303-5a74a6c051bc)

Note: this is a lossless kind of translation.

## 2 Example Models

2 example hyperparameters that govern this stage.

![2 Example Models](https://gist.github.com/assets/145605/2a297e3a-494a-452d-9728-54d705548280)

GPT-3 175B (2020) vs. LLaMA 2 65B (2023):

LLaMA 2 is a significantly more powerful model. Intuitively, that's because the model is trained for significantly longer.

**Pretraining**

![Pretraining](https://gist.github.com/assets/145605/4f615d90-5979-448b-ac0e-0e10fb1c68d5)

**Training process**

![Training process](https://gist.github.com/assets/145605/1b81d5ee-4f18-46e5-bed5-ff17e4bcf86e)

## Base Models Learn Powerful, General Representations

![Base Models Learn Powerful, General Representations](https://gist.github.com/assets/145605/eeda5708-2d0c-4f1f-9dca-bdf2e1c8325f)

Base models can be prompted into completing tasks. (make your model look like a document! -- "tricked" into performing a task by completing the document.)

Base models are NOT 'Assistants' (Base model does not answer questions. It only wants to complete Internet documents.)

**Supervised Finetuning (SFT)** stage

Nothing change. We're just swapping out the training dataset. We still do language modeling.

<!--(WIP)-->

An example of **SFT Dataset**.

You can actually continue the pipeline from here on and go into RLHF (Reinforcement Learning from Human Feedback) that consists of both Reinforcement Learning (RL) and Reward Modeling (RM).

## Reward Modeling (RM) Dataset

In the RM step, what we're going to do is we're going to shift our data collection to be of the form comparisons.

An example of RM dataset look like. 3 example of prompts and completions (pairs). Then we ask people to rank these completions.

## RM Training

Binary classification of all the possible pairs.

Layout prompts in rows but each completions vary. Then we basically only supervise the Transformer at the the single green token. (Green token is the special `<|reward|>` token "readout")

The Transformer will predict some reward for how good that completion is for that prompt.

We also have the ground truth which is telling us the ranking each of them. We formulate this into a loss function and we train our model to make reward predictions are consistent with the ground truth coming from comparisons from all these (data) contractors. That allows us to score how good a completion is for a prompt.

<!--(WIP)-->

This is not very useful as an assistant by itself, but it's very useful for the RL stage that follows now.

**RL**

Because we have a RM, we can score the quality of any arbitary completion for any given prompt.

During RL, we again get a large colletion of prompts and now we do RL with respect to the RM.

**RL Training**

<!--(WIP)-->

**Why RLHF?**

It works better.

This chart comes from the InstructGPT paper.

It just works better. You might ask why? I don't think that there's a single amazing answer that the community has really agreed on. But I will offer one reason potentially. It has to do with the asymmetry between how easy computationally it is to compare vs. generate. Let's take an example of generating a haiku. Suppose I ask a model to write a haiku about paper clips.
If you're contractor trying to give training data, then imaging being a contractor collecting data for SFT stage, how are you supposed to create a nice haiku for paper clip? You might not be very good  at that. But if I give you a few example of haikus you might be able to appreciate some of these haikus a lot more than others. Judging which one of these is good is a much easier task. Basically, this asymmetry makes it so that comparisons are a better way to potentially leverage yourself as a human and your judgement to create a slightly better model.

## Mode Collapse

Finetuned models lose entropy. (they can output samples lower variation than the base model.)

<!--(WIP)-->

**Assistant models in the wild**

(LMSys.org leaderboard screenshot)

There's a team at Berkeley that ranked a lot of the available assistant models and give them basically Elo ratings.

Now let's switch gears and let's look at how we can best apply the GPT assistant model to your problems.

## Part 2: Applications

Let's work with a concrete example here.

(**Human text generation vs. LLM text generation** slide)

Let's say you're writing a blog post.
You're going to write this sentence at the end: "California population is 53 times that of Alaska."

Think about the rich internal monologue and tool use and how much work actually goes computationally in your brain to generate this one final sentence.

<!--(WIP)-->

Basically long story short, a lot happens under the hood in terms of your internal monologue when you create sentences like this. But what does a sentence like this look like when we are training a GPT on it?

From GPT's perspective, this is just a sequence of tokens. GPT when it's generating these tokens, it just goes chunk, chunk, chunk. And each chunk is roughly the same amount of computational work for each token. These Transformers are not very shallow networks. They have about 80 layers of reasoning but 80 is still not too much.

This Transformers is going to do its best to imitate, but of course the process here looks very different from the process that you took.

<!--(WIP)-->

Also in particular, basically these Transformers are like token simulators. They don't know what they don't know. They just imitate the next token. They don't know what they're good at or not good at. They just try their best to imitate the next token. They don't reflect in the loop. They don't sanity check anything. They don't correct their mistakes along the way.
By default, they just sample token sequences.

Now they do have some cognitive advantages I would say and that is that they do actually have very large fact-based knowledge across a vast number of areas because they have say, several, 10 billion parameters. That's a lot of storage for a lot of facts. They have a relatively large and perfect working memory. Whatever fits into the context window is immediately available to the Transformer through its internal self attention mechanism. It's kind of perfect memory but it's got a finite size.

The reason all of this is bring up is because to a large extent, prompting is just making up for this cognitive difference between these two kind of architectures like our brains here and LLM brains. You can look at it that way almost.

**Chain of thought**

Especially if your tasks require reasoning, you can't expect the Transformer to do too much reasoning per token. You have to really spread out the reasoning across more and more tokens. <!--(WIP)-->

Some of the things that work well, you may for example have a few-shot prompt ...

(b) Few-shot-CoT

(d) Zero-shot-CoT

## Ensemble Multiple Attempts

LLMs can get "unlucky" and sample a bad thought. Once they do they are "stuck" with it. Make few attempts.

<!--(WIP)-->

## Ask For Reflection

LLMs (especially GPT-4) can often recognize later when their samples didn't seem to have worked out well.


```
Prompt: can you write a poem that does not rhyme? think carefully about the assignment
Response: ...

Prompt: did the poem meet the requirement?
Response: Apologies, I realize now that the poem I provided did rhyme, which did not meet the assignment. Here's a non-rhyming peom for you: ...
```

You have to get it to check. If you don't ask it to check, it's not going to check by itself. It's just a token simulator.

**Recreate our 'System 2'**

Parallel to System 1 (fast, automatic) vs. System 2 (slow, deliberate) modes of thinking.

I think more generally a lot of these techniques fall into the bucket of what I would say recreating our System 2.
(You might be familiar with the System 1, System 2 thinking for humans. System 1 is a fast, automatic process (kind of correspnds to an LLM sampling tokens). And System 2 is the slower, deliberate planning sort of part of your brain.)

<!--(WIP)-->

Papers:

- Tree of Thoughts (ToT): deliberate problem solving with LLMs, Yao et al. 2013 - expand a tree of intermediate thoughts, evaluate them
- Mastering the game of Go without human knowledge, Silver et al. 2017 (AlphaGo) - parallels to AlphaGo, MCTS

So I think **this is kind of an equivalent of AlphaGo but for text.** [Q* learning?]

## Chains / Agents

Think less "one-turn" Q&A, and more chains, pipelines, state machines, agents.

Just like Tree of Thoughts, I think more generally people are starting to really explore more general techniques of not just a simple question-answer prompts, but something  that looks a lot more like Python glue code stringing together many prompts.

(screenshots of AutoGPT and ReAct)

<!--(WIP)-->

AutoGPT is a project that I think got a lot of hype recently. But I still find it inspirationally interesting. It's a project that allows an LLM to sort of keep task list and continue to recursively break down tasks. (I don't think this currently works very well and I would not advice people to use it in practical applications.)

## Condition on good performance

> LLMs don't want to succeed. They want to imitate training sets with a spectrum of performance qualities. You want to succeed, and you should ask for it. ~ Karpathy

<!--(WIP)-->

Paper: Large Language Models Are Human-Level Prompt Engineers, 2023. "Let's work this out in a step by step way to be sure we have the right answer." (Category: APE, Accuracy: 82.0), "Let's think step by step", "Let's think about this logically.", "Before we dive into the answer,", "The answer is after the proof."

Basically feel free to ask for a strong solution. Say something like, "You are a leading expert on this topic.", "Pretend you have IQ 120", etc.

## Tool Use / Plugins

Offload tasks that LLMs are not good at

Importantly: they don't "know" they are not good

As we saw, as we are trying to solve problems, we know what we are good at and what we're not good at and we lean on tools computationally. You want to do the same potentially with your LLMs.

In particular we may want to give them calculators, code interpreters, and so on.

<!--(WIP)-->

## Retrieval-Augmented LLMs

Load related context/information into "working memory" context window

```
<-------------------------------||||||||||-------------------------------->
Google/Bing           Retrive task-relevant information,                LLM
(Retrieval only)            pack it into context              (Memory only)
                          e.g. CHatGPT + Browsing
                                 e.g. Bing
```

(screenshot: LlamaIndex, LangChain agent, GPTs, Vector stores, DBs)

<!--(WIP)-->

This works extremenly well in practice.

LlamaIndex is one data connector to lots of different types of data. You can index all of that data and you can make it accessible to LLMs. The emerging recipe there is <!--(WIP)-->

## Constrained Prompting

"Prompting languages" that interleave generation, prompting, logical control


Techniques for forcing a certain template in the outputs of LLMs. Guidance is one example from Microsoft.

They clamp those tokens and then the Transformer is only filling in the blanks here and you can enforce additional restrictions on what could go into those blanks.

## Finetuning

It is the case that you can get really far with prompt engineering but it's also possible to think about finetuning your models.

It is becoming a lot more accessible to finetune LLMs:

- PEFT, e.g. LoRA
- Low-precision inference, e.g. bitsandbytes
- Open-sourced high quality base models, e.g. LLaMA

Keep in mind:

- Requires a lot more technical expertise
- Requires contractors and/or synthetic data pipelines
- A lot slower iteraction cycle
- SFT is achievable
- RLHF is research territory (It's much harder to get to work. These things are pretty unstable, very difficult to train, not something that very beginner friendly right now, and likely to change rapidly still.)


## Default Recommendations

Goal 1: Achieve your top possible performance

- Use GPT-4
- Use prompts with detailed task context, relevant information, instructions
  - "what would you tell a task contractor if they can't email you back?"
- Retrive and add any relevant context or information to the prompt
- Experiment with prompt engineering techniques
- Experiment with few-shot examples that are 1) relevant to the test case, 2) diverse (if appropriate)
- Experiement with tools/plugins to offload tasks difficult for LLMs (calculator, code exection, etc.)
- Spend quality time optimizing a pipeline / "chain"
- If you feel confident that you maxed out prompting, consider SFT data collection + finetuning
- Expert / fragile / research zone: consider RM data collection, RLHF finetuning

Goal 2: Optimize costs

- Once you have the top possible performance, attempt cost saving measures (e.g. use GPT-3.5, find shorter prompts, etc.)

## Use Cases

- Models may be biased
- Models may fabricate ("hallucinate") information
- Models may have reasoning errors
- Models may struggle in classes of apps, e.g. spelling related tasks
- Models have knowledge cutoffs (e.g. Septermber 2021)
- Models are susceptible to prompt injection, "jailbreak" attacks, data poisoning attacks, ...

Recommendations:

- Use in low-stakes apps, combine with human oversight
- Source of inspiration, suggestions
- Copilots over autonomous agents

<p align="center">~ The End ~</p>

