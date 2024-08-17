+++
title = "Early Thoughts on Large Language Models"
description = "Personal perspective of ChatGPT (and similar) models, and where we stand with respect to language understanding."
date = 2024-01-24T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "gpt", "gpt-3", "ai"]

[extra]
ToC = true
+++

[Goldberg](https://scholar.google.com/citations?user=0rskDKgAAAAJ&hl=en) a Professor and Research Director at AI2 wrote a [short article](https://gist.github.com/cedrickchee/054956f6277430ae5a973c61e4a93073) in Jan 2023 about his personal perspective of his thoughts of ChatGPT (and similar) models, and where we stand with respect to language understanding.

His perspective resonate with mine. So, I would like to share my takeaway from this article:

- Large language models (LLMs) like ChatGPT have shown impressive capabilities, challenging earlier assumptions about their limitations.

- Goldberg previously argued that perfect language modeling would be equivalent to human-level intelligence, but also believed that simply building a very large language model wouldn't solve everything.

- Current LLMs go beyond traditional language modeling:
  - They use instruction tuning with human-created data
  - They are trained on programming language code
  - They employ Reinforcement Learning from Human Feedback (RLHF)

- These additional techniques provide forms of grounding and help LLMs learn communicative intent.

- Despite their capabilities, LLMs still have significant limitations:
  - They struggle to relate multiple texts to each other
  - They lack a true notion of time and chronology
  - They don't have real "knowledge of knowledge"
  - They perform poorly on numbers and math
  - They may struggle with rare events and high recall tasks

- Goldberg argues that data hunger is a major issue, particularly for non-English languages, as most languages lack sufficient digital data for training.

- Goldberg suggests that separating core language understanding from factual knowledge could help address some current limitations.

- Common criticisms of LLMs (e.g., wastefulness, bias, lack of true understanding) are acknowledged but considered less interesting or relevant to the discussion of their capabilities and limitations.

- Goldberg emphasizes the importance of focusing on what LLMs can do and how to improve them, rather than dismissing them for what they can't do.
