+++
title = "AI Agents and Agentic Behavior"
description = "What is AI agents? Agentic? and 2025 will be the year of agentic AI."
date = 2024-04-12T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "llama_model", "gpt", "agentic_ai", "ai"]

[extra]
ToC = true
+++

In response to Dr. Andrew Ng's letter, ["Four AI agent strategies that improve GPT-4 and GPT-3.5 performance"](https://www.deeplearning.ai/the-batch/how-agents-can-improve-llm-performance/).

When I read Andrew's letter, I'm imagining him as Steve Balmer, shouting "Agentic, agentic, agentic workflows!".
Haha, we can hear you. No need for that.

Before we move on, let's be clear what is agent in this context. The context is, we're now in 2024 and LLMs such as GPT-4 and Llama 3 is the state-of-the-art. In early 2022, everybody in the field knew about the agent from RL, but the general public had no conception of what it was. Their narrative were still everything is a chatbot. All sorts of different things are being called agents. Chatbots are being called agents. Things that make a function call are being called agents. Now when people think agent, they actually think the right thing.

> An agent is something that you can give a goal and get an end step workflow done correctly in the minimum number of steps.

Agents have become more part of the public narrative. Bill Gates in his Nov 2023 blog post, "AI is about to completely change how you use computers" claims that agents are the future:[^1]

> ... in many ways, **software is still pretty dumb**.
> 
> In the next five years, this will change completely. You won’t have to use different apps for different tasks. You’ll simply tell your device, in everyday language, what you want to do.
> 
> **This type of software**—something that responds to natural language and can accomplish many different tasks based on its knowledge of the user—**is called an agent**.
> 
> Agents are not only going to change how everyone interacts with computers. They’re also going to **upend the software industry, bringing about the biggest revolution in computing since we went from typing commands to tapping on icons**.
> 
> (People still joke about Clippy) ... Clippy was a bot, not an agent. ... **Agents are smarter**. They’re proactive—capable of making suggestions before you ask for them. They accomplish tasks across applications.
> 
> In the computing industry, we talk about platforms—the technologies that apps and services are built on. Android, iOS, and Windows are all platforms. **Agents will be the next platform**.
> 
> Nobody has figured out yet **what the data structure for an agent** will look like. ... We are already seeing new ways of storing information, such as vector databases.
> 
> There isn't yet a standard protocol that will allow agents to talk to each other. The cost needs to come down so agents are affordable for everyone.
> 
> But **we’re a long way from that point**. In the meantime, agents are coming.

## AI agent competitions are rising

MetaGPT → AgentCoder → Devin → SWE-Agent → OpenDevin/Devika → AutoCodeRover → Cosine

LLM-based agents are still in their infancy, and there’s a lot of room for improvement. Agent or multi-agents are still in the very early research/prototype stage.

AutoCodeRover is the agent king born from Singapore. Devin was announced 3 weeks ago and it's turning the spotlight on AI like it's the latest celebrity in town. Devin is generally useful but very slow and costly. It exposed models to an exponentially larger number of calls for production level work. AutoCodeRover is a research prototype. AgentCoder performance (relative to GPT-4) in the graph is astounding, but there is no improvement beyond 100% of this benchmark.

## What's Next for AI Agents

I believe that AI agents will significantly improve in the near future, but the majority of companies and their workers are still figuring out how to integrate the first layer of AI into their workflows and processes.

Agentic workflows have the potential to unlock capabilities beyond what is possible with the current approach of prompting models for one-shot/zero-shot/CoT generations. The tools to create agents are improving rapidly. The architecture/pattern is improving with ideas such as Karpathy's LLM Operating System design. The comparison between traditional LLMs and the iterative, agentic approach is interesting whether or not there will be a pivotal shift in AI application.

{{ youtube(id="sal78ACtGTc", autoplay=false, class="youtube") }}

<sup>Andrew Ng speaks about what's next for AI agentic workflows; planning and multi-agent collaboration. Planning is like the "ChatGPT moment" for AI agent.</sup>

The field is quickly pivoting in a world where **foundation models are looking more and more commodity**. A huge amount of **gain is going to happen from how do you use foundation models** as the well-learned behavioral cloner to **go solve agents**.

I'm excited to see progress on SWE-bench and new benchmarks for even more complex/bigger tasks. The performance leap with iterative workflows are compelling.

## Resources

Things I referenced while writing this blog post:

### High Level

- Landscape: [awesome-ai-agents](https://github.com/e2b-dev/awesome-ai-agents)

### Papers
  
  - 🔥🔥🔥 [The AI Scientist: Towards Fully Automated Open-Ended Scientific Discovery](https://arxiv.org/abs/2408.06292) by Sakana.ai (Aug 2024) | [Blog post](https://sakana.ai/ai-scientist/), [GitHub repo](https://github.com/SakanaAI/AI-Scientist)
  - 🔥 [ReAct: Synergizing Reasoning and Acting in Language Models](https://arxiv.org/abs/2210.03629) by Princeton University and Google Brain (ICLR 2023)
  - [HuggingGPT: Solving AI Tasks with ChatGPT and its Friends in Hugging Face](https://arxiv.org/abs/2303.17580) by Shen et al. (2023) - The group use ChatGPT to conduct **task planning** when receiving a user request, select models according to their function descriptions available in Hugging Face, execute each subtask with the selected AI model, and summarize the response according to the execution results.
  - [AutoGen: Enabling Next-Gen LLM Applications via **Multi-Agent** Conversation](https://arxiv.org/abs/2308.08155) by Wu et al. (2023)
  - 🔥 [Communicative Agents for Software Development](https://arxiv.org/abs/2307.07924) by Qian et al. (2023) - At the core of this **multi-agent collaboration** paradigm lies [ChatDev](https://github.com/OpenBMB/ChatDev), a virtual chat-powered software development company.
  - [AgentVerse: Facilitating Multi-Agent Collaboration and Exploring Emergent Behaviors in Agents](https://arxiv.org/abs/2308.10848) by Tsinghua University et al. (2023)
  - [Large Language Models as Tool Makers](https://arxiv.org/abs/2305.17126) by Google Deepmind et al. (ICLR 2024)
  - [More Agents Is All You Need](https://arxiv.org/abs/2402.05120) by Tencent (2024) - The study explores the scaling property of agents created by LLMs. It finds that increasing the number of agents improves performance when using a simple **sampling-and-voting method**. This approach eliminates the need for complex frameworks, such as the CoT pipeline or multi-agent collaboration systems, to solve complex problems.
  - [Scaling Instructable Agents Across Many Simulated Worlds (SIMA)](https://arxiv.org/abs/2404.10179) by Google DeepMind, Apr 2024 - The SIMA project aims to develop embodied AI agents that can follow arbitrary language instructions in any 3D environment, requiring the ability to ground language in perception and embodied actions. The approach involves training agents to follow free-form instructions across diverse virtual 3D environments, including research environments and commercial video games, using a generic, human-like interface. The goal is to create an instructable agent that can accomplish anything a human can do in any simulated 3D environment, with promising preliminary results demonstrated in several research environments and video games. (What's novel? **The agent does not try to maximize score; it must follow arbitrary language instructions, not a set of predefined commands.**)
  - [OSWorld: Benchmarking Multimodal Agents for Open-Ended Tasks in Real Computer Environments](https://arxiv.org/abs/2404.07972) by The University of Hong Kong et al., Apr 2024
  
  - Even more papers 😅
    - [awesome-llm-powered-agent](https://github.com/hyp1231/awesome-llm-powered-agent)
    - [Awesome-Papers-Autonomous-Agent](https://github.com/lafmdp/Awesome-Papers-Autonomous-Agent)
    - [Autonomous-Agents](https://github.com/tmgthb/Autonomous-Agents)
    - [LLM-Agent-Paper-List](https://github.com/WooooDyy/LLM-Agent-Paper-List)
    - [Survey papers](https://github.com/taichengguo/LLM_MultiAgents_Survey_Papers)

### Articles

  - 🔥🔥🔥 [LLM Powered Autonomous Agents](https://lilianweng.github.io/posts/2023-06-23-agent/) by Lilian Weng (2023).
  - 🔥 [Planning is a key design pattern of LLM-based agent](https://www.deeplearning.ai/the-batch/issue-244/) by Andrew Ng (2024) - Planning, in which an LLM autonomously decide on what sequence of steps to execute to accomplish a larger task. :fire:
  - [Tool use is a key design pattern of LLM-based agent](https://www.deeplearning.ai/the-batch/issue-243/) by Andrew Ng (2024) - Tool use, in which an LLM is given functions it can request to call for gathering information, taking action, or manipulating data. :fire:
  - [Introduction to LLM Agents (Part 1)](https://developer.nvidia.com/blog/introduction-to-llm-agents/) by NVIDIA (2023).
  - [Building Your First LLM Agent Application (Part 2)](https://developer.nvidia.com/blog/building-your-first-llm-agent-application/) by NVIDIA (2023).
  - [How 'A.I. Agents' That Roam the Internet Could One Day Replace Workers](https://archive.is/qHvFy)
    
> The project was an early sign that the world’s leading artificial intelligence researchers are transforming chatbots into a new kind of autonomous system called an A.I. agent. These agents can do more than chat. They can use software apps, websites and other online tools, including spreadsheets, online calendars, travel sites and more.
> 
> Today’s agents are limited, and they can’t exactly organize your life. ChatGPT can search the travel site Expedia for flights to New York, but you still have to book the reservation on your own.
> 
> Independent projects such as AutoGPT are trying to take this kind of thing several steps further. The idea is to give the system goals like “create a company” or “make some money.” Then it will look for ways of reaching that goal by asking itself questions and connecting to other internet services.
> 
> **Today, this does not work all that well. Systems like AutoGPT tend to get stuck in endless loops**. But researchers like Dr. Fan are constantly refining this kind of technology in an effort to make it more useful and more reliable.
> 
> a start-up called Adept, are building similar agents that use websites like Wikipedia, Redfin and Craigslist and popular office apps from companies like Salesforce. ([Adept's ACT-1](https://www.adept.ai/blog/act-1))
  
  - 🔥🔥 [What is an agent?](https://blog.langchain.dev/what-is-an-agent/) by Harrison Chase, LangGraph (Jun 2024)

> What does it mean to be agentic? Why is "agentic" a helpful concept?

### Applications

  - Enterprise-scale: [MindsDB](https://github.com/mindsdb/mindsdb)
  - Programming: Devin, GitHub Copilot Workspace, SWE-Agent, Cosine, Plandex
  - Cybersecurity: [Awesome-GPT-Agents](https://github.com/fr0gger/Awesome-GPT-Agents)
  - The "App Store" for GPT (unofficial): [Awesome-GPT-Store](https://github.com/Anil-matcha/Awesome-GPT-Store)

### Development Frameworks

  - [CrewAI](https://github.com/joaomdmoura/crewAI) - Based on LangChain. So, at larger scale project, you might run into LangChain limitations.
  - [Dify](https://github.com/langgenius/dify) - An open-source LLM app development platform. Its intuitive interface combines AI **workflow**, RAG pipeline, **agent capabilities**, model management, observability features and more, letting you quickly go from prototype to production.
  - [Superagent](https://github.com/superagent-ai/superagent) - It allows any developer to add powerful AI assistants to their applications. These assistants use large language models (LLM), retrieval augmented generation (RAG), and generative AI to help users.
  - [Fixie.ai's LLM frameworks](https://github.com/fixie-ai/llm-frameworks) - LLM agent creation and management platforms, either no-code or DIY.
  - LLM framework without LangChain, CrewAI
    - [Instructor](https://github.com/jxnl/instructor)

### Practical aspects of building AI applications

  - Reducing LLM costs and latency with [semantic cache](https://huggingface.co/learn/cookbook/en/semantic_cache_chroma_vector_database) - this can be a solution for speeding up Devin.
    - [GPTCache](https://github.com/zilliztech/GPTCache) is a good library for creating semantic cache for LLM queries
  - Tips: Fast token generation is important. Generating more tokens even from a lower quality LLM can give good results.

### Tweets

  - [Magic.dev is building agents with 99.9% accuracy and frontier model?](https://twitter.com/altryne/status/1776284573443277053)
  - [Raw video of Devin (not a cherry-picked demo)](https://twitter.com/cognition_labs/status/1768341296836391311)

### Reddit Discussions

  - [What is the current state of autonomous agents](https://www.reddit.com/r/LocalLLaMA/comments/1cp07oa/what_is_the_current_state_of_autonomous_agents/)
    
> Auto-regressive models aren't great for any sort of mid/long term planning or actions
>
> Basically all AIs lack autonomy. It's one of their biggest limitations today. No wonder, without on-policy training the model doesn't learn from its own mistakes ...
>
> Current LLMs are not trained to be agents. In fact their fine tuning probably discourages it.
> 
> Definitely has a long way to go. My experience is with autogen and while you can get good results you have to be using a very intelligent model or models and most importantly (imo) with very long context length. I'd argue the toughest part is getting it to terminate as expected because current LLMs don't know how to stfu.
> 
> Very long context and very intelligent model == very slow agent, becoming useless when you can do it faster by hand, especially if it needs hand-holding to finish a task.

### Desktop or web agent

  - Adept.ai, co-founded by David Luan, formerly OpenAI (Dota project, GPT-2).
  - Multion.ai
  - Minion.ai

### News

  - [Google is Finally Doing Agents (video)](https://www.youtube.com/watch?v=ncyiE_oLKz4&t=71s) at Google I/O 2024.

[^1]: https://www.gatesnotes.com/AI-agents
