+++
title = "Getting Better at Elasticsearch and Backend Development in General"
description = "Two short book reviews; Elasticsearch in Action and Effective Kafka."
date = 2021-06-29T16:29:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["database", "backend"]

[extra]
ToC = false
+++

A bit of history. I first learned about search and indexing in 2012. We were using Lucene for indexing
content (specifically journals) for two CMS projects for a Fortune 500 scientific publisher.

I started using Elasticsearch seriously a few years back. Prior to that, I was playing with it casually.
I was building a mini search "engine" in my startup, where we need to index and search a large volume of
high-dimensional and high-resolution (think 10K pixels) of medical images and its meta-data in soft real-time. 
It's one of the two core feature in our product offering where we strive a quick turn-around time from diagnosis to 
physician (doctor) getting back the results to the patients. Back then, we were out to modernized the radiology era
that was stuck in non-digital practices. I knew it's a hard challenge. Although my startup was defunct now,
I'm proud of my achievement.

Loosely speaking, I think there's always more to learn about Elasticsearch (actually applies to every technogies
out there). In my previous works, I know I can barely get away by learning just enough and start solving problem.
Ideally, I tell myself that I can always learn on the job. But in reality, at least in my personal experiences
so far, that never happened.

Since I left my full-time role, I took the chance to properly study things that I promised myself to revisit
one day. And here I'm, learning Elasticsearch! ^_^

I love books. It's underrated. So, I choosed [Elasticsearch in Action](https://www.manning.com/books/elasticsearch-in-action)
for the start. I hope I can get to an effective level by studying and practicing along this book. :)

I'm a few chapters in now. This is a nice and well writen book. I think it has a good balance of theory and practical examples. I would recommend you to pick this book if you don't yet understand Elasticsearch basic terminology such as index, document, mapping, and query DSL. It will be part of my reference material.

Aside from that, I also just started learning Apache Kafka through the [Effective Kafka](https://leanpub.com/effectivekafka) book. I'm quite a Kafka newbie. Kafka and Elasticsearch combo, why not? Actually, I'm experimenting a learning technique - I want to understand connected learning strategy (in similar fashion like spaced learning method).

Just to share, I've written some quick notes below on Elasticsearch for my future self :P

---

This is from Part 1 "Core Elasticsearch Functionality".

## Chapter 2: Diving into the functionality

### How Elasticsearch data is organized

To understand how data is organized in Elasticsearch, we'll look at it from two angles:
- _Logical layout_ — What your search application needs to be aware of.
The unit you'll use for indexing and searching is a document, and you can think of it like a row in a relational database. Documents are grouped into types, which contain documents in a way similar to how tables contain rows. Finally, one or multiple types live in an _index_, the biggest container, similar to a database in the SQL world.
- _Physical layout_ — How Elasticsearch handles your data in the background.
Elasticsearch divides each index into shards, which can migrate between servers that make up a cluster. Typically, applications don't care about this because they work with Elasticsearch in much the same way, whether it's one or more servers. But when you're administering the cluster, you care because the way you configure the physical layout determines its performance, scalability, and availability.

Figure 1 llustrates the two perspectives.

{{ figure(src="es-cluster-from-admin-pov.png",
       style="width: 100%;",
       position="center"
       caption_position="center",
       caption="Figure 1: An Elasticsearch cluster from the application's and administrator's points of view"
       caption_style="font-weight: normal; font-style: normal;") }}

### Understanding the logical layout: documents, types, and indices

When you index a document in Elasticsearch, you put it in a type within an index. You can see this idea in figure 2, where the get-together index contains two types: event and group. Those types contain documents, such as the one labeled 1. The label `1` is that document's ID.

{{ figure(src="es-logical-layout-data.png",
       style="width: 100%;",
       position="center"
       caption_position="center",
       caption="Figure 2 Logical layout of data in Elasticsearch: how an application sees data"
       caption_style="font-weight: normal; font-style: normal;") }}

## Learning Resources

- [The Elasticsearch Handbook](https://elasticsearchbook.com/) - Go pro with step-by-step solutions to 20+ real-world Elasticsearch challenges.
- [Getting Started with Elasticsearch](https://medium.com/expedia-group-tech/getting-started-with-elastic-search-6af62d7df8dd) - For the busy people who prefer to learn the basics of Elasticsearch in a more practical way and just enough theory. This is sort of an abridged version of the [Definitive Guide](https://www.elastic.co/guide/en/elasticsearch/guide/master/index.html).
- [Elasticsearch For Beginners: Indexing your Gmail Inbox](https://github.com/oliver006/elasticsearch-gmail) - Hands-on learning with a simple and real-world scenario.
- [How Discord Indexes Billions of Messages Using Elasticsearch](https://blog.discord.com/how-discord-indexes-billions-of-messages-e3d5e9be866f) - I really enjoy this write-up. Always interested in learning how companies apply a piece of tech to solve their problems.
- [Elasticsearch from the Bottom Up (2013)](https://www.elastic.co/blog/found-elasticsearch-from-the-bottom-up) and [Elasticsearch from the Top Down](https://www.elastic.co/blog/found-elasticsearch-top-down) - We used Lucene (and Solr) back in 2012 for indexing our CMS data (content of scientific journals) written in C#. If I remember correctly, I read these two articles in 2014. The articles introduced me to Elasticsearch, although I didn't use Elasticsearch for any serious projects and I only play with it casually before 2017. But I think what make Elasticsearch concepts sticked with me till this day is due to how I'm being taught by these two articles - the bottom-up and top-down learning style.
- [Beginner's guide to Elasticsearch](https://dev.to/lisahjung/beginner-s-guide-to-elasticsearch-4j2k) - This welcoming guide was by a Developer Advocate at Elastic.
- [Indexing and Querying Telemetry Logs with Lucene](https://blog.palantir.com/indexing-and-querying-telemetry-logs-with-lucene-234c5ce3e5f3) - They reached the limits of Elasticsearch. They shared the lessons learnt from switching over from the Elasticsearch backend to the Lucene backend.
