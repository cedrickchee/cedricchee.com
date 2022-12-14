+++
title = "When Might Microservices Be a Bad Idea?"
#description = "This is a showcase post."
date = 2020-06-24T12:31:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["systems design", "software design"]

[extra]
ToC = false
+++

# When might microservices be a bad idea?

Well, it's mid of 2020. If you are in the software development field, you should somehow bump into posts and/or discussions that say microservices is an anti-pattern — more services, more pain. As confusing as it is, today, I steal some time from my usual day to try to dissect this topic.

So, I've watch this GOTO 2019 talk by Sam Newman on [monolith decomposition patterns](https://www.youtube.com/watch?v=9I9GdSQ1bbM). It's one of the best talks on the topic I've seen.

## Monolith Decomposition Patterns

- Isolate the data
- Release train
- Horror, pain and suffering
  - Microservices are not the goal — you don't win by doing microservices.
  - It's so silly when people start comparing how many microservices you got.
- Strangler fig applications ("wraps around" existing system)
  - Incremental migration of functionality from one system to another.
- Branch by abstraction
  - Create an abstraction for the functionality to be replaced.
  - You can also learn more by reading "Working Effectively with Legacy Code" book by Michael Feathers.
- Parallel run
  - Rather than calling either the old or the new implementation, instead we call both.
- Decompose the database
  - You can also learn more by reading "Refactoring Databases" book by Scott Ambler and Pramod Sadalage.
- Partitions
  - Split table

---

I've also read a wide-range of posts on this topic to get a better understanding.

The following key takeaways are taken from [InfoQ Podcast](https://www.infoq.com/podcasts/monolith-microservices/):

> - Fundamentally, microservices are distributed systems. Distributed systems have baggage (complexity) that comes along with them. The best way to deal with this complexity is not to address it. Try to solve the problem in other ways before choosing to take an organization to microservices.
>
> - A common issue that large enterprises run into that might be a strong indicator for implementing microservices occurs when lots of developers are working on a given problem and they’re getting in each other’s way.
>
> - A useful structure to follow with microservices is to make sure each service is owned by exactly one team. One team can own more than one service but having clear ownership of who owns a service helps in some of the operational challenges with microservices.
>
> - A release train should be a stop in the journey towards continuous delivery. It’s not the destination. If you find that you can only release in a release train, you are likely building a distributed monolith.
>
> - There are challenges of operating microservices when the end customer has to operate and manage it. These challenges are part of why we’re seeing projects move from microservices to process monoliths.

I think, these takeaways can act as a good summary for the videos, talks, and articles I've seen.

## References

1. [Monolith To Microservices book](https://samnewman.io/books/monolith-to-microservices/) by Sam Newman.
2. [How to break a Monolith into Microservices](https://martinfowler.com/articles/break-monolith-into-microservices.html) article by ThoughtWorks.
