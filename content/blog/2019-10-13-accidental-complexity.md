+++
title = "Accidental Complexity in Software Engineering"
#description = "This is a showcase post."
date = 2019-10-09T12:11:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["software engineering", "webdev", "backend", "frontend"]

[extra]
ToC = false
+++

> No Silver Bullet—Essence and Accident in Software Engineering
> — Fred Brooks

In the 1986 paper called ["No Silver Bullet"](https://en.wikipedia.org/wiki/No_Silver_Bullet), [Fred Brooks](https://en.wikipedia.org/wiki/Fred_Brooks) observed the productivity of programmers.

Brooks argued that in software development, there were two artificial barriers: **accidental complexity** and **essential complexity**.

Accidental complexity is difficulties that software engineers introduce into the design unintentionally.

Essential complexity is the area of complexity that can't be whittled down. Bottom line, essential complexity is unavoidable.

Let's see how this complexity argument manifests for things I did at work.

## The growing complexity of modern software systems

Lately, I have been dealing with the challenges of managing complexity in "modern" software engineering.

It's almost the end of 2019. Looking back, in retrospective as a software engineer, I see the software we created is extremely complex to build and maintain. Example, many websites or web apps are bloated (2 MB just to load a static website?), deployment used to be simple. I wonder how we ended up in this state.

Out of curiosity, I launched myself into research mode and the following is what I've learned.

_Note that this is a non-exhaustive observation. I'm aware this is missing a lot of things, because I **just** want to put it down in writing._

### Complexity of Web Front-end

In a nutshell, UI is difficult to build. But, we're getting better :-)

1. Rich Harris's on ["Rethinking Reactivity, the history and future of reactive programming"](https://www.youtube.com/watch?v=AdNJ3fydeao)
- He delivered the presentation at "You Gotta Love Frontend" - Code Camp 2019 [[slide deck](https://rethinking-reactivity.surge.sh)]
- A refreshing approach to solve this problem space:
  - Reaching out to the "forgoten" power of compiler and language (yeah, wisdoms back in the good ol' days and lessons from computer science).
- Rich created Svelte, a UI framework that compiles your UI components into optimal JavaScript at build time, instead of doing what most frameworks do which is lots of unnecessary work at run time.
- FRAMEWORKS ARE NOT TOOLS FOR ORGANISING YOUR CODE, THEY ARE TOOLS FOR ORGANISING YOUR MIND.

2. Pete Hunt's React talk about ["The Secrets of React's Virtual DOM"](https://youtu.be/-DX3vJiqxm4?t=1955) at FutureJS 2014 conference
- Some inspiring quotes:
  - "The art of programming is the art of organizing complexity, of mastering multitude and avoiding its bastard chaos as effectively as possible." — Edsger Dijkstra
  - "All non-trivial abstractions, to some degree, are leaky." — Joel Spolsky
  - "Simplicity is prerequisite for reliability." — Edsger Dijkstra
  - "What matters for simplicity is that there's no interleaving." - Rich Hickey on definition of simplicity
  - Simple is not equal to familiar
  - "Intellectuals solve problems. Geniuses prevent them." — Albert Einstein, never used data binding <- :lol:
  - "We can create precisely the same programs we're creating right now with drastically simpler tools" — Rich Hickey
  - "Programmers know the value of everything and the cost of nothing." — Alan Perlis
  - "Simplicity is the ultimate sophistication." — Leonardo da Vinci
- In computer science, the **expressive power of a language** is the breadth of ideas that can be represented and communicated in that language. The more expressive a language is, the greater the variety and quality of ideas it can be used to represent.
- Practical expressivity is a measure of ideas expressible **concisely** and readily in a language.
- "Don't trade simplicity for familiarity".

## Complexity of Web Back-end

- "Backends are needlessly complicated." - [Dark](https://darklang.com)
  - According to their founders, "Dark is a holistic programming language, editor, and infrastructure for building backends without [accidental complexity](https://medium.com/darklang/the-design-of-dark-59f5d38e52d2)."
  - My opinion: the idea is good but their execution (and implementation) is not, AFAICT (still waiting for my Beta access). Their idea was inspired by Bret Victor’s work. I get to know about Bret's work when I discovered [Light Table](http://lighttable.com/) in 2013. My mind was blown away by it, but sadly, it doesn't take-off.
- Decisions fatigue
  - Minimalistic library vs. batteries-included framework
  - Convention over configuration
  - Example: should we stick to Ruby on Rails/Django or use Express Node.js for building REST-ful API server?
- Configurations "hell" - solved by zero-config tools (i.e. CRA CLI)
- I hear about a new next generation database every other day (funnily, this used to happen a lot in front-end)

---

Before you go, let's take a moment to reflect with these quotes:

> "If there’s one rule in programming it’s this: there will always be trade-offs."

> "A balancing act".
