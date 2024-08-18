+++
title = "Prompt Caching with Anthropic Claude"
description = "This is huge! Prompt caching enables you to load vast amounts of data into the context window. This will unlock a wide range of new use cases. I'm so pumped."
date = 2024-08-16T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "anthropic_claude", "ai"]

[extra]
ToC = false
+++

🤯 The [Claude API has introduced prompt caching](https://www.anthropic.com/news/prompt-caching), enabling you to mark and reuse portions of long prompts, such as large documents provided as context. Claude caches these prompts for up to 5 minutes, resulting in significantly faster processing times and discounted costs (~10% of the original cost) for any subsequent prompts that reuse the cached context.

✨ With the ability to load vast amounts of data into the context window, this enables exciting possibilities, such as:

- Caching content libraries, such as entire books or coding documentation, and retrieving specific information with ease through multiple API calls
- Providing large examples for a specific task, thereby achieving results that surpass traditional fine-tuning methods with significantly less effort
- Sharing entire codebases with the LLM, enabling more efficient collaboration

💰 However, writing to the cache incurs costs. The cache's TTL is reset with each cache hit, so applications that send more than one prompt every 5 minutes can expect substantial price reductions. Applications with lower prompt frequencies may incur additional costs.

🚀 DeepSeek released their own implementation of context caching a couple of weeks ago, with the simplest possible pricing model.

📈 The trend is clear: following the lead of Google Gemini and DeepSeek, Anthropic has also adopted context caching. Context caching is poised to become a standard across the industry. This development is expected to unlock a wide range of new use cases and simplify the process of building applications that rely heavily on AI optimization.
