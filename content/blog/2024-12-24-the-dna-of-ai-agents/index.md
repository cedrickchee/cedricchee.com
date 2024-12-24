+++
title = "The DNA of AI Agents: Common Patterns in Recent Design Principles"
description = "Decoding the agent architecture, the patterns that actually work and will shape the future of agents."
date = 2024-12-24T07:50:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["agentic_ai", "ai_engineering", "llm", "ai"]

[extra]
ToC = true
+++

This is a comparative analysis of AI agent design principles.

## AI Engineering

I'm reading Chip Huyen's newly published book ["AI Engineering: Building Applications with Foundation Models"](https://www.goodreads.com/book/show/222254966-ai-engineering). I have been looking forward to reading the "Agents" chapter. The section discussing the concept of decoupling planning and execution in multi-agent systems is particularly well written. Here is how I understand them:

**1. Decoupling for Validation:**

*   The core idea is to separate the process into distinct components: a **Planner**, an **Evaluator**, and an **Executor**.
*   The **Planner** generates a plan based on the user's query.
*   The **Evaluator** validates the generated plan.
*   The **Executor** only executes plans that have been validated, ensuring that only sound plans are carried out.

**2. Multi-Agent System:**

*   Each component (Planner, Evaluator, Executor) can be considered an independent **agent**, making the system a **multi-agent** system.

**3. Parallel Processing for Speed:**

*   To improve speed, multiple plans can be generated and evaluated **in parallel**. This introduces a latency/cost trade-off, as generating more plans simultaneously can lead to higher costs.

**4. Intent Classification:**

*   Understanding the user's **intent** is crucial for effective planning.
*   **Intent classification**, as described in the "Break Complex Tasks into Simpler Subtasks" section (mentioned as being on page 224), can be used to help the agent understand what the user wants to achieve.
*   This intent classification mechanism can itself be considered another agent within the multi-agent system.

**5. Example Scenarios:**

*   The text provides examples of how knowing the intent can guide the agent's actions:
    *   **Billing intent:** The agent might need to access a tool to retrieve recent payments.
    *   **Password reset intent:** The agent might need to access documentation retrieval tools.

**6. Agent Tool Use:**

*   The diagram implies agents can interact with tools and use the tools output to complete the task.

In essence, the page highlights a design pattern for building robust and efficient AI systems by decomposing the task into specialized agents, enabling parallel processing, and emphasizing the importance of intent understanding for effective planning.

---

## Building Effective Agents

Last week, just days after reading Huyen's book, Anthropic published an outstanding [research article](https://www.anthropic.com/research/building-effective-agents) that provides clear definitions of agents and best practices for building with them. While I've previously shared my thoughts about this article on [LinkedIn](https://www.linkedin.com/posts/cedricchee_building-effective-agents-activity-7275760464586854401-f9ae), I won't revisit those observations here. Instead, I want to examine how Huyen's framework for agents aligns with Anthropic's perspectives.

## What Is The Connections Between The Two?

The Anthropic publication and Chip Huyen's book share a common thread: they both discuss the design and implementation of agentic systems using large language models (LLMs). Here's a breakdown of the connections:

**1. Agent Architectures and Workflows:**

*   **Anthropic's "Workflows" and "Agents"**: Anthropic distinguishes between "workflows" (predefined code paths) and "agents" (LLMs dynamically directing processes).
*   **Huyen's "Decoupling Planning and Execution"**: This aligns with Anthropic's "agents" concept. Huyen's Planner, Evaluator, and Executor agents dynamically interact, similar to how Anthropic describes agents dynamically using tools and directing their processes.

**2. Foundational Building Blocks:**

*   **Anthropic's "Augmented LLM"**: Anthropic highlights the importance of an LLM augmented with retrieval, tools, and memory as the basic building block.
*   **Huyen's Diagram (Figure 6-9)**: The diagram implicitly assumes the agents have access to "Tools" and can generate "Tool outputs," echoing the idea of an augmented LLM.

**3. Workflow Patterns:**

Both sources describe common workflow patterns:

*   **Prompt Chaining (Anthropic) = Sequential Processing (Implied in Huyen):** Anthropic's prompt chaining, where one LLM call processes the output of the previous one, is conceptually similar to the sequential flow in Huyen's diagram (Query -> Planner -> Generated Plan -> Evaluator).
*   **Routing (Anthropic) = Intent Classification (Huyen):** Anthropic's routing, where inputs are classified and directed to specialized tasks, mirrors Huyen's emphasis on intent classification to guide the agent's actions.
*   **Parallelization (Anthropic) = Parallel Plan Generation (Huyen):** Both sources discuss the benefits of parallel processing. Anthropic's "sectioning" and "voting" relate to Huyen's suggestion of generating multiple plans in parallel for speed and evaluating them concurrently.
*   **Orchestrator-Workers (Anthropic):** This pattern, where a central LLM delegates tasks, aligns with the broader concept of a multi-agent system in Huyen's book, where multiple agents (potentially with specialized roles like the orchestrator and workers) collaborate.
*   **Evaluator-Optimizer (Anthropic):** This workflow, involving iterative refinement based on evaluation, is directly mirrored in the relationship between Huyen's Planner and Evaluator agents.

**4. Importance of Simplicity and Iteration:**

*   **Anthropic's Emphasis on Simplicity**: Anthropic advocates for starting with simple solutions and increasing complexity only when needed.
*   **Huyen's Focus on Validation**: Huyen's decoupled design, especially the Evaluator's role, emphasizes a form of simplicity by ensuring that only validated plans are executed, preventing unnecessary complexity from unvetted plans.

**5. Tool Use and Documentation:**

*   **Anthropic's Appendix 2**: This section is dedicated to "prompt engineering your tools," emphasizing the importance of well-designed tools for agent success.
*   **Huyen's Diagram and Text**: The diagram shows "Tools" as a crucial component, and the text mentions agents needing access to tools for specific tasks (e.g., retrieving payments). This underscores the shared understanding of tools as essential for agent functionality.

**6. Agents for open ended problems:**

*   **Anthropic** states that Agents can be used for open-ended problems where it’s difficult or impossible to predict the required number of steps, and where you can’t hardcode a fixed path.
*   **Huyen's** diagram shows the flexibility of Agents to go to different paths depending on the output of the previous step.

**TL;DR:** both sources converge on the idea that effective agentic systems are built upon well-defined workflows, often leveraging multiple specialized agents, with a strong emphasis on clear tool design, and iterative refinement. **Anthropic's publication provides a practical, industry-focused perspective**, while **Huyen's book offers a more conceptual framework for understanding these systems**. The alignment between the two strongly suggests these principles are becoming best practices in the field of AI agent design.

## How Well The Two Align?

The two sources, Anthropic's publication and Chip Huyen's book, align **remarkably well**. The connections are **strong and consistent**, demonstrating a shared understanding of the fundamental principles of designing and building agentic systems with LLMs.

Why the alignment is strong:

1. **Shared Core Concepts:** Both sources agree on the core concepts of:
    *   **Decomposing complex tasks into smaller, manageable units.**
    *   **Utilizing specialized agents (or components) for different parts of the process.**
    *   **The importance of workflows, whether predefined or dynamically generated.**
    *   **The crucial role of tools in extending agent capabilities.**
    *   **The need for evaluation and iteration to improve performance.**

2. **Mirroring Workflow Patterns:** The workflow patterns described by Anthropic are either directly analogous to or conceptually consistent with the design principles presented in Huyen's book. This strong correspondence suggests these patterns are not just isolated ideas but are becoming established practices in the field.

3. **Emphasis on Practicality:** Both emphasize starting simple and adding complexity only when justified. This practical approach, grounded in real-world experience, further strengthens the alignment.

4. **Consistent Terminology (Implicitly):** While the exact terminology might differ slightly (e.g., "workflows" vs. "decoupled planning and execution"), the underlying concepts are clearly the same.

5. **Focus on Agent-Computer Interaction:** Both sources highlight the importance of well-designed tools and the interaction between agents and external systems. Anthropic's detailed discussion on "prompt engineering your tools" directly complements the implicit importance of tools in Huyen's framework.

## Conclusion

The strong alignment between these two sources indicates a convergence of thought within the field of AI agent development. It suggests that **the principles and patterns discussed are not just theoretical ideas but are being actively applied and validated in practice.** This convergence strengthens the credibility and relevance of the concepts presented in both sources.
