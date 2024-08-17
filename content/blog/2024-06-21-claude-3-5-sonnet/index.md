+++
title = "Claude 3.5 Sonnet"
description = "Anthropic Claude 3.5 Sonnet takes the top spot on the leaderboards. It surpasses GPT-4o."
date = 2024-06-21T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "gpt", "ai"]

[extra]
ToC = false
+++

Anthropic [introducing Claude 3.5 Sonnet](https://www.anthropic.com/news/claude-3-5-sonnet) today.

👑 We now have a true challenger to GPT-4o. Claude 3.5 Sonnet takes the top spot on the leaderboards.
It surpasses GPT-4o by 3.3 points on the MixEval-Hard and leads in almost all sub-benchmarks.

🏆 [MixEval leaderboard](https://mixeval.github.io/#leaderboard)
(no more waiting for days for the [LMSys Arena leaderboard](https://lmarena.ai/?leaderboard) update)

3.5 Sonnet highlights:
- A recent knowledge cutoff: Apr 2024
- Model traits: quality, fast, or safe. Pick three.
- Maintaining leadership position on the price/quality curve.
	- Claude 3 Opus vs. Sonnet 3.5: 5x cost savings and ~3x faster.
	- Developers should consider moving workloads from Opus 3 ($30/1M tokens) to Sonnet 3.5 ($6/1M tokens)
- Solves 64% of problems on Anthropic's internal agentic coding evaluation. Claude 3 Opus only solved 38%.
	- Sonnet 3.5 seems like a much better for agentic coding than previous Claude models. (going to re-eval SWE-Agent, OpenDevin)
- The "artifacts" that it generates are sort of a simpler version of GPT Code Interpreter -- not just code, you can make documents, code a pong game, etc.
- Impressive spatial vision capabilities & visual reasonings: Chihuahuas vs. Muffins image -- it was able to correctly find all the chihuahuas, well at drawing a unicorn as an SVG.

The benchmarks tell us that LLMs have not hit a wall and we need new benchmarks.

I'm not surprise that Claude 3.5 Sonnet beat the competitors. The pattern with current models are now all running smaller, faster, cheaper models at GPT-4 level. Anthropic hasn't prioritised voice assistants for a good reason.
