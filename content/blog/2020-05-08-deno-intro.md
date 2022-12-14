+++
title = "Intro to Deno"
#description = "This is a showcase post."
date = 2020-05-08T12:57:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["webdev", "javascript", "typescript"]

[extra]
ToC = false
+++

[Deno](https://deno.land/) is a secure runtime for JavaScript and TypeScript.

Deno is a brand new general-purpose JavaScript programming environment, similar to Node.js. It is what Node.js should have been according to Ryan Dahl who created both tools.

Deno just hit v1.0.0-rc1. David Else has written a nice article about [Deno 1.0: what you need to know](https://blog.logrocket.com/deno-1-0-what-you-need-to-know/).

This guide should give you something you need to get started.

## Getting Started

- Running a simple Hello World script
- Writing our own script
- Using Deno with TypeScript

### Installation

Full guide for [installing Deno for other platforms](https://github.com/denoland/deno/blob/master/docs/getting_started/installation.md).

Using shell (macOS and Linux):

```sh
$ curl -fsSL https://deno.land/x/install/install.sh | sh
######################################################################## 100.0%##O=#  #                                                                      
Archive:  /home/cedric/.deno/bin/deno.zip
  inflating: deno                    
Deno was installed successfully to /home/cedric/.deno/bin/deno
Manually add the directory to your $HOME/.bash_profile (or similar)
  export DENO_INSTALL="/home/cedric/.deno"
  export PATH="$DENO_INSTALL/bin:$PATH"
Run '/home/cedric/.deno/bin/deno --help' to get started
```

### Example - Running a simple "Hello World" script

Try running a simple program:

```sh
$ deno run https://deno.land/std/examples/welcome.ts
Download https://deno.land/std/examples/welcome.ts
Compile https://deno.land/std/examples/welcome.ts
Welcome to Deno 🦕
```

Deno tries to be web compatible and use modern features whereever possible.

### Writing our own script

Next, we will go through some simple examples that can teach you about the fundamentals of Deno.

#### Web server

```sh
$ vim web_server.ts
```

Copy and paste the following code into your text editor.

```typescript
import { serve } from "https://deno.land/std@v0.42.0/http/server.ts";
const s = serve({ port: 8000 });
console.log("http://localhost:8000/");
for await (const req of s) {
  req.respond({ body: "Hello world\n" });
}
```

Try the program:

```sh
$ deno run web_server.ts
Compile file:///home/cedric/my_files/deno-test/web_server.ts
Download https://deno.land/std@v0.42.0/http/server.ts
Download https://deno.land/std@v0.42.0/encoding/utf8.ts
Download https://deno.land/std@v0.42.0/io/bufio.ts
Download https://deno.land/std@v0.42.0/testing/asserts.ts
Download https://deno.land/std@v0.42.0/util/async.ts
Download https://deno.land/std@v0.42.0/http/io.ts
Download https://deno.land/std@v0.42.0/io/util.ts
Download https://deno.land/std@v0.42.0/path/mod.ts
Download https://deno.land/std@v0.42.0/path/win32.ts
Download https://deno.land/std@v0.42.0/path/posix.ts
Download https://deno.land/std@v0.42.0/path/constants.ts
Download https://deno.land/std@v0.42.0/path/common.ts
Download https://deno.land/std@v0.42.0/path/constants.ts
Download https://deno.land/std@v0.42.0/path/interface.ts
Download https://deno.land/std@v0.42.0/path/glob.ts
Download https://deno.land/std@v0.42.0/path/globrex.ts
Download https://deno.land/std@v0.42.0/path/utils.ts
Download https://deno.land/std@v0.42.0/fmt/colors.ts
Download https://deno.land/std@v0.42.0/testing/diff.ts
Download https://deno.land/std@v0.42.0/textproto/mod.ts
Download https://deno.land/std@v0.42.0/http/http_status.ts
Download https://deno.land/std@v0.42.0/bytes/mod.ts
error: Uncaught PermissionDenied: network access to "127.0.0.1:8000", run again with the --allow-net flag
    at unwrapResponse ($deno$/ops/dispatch_json.ts:43:11)
    at Object.sendSync ($deno$/ops/dispatch_json.ts:72:10)
    at Object.listen ($deno$/ops/net.ts:51:10)
    at listen ($deno$/net.ts:152:22)
    at serve (server.ts:261:20)
    at web_server.ts:2:11
```

You will see that this program returns an error regarding network access because Deno is a runtime that is secure by default.

```sh
$ deno run --allow-net web_server.ts
http://localhost:8000/

$ curl http://localhost:8000
Hello world
```

#### Making an HTTP request

A small program that fetches a file from a web server and prints the content to the terminal.

```typescript
// curl.ts

const url = Deno.args[0];
const res = await fetch(url);

const body = new Uint8Array(await res.arrayBuffer());
await Deno.stdout.write(body);
```

Just like in the browser you can use the web standard [fetch](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API) API to make HTTP calls.

This program parse the response body as an [ArrayBuffer](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer), await the response, convert it into a [Uint8Array](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint8Array) and store it in the variable body.

```sh
$ deno run --allow-net curl.ts https://example.com
Compile file:///home/cedric/my_files/go-dist-services/curl.ts
<!doctype html>
<html>
<head>
    <title>Example Domain</title>

    <meta charset="utf-8" />

... truncated ...
... truncated ...
```

#### Reading a file

Deno also provides APIs which do not come from the web. You can find documentation for these APIs on [doc.deno.land](https://doc.deno.land/https/github.com/denoland/deno/releases/latest/download/lib.deno.d.ts#Deno.open).

Filesystem APIs for example do not have a web standard form, so Deno provides its own API.

```typescript
// cat.ts

for (let i = 0; i < Deno.args.length; i++) {
  let filename = Deno.args[i];
  let file = await Deno.open(filename);
  await Deno.copy(file, Deno.stdout);
  file.close();
}
```

Try running the program:

```sh
$ deno run --allow-read cat.ts hello.txt
Hello from Deno.
```

This illustrates a general design goal for I/O streams in Deno.

#### A simple TCP server

An example of a simple server which accepts connections on port 8080, and returns to the client anything it sends.

```typescript
// echo_server.ts

const listener = Deno.listen({ port: 8080 });
console.log("listening on 0.0.0.0:8080");
for await (const conn of listener) {
  Deno.copy(conn, conn);
}
```

Try:

```sh
$ deno run --allow-net echo_server.ts
listening on 0.0.0.0:8080
```

Try sending data to it with netcat:

```sh
$ nc localhost 8080
hello deno
hello deno
```

Like the `cat.ts` example, the `copy()` function here also does not make unnecessary memory copies. It receives a packet from the kernel and sends back, without further complexity.

### Using TypeScript

Please read the [docs](https://github.com/denoland/deno/blob/master/docs/getting_started/typescript.md).

## Learn more

- [Deno in 100 Seconds](https://www.youtube.com/watch?v=F0G9lZ7gecE) (video).
- [10 Things I Regret About Node.js - Ryan Dahl - JSConf EU](https://www.youtube.com/watch?v=M3BM9TB-8yA) (2018, video).
  - History of Deno. Regrets: not sticking with Promises, security, the build system (GYP), package.json, node_modules, require("module") without the extension ".js", index.js
- [Talk from Bert Belder (@piscisaureus)](https://www.dotconferences.com/2019/12/bert-belder-deno) - A decade after Node.js was first announced, JavaScript and the web platform have evolved, and TypeScript has changed the way JavaScript applications are developed.
