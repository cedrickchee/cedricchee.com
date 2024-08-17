+++
title = "Tradeoffs Between Long-Context LLM and RAG"
description = "From Claude 100K to Gemini 10M, we are in the era of long-context LLMs. Long context will replace RAG?"
date = 2024-05-10T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "rag", "ai"]

[extra]
ToC = false
+++

From Claude 100K to Gemini 10M, we are in the era of long-context large language models (LLMs).

Retrieval-Augmented Generation (RAG) is a technique for enhancing the accuracy and reliability of generative AI models with facts fetched from external sources.[^1] [^2]

The hype surrounding RAG is largely driven by its potential to address some of the limitations of language models by enabling the development of more accurate, contextually grounded, and creative language generation systems. However, it's essential to note that RAG is still a relatively new and evolving field, and there are several challenges and limitations that need to be addressed before it can be widely adopted. For example, RAG requires large amounts of high-quality training data, and it can be challenging to integrate the retrieval and generation components in a way that produces coherent and natural-sounding language.

LLMs such as Claude 100K and Gemini 10M support long contexts spanning tens of thousands to millions of tokens, excelling in the "needle-in-a-haystack" tests. This term refers to querying specific questions within long-context windows to test an LLM's accuracy. While RAG facilitates this process, LLMs like Claude 3 and Gemini 1.5 didn't fully use RAG for this purpose, while still achiving high accuracy. This has sparked debates about long-context LLMs and RAG.

## Long Context Will Replace RAG?

> There's no silver bullet, only tradeoffs.

> A tradeoff means that something is good for one thing, but not as good for something else.

Arguments [^3]:

- **RAG is cheap, long context is expensive**.
- **Long context can mix retrieval and reasoning during the whole language model decoding process**.
  
  RAG only does the retrieval at the very beginning. Typically, given a question, RAG retrieves the paragraphs that is related to the question.
- **RAG supports trillion level tokens, long-context is 1 million**.
  
  True, but there is a natural distribution of the input document, and I tend to believe **most of the cases that requires retrieval is under million level**.
- **RAG can be cached, long-context needs to re-enter the whole document**.

  This is **a common misunderstanding** of long-context: there is something called KV cache, and you can also design sophisticated caching and memory hierarchy ML system working with KV cache. This is to say, you only read the input once, then all subsequent queries will reuse the KV cache. One may argue that KV cache is large -- true, but don't worry, the LLM researchers will give you **insane KV cache compression algorithms** just in time.
- **You also want to call a search engine, which is also retrieval**.

  True, and in the short term, it will continue to be true. Yet there are researchers whose imagination can be wild -- for example, why not letting the language model directly attend to the entire Google Search index, i.e., let the model **absorb the whole Google**.
- **Today's Gemini 1.5 1M context is slow**.

  True, and definitely it needs to be faster. I'm optimistic on this -- it will definitely be much faster, and eventually as fast as RAG.

I see this and it bugs me, because it implies that it's all zero sum and there's nothing that's ever unconditionally better or worse than anything else. A hammer is unconditionally better than a rock for putting nails in things. The beauty of progress is that it enables us to have our cake and eat it too. There is no law that necessitates a dichotomy between powerful and easy.

#### Reference

[^1]: [What Is Retrieval-Augmented Generation, aka RAG?](https://blogs.nvidia.com/blog/what-is-retrieval-augmented-generation/)

[^2]: [Retrieval Augmented Generation (RAG)](https://www.promptingguide.ai/techniques/rag)

[^3]: [Counterargument for "long context will replace RAG" claim](https://twitter.com/Francis_YAO_/status/1759962812229800012)
