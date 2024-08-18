+++
title = "Turbopack Experiment"
description = "I just kicked the tires on Turbopack and it looks pretty good so far."
date = 2023-01-03T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["frontend", "webdev"]

[extra]
ToC = false
+++

I build my personal wiki with [Docusaurus](https://docusaurus.io/). I [installed Docusaurus using pnpm](https://gist.github.com/cedrickchee/45e53ac9ae7ab183cac93304225f1349) because NPM is slow. Yarn is doing an OK job but [Yarn version transitions](https://stackoverflow.com/questions/71634861/difference-between-yarn-versions) was painful, although I've been using Yarn 1.x for a while. My frontend development history stated back when Webpack, Babel (nee ES5 web standard) were still in their infancy. I surrender at last and migrated everything to Vite. Vite is great but today, I want to try out [Turbopack](https://turbo.build/), a Rust-based Webpack successor that claims 700x faster. It's good to diversify your tools if you can. And partly because I'm a big believer of [Rust as the future of JavaScript tooling"](https://leerob.io/blog/rust).

## Kicking the tires

In the style of "give it five minutes", I hands-on Turbopack and the following tutorial follows the ["Getting Started with Turbopack" docs](https://turbo.build/pack/docs).

{{ figure(src="turbopack-app-playground.png",
       style="width: 100%;",
       position="center"
       caption_position="center",
       caption="Figure 1: Turbopack app playground"
       caption_style="font-weight: normal; font-style: normal;") }}

View the code: [github.com/cedrickchee/experiments](https://github.com/cedrickchee/experiments/tree/077db82c63d1506bb9d71382765735525aa65377/javascript/turbopack-nextjs)

1. Create a Next.js v13 project ([with-turbopack code](https://github.com/vercel/next.js/examples/with-turbopack)) with Turbopack:

```sh
$ npx create-next-app --example with-turbopack
Need to install the following packages:
  create-next-app@13.1.1
Ok to proceed? (y) 
✔ What is your project named? … turbopack-nextjs
Creating a new Next.js app in /home/neo/dev/repo/gh/experiments/javascript/turbopack-nextjs.

Downloading files for example with-turbopack. This might take a moment.

Installing packages. This might take a couple of minutes.


added 461 packages, and audited 462 packages in 37s

[...snipped...]

Success! Created turbopack-nextjs at /home/chi/dev/repo/gh/experiments/javascript/turbopack-nextjs
Inside that directory, you can run several commands:

  npm run dev
    Starts the development server.

  npm run build
    Builds the app for production.

  npm start
    Runs the built app in production mode.

We suggest that you begin by typing:

  cd turbopack-nextjs
  npm run dev
```

Next, `cd` into the app: `cd turbopack-nextjs`.

2. Start the Next.js development server (with Turbopack):

```sh
# I'm using pnpm
$ pnpm dev

> @ dev /home/neo/dev/repo/gh/experiments/javascript/turbopack-nextjs
> next dev --turbo

>>> TURBOPACK (alpha)

Thank you for trying Next.js v13 with Turbopack! As a reminder,
Turbopack is currently in alpha and not yet ready for production.
We appreciate your ongoing support as we work to make it ready
for everyone.

Learn more about Next.js v13 and Turbopack: https://nextjs.link/with-turbopack
Please direct feedback to: https://nextjs.link/turbopack-feedback

ready - started server on 0.0.0.0:3000, url: http://localhost:3000
event - initial compilation 7.874ms
warning - [parse]
  ... [2 paths] are hidden, run with --show-all to show them
event - updated in 6255ms
event - updated in 22ms
event - updated in 479ms
event - updated in 15ms
event - updated in 0.15ms
event - updated in 2479ms
event - updated in 661ms
```

The Next.js v13 development server is now powered by Turbopack!
Startup and updates should both be near-instant. The larger the application, the larger the improvement will be.

If you want to learn how to use Turbopack and Turborepo for creating and managing your monorepo, check out [my next blog post](@/blog/2023-01-03-turborepo-monorepo/index.md).

Cool. That's it for now.
