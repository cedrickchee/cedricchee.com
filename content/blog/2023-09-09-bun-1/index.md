+++
title = "A First Look at Bun 1.0"
description = "Speedrun Bun first production release and Bun vs Deno."
date = 2023-09-09T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["javascript", "typescript", "webdev"]

[extra]
ToC = true
+++

Bun 1.0 announcement [blog post](https://bun.sh/blog/bun-v1.0).

{{ youtube(id="BsnCpESUEqM", autoplay=false, class="youtube") }}

Bun 1.0 is here.

## What is Bun?

> Bun is a fast, all-in-one toolkit for running, building, testing, and debugging JavaScript and TypeScript, from a single 
> file to a full-stack application. Today, Bun is **stable and production-ready**.

Bun is "batteries included" than "bring your own everything" developer tool.

I'm excited to try this out. Enough of talk. It's time to kick the tires.

## Install Bun

```sh
$ curl -fsSL https://bun.sh/install | bash
######################################################################## 100.0%
bun was installed successfully to ~/.bun/bin/bun 

Added "~/.bun/bin" to $PATH in "~/.bashrc" 

To get started, run: 

 source /home/neo/.bashrc 
  bun --help
```

I followed the instruction:

```sh
$ source ~/.bashrc
~/.bashrc (line 6): “case” builtin not inside of switch block
case $- in
^~~^
from sourcing file ~/.bashrc
source: Error while reading file '/home/neo/.bashrc'
```

... and encountered the first problem. Uh oh?

I'm using fish shell. Is it a big ask for supporting fish shell in addition to bash?

It doesn't exude confidence. Yes, I'm nitpicking.

Next, let's jump to the [quickstart](https://bun.sh/docs/quickstart). We'll go through Bun's announcement post later.

First, change to your development directory.

```sh
$ cd ~/dev/playground/bun.sh
$ mkdir quickstart; cd quickstart
```

Follow the steps in the Quickstart docs.

```sh
$ bun init
bun init helps you get started with a minimal project and tries to guess sensible defaults. Press ^C anytime to quit

package name (quickstart): 
entry point (index.ts): 

Done! A package.json file was saved in the current directory.
 + index.ts
 + .gitignore
 + tsconfig.json (for editor auto-complete)
 + README.md

To get started, run:
  bun run index.ts
```

## Run a file

Open `index.ts` and implements a simple HTTP server with `Bun.serve`.

```sh
$ micro index.ts

$ cat index.ts
const server = Bun.serve({
  port: 8090,
  fetch(req) {
    return new Response(`Ni hao from Bun.`);
  },
});

console.log(`Listening on http://localhost:${server.port} ...`);
```

Run the file from your shell.

```
$ bun index.ts 
Listening on http://localhost:8090 ...
```

Visit `http://{your_ip_address}:8090` to test the server. You should see a simple page that says "Ni hao from Bun.".

## Run a script

```sh
$ micro package.json
$ cat package.json
{
  "name": "quickstart",
  "module": "index.ts",
  "type": "module",
  "scripts": {
    "start": "bun run index.ts"
  },
  "devDependencies": {
    "bun-types": "^0.7.0"
  }
}
```

Then run it with `bun run start`.

```sh
$ bun run start
$ bun run index.ts
Listening on http://localhost:8090 ...
```

## Install a package

Let's make our server a little more interesting by installing a package. First install the `figlet` package and its type declarations. Figlet is a utility for converting strings into ASCII art.

```sh
$ bun add figlet
bun add v1.0.0 (822a00c4)

 installed figlet@1.6.0 with binaries:
  - figlet


 1 packages installed [1276.00ms]

$ bun add -d @types/figlet
bun add v1.0.0 (822a00c4)

 installed @types/figlet@1.5.6


 1 packages installed [2.08s]
```

## Performance

Bun: 1276.00ms and 2.08s respectively for installing two dependencies without cache.

I'm on Linux.

```sh
$ uname -mr
6.2.0-32-generic x86_64
```

Let's compare to pnpm.

```sh
$ pnpm -v
8.7.4
```

```sh
$ cd ~/dev/playground/bun.sh/benchmarks

$ pnpm add figlet
Packages: +1
+
Packages are hard linked from the content-addressable store to the virtual store.
  Content-addressable store is at: /home/neo/.local/share/pnpm/store/v3
  Virtual store is at:             node_modules/.pnpm

dependencies:
+ figlet 1.6.0

Progress: resolved 1, reused 0, downloaded 1, added 1, done
Done in 1.3s

$ pnpm add -D @types/figlet
Packages: +1
+
Progress: resolved 2, reused 1, downloaded 1, added 1, done

devDependencies:
+ @types/figlet 1.5.6

Done in 1.6s
```


I don't get the 17x faster than pnpm as they claimed. Did I missed something?

Enough of that. I did [further benchmarking below](#further-benchmarks).

Next up, update `index.ts` to use `figlet` in the `fetch` handler.

```sh
$ cat index.ts
import figlet from "figlet";

const server = Bun.serve({
  port: 8090,
  fetch(req) {
    const body = figlet.textSync('Ni hao from Bun.');
    return new Response(body);
  },
});

// ... omitted ...
```

Restart the server and refresh the page. You should see a new ASCII art banner.

```
  _   _ _   _                    __                       ____                
 | \ | (_) | |__   __ _  ___    / _|_ __ ___  _ __ ___   | __ ) _   _ _ __    
 |  \| | | | '_ \ / _` |/ _ \  | |_| '__/ _ \| '_ ` _ \  |  _ \| | | | '_ \   
 | |\  | | | | | | (_| | (_) | |  _| | | (_) | | | | | | | |_) | |_| | | | |_ 
 |_| \_|_| |_| |_|\__,_|\___/  |_| |_|  \___/|_| |_| |_| |____/ \__,_|_| |_(_)
```

Cool!

If you want to continue learning Bun, a good place to start is by checking out their [Guides](https://bun.sh/guides).

---

Now, let's get back and go through Bun's announcement blog post.

This caught my attention the most:

> The transition from CommonJS to ES modules has been slow and full of terrors.

The mysterious "Module not found ...". All too familiar now and painful. In the meantime, esbuild kit and SWC is godsend.

> Bun supports both module systems, all the time. No need to worry about file extensions

What a breath of fresh air.

> Bun is a **drop-in replacement for Node.js**. That means existing Node.js applications and npm packages just work in Bun.

Bun is not **fully** Node compatible yet. Their documentation says that:

> Note — For a detailed breakdown of Node.js compatibility, check out: [bun.sh/nodejs](https://bun.sh/nodejs).

## Bun or Deno?

My impression about them and their major selling point below.

- Bun: performance, first-class Node.js compatibility
- Deno: Node.js done right

I guess many are still being on the fence to find good reason to use either Bun or Deno.

---

## Explorations

### Further Benchmarks

Install dependencies with cache.

```sh
$ bun add figlet
bun add v1.0.0 (822a00c4)
 + bun-types@1.0.1

 installed figlet@1.6.0 with binaries:
  - figlet


 2 packages installed [938.00ms]

$ bun add -d @types/figlet
bun add v1.0.0 (822a00c4)

 installed @types/figlet@1.5.6


 1 packages installed [1240.00ms]
```

Speed is still not 17x faster than pnpm.

Next, rerun the same commands.

```sh
$ bun add figlet
bun add v1.0.0 (822a00c4)

 installed figlet@1.6.0 with binaries:
  - figlet

[6.00ms] done

$ bun add -d @types/figlet
bun add v1.0.0 (822a00c4)

 installed @types/figlet@1.5.6

[13.00ms] done
```

Re-install all dependencies of a project.

```sh
$ ls -la
total 36
drwxrwxr-x 3 xxx xxx 4096 Sep  9 19:16 ./
drwxrwxr-x 4 xxx xxx 4096 Sep  9 18:50 ../
-rwxrwxrwt 1 xxx xxx 1991 Sep  9 19:16 bun.lockb*
-rw-rw-r-- 1 xxx xxx 2172 Sep  9 18:05 .gitignore
-rw-rw-r-- 1 xxx xxx  246 Sep  9 18:37 index.ts
drwxr-xr-x 6 xxx xxx 4096 Sep  9 19:10 node_modules/
-rw-rw-r-- 1 xxx xxx  312 Sep  9 19:10 package.json
-rw-rw-r-- 1 xxx xxx  224 Sep  9 18:05 README.md
-rw-rw-r-- 1 xxx xxx  519 Sep  9 18:05 tsconfig.json

# remove Bun lockfile and node_modules
$ rm -rf bun.lockb node_modules/

$ bun install
bun install v1.0.0 (822a00c4)
 + @types/figlet@1.5.6
 + bun-types@1.0.1
 + figlet@1.6.0

 3 packages installed [5.42s]
```

Their docs claimed:

> On Linux, `bun install` tends to install packages 20-100x faster than `npm install`.

Yeah, I don't use [hyperfine for benchmarking as they do](https://github.com/oven-sh/bun/tree/main/bench/install). I care about actual day-to-day usage speed.

Ongoing...
