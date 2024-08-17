+++
title = "What Is Software Engineering?"
description = "3 critical differences between programming and software engineering: time, scale, and the trade-offs at play. Software engineering is programming integrated over time. Programming is about producing code. Software engineering extends that to include the maintenance of that code for its useful life span."
date = 2023-09-09T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["software_engineering", "programming"]

[extra]
ToC = false
+++

I was not formally introduced to software engineering when I was in college. Today I took the opportunity to finally learn the definition of software engineering, which I don't believe can be properly defined after being exposed to it so much in my career. However, I want to put aside my bias and start understanding what is software engineering is really about with the begineer's mind.

So I randomly picked up the [Software Engineering at Google](https://abseil.io/resources/swe-book) book. From the book:

We see three critical differences between programming and software engineering: time, scale, and the trade-offs at play.

We sometimes say, "Software engineering is programming integrated over time."
Programming  is certainly a significant part of software engineering: after all, programming is how you generate new software in the first place.
If you accept this distinction, it also becomes clear that we might need to delineate between programming tasks (development) and software engineering tasks (development, modification, maintenance).
The addition of time adds an important new dimension to programming.
Cubes aren't squares, distance isn't velocity. **Software engineering isn't programming**.

Another way to look at software engineering is to consider scale.
How many people are involved? What part do they play in the development and maintenance over time?
A programming task is often an act of individual creation, but a software engineering task is a team effort.

We can also say that software engineering is different from programming in terms of the complexity of decisions that need to be made and their stakes.
In software engineering, we are regularly forced to evaluate the trade-offs between several paths forward, sometimes with high stakes and often with imperfect value metrics.

### Hyrum's Law

If you are maintaining a  project that is used by other engineers, the most important lesson about "it works" versus "it is maintainable" is what we’ve come to call Hyrum's Law:

> With a sufficient number of users of an API, it does not matter what you promise in the contract: all observable behaviors of your system will be depended on by somebody.

In our experience, this axiom is a dominant factor in any discussion of changing software over time.

## Trade-offs and Costs

If we understand how to program, understand the lifetime  of the software we’re maintaining, and  understand how to maintain  it as we scale up with more engineers producing and maintaining new features, all that is left is to make good decisions. This seems obvious: in software engineering, as in life, good choices lead to good outcomes. However, the ramifications of this observation are easily overlooked.
It is important for there to be a decider for any topic and clear escalation paths when decisions seem to be wrong, but the goal is consensus, not unanimity. It's fine and expected to see some instances of "I don’t agree with your metrics/valuation, but I see how you can come to that conclusion." Inherent in all of this is the idea that there needs to be a reason for everything; "just because," "because I said so," or "because everyone else does it this way" are places where bad decisions lurk. Whenever it is efficient to do so, we should be able to explain our work when deciding between the general costs for two engineering options.

What do we mean by cost?  We are not only talking about dollars here. "Cost" roughly translates to effort.

## Software Engineering Versus Programming

When presented with our distinction between software engineering and programming, you might ask whether there is an inherent value judgement in play. Is programming somehow worse than software engineering? Is a project that is expected to last a decade with a team of hundreds inherently more valuable than one that is useful for only a month and built by two people?

Of course not. Our point is not that software engineering is superior, merely that these represent two different problem domains with distinct constraints, values, and best practices. Rather, the value in pointing out this difference comes from recognizing that some tools are great in one domain but not in the other. You probably don't need to rely on integration tests and Continuous Deployment (CD) practices for a project that will last only a few days.

We believe it is important to differentiate between the related-but-distinct terms "programming" and "software engineering." Much of that difference stems from the management of code over time, the impact of time on scale, and decision making in the face of those ideas. Programming is the immediate act of producing code. Software engineering is the set of policies, practices, and tools that are necessary to make that code useful for as long as it needs to be used and allowing collaboration across a team.

## TL;DRs

- "Software engineering" differs from "programming" in dimensionality: programming is about producing code. Software engineering extends that to include the maintenance of that code for its useful life span.
- Hyrum's Law
- Every task your organization has to do repeatedly should be scalable (linear or better) in terms of human input. Policies are a wonderful tool for making process scalable.
- "Because I said so" is a terrible reason to do things.
- Being data driven is a good start, but in reality, most decisions are based on a mix of data, assumption, precedent, and argument. It's best when objective data makes up the majority of those inputs, but it can rarely be all of them.

Google software engineering practices are commonly known to be data-driven. Overall, I really like the data-driven way this book define software engineering.
