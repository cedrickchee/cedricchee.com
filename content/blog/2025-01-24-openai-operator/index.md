+++
title = "OpenAI ChatGPT Operator Browser \"Agent\" Product"
description = "Here is everything you need to know about Operator, including an overview of the CUA model and its strengths and weaknesses."
date = 2025-01-24T04:00:00Z
#updated = 2025-01-24
#weight = 0
slug = "openai-operator"
#path = "/launch"
draft = false

[taxonomies]
tags = ["agentic_ai", "llm", "ai", "openai", "notes"]

[extra]
ToC = false
+++

## Overview

OpenAI recently announced Operator, a research preview of ChatGPT designed as an autonomous agent capable of executing tasks across the Web. While it acts autonomously, effective prompting remains critical to its performance.

Operator is powered by the new CUA model, which combines GPT-4o’s vision capabilities with advanced reasoning developed through reinforcement learning (RL). Currently, it’s available to Pro users in the US at [https://operator.chatgpt.com/](https://operator.chatgpt.com/). OpenAI plans to expand access to Plus, Team, and Enterprise users in the future.

## The AI Agents Landscape

Other major players in the AI agent ecosystem include:

- **Anthropic**: Their agent, [Claude Computer Use](https://www.anthropic.com/news/3-5-models-and-computer-use), is available as an API. However, adoption has been limited since it’s not directly accessible to consumers and primarily targets developers and early adopters.

- **Google DeepMind**: They offer [Mariner](https://deepmind.google/technologies/project-mariner/), a web-browsing agent powered by the Gemini 2.0 model.

## Performance

OpenAI claims that CUA outperforms competitors such as Claude Computer Use and Mariner in several benchmarks:

- **WebArena Benchmark**: CUA achieved a 58.1% success rate.
- **WebVoyager Benchmark**: CUA achieved an 87% success rate.
- **OSWorld Benchmark**: CUA achieved a 38.1% success rate.

### Benchmark Notes
- [WebArena](https://arxiv.org/abs/2307.13854) and [WebVoyager](https://arxiv.org/abs/2401.13919) assess web browsing agents on real-world tasks using browsers.
- [OSWorld](https://arxiv.org/abs/2404.07972) evaluates models’ ability to control full operating systems like Ubuntu, macOS, and Windows.

{{ figure(src="openai_cua_evals_1.png",
       style="width: 100%;",
       position="center",
       caption_position="center",
       caption="Figure 1: CUA establishes a new state-of-the-art in both computer use and browser use benchmarks",
       caption_style="font-weight: normal; font-style: normal;") }}

{{ figure(src="openai_cua_evals_2.png",
       style="width: 100%;",
       position="center",
       caption_position="center",
       caption="Figure 2: Comparison of CUA's performance with previous state-of-the-art benchmarks at varying maximum allowed steps",
       caption_style="font-weight: normal; font-style: normal;") }}

## Initial Reviews

Early user feedback ([source](https://every.to/chain-of-thought/we-tried-openai-s-new-agent-here-s-what-we-found)) highlights several features and limitations:

- **Key Features**:
  - Access to a dedicated browser with real-time monitoring and manual control options.
  - Workflow-saving capabilities for repetitive tasks.
  - Ability to handle complex tasks lasting up to 20 minutes.
  - A sleeker user interface compared to Anthropic’s Claude Computer Use.

- **Limitations**:
  - Restricted access to certain websites like YouTube.
  - Better suited for task execution (e.g., TaskRabbit-like scenarios) than research assistance.

- **Miscellaneous**:
  - Does not support visiting platforms like 4chan for controversial tasks ([source](https://xcancel.com/adonis_singh/status/1882565296067887254)).

## Security

Simon Willison’s [notes](https://simonwillison.net/2025/Jan/23/introducing-operator/) provide insights into OpenAI’s approach to mitigating prompt injection risks and other security concerns.

## Use Cases and Demos

Rowan Cheung showcased [impressive use cases and results](https://xcancel.com/rowancheung/status/1882489477769072779), illustrating Operator’s strengths and limitations.

## How Operator Works

Operator is powered by a brand new model that OpenAI are calling CUA, for Computer-Using Agent. It's interesting to see that the model has this known codename, Orion in the leak.

If you're interested in the technical detail, refer to OpenAI's [separate announcement](https://openai.com/index/computer-using-agent/) covering that new model and the research behind it.

## Analysis of CUA’s Strengths and Weaknesses

**(Coming soon)**

## Opinion

While Operator is not AGI, it represents significant progress toward more autonomous systems. However, accessibility remains a concern, with Pro access priced at $200 per month, sparking criticism that Operator caters only to "AGI-rich" users.

The experience of watching AI navigate tasks can feel cumbersome, and privacy/security risks remain a top concern for many users. Simon Willison’s critique of the term "agents" as overly vague ([source](https://simonwillison.net/2024/Dec/31/llms-in-2024/#-agents-still-haven-t-really-happened-yet)) resonates, as does skepticism about the overhyped nature of Operator.

## Why It Matters

Anthropic, Google, OpenAI, and Microsoft are all heavily invested in AI agents, signaling that this area will shape the future of AI development.

## The Future

As Andrej Karpathy ([tweet](https://xcancel.com/karpathy/status/1882544526033924438)) notes:

> Projects like Operator are to the digital world as humanoid robots are to the physical world.

## Community and Open Source

With Operator priced at $200 for Pro users, open-source alternatives are gaining traction. Notable efforts include ByteDance’s Apache 2.0 licensed reasoner agent, which outperforms GPT-4o and Claude for computer use ([source](https://venturebeat.com/ai/bytedances-ui-tars-can-take-over-your-computer-outperforms-gpt-4o-and-claude/)).

## Closing Thoughts

The 2025-2035 period is likely to mark a decade of new paradigms in human-computer collaboration. Personally, I’m bullish about the potential for growth and innovation in this space.

## References

1. [https://xcancel.com/alliekmiller/status/1882502641076355250](https://xcancel.com/alliekmiller/status/1882502641076355250)
2. [https://xcancel.com/omarsar0/status/1882493238403383764](https://xcancel.com/omarsar0/status/1882493238403383764)
3. [https://xcancel.com/emollick/status/1882489223175115253](https://xcancel.com/emollick/status/1882489223175115253)

