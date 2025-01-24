+++
title = "OpenAI ChatGPT Operator Browser \"Agent\" Product"
description = "Here is everything you need to know about Operator, an analysis of the CUA model and examine their strengths and weaknesses."
date = 2025-01-24T04:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["agentic_ai", "llm", "ai", "openai", "notes"]

[extra]
ToC = false
+++

## Overview

OpenAI announced Operator, a new research preview of ChatGPT that acts as an agent for getting tasks done. It can autonomously takes actions across the Web on your behalf, but prompting still matters.

It is powered by a new model called CUA—combining GPT-4o's vision capabilities with reasoning through reinforcement learning (RL). It's available to Pro users in the US at [https://operator.chatgpt.com/](https://operator.chatgpt.com/)

Their plan is to expand to Plus, Team, and Enterprise users in the future.

## The AI Agents Landscape

Anthropic also has an agent, [Claude Computer use](https://www.anthropic.com/news/3-5-models-and-computer-use), but that's only been released as an API, so adoption has been fairly limited because it's not a product that a consumer can use directly. The API is more for developers and early adopters.

Google DeepMind has [Mariner](https://deepmind.google/technologies/project-mariner/), a web-browsing agent built on top of Gemini 2.0 model.

## Performance

OpenAI claims that CUA outperforms similar competitor tools, including Computer Use and Mariner in [WebArena benchmark](https://docs.google.com/spreadsheets/d/1M801lEpBbKSNwP-vDBkC_pF7LdyGU1f_ufZb_NWNBZQ/edit?gid=0#gid=0)^, [WebVoyager benchmark](https://www.trykura.com/benchmarks)^^, and [OSWorld benchmark](https://os-world.github.io/)^^^.

CUA achieved a 58.1% success rate on WebArena and an 87% success rate on WebVoyager for web-based tasks. In the OSWorld, CUA achieved 38.1% success rate.

{{ figure(src="openai_cua_evals_1.png",
       style="width: 100%;",
       position="center"
       caption_position="center",
       caption="Figure 1: CUA establishes a new state-of-the-art in both computer use and browser use benchmarks"
       caption_style="font-weight: normal; font-style: normal;") }}

{{ figure(src="openai_cua_evals_2.png",
       style="width: 100%;",
       position="center"
       caption_position="center",
       caption="Figure 2: Comparison of CUA's performance with previous state-of-the-arts with varying maximum allowed steps"
       caption_style="font-weight: normal; font-style: normal;") }}

_^[WebArena](https://arxiv.org/abs/2307.13854) and
^^[WebVoyager](https://arxiv.org/abs/2401.13919) are environment designed to evaluate the performance of Web browsing agents in completing real-world tasks using browsers._

_^^^[OSWorld](https://arxiv.org/abs/2404.07972) is a benchmark that evaluates models' ability to control full operating systems like Ubuntu, macOS, and Windows._

## Initial Reviews

What [early users' noticed](https://every.to/chain-of-thought/we-tried-openai-s-new-agent-here-s-what-we-found) while diving deeper:

- it has access to its own browser—that you can watch in real time and take control of
- it’s limited in terms of the sites it can visit, many like YouTube are blocked
- it’s a Taskrabbit, not a research assistant (for research, I recommend Gemini with Deep Research or DeepSeek R1 with Search)
- it lets you save workflows so that they can be repeated later (super useful)
- it can do complex tasks that last as long as 20 minutes
- the user interface is sleeker than Anthropic Claude Computer use
- it [cannot visit 4chan and write a shitpost (missed opportunity)](https://xcancel.com/adonis_singh/status/1882565296067887254)

### Security

[Simon's notes](https://simonwillison.net/2025/Jan/23/introducing-operator/) on how OpenAI deal with security and mitigate prompt injection risks.

## Use Cases and Demos

Rowan Cheung shared [the most impressive use cases and the results](https://xcancel.com/rowancheung/status/1882489477769072779). You can get a sense for what it’s good at—and not.

## How Operator Works

Operator is powered by a brand new model that OpenAI are calling CUA, for Computer-Using Agent. It's interesting to see that the model has this known codename, Orion in the names of their renderers.

Here's their [separate announcement covering](https://openai.com/index/computer-using-agent/) that new model and the research behind it if you're interested in the technical detail.

### Analysis of the CUA's Strengths and Weaknesses

(coming soon)

## Opinion

It's not AGI, but it's a step toward more autonomous systems. Before the announcement, people on Twitter/X were furious that Operator is only available for ChatGPT Pro subscribers who can afford to pay USD200 per month. Some people went as far and make a meme for it Operator is for the "AGI rich" people. LMAO!

The current user experience of watching an AI click around is not fun and often painful. Many people is concern that Operator can be a privacy and security nightmare.

Simon Willison still find the term "agents" extremely frustrating:

> In the announcement video Sam Altman defined AI agents, a [notoriously vague term](https://simonwillison.net/2024/Dec/31/llms-in-2024/#-agents-still-haven-t-really-happened-yet) like this: ...

I agree. I also think the hype is not warranted. (oh well knowing Sam Altman is a hype-man. duh...)

## Why It Matters

Anthropic, Google, OpenAI, and Microsoft have all revealed their early AI agent bets.

## The Future

According to Karpathy ([Tweet](https://xcancel.com/karpathy/status/1882544526033924438)):

> Projects like Operator are to the digital world as Humanoid robots are to the physical world.

## Community and Open Source

Considering that Operator is only available on the Pro plan for USD200, it's good to look forward to the open source community following suit. Some early projects that outperform GPT-4o and Claude:

- [ByteDance dropped an Apache 2.0 licensed 2B, 7B and 72B reasoner agent for computer use](https://venturebeat.com/ai/bytedances-ui-tars-can-take-over-your-computer-outperforms-gpt-4o-and-claude/)

## Closing Thoughts

Personally I think 2025-2035 is the decade of new forms of human computer collaboration. I'm bullish.

## References

- [https://xcancel.com/alliekmiller/status/1882502641076355250](https://xcancel.com/alliekmiller/status/1882502641076355250)
- [https://xcancel.com/omarsar0/status/1882493238403383764](https://xcancel.com/omarsar0/status/1882493238403383764)
- [https://xcancel.com/emollick/status/1882489223175115253](https://xcancel.com/emollick/status/1882489223175115253)
