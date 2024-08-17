+++
title = "Generative AI Engineering"
description = "Things to consider when building apps with foundation models. Evals, evals, evals."
date = 2024-05-12T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "ai_engineering", "ai"]

[extra]
ToC = false
+++

I just started reading [Chip's new AI Engineering book](https://www.oreilly.com/library/view/ai-engineering/9781098166298/) about building applications with foundation models.

I'm making a fleeting note here. This is a space for me to write and share important things that I have learned from the book and Chip's social media posts.

The book is currently not release yet. We're just getting a sneak peak version of the book. Note that this is not a book review.

OK, so far I'm already liking the book. The information density is great. The flow is good. This is how you write a survey-styled book. This is really Chip's area of expertise, if you have been following Chip's blog.

Content recency or freshness-wise, AI engineering with LLMs is a fast moving space and the book suffer a little from outdated content. I still learn a lot though.

---

## Building AI Applications

Things to consider when using proprietary models and open models [^1]:

|                    | Proprietary Models                                                                                                                                                          | Open Models                                                                                                     |
|--------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------|
| Data               | Have to send your data to model providers, which means your team can accidentally leak confidential information                                                             | Less checks and balances for data lineage/training data copyright                                               |
| Functionality      | - More likely to support function calling and JSON mode<br/>- Less likely to expose log probs, which are helpful for classification tasks, evaluation, and interpretability | - No/limited support for function calling and JSON mode<br/>- Can access log probs and intermediate outputs     |
| Cost               | API calls can get expensive at scale                                                                                                                                | Talent, time, engineering effort to optimize, host, maintain. Can be mitigated by using model hosting services. |
| Finetuning         | Can only finetune models that model providers let you                                                                                                                       | In theory, you can finetune/quantize/optimize any model, but it can be hard to do so                            |
| Transparency       | Lack of transparency in model changes and versioning                                                                                                                        | Easier to inspect changes in open models                                                                        |
| Control and access | - Rate limits<br/>- Model providers can stop supporting a model or features that you're using                                                                               | No rate limits, but you're responsible for maintaining SLAs                                                     |
| Edge use cases     | Can't run on device without Internet access                                                                                                                                 | Can run on device, but again, might be hard to do so                                                            |

## Model Evaluations

A big issue I see with AI systems is that people aren't spending enough time evaluating their evaluation pipeline. [^2]

1. Most teams use more than one metrics (3-7 metrics in general) to evaluate their applications, which is a good practice.
    However, very few are measuring the correlation between these metrics.

    If two metrics are perfectly correlated, you probably don't need both of them.
    If two metrics strongly disagree with each other, either this reveals something important about your system, or your metrics just aren't trustworthy.

2. Many (I estimate 60 - 70%?) use AI to evaluate AI responses, with common criteria being
    conciseness, relevance, coherence, faithfulness, etc.
    I find AI-as-a-judge very promising, and expect to see more of this approach in the future.

    However, AI-as-a-judge scores aren’t deterministic the way classification F1 scores or accuracy are.
    They depend on the model, the judge's prompt, and the use case.
    Many AI judges are good, but many are bad.

    Yet, very few are doing experiments to evaluate their AI judges.
    Are good responses given better scores?
    How reproducible the scores are -- if you ask the judge twice, do you get the same score?
    Is the judge's prompt optimal?
    Some aren’t even aware of the prompts their applications are using,
    because they use prompts created by eval tools or by other teams.

Some teams are spending more money on evaluating models’ responses than on generating responses.

---

Ongoing...

#### Acknowledgements

All credits goes to the rightful owner.

[^1]: [Building AI applications](https://www.linkedin.com/posts/chiphuyen_aiengineering-aiapplications-llms-activity-7191471862994931713-T-3B)

[^2]: [LLMs evaluations](https://www.linkedin.com/posts/chiphuyen_aiengineering-llms-aievaluation-activity-7194734998376050688-uP2s)
