+++
title = "AIE Singapore 2026 Leadership Workshop Recap"
description = "All 10 leadership workshops from AI Engineer Singapore Day 1 — slide notes, key ideas, operational lessons, and what matters next."
date = 2026-05-23T00:00:00Z
#updated = 2025-05-23
#weight = 0
slug = "2026-05-23-aie-sg-leadership-workshop-recap"
#path = "/aie-sg-leadership"
draft = false

[taxonomies]
tags = ["events", "notes", "agentic_ai", "ai_engineering", "llm", "ai"]

[extra]
ToC = false
toc_ignore_pattern = "^(What the Talk Was About|Key Ideas)"
+++

# What Happened on Day 1 (15 May 2026)

Conference: [AI Engineer Singapore 2026](https://www.ai.engineer/singapore)

AI Engineer Singapore’s leadership track was not about AI demos.

It was about what happens after the demos:
how organizations operationalize agents, redesign engineering teams, deploy AI safely at scale, and rebuild workflows around AI-native execution.

Across OpenAI, Cursor, Cognition, Google DeepMind, McKinsey, Vercel, Arize, and frontier startups, the same themes kept appearing:

* agents are becoming workforce primitives
* verification is replacing generation as the bottleneck
* specs matter more than tickets
* enterprise AI is now an operating model problem
* the best teams are redesigning organizations, not just adopting tools

This recap distills the strongest ideas, operational patterns, and recurring themes from all 10 leadership sessions.

All 10 leadership workshops from AI Engineer Singapore Day 1 — slide notes, key ideas, lessons, and the builder-mode interpretation of what matters next.

---

# Agenda - All 10 Talks

| Time            | Session                                                                                                                                                | Company / Speaker           |
| --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------- |
| 8:45-9:00am     | 0) Opening: Welcome to the Leadership Track                                                                                                            | AI Engineer Team            |
| 9:00-9:30am     | [1) Building an AI-Native Startup: Lessons from Belli](#session-1-building-an-ai-native-startup-lessons-from-belli)                                    | Belli, Jeff Pan & Alex Khor |
| 9:30-10:00am    | [2) Deploying AI Coding Agents Inside Modern Engineering Organizations](#session-2-deploying-ai-coding-agents-inside-modern-engineering-organizations) | Cursor, Nick Miller         |
| 10:00-10:30am   | [3) Future Companies and the Software Factory of the Future](#session-3-future-companies-and-the-software-factory-of-the-future)                       | Geoff Huntley               |
| 10:30-11:00am   | Break                                                                                                                                                  |                             |
| 11:00-11:30am   | [4) Turning AI Pilots into Business Impact](#session-4-turning-ai-pilots-into-business-impact)                                                         | OpenAI, Andy Brown          |
| 11:30am-12:00pm | [5) The Next Wave of Applied AI](#session-5-the-next-wave-of-applied-ai)                                                                               | JJ Geewax, Google DeepMind  |
| 12:00-12:30pm   | [6) More Than the Creator of GLM](#session-6-more-than-the-creator-of-glm)                                                                             | Z.ai, Zixuan Li             |
| 12:30-1:30pm    | Lunch                                                                                                                                                  |                             |
| 1:30-2:00pm     | [7) When Everyone Can Build: What AI Changes About Product Teams](#session-7-when-everyone-can-build-what-ai-changes-about-product-teams)              | Vercel, Jimmy Lai           |
| 2:00-2:30pm     | [8) Managing Background Agents as an Engineering Workforce](#session-8-managing-background-agents-as-an-engineering-workforce)                         | Cognition, Ben Lau          |
| 2:30-3:00pm     | [9) Tracing and Evaluating Agents with Arize](#session-9-tracing-and-evaluating-agents-with-arize)                                                     | Arize, Fuad Ali             |
| 3:00-3:30pm     | [10) Beyond AI Tools: Rewiring the Enterprise for AI-Native Delivery](#session-10-beyond-ai-tools-rewiring-the-enterprise-for-ai-native-delivery)      | McKinsey, Aditya Saxena     |
| 3:30-4:00pm     | Break / Networking                                                                                                                                     |                             |
| 4:00-5:00pm     | Peer Discussion & Wrap-Up                                                                                                                              | Facilitated Roundtables     |

[Session Details](#session-details)

---

# What Every Builder Should Leave With

After 10 sessions, several patterns became impossible to ignore.

## 1. The bottleneck has shifted from generation to verification

Nearly every speaker independently converged on the same conclusion:
AI can generate faster than organizations can validate.

Tests, evals, tracing, observability, specs, and review systems are becoming the new production infrastructure.

## 2. Engineers are becoming fleet managers

The role of engineers is shifting from directly writing code toward:

* orchestrating agents
* supervising async execution
* managing specifications
* reviewing generated output
* operating agent fleets

## 3. AI-native companies optimize context, not prompts

The strongest teams spend more time building:

* context systems
* retrieval layers
* internal knowledge infrastructure
* evaluation pipelines

than crafting prompts.

## 4. AI adoption is now an organizational problem

Model capability is no longer the main blocker.

The harder problems are:

* workflow redesign
* governance
* trust
* deployment
* ownership
* operating model change
* organizational incentives

## 5. Singapore is emerging as an AI operating hub

The conference felt less like a satellite event and more like a gathering point for builders actively deploying frontier systems in production.

---

# Every Talk, Decoded

Each section: what the talk about, key ideas, observations, why it matters, and slide notes.

## Session 1 — Building an AI-Native Startup: Lessons from Belli

[Notes](#session-1-building-an-ai-native-startup-lessons-from-belli-1)

Speaker: Jeff Pan & Alex Khor, Belli

{{ figure(src="session_1_jeff_pan_belli.png",
       style="width: 100%;",
       position="center",
       caption_position="center",
       caption="Belli's Jeff Pan presentation slide",
       caption_style="font-weight: normal; font-style: normal;") }}

### What the Talk Was About

Belli shared what operating an AI-native company actually looks like inside a production environment serving airlines and cargo operations.

The talk focused less on prompting tricks and more on organizational plumbing:
context systems, documentation workflows, security, internal operating culture, and forward deployed engineering (FDE).

### Key Ideas

* Context quality matters more than prompt cleverness.
* AI-native execution depends heavily on internal knowledge infrastructure.
* Documentation needs to become machine-readable operational context.
* Security and compliance accelerate enterprise adoption instead of slowing it down.
* AI-native hiring optimizes for leverage and operational fluency.

### Sharp Observations

> “Our prompts are incredibly lazy, but OK since context is set up.”

> “Spend a lot of time on context.”

> “Get your ISO 27001 certifications done before you think you need them.”

### Why It Matters

This was one of the clearest examples of a recurring pattern across the day:

AI-native organizations are fundamentally context-engineering organizations.

The real leverage does not come from magical prompts.
It comes from:

* structured organizational memory
* machine-readable internal systems
* retrieval pipelines
* operational context availability
* workflow integration

### Builder-Mode Read

Multiple talks later reinforced this exact direction:

* Cursor emphasized spec quality
* Google DeepMind emphasized routing + observability
* Arize emphasized tracing
* Cognition emphasized async orchestration

Together, these increasingly resemble operating system problems more than traditional SaaS workflows.

## Session 2 — Deploying AI Coding Agents Inside Modern Engineering Organizations

[Notes](#session-2-deploying-ai-coding-agents-inside-modern-engineering-organisations)

Speaker: Nick Miller, Cursor

{{ figure(src="session_2_nick_miller_cursor.jpg",
       style="width: 100%;",
       position="center",
       caption_position="center",
       caption="Cursor's Nick Miller talk",
       caption_style="font-weight: normal; font-style: normal;") }}

### What the Talk Was About

Cursor framed AI adoption as a transformation in engineering operating models rather than merely a tooling upgrade.

The talk explored how engineering teams are deploying coding agents into real production environments across Asia.

### Key Ideas

* Engineers are becoming fleet managers.
* Specs are replacing tickets as the unit of work.
* Verification becomes more important as generation gets cheaper.
* Async collaboration with agents changes organizational tempo.
* Maintenance becomes ambient infrastructure.

### Sharp Observations

> “The real bottleneck is verification, not generation.”

> “Teams need new operating models for AI-native development.”

### Why It Matters

This theme repeated throughout the conference:

As generation cost trends toward zero, competitive advantage shifts toward:

* review systems
* eval infrastructure
* observability
* organizational trust
* orchestration quality

The constraint is no longer:
“Can AI generate code?”

The constraint is:
“Can your organization safely operationalize autonomous execution?”

### Builder-Mode Read

This is where the “software factory” framing starts becoming real.

Not metaphorically.
Operationally.

Long-running agent systems increasingly require:

* orchestration
* scheduling
* isolation
* context persistence
* monitoring
* verification pipelines

That stack begins looking much closer to distributed systems infrastructure.

## Session 3 — Future Companies and the Software Factory of the Future

[Notes](#session-3-future-companies-and-the-software-factory-of-the-future-1)

Speaker: Geoff Huntley

{{ figure(src="session_3_geoff.jpg",
       style="width: 100%;",
       position="center",
       caption_position="center",
       caption="Geoff Huntley's talk",
       caption_style="font-weight: normal; font-style: normal;") }}

### What the Talk Was About

Geoff Huntley argued that software development economics have fundamentally changed.

The talk focused on:

* token economics
* harness design
* autonomous coding loops
* verification systems
* organizational disruption

### Key Ideas

* Software generation is rapidly commoditizing.
* Harness quality matters more than many people realize.
* Testing and type systems become the new production constraints.
* Open source economics may fundamentally change.
* AI is erasing traditional engineering identity signals.

### Sharp Observations

> “Software development now costs less than minimum wage.”

> “If you have no tests, you are screwed.”

> “Ideas are now execution.”

### Why It Matters

The important shift here is economic.

If autonomous systems continue improving:

* software supply increases dramatically
* implementation cost collapses
* iteration speed accelerates
* verification becomes scarce
* judgment becomes premium

That changes:

* hiring
* org design
* venture economics
* product strategy
* competitive moats

### Builder-Mode Read

One of the strongest ideas in the entire conference:

Removing operational waste may matter more than raw model capability gains.

Organizations with:

* bad processes
* weak architecture
* unclear ownership
* poor testing
* fragmented systems

will struggle even with frontier models.

AI amplifies organizational quality.
It does not replace it.

## Session 4 — Turning AI Pilots into Business Impact

[Notes](#session-4-turning-ai-pilots-into-business-impact-1)

Speaker: Andy Brown, OpenAI

{{ figure(src="session_4_andy_brown_openai.jpg",
       style="width: 100%;",
       position="center",
       caption_position="center",
       caption="OpenAI's Andy Brown talk",
       caption_style="font-weight: normal; font-style: normal;") }}

### What the Talk Was About

OpenAI framed the next phase of enterprise AI as a transition from productivity tooling toward organizational effectiveness and workflow redesign.

The focus was operational adoption at scale.

### Key Ideas

* Intelligence is becoming abundant.
* Deployment is the new bottleneck.
* Leadership adoption determines transformation speed.
* Frontier firms redesign workflows instead of layering AI onto old systems.
* Internal trust accelerates rollout.

### Sharp Observations

> “The productivity era was only a stepping stone.”

> “The new constraint is deployment.”

### Why It Matters

This reframes enterprise AI entirely.

The winning organizations are not:

* buying the most tools
* experimenting the most
* running the most pilots

They are operationalizing intelligence inside real workflows.

### Builder-Mode Read

The strongest AI-native organizations increasingly resemble coordination systems:

* agents
* workflows
* orchestration
* memory
* internal context
* execution infrastructure
* governance

The stack is moving beyond copilots toward organizational operating systems.

## Session 5 — The Next Wave of Applied AI

[Notes](#session-5-the-next-wave-of-applied-ai-1)

Speaker: JJ Geewax, Google DeepMind

{{ figure(src="session_5_jj_geewax_google_deepmind.jpg",
       style="width: 100%;",
       position="center",
       caption_position="center",
       caption="Google Deepmind's JJ Geewax talk",
       caption_style="font-weight: normal; font-style: normal;") }}

### What the Talk Was About

A highly practical discussion about what actually breaks when organizations move from demos into production AI systems.

The session focused heavily on:

* decomposition
* routing
* observability
* evals
* memory
* explainability

### Key Ideas

* Production AI requires deterministic structure.
* One giant system prompt is not maintainable.
* Verifier models often outperform giant prompts.
* Memory is fundamentally a ranking problem.
* Fine-tuning only works with strong data.

### Sharp Observations

> “You cannot explain production decisions if everything lives inside one system prompt.”

> “Weekend projects work. Production systems fail unless they are decomposed and controlled.”

### Why It Matters

This was one of the most operationally mature talks of the day.

The core message:

Production AI is primarily an engineering discipline.

Not a prompting discipline.

### Builder-Mode Read

This maps closely to how distributed systems evolved historically:

* decomposition
* orchestration
* observability
* retries
* routing
* auditing
* reliability engineering

Agent systems are increasingly inheriting the same infrastructure problems.

## Session 6 — More Than the Creator of GLM

[Notes](#session-6-more-than-the-creator-of-glm-1)

Speaker: Zixuan Li, Z.ai

{{ figure(src="session_6_zixuan_li_z_ai.jpg",
       style="width: 100%;",
       position="center",
       caption_position="center",
       caption="Z.ai's Zixuan Li talk",
       caption_style="font-weight: normal; font-style: normal;") }}

### What the Talk Was About

Z.ai positioned open-weight models as a strategic infrastructure layer for enterprise AI adoption.

The session explored:

* open models
* token economics
* AI-native org design
* context contribution
* organizational structure

### Key Ideas

* Open weights enable enterprise trust and deployment flexibility.
* Token consumption should reflect meaningful problem-solving.
* AI-native organizations optimize for context contribution.
* Hierarchy increasingly depends on informational leverage.

### Sharp Observations

> “The right question is not how many tokens were used, but what problems were solved.”

> “If someone cannot contribute useful context, they may not add value in an AI-native setup.”

### Why It Matters

This shifts organizational thinking away from:

* headcount
* role title
* managerial hierarchy

toward:

* context leverage
* problem-solving depth
* decision quality
* information flow

### Builder-Mode Read

One of the more provocative implications:

AI-native organizations may eventually optimize around:

* context topology
* memory systems
* orchestration leverage
* decision velocity

rather than traditional reporting structures.

## Session 7 — When Everyone Can Build: What AI Changes About Product Teams

[Notes](#session-7-when-everyone-can-build-what-ai-changes-about-product-teams-1)

Speaker: Jimmy Lai, Vercel

{{ figure(src="session_7_jimmy_lai_vercel.jpg",
       style="width: 100%;",
       position="center",
       caption_position="center",
       caption="Vercel's Jimmy Lai talk. Cool agentic infra logo!",
       caption_style="font-weight: normal; font-style: normal;") }}

### What the Talk Was About

Jimmy Lai explored how AI changes product development once software generation becomes broadly accessible.

The talk focused on:

* spec quality
* async workflows
* ambient maintenance
* orchestration
* cross-functional product creation

### Key Ideas

* Product creation expands beyond engineering.
* Specs become strategic infrastructure.
* Verification becomes organizationally central.
* Maintenance work becomes increasingly autonomous.
* Judgment becomes more valuable as generation commoditizes.

### Sharp Observations

> “The right abstraction is no longer just a ticket, but a well-written spec.”

> “Generation is cheap. Verification is scarce.”

### Why It Matters

This was effectively a continuation of Cursor and Cognition’s themes:

AI changes the unit of work.

Organizations increasingly optimize around:

* specifications
* orchestration
* delegation
* review systems

rather than direct implementation labor.

### Builder-Mode Read

The rise of “spec factories” may become one of the defining operational shifts of AI-native companies.

The companies that produce:

* better specs
* clearer constraints
* stronger evals
* tighter feedback loops

may outperform organizations with larger engineering teams.

## Session 8 — Managing Background Agents as an Engineering Workforce

[Notes](#session-8-managing-background-agents-as-an-engineering-workforce-1)

Speaker: Ben Lau, Cognition

{{ figure(src="session_8_ben_lau_cognition.jpg",
       style="width: 100%;",
       position="center",
       caption_position="center",
       caption="Cognition' Ben Lau talk",
       caption_style="font-weight: normal; font-style: normal;") }}

### What the Talk Was About

Cognition explored what happens when coding agents evolve from occasional assistants into persistent background workers.

The talk framed engineering organizations as increasingly agent-orchestrated systems.

### Key Ideas

* Engineering throughput becomes backlog-bound rather than headcount-bound.
* Sync and async workflows coexist.
* Verification becomes a tax on scale.
* Maintenance becomes ambient.
* Engineers become orchestrators of autonomous workflows.

### Sharp Observations

> “The spec is the unit of work.”

> “Throughput is backlog-bound, not headcount-bound.”

### Why It Matters

This was one of the clearest articulations of the “agent workforce” model.

The implication is profound:

AI agents increasingly behave less like tools and more like operational labor systems.

### Builder-Mode Read

Once agents become:

* persistent
* parallel
* asynchronous
* orchestrated

you start inheriting workforce-management problems:

* scheduling
* delegation
* review
* accountability
* prioritization
* observability

This is much closer to systems operations than classic IDE tooling.

## Session 9 — Tracing and Evaluating Agents with Arize

[Notes](#session-9-tracing-and-evaluating-agents-with-arize-1)

Speaker: Fuad Ali, Arize

{{ figure(src="session_9_fuad_ali_arize.jpg",
       style="width: 100%;",
       position="center",
       caption_position="center",
       caption="Arize's Fuad Ali talk",
       caption_style="font-weight: normal; font-style: normal;") }}

### What the Talk Was About

Arize focused on production observability for AI systems.

The talk centered around:

* tracing
* evals
* reliability loops
* operational confidence
* production debugging

### Key Ideas

* Observability is mandatory for production AI.
* Evals become operational infrastructure.
* Teams cannot improve systems they cannot inspect.
* Agent systems require continuous measurement loops.

### Sharp Observations

> “You can't fix what you can't see.”

> “If you can't measure it, you can't ship it.”

### Why It Matters

This reinforced one of the strongest recurring conference themes:

Agentic systems require production-grade operational tooling.

The future AI stack increasingly requires:

* traces
* logs
* evals
* replay systems
* monitoring
* governance

### Builder-Mode Read

Traditional software observability stacks are now extending into:

* reasoning traces
* tool-call chains
* memory systems
* multi-agent execution graphs

The infrastructure layer for AI-native systems is still extremely early.

## Session 10 — Beyond AI Tools: Rewiring the Enterprise for AI-Native Delivery

[Notes](#session-10-beyond-ai-tools-rewiring-the-enterprise-for-ai-native-delivery-1)

Speaker: Aditya Saxena, McKinsey & Company

{{ figure(src="session_10_aditya_saxena_mckinsey.jpg",
       style="width: 100%;",
       position="center",
       caption_position="center",
       caption="McKinsey's Aditya Saxena talk",
       caption_style="font-weight: normal; font-style: normal;") }}

### What the Talk Was About

McKinsey focused on the operational reality of deploying AI inside large enterprises.

The core message:
individual productivity gains do not automatically translate into organizational transformation.

### Key Ideas

* Enterprises are bottlenecked organizationally, not technologically.
* AI-native operating models require redesign.
* Governance must integrate directly into execution.
* Legacy architecture slows AI adoption.
* Role ambiguity becomes a scaling problem.

### Sharp Observations

> “AI made individuals faster. Enterprises did not become faster.”

### Why It Matters

This may have been the most important enterprise insight of the day.

Organizations often mistake:

* local productivity gains
  for
* organizational transformation

Those are not the same thing.

### Builder-Mode Read

Enterprise AI transformation increasingly looks like organizational rewiring:

* workflows
* incentives
* architecture
* governance
* review systems
* role definitions
* operational metrics

The technical layer is only one part of the problem.

---

# Notes

## Session 1 - Building an AI-Native Startup: Lessons from Belli

Speaker: Jeff Pan and Alex Khor, Belli

### Theme
- Poop in Paris
- Building: About Belli
- Infra: Context (plumbing)
- People: AI Operating System

### Highlights
- Poop in Paris
  - We're going to talk about the unsexy bits today
- About Belli
  - Jeff Pan is the founder of Belli, a VC-backed startup building cargo software for airlines like Etihad and Emirates.
  - We do forward deployed engineering (FDE) with airlines
    - Cargo softwares
  - Palantir coined FDE
  - FDE playbook
- Context (plumbing)
  - Our prompts are incredibly lazy, but ok since context is set up
  - Spend a lot of time on context
  - A cargo knowledge base gives AI a directory of context
    - Cargo Knowledge Base in a GitHub repo
  - We optimize our context to be read by agents
    - Skills for automating docs updates for example when you pushed PR
      - Reinforcing culture of writing docs
        - It's not easy to get people to update docs
    - Double down on niche industry (not engineering) context
  - Our first 24 hours is building offline context
  - Design systems help create branded UI from lazy prompts
    - Lesson: they switched from Figma to Paper
    - Examples: Etihad Cargo
  - v1 data extraction helps with the scariest part (migrations)
    - Jeff remember working at Palantir (these psychopaths) create 30 drag-and-drop data connector for moving data into Excel.
  - Own the cybersec & AI framework
    - Unlock acceleration of teams
    - Get your ISO 27001 certifications done before you think you need them. It’s allowed us to bypass a lot of IT (compliance) speed bumps.
- AI Operating System
  - Here are the AI screening questions we ask (wpm, tlprt)
    - monkeytype
    - A signal; easy to pick outliers
  - Use negative keywords & positive keywords for filtering
  - Hiring - the three screening questions
  - Don't contaminate your internal data source
  - All 20 employees have access to each other's emails
- Q&A

## Session 2 - Deploying AI Coding Agents Inside Modern Engineering Organisations

Speaker: Nick Miller, Cursor, Field Engineer

### Themes
- AI maturity curve for engineering orgs at scale
- Cloud agents
- Agents are changing engineering from individual coding to managing a  
fleet of systems and workflows.  
- The speaker frames AI as a shift in team operating model, not just a  
tooling upgrade.  
- Verification, testing, and spec quality become more important as  
generation gets cheaper.  
- Maintenance becomes ambient, with agents handling more repetitive upkeep.
- What is an AI software factory
  - Mini "factory"
  - The cookbook
  - Building the factory

### Highlights
- Model + harness getting better and better - emerging factory concept
- Shifts:
  - ~~ICs~~ Agent managers
  - ~~Coding~~ Reviews
  - ~~Babysit~~ multitask
    - Agent can manage other agents
    - Agent running longer and longer of time
- Engineers are becoming fleet managers, not just code writers.
- Specs matter more because agents need clear direction and boundaries.  
- The real bottleneck is verification, not generation.
- Backlogs matter less than the kind of work being assigned.
- Teams should expect more async collaboration with AI agents.
- Maintenance should be automated into the workflow instead of treated  
as a separate burden.

### Takeaways
- Teams need new operating models for AI-native development.  
- Good specs, tests, and observability are now core infrastructure.  
- AI raises the value of judgment, review, and coordination.

## Session 3 - Future Companies and the Software Factory of the Future

Speaker: Geoff Huntley, independent

### Themes
- The speaker argues that software development has been fundamentally commoditized by agents and automation.
- The economics of building software have changed, with token efficiency, harness choice, and model selection now mattering a lot.
- tokenmaxxing
  - The profession is splitting between people who adapt to AI and people who do not.
- Verification, tests, and type systems are becoming the real limits on autonomous workflows.
- AI is forcing changes in hiring, languages, open source, and enterprise organization design.

### Highlights
- We're changing the structure how society works
- Claude Code is inefficient on token consumption, and the harness matters more than people think.
- Everyone is now effectively a software developer, even if they are not an engineer.
- [**Software development now costs less than minimum wage**](https://ghuntley.com/real/) when agents run in loops.
- Quoting Geoff's [blog post](https://ghuntley.com/play/):

  > "in the circles around me, the people who are getting the most out of AI have put in deliberate, intentional practice"
- Why does someone need to raise a large amount of capital if it's just five man show now?
- If people still have not had their “oh fuck” moment after two years, they are behind.
- The bottom of the org is in a people transformation program, while the top is already benefiting from AI.
- Teams should stop hiring on legacy identity signals and focus on engineering capability.
- The real bottleneck is verification, not generation.  
- If you have no tests, you are screwed.
- Compiler feedback and strong type systems create useful back pressure against hallucination.
- Open source is less attractive when you can generate first-party code and own the supply chain.
- Is software still investable?
- **Removing waste from your systems and process is bigger accelerator than AI.**
- SAP Concur org chart - why would you transform 6800 employees? (more: [https://ghuntley.com/ngmi/](https://ghuntley.com/ngmi/))
- Software engineers - get them to build a coding agent! (more: [https://ghuntley.com/agent/](https://ghuntley.com/agent/))
- Ideas are everything now, ideas are now execution...
- Erasure of identity functions
- Beware of the Simon Willison's lethal trifecta; this is not solved.
- Programming languages are now fungible
  - [https://cursed-lang.org/](https://cursed-lang.org/)
  - On getting back into Haskell, formal specification
- Software factory
  - compiler feedback vs human feedback (graph)
  - type system

  Mindset - min times connect to your agents

  (analogy: in data center without monitor - when problem happened, you push a crash cart)
- What is even the point of open source more?

### Takeaways
- AI shifts software from labor scarcity to knowledge abundance.
- Companies need to rethink org design, hiring, and business economics around agents.
- Durable advantage comes from practice, taste, tooling, and systems that constrain bad output.

## Session 4 - Turning AI Pilots into Business Impact

Speaker: Andy Brown, OpenAI, Head of GTM APAC

### Themes
- AI adoption is moving fast - recent released a report.
- 1) AI is a leadership priority, 2) Impact of AI is real, 3) Closing the capability gap.
- OpenAI frames the moment as a shift from productivity tooling to effectiveness and workflow redesign.
- The speaker argues that consumer adoption is accelerating enterprise adoption.
- Frontier firms are pulling ahead by embedding AI deeply into core workflows, not just giving employees access.
- The important gap is no longer model capability, it is organizational deployment and execution.
- Case studies
  - Internal use cases show AI changing finance, engineering, customer workflows, and decision-making.

### Highlights
- OpenAI is an enterprise company, not just a consumer company.
- Intelligence is abundant now, the new constraint is deployment.
- Shifts:
  - Productivity era: the productivity era was only a stepping stone.
    - Access
    - Save time
    - Reduce manual work
  - Effectiveness era: the next phase is redesigning workflows for measurable impact.
    - A Chief of Staff agent should help you be more effective, not just faster.
- Recursive self-learning and sub-agents make AI systems materially better.
- Broad access and executive buy-in are major reasons companies move beyond pilots.
- If leaders do not use the tools themselves, transformation stalls.
- Frontier firms use AI across customer ops, engineering, support, sales, and decision-making.
- OpenAI wants to build connective tissue across enterprise systems through its frontier platform.
- 2 practical tips: with Codex, you can just build things! You don't need to be engineer.

### Takeaways
- The companies that win are operationalizing AI inside real workflows.
- Adoption spreads faster when people already trust the tools personally.
- The biggest gains come from embedding intelligence into the business, not layering it on top.

## Session 5 - The Next Wave of Applied AI

Speaker: JJ Geewax, Google Deepmind

No slides. Just Q&A-style presentation.

### Themes
- Strategies, strategies, strategies.
- Applied AI is about helping teams stretch model capabilities in real production settings, not just demos.
- Robust agentic systems need decomposition, deterministic routing, logging, and evaluation to work in production.
- Memory, retrieval, and ranking are hard problems, not solved defaults.
- Fine-tuning should be reserved for cases with strong data and a clear target behavior.
- Explainability becomes a design requirement when the output must be auditable.
- Adoption depends on people trying the tools, not just hearing about them.

### Highlights
- Google called it Applied AI, other people called it Forward Deployed Enginer (FDE).
- No model is permanent, so keep your framework model-agnostic -- use tools that route to models.
- The gap is not just model capability, it is how far organizations can push it in practice.
- Weekend projects work, but production systems fail unless they are decomposed and controlled.
  - Break problems into deterministic pieces, then stitch them back together.
- Do not shove all logic into the system prompt. You cannot explain production decisions if everything lives inside one system prompt.
- Evals are necessary to know whether the system is good enough.
- A verifier model or classifier is often better than trying to make one giant prompt do everything.
- Use deterministic routing and logging so decisions can be explained later. Use tool calls and logs so you can audit what happened later.
- Output filters and verifier models are useful for safety and wisdom checks. Safety, wisdom, and output control can be handled with classifiers, verifiers, and routing layers.
- Memory is a consolidation plus ranking and summarization problem, not a solved problem.
  - Retrieval and memory are hard because context determines what matters.
- Fine-tuning makes sense only when you have good training data (the data quality is high) and a specific target.
- Sometimes company need to pause:
  - And tell everyone in the company, you don't have any deliverables.
  - Teams should try the tools and lower the fear barrier.
- Adoption improves when people are allowed to experiment without pressure.

### Takeaways
- Production AI is mostly an engineering discipline about control, observability, routing, and trust.
- Fine-tuning should be used selectively, not by default.
- Retrieval, memory, and fine-tuning are all useful, but only with clear constraints and data.
- The best way to drive adoption is hands-on exposure and low-stakes experimentation. Teams adopt faster when they get time and permission to experiment.

## Session 6 - More Than the Creator of GLM

Speaker: Zixuan Li, Z.ai

### Themes
- GLM paper, Jie Tang, Zhilin et. al
- GLM is positioned as a broad frontier model platform, not just a coding model.
- Why open weights? Open weights are framed as a strategic choice for security, diversity, and ecosystem adoption.
- Token consumption scale
  - Token consumption is treated as a mindset for finding harder problems, not a vanity metric.
- Intelligence is framed as a trend and capability frontier, not just benchmark performance. 
- AI-native org -- common misconceptions. A diff way to understand.
  AI-native organizations are defined by context contribution, layered information flow, and problem-solving scale.

### Highlights
- GLM started from research and became both a model and a brand.  
- Open weights matter because enterprises want security, control, and local deployment.
- Fine-tuning and model adaptation expand model diversity and usefulness.  
- The right question is not how many tokens were used, but what problems were solved.
- Token consumption should signal deeper work, more rigorous evaluation, and faster experimentation.
- Intelligence is a moving target, not a static score.
- AI-native organizations are about how people contribute context to AI systems.
- If someone cannot contribute useful context, they may not add value in an AI-native setup.
- Hierarchy only makes sense when there are true layers of context and access.
- Organizations should measure problems solved with AI, not token leaderboards.
- More capabilities are coming
  - Security
  - Legal
  - Investment banking
  - Consulting
  - Also into the physical world

### Takeaways
- The talk is a strategy argument for open weights, broader model use, and AI-native org design.
- The speaker treats context, hierarchy, and token use as organizational design questions.
- The core message is to solve more meaningful problems, not merely consume more tokens.

**Sources:**
- https://z.ai/blog/glm-5.1

## Session 7 - When Everyone Can Build: What AI Changes About Product Teams

Speaker: Jimmy Lai, Vercel, Head of Next.js

### Themes
- Engineering teams are shifting from writing code to managing fleets of agents.
- AI changes the unit of work from ticket-sized tasks to larger specs and outcomes.
- Synchronous and asynchronous workflows now coexist, and teams need both.
- Verification is the major bottleneck once generation gets cheap.
- Maintenance and remediation work are becoming more ambient and continuously triggered.

### Highlights
- Engineers are becoming fleet managers, not just individual contributors.  
- Long-running agents can work while humans sleep, which changes team operating models.
- The right abstraction is no longer just a ticket, but a well-written spec.
- Industrializing spec production is becoming a competitive advantage.
- The backlog size matters less than the kind of work and how repeatable it is.
- Generation is cheap, verification is the scarce part.
- Teams need to own testing instead of handing it off.
- Maintenance work like CVEs and CI issues is moving from reactive to ambient.
- Senior judgment becomes more important when agents handle the routine work.
- Humans still own accountability, and AI should be used to empower them, not replace them.

### Takeaways
- AI pushes engineering toward orchestration, specification, and verification.
- Teams that adapt their operating model will move faster without sacrificing reliability.
- The best engineers will combine judgment, delegation, and systems thinking.

Twitter: @FeedTheJim

## Session 8 - Managing Background Agents as an Engineering Workforce

Speaker: Ben Lau, Cognition

### Themes
- From writing code to runnning a fleet.
- The compounding shift
  - Model capability
  - Task horizon
  - Parallelism
- Principles

  What it looks like when an engineering team runs on agents.
- The role shift.

### Highlights
- From writing migrations to building the system that runs them.
- Principles:

  1. Fleet manager
     
     Engineering teams are shifting from writing code to managing fleets of agents.
  2. Sync vs async
  
     Sync and async workflows now coexist, and teams need both.
  3. The spec is the unit of work
  
     AI changes the unit of work from ticket-sized tasks to larger specs and outcomes.
  4. Parallelization
  
     Throughput is backlog-bound, not headcount-bound.
  5. The verifcation tax
  
     Verification is the major bottleneck once generation gets cheap.
  6. Ambient maintenance

     Maintenance and remediation work are becoming more ambient and continuously triggered.

## Session 9 - Tracing and Evaluating Agents with Arize

Speaker: Fuad Ali, Product at Arize

### Themes
- How leading AI teams ship agents to production with confidence
- The stakes, tracing, evals, the loop, the roi, getting started
- Tracing, in production
- Arize is the AI engineering platform

### Highlights
- You can't fix what you can't see.
- What good tracing delivers.
- If you can't measure it, you can't ship it.
- What evals deliver
- Arize Skills: the platform, for coding agents
- Nine skills. One platform-awareness agent.
- What this unlocks for your team.
- Three things to take home.

## Session 10 - Beyond AI Tools: Rewiring the Enterprise for AI-Native Delivery

Speaker: Aditya Saxena, McKinsey & Company

### Themes
- AI is changing software work now, and teams need to adapt quickly rather than wait.
- The 5 key enterprise AI adoption bottlenecks.
- Case study of scaling productivity in top 10 tech company

### Highlights
- Impact of AI on individual developer tasks is large
  - Speed of code reviews - up 7x (GitHub Copilot)
  - Speed of code refactors and prototyping - up 2-5x (Cursor at Monday.com)
  - Speed of ETL platform migration - up 12x (Devin at Nubank)
  - Speed of unit test development - up 7x (Cursor at Salesforce)
- AI made individuals faster. Enterprises did not become faster.
- The 5 key enterprise AI adoption bottlenecks:
  
  1. Workflow fragmentation
  2. Legacy architecture & technical debt
  3. Governance disconnected from execution
  4. Role ambiguity in AI-enabled teams
  5. No measurable operating model shift

- Rewiring 100+ teams
- Besides adopting tool what needs to shift?
  - Operating model: AI native workflows
    - Visualizing operating models
  - Talent: AI-native roles
    - Top-performers are creating new AI-native roles

### Takeaways
- Redesign teams and operating models now - change takes time
- Expect 3-5 models for different workflows - it's not one size fits all
- Set a bold ambition - define specific targets to chase
- Learn from AI-native leaders

---

# Session Details

### #0 - Opening: Welcome to the Leadership Track

8:45-9:00am

Host: AI Engineer Team

The AI Engineer team will open the Leadership Track with a framing for the day:
how organizations are moving from AI experimentation into real production
adoption. The track will move across implementation stories, product and lab
perspectives, operating topics such as evals, and interactive peer discussion.

Attendees will be invited to share the questions, blockers, and pain points they
want to work through during the day, helping shape peer connections and the
closing discussion.

### #1 - Building an AI-Native Startup: Lessons from Belli

9:00-9:30am

Company: Belli

Speaker: Jeff Pan & Alex Khor

Jeff Pan shares lessons from building Belli as an AI-native company, including
the workflows, hiring approaches, and operating principles that helped the team
move faster, as well as the experiments that failed along the way.

Drawing from both startup execution and enterprise deployments in the airline
industry, this session explores what it takes to move from AI pilots to
production: gaining internal buy-in, navigating operational resistance, and
deciding which initiatives to scale, rethink, or shut down.

### #2 - Deploying AI Coding Agents Inside Modern Engineering Organizations

9:30-10:00am

Company: Cursor

Speaker: Nick Miller, Founding Field Engineer

Nick Miller shares lessons from engineering organizations across Asia that are
adopting Cursor and AI-native development workflows at scale.

The session explores how teams are rolling out coding agents into production
environments, where adoption tends to break down, and the operating patterns
emerging inside successful AI-native teams. Topics include context engineering
for large codebases, evolving code review workflows, agent reliability, and why
effective adoption often starts bottom-up with engineers before spreading
organization-wide.

### #3 - Future Companies and the Software Factory of the Future

10:00-10:30am

Company: Independent

Speaker: Geoff Huntley

### #4 - How Leaders Identify AI Use Cases and Roll Them Out at Scale

11:00-11:30am

Company: OpenAI

Speaker: Andy Brown, Head of Go-to-Market, APAC

As AI capabilities shift from yearly leaps to monthly changes, leaders need more
than demos. They need a practical rollout strategy.

Andy Brown shares how organizations are identifying high-impact use cases,
building internal adoption, and rethinking product and operating rhythms around
faster AI-enabled execution. The session looks at what separates stalled pilots
from AI programs that reshape workflows across teams, functions, and business
units.

### #5 - The Next Wave of Applied AI

11:30am-12:00pm

Company: Google DeepMind

Speaker: JJ Geewax

Google DeepMind will share a perspective on where applied AI is moving next as
frontier models become more capable, multimodal, and agentic.

The session will explore how new capabilities are changing what teams can build:
systems that reason across longer contexts, work with richer inputs, take
action across tools, and adapt to more complex user workflows.

### #6 - Why Open Models Matter for AI Adoption

12:00-12:30pm

Company: Z.ai

Speaker: Zixuan Li, Head of Z.ai

Zixuan Li introduces Z.ai’s work and the broader role of open models in
real-world AI adoption within companies.

For leaders more familiar with closed model providers such as OpenAI and Google,
this session explains where open models fit, what tradeoffs they create, and
why they are becoming an important part of real-world AI implementation
strategies.

### #7 - When Everyone Can Build: What AI Changes About Product Teams

1:30-2:00pm

Company: Vercel

Speaker: Jimmy Lai, Head of Next.js

Jimmy Lai explores how AI is changing the way organizations build software, not
just by making engineers faster, but by expanding who can participate in
product creation.

As tools like v0 make it easier to turn ideas into working interfaces, product,
design, and engineering teams need to rethink how they evaluate ideas,
prototype workflows, and decide what should become production software.

### #8 - Managing Background Agents as an Engineering Workforce

2:00-2:30pm

Company: Cognition

Speaker: Ben Lau

What changes when AI agents stop being occasional coding assistants and become
persistent cloud workers?

Drawing on Devin’s evolution and enterprise deployments with Goldman Sachs,
Santander, and Nubank, Cognition will share how background agents reshape
engineering management: how teams delegate work, supervise progress, review
outputs, schedule recurring tasks, and decide what should run asynchronously.

### #9 - Tracing and Evaluating Agents with Arize

2:30-3:00pm

Company: Arize

Speaker: Fuad Ali

As AI systems and agents move into production, evaluation becomes critical to
sustainable adoption.

Arize will share how teams move beyond one-off prompt tests toward continuous
measurement, reliability tracking, feedback loops, and operational
decision-making.

### #10 - Beyond AI Tools: Rewiring the Enterprise for AI-Native Delivery

3:00-3:30pm

Company: McKinsey & Company

Speaker: Aditya Saxena

A real-world case study on deploying AI systems inside large organizations
operating in highly regulated environments.

This session will examine the operational, organizational, and governance
challenges that emerge when moving AI initiatives from experimentation into
production at enterprise scale.

### Peer Discussion & Wrap-Up

4:00-5:00pm

Format: Facilitated roundtables

Attendees will break into facilitated roundtables to reflect on the day’s key
ideas, compare problem statements, and share what is working inside their own
organizations.

This closing session is designed as a peer-to-peer exchange: a chance to turn
the talks into practical next steps, hear how other leaders are approaching
similar challenges, and close with a short wrap-up from the AI Engineer team.

---

## Let's Learn Together!

Days before AIE Singapore, I shared about [the leadership topics I care most](https://www.linkedin.com/posts/cedricchee_the-summer-of-ai-is-in-full-swing-in-singapore-activity-7460170533490352128-v9q0).

I want to learn from the best AI builders from around the world.

Feel free to reach out to me.
