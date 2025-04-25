+++
title = "o3/o4-mini: Smart, but Practically Unusable"
description = "The vibe seems to be that o3/o4-mini are among the smartest models, but it hallucinates, bad at instruction following, is lazy, and a step backwards at coding."
date = 2025-04-25T06:05:00Z
#updated = 2025-04-25
#weight = 0
slug = "o3-o4-mini-smart-but-unusable"
#path = "/launch"
draft = false

[taxonomies]
tags = ["opinion", "llm", "ai", "openai", "reasoning-models", "o1"]

[extra]
ToC = false
+++

{{ figure(src="o3_gemini_25_pro_meme.jpg",
       style="width: 80%;",
       position="center",
       caption_position="center",
       caption="Distracted Boyfriend meme: Boyfriend = Power user | Girlfriend (ignored) = Gemini 2.5 Pro | Girl walking by (distracting) = o3/o4-mini",
       caption_style="font-weight: normal; font-style: normal;") }}

There's a strange paradox with o3 and o4-mini: they're among the smartest models out there, but working with them can be frustrating.

## o3/o4-mini Is A Regression

o3, in particular, is both intelligent and very knowledgeable. While it occasionally offers genuinely novel insights, moments where you think, *"Okay, that's actually clever"*, it often falters by either following instructions, abandoning tasks midway, or hallucinating answers altogether. It's like working with a brilliant but lazy genius who makes things up when unsure.

{{ figure(src="unified-bench-v1.5.png",
       style="width: 100%;",
       position="center",
       caption_position="center",
       caption="In my Unified-Bench, o3 Hughes hallucination rate is way off the chart",
       caption_style="font-weight: normal; font-style: normal;") }}

## Disconnected Behavior

The model also feels disconnected. Its behavior doesn't quite align with other LLMs or even human thought processes. You might ask it for a straightforward response, and it'll deliver something deep but off-target, or it might convey the answer in such a disjointed manner that it disrupts your workflow.

## Code Generation: A Step Backwards

When it comes to coding, o3 used to generate hundreds, even over a thousand lines of code in one go. Now, I'm lucky if it manages 500. And if I ask it to continue from where it left off, it either repeats itself or starts from scratch rather than building on what was already written. Unless I explicitly ask for the *"full thing,"* it provides small fragments, leaving me to piece them together. This fragmented output no longer fits with my workflow.

## The Gemini 2.5 Pro Solution

{{ figure(src="current-best-ai-model-poll-subreddit-wild.png",
       style="width: 40%;",
       position="center",
       caption_position="center",
       caption="Wild things happening on the OpenAI subreddit. From a Twitter/X post and poll about what currently the best AI model?",
       caption_style="font-weight: normal; font-style: normal;") }}

In contrast, Gemini 2.5 Pro is the complete opposite. While it's not flawless, its responses can be verbose or dense — it's reliable. It consistently delivers results without the breakdowns or frustrations I experience with o3 or o4-mini. Compared to these models, including GPT-4.1, Gemini 2.5 Pro feels much more grounded and usable in practice.

## Conclusion

In conclusion, while o3 and o4-mini may shine on paper, they fall short in practice. With frequent hallucinations, lack of follow-through, and a need for constant supervision, they're not reliable enough for serious work. Until these issues are addressed, I can't depend on them for anything critical.
