+++
title = "Some Reflection on What OpenAI o1 Reasoning Launch Means"
description = "o1 \"think through\" problems before providing solutions. o1 is not GPT. It excels in tasks requiring planning and iteration. o1 doesn't surpass GPT-4o in writing creativity. o1 successfully solved the \"river crossing\" riddle and a crossword puzzle. This unlocks a new paradigm of model pre-training. o1 is great in many ways but it isn't superior in all areas."
date = 2024-09-13T14:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "o1", "gpt", "ai"]

[extra]
ToC = false
+++

OpenAI released a preview of [o1](https://openai.com/o1/) (aka 🍓) today — their first model trained with Reinforcement Learning (RL).

I'm starting to develop my intuition for what tasks are best suited for these new models. My very first impressions:
- o1 "think through" before giving the answer.
- o1 is not GPT: your prompts will not "just work".

## Leap in AI reasoning and Problem Solving

- Enhanced reasoning: o1 can "think through" problems before providing solutions.
- Complex problem solving: excels in tasks requiring planning and iteration, such as novel questions or autonomous agents.
- Writing skills: does not surpass GPT-4o in writing creativity and proficiency.
- Errors and hallucinations: still prone to mistakes and generating inaccurate fact.
- Underlying model constraints: limited by the capabilities of the base model, GPT-4o.

## Vibe Check

Given two common riddle challenges, "river crossing" and "there are six people in a room" and a crossword puzzle, o1 successfully solved them. Note that these challenges require iterative reasoning. o1 also demonstrated the ability to adjust answers based on new information. Feel like AGI? Haha.

{{ figure(src="riddle-for-gpt-4o.png",
       style="width: 100%;",
       position="center"
       caption_position="center",
       caption="Figure 1: GPT-4o unable to solve the riddle"
       caption_style="font-weight: normal; font-style: normal;") }}

If you are doing problems that don't benefit from planning a solution, you may not see improvement.

I think the answers don't matter as much as the thought process to arrive at the answers. o1 acts like it truly understand what it's outputting.

## Future Considerations

I think we're finally shifting toward AI systems with greater autonomy and planning abilities that can make SWE-agent more deterministic (robust) and less costly at scale solving real use cases.

## New Paradigm of Model Pre-Training

o1 is trained with RL to "think" before responding via a private chain of thought. The longer it thinks, the better it does on reasoning tasks. This opens up a new dimension for scaling. We're no longer bottlenecked by pre-training. We can now scale inference compute too.

**Test-time reasoning is all you need**

This is a new paradigm of inference-time scaling. As Sutton said in the Bitter Lesson, there're only 2 techniques that scale indefinitely with compute: learning and search. Now is the time to shift focus to search. OpenAI must have figured out the inference scaling law a long time ago, which academia is just recently discovering. So we now have scaling laws for test-time inference.

## Ongoing

Despite o1 is great in many ways, it isn't superior in all areas.

I'm still not too clear where it excels. I find ways to use it that I don't know about everytime. So, keep playing.
