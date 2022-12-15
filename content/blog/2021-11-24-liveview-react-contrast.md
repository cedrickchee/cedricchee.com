+++
title = "LiveView and React in Contrast"
#description = "This is a showcase post."
date = 2021-11-24T17:08:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["webdev", "react", "liveview"]

[extra]
ToC = false
+++

Hey what's up? I played with [Remix](https://remix.run) shortly after they open-sourced it. I have some fun with webdev after been a while working on backend stuffs.

<!-- more -->

Today I'm writing in response to this Fly.io's blog post, ["How We Got to LiveView](https://fly.io/blog/how-we-got-to-liveview/).
I want to update my view on the two sides of the same coin — different solutions solving the same problem in web development.

## Phoenix LiveView

These paragraphs from the blog post caught my attention:

> LiveView strips away layers of abstraction, because it solves both the client and server in a single abstraction. HTTP almost entirely falls away. No more REST. No more JSON. No GraphQL APIs, controllers, serializers, or resolvers. You just write HTML templates, and a stateful process synchronizes it with the browser, updating it only when needed. And **there's no JavaScript to write.**
> 
> Do you remember when Ruby on Rails was first released?
> 
> How real-time app features got me thinking about **syncing updates, rather than rendering static content**, as the right primitive for connecting app servers to browsers.

**My thoughts:**

Is it time to say goodbye to VDOM or DOM diffing libraries/frameworks like React, Vue.js? I don't know.

So Server-side Rendering (SSR) is back this time for real. But this time it's different. Web dev has come full circle. 

Liveview is unlike the "everything old is new again" takes I've seen. I think Phoenix Liveview is one of the few times in webdev that the tech isn't just **new and cool** but **fundamentally better**. It's the biggest change I've experienced in webdev since Ruby on Rails first announced.

WebSocket protocol is underrated — I didn't spend much time using WebSocket. I have built a project for mobile (WhatsApp) to web video recording and player using WebSocket. I was not interested in WebSocket because I was blinded by its limited use-cases in gaming and chat only. Also, I don't have the skill to deal with the challenges in scaling WebSocket, unlike HTTP/stateless connection.

Loosely, Liveview is bringing back some of the promises of Rails — maintainable codebase, monolithic design.
I don't have much to say about Liveview yet. I only use them in my toy projects.

## Remix, a React Framework Focus on Web Fundamentals

_This is not in any way a comparison between Remix and Liveview._

I just want to contrast them without being critical. We like options.

So, Remix doesn't feel like yet another JavaScript frameworks/libraries in a never ending NPM packages churn.
Remix attempts to address web dev madness (i.e. web bloats, accessibility, speed).

The developer experience (DX) in Remix feels like a cross-over between "Rails in React" — I like how simple all things are and the focus on web fundamentals. A lot of the complexities have gone (surely, they must have shifted somewhere — they are not magic, just things we cannot explain or don't understand yet).

Remix feels lightweight — fast under-the-hood (assets packaging + compilation powered by esbuild!). No more going to coffee break while waiting to run/bootstrap my dev environment. No more shutting down my browser because Webpack will eat all my computer RAM (hell, 2020 linux laptop with 16GB of RAM is not enough?).

Remix cheatcode, err... "nested routes" is nice. They really go all the way with their React Router strenghts. Yay, no more hacking my way around Next.js filesystem routes and some weird way of doing things because of some artificial technical limitations in Next.js.

Last one, Remix is deployment agnostic — upfront they let you choose where you want to deploy to. Next.js make this a tad harder because they lean on Vercel.

That's it. I plan to explore Liveview and if I got the chance. I will write again.
