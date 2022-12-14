+++
title = 'Dynamic Websites - "Everything old is new again"'
#description = "This is a showcase post."
date = 2020-05-07T12:56:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["webdev", "react", "javascript"]

[extra]
ToC = false
+++

I'll start with a little bit of background.

So, I've developed several Single Page Applications (SPAs) using JavaScript over many years. These are a few picks of "large" JavaScript apps in production:
- Pseudo 3D mobile racing game - build with Phaser framework
- Hybrid mobile app - build with Apache Cordova (was PhoneGap) and jQuery
- Integrated DICOM medical images viewer with accelerated anomaly detection backed by deep learning - build with React and Electron

I've also developed MVC web applications using RoR or Node.js. The view layer (UI) is server rendered.

Being on both sides, one of the pain point of developing SPAs using JavaScript library like React or Vue.js is, it is difficult to have good SEO if you are using client-side rendering (CSR) in React for your public facing website (like marketing site, blog, documentation site, content-heavy site like news and media). Yes, I am aware that [Googlebot (web crawler) processes JavaScript](https://developers.google.com/search/docs/guides/javascript-seo-basics#how-googlebot-processes-javascript).

[There are a number of different ways to build a website](https://developers.google.com/web/updates/2019/02/rendering-on-the-web). To solve this pain point (along with other problems with CSR), we use different techniques like Server-side rendering (SSR), prerendering, and so on.

To get the best from both worlds, I pick Next.js for some problems. Next.js is the React framework. Next.js render the HTML for a page on the server in response to navigation. Next.js is in the category of SSR with rehydration. Rehydration is "booting up" JavaScript views on the client such that they reuse the server-rendered HTML's DOM tree and data.

It's hard to get [React SSR](https://reactjs.org/docs/react-dom-server.html) to work properly. This is where we see different React frameworks come into play.

In the same category of frameworks like Next.js is [Remix](https://remix.run/) (Cool site! And one more thing, it's designed for [Web Accessibility](https://www.w3.org/WAI/fundamentals/accessibility-intro/)).

> Finally, a killer React framework from the creators of [React Router](https://reacttraining.com/react-router/)

Remix is a new React framework that provides APIs and conventions for server rendering, data loading, routing and more.

Check out the [first preview of Remix](https://blog.remix.run/p/remix-preview). Don't miss the video walkthrough in that post. You get to see:

> ... the best way to build dynamic React websites. You'll get a preview on routing, layouts, data loading, meta tags, data caching, and scroll restoration.

In contrast to Next.js, IMO, if there's one thing I felt clunky in Next.js and that is its [router](https://nextjs.org/docs/routing/introduction). It's interesting to see how Remix approach this, how will this turns out eventually.

Alright, that's all I have for you in this post. I hope you enjoy it. You can follow me for more such interesting stories on [Twitter](https://twitter.com/cedric_chee).

<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
_Hey, one more thing before you go, have you seen [RedwoodJS](https://redwoodjs.com/) or [Blitz](https://github.com/blitz-js/blitz)?_
