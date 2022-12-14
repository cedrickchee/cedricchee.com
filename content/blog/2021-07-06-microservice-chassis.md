+++
title = "Microservice Chassis"
description = "Looking for an easier way to deploy my apps (containerized services) to Kubernetes cluster and learning Dapr."
date = 2021-07-06T23:17:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["microservice", "devops", "kubernetes", "infrastructure"]

[extra]
ToC = false
+++

What is microservice chassis? Is it another buzzword? Honestly, I don't know. That give me a reason to talk about it here.

I came across two microservice chassis in the past several months. I am sure there are a few more out there.

1. [Dapr](https://dapr.io/) is the distributed application runtime. Dapr is an open-source project that provides developers "building blocks" to solve common challenges when building portable, resilient, and scalable distributed applications.

2. [Go Chassis](https://github.com/go-chassis/go-chassis) is a microservice framework for rapid development of micro services in Go with rich eco-system.

I have played with Dapr 1.0+, although not extensively. I will write a bit about Dapr next. I just discovered Go Chassis and I won't write about it in this post.

## Dapr

As a developer, I was looking for an easier way to deploy my applications (containerized services) to my managed Kubernetes cluster, either GKE or EKS. At this point (2020), I remember that the majority ways of deploying stuffs to Kubernetes were designed for Kubernetes Operators and platform builders. Many open source Kubernetes custom resource definitions (CRDs) are too low level (they were designed for deployment by DevOps engineer instead of application developer in mind), unncessary complexity, or immature (not ready for prime time). I didn't choose Knative because our workloads cannot fit well within the serverless pattern that Knative is good at. An example of such challenge is when I started, Knative doesn't support service-to-service networking directly (without going through the proxy like Istio, etc).

As I was tackling these challenges, I encountered Dapr from this [presentation by Mark Russinovich [PDF]](https://docs.dapr.io/presentations/2019IgniteCloudNativeApps.pdf).  Soon after, I also get to know about [OAM (Open App Model)](https://oam.dev/).

To quote the "Learning Dapr" book:

> OAM describes the topology of an application that is comprised of multiple interconnected components. It is concerned with application topology, but not with how individual services are written. Dapr goes to a deeper level and provides a common programming model and the supporting runtime for cloud native applications. At the same time, Dapr can be configured to be used with existing service mesh systems to provide fine-tuned traffic control among services.

This shows how OAM’s logical topology, Dapr routes, and service mesh policies overlay on top of each other.

> The goal of OAM is to give developers a way to describe an application independently of any infrastructural concerns, to give the application operators a way to configure applications to satisfy business needs, and to give the infrastructural operators a way to describe how the desired topology and configuration are realized on a specific platform.

> The combination of OAM and Dapr provides a complete solution for writing platform-agnostic applications—OAM provides the platform-agnostic modeling language, and Dapr provides abstract common APIs for state, service invocation, pub/sub, security, and bindings. At the time of writing, both OAM and Dapr are under active development. It’s expected that more integrations will be introduced in future versions.

The following are some resources that helped me throughout my Dapr learning.

- [Webinar: Dapr, Lego for microservices [video]](https://www.youtube.com/watch?v=qntLqifOl7A) - "Developers building cloud-native applications come across the same challenges – reliable service invocation, state management, event-driven services, and observability to name a few. However, developers should focus on application business logic, not solving distributed application challenges. This session will show you how you can use these Dapr building blocks, and the extensive range of pluggable components, to efficiently build cloud-native applications deployed to Kubernetes and other hosting platforms."
- A collection of [Dapr demos](https://github.com/mchmarny/dapr-demos) - You should check out the [data pipeline microservices](https://github.com/mchmarny/dapr-demos/blob/master/pipeline) solution. It demos combining Twitter binding, sentiment scoring, multi pub/sub processor, and WebSocket wiewer app.
- [Running a Dapr Application on Kubernetes](https://sookocheff.com/post/dapr/running-a-dapr-application-on-kubernetes/)
- [Dapr is service mesh done right](https://go.forrester.com/blogs/dapr-service-mesh-done-right/)
- [The Future of Cloud Native Applications With OAM and DAPR](https://www.hugobarona.com/the-future-of-cloud-native-applications-with-oam-and-dapr/)
- Integrate DAPR workloads into OAM
  - https://www.alibabacloud.com/blog/unified-application-management-architecture-with-oam_596361
  - [How to model a native Istio application using OAM (kubevela)?](https://github.com/oam-dev/kubevela/issues/1122#issuecomment-789512373). [Code + microservices app demo powered by OAM](https://github.com/oam-dev/catalog/tree/master/applications/istio/bookinfo)

What's your hunch? Will Dapr adoption grow in the long run?

That's all I have for this post. Have a nice day ahead...
