+++
title = "WebAssemby with Rust and Emscripten"
#description = "This is a showcase post."
date = 2020-03-02T20:46:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["webassembly", "rust"]

[extra]
ToC = false
+++

I'm learning WebAssemby with Rust and Emscripten.

First, download and install Rust:

```sh
cedric@trinine:~/cedric/learn-rust$ curl https://sh.rustup.rs -sSf | sh
info: downloading installer

Welcome to Rust!

This will download and install the official compiler for the Rust programming
language, and its package manager, Cargo.

It will add the cargo, rustc, rustup and other commands to Cargo's bin
directory, located at:

/home/cedric/.cargo/bin

This path will then be added to your PATH environment variable by modifying the
profile file located at:

/home/cedric/.profile

You can uninstall at any time with rustup self uninstall and these changes will
be reverted.

Current installation options:

    default host triple: x86_64-unknown-linux-gnu
    default toolchain: stable
modify PATH variable: yes

1) Proceed with installation (default)
2) Customize installation
3) Cancel installation
>

info: syncing channel updates for 'stable-x86_64-unknown-linux-gnu'
info: latest update on 2019-07-04, rust version 1.36.0 (a53f9df32 2019-07-03)
info: downloading component 'rustc'
info: downloading component 'rust-std'
info: downloading component 'cargo'
info: downloading component 'rust-docs'
info: installing component 'rustc'
91.1 MiB /  91.1 MiB (100 %)  13.8 MiB/s in  6s ETA:  0s
info: installing component 'rust-std'
61.3 MiB /  61.3 MiB (100 %)  16.1 MiB/s in  3s ETA:  0s
info: installing component 'cargo'
info: installing component 'rust-docs'
11.0 MiB /  11.0 MiB (100 %)   6.8 MiB/s in  1s ETA:  0s
info: default toolchain set to 'stable'

stable installed - rustc 1.36.0 (a53f9df32 2019-07-03)


Rust is installed now. Great!

To get started you need Cargo's bin directory ($HOME/.cargo/bin) in your PATH
environment variable. Next time you log in this will be done automatically.

To configure your current shell run source $HOME/.cargo/env
```

## WebAssembly Tutorial

This section will show you how to build and run your first Rust and
WebAssembly program: a Web page that alerts "Hello, World!"

You can follow along the original [tutorial here](https://rustwasm.github.io/docs/book/game-of-life/hello-world.html).

```sh
cedric@trinine:~/cedric/learn-rust/wasm-game-of-life$ wasm-pack build
[INFO]: Checking for the Wasm target...
info: downloading component 'rust-std' for 'wasm32-unknown-unknown'
info: installing component 'rust-std' for 'wasm32-unknown-unknown'
[INFO]: Compiling to Wasm...
   Compiling proc-macro2 v1.0.1
   Compiling unicode-xid v0.2.0
   Compiling log v0.4.8
   Compiling syn v1.0.3
   Compiling wasm-bindgen-shared v0.2.50
   Compiling cfg-if v0.1.9
   Compiling bumpalo v2.6.0
   Compiling lazy_static v1.3.0
   Compiling wasm-bindgen v0.2.50
   Compiling quote v1.0.2
   Compiling wasm-bindgen-backend v0.2.50
   Compiling wasm-bindgen-macro-support v0.2.50
   Compiling wasm-bindgen-macro v0.2.50
   Compiling console_error_panic_hook v0.1.6
   Compiling wasm-game-of-life v0.1.0 (/home/cedric/learn-rust/wasm-game-of-life)
warning: function is never used: `set_panic_hook`
 --> src/utils.rs:1:1
  |
1 | pub fn set_panic_hook() {
  | ^^^^^^^^^^^^^^^^^^^^^^^
  |
  = note: #[warn(dead_code)] on by default

    Finished release [optimized] target(s) in 47.93s
[INFO]: Installing wasm-bindgen...
[INFO]: Optional fields missing from Cargo.toml: 'description', 'repository', and 'license'. These are not necessary, but recommended
[INFO]: :-) Done in 52.62s
[INFO]: :-) Your wasm pkg is ready to publish at ./pkg.
```

```sh
$ npm init wasm-app www
npx: installed 1 in 2.302s
🦀 Rust + 🕸 Wasm = ❤
```

Publishing to NPM:

```sh
cedric@trinine:~/cedric/learn-rust/wasm-game-of-life$ wasm-pack login
Username: *********
Password:
Email: (this IS public) ********
npm ERR! code E401
npm ERR! Incorrect or missing password.
npm ERR! If you were trying to login, change your password, create an
npm ERR! authentication token or enable two-factor authentication then
npm ERR! that means you likely typed your password in incorrectly.
npm ERR! Please try again, or recover your password at:
npm ERR!     https://www.npmjs.com/forgot
npm ERR!
npm ERR! If you were doing some other operation then your saved credentials are
npm ERR! probably out of date. To correct this please try logging in again with:
cedric@trinine:~/cedric/learn-rust/wasm-game-of-life$

npm ERR! A complete log of this run can be found in:
npm ERR!     /home/cedric/.npm/_logs/2019-08-22T11_46_05_314Z-debug.log
Error: Login to registry https://registry.npmjs.org/ failed

# Retry step

$ wasm-pack login
Username: ********
Password:
Email: (this IS public) ***************
Logged in as ********* on https://registry.npmjs.org/.
[INFO]: 👋  logged you in!

cedric@trinine:~/cedric/learn-rust/wasm-game-of-life$ wasm-pack publish
npm notice
npm notice 📦  wasm-game-of-life@0.1.0
npm notice === Tarball Contents ===
npm notice 301B   package.json
npm notice 2.2kB  README.md
npm notice 15.5kB wasm_game_of_life_bg.wasm
npm notice 772B   wasm_game_of_life.d.ts
npm notice 2.8kB  wasm_game_of_life.js
npm notice === Tarball Details ===
npm notice name:          wasm-game-of-life
npm notice version:       0.1.0
npm notice package size:  9.4 kB
npm notice unpacked size: 21.5 kB
npm notice shasum:        f0acf58e757f73b8a615a9b6bb7720823dc6ddad
npm notice integrity:     sha512-hl+J9N+gKAch/[...]hLQJHNyRb/zAQ==
npm notice total files:   5
npm notice
This operation requires a one-time password.
Enter OTP: *********
npm ERR! code E403
npm ERR! 403 Forbidden - PUT https://registry.npmjs.org/wasm-game-of-life - Package name too similar to existing packages; try renaming your package to '@scope/wasm-game-of-life' and publishing with 'npm publish --access=public' instead

npm ERR! A complete log of this run can be found in:
npm ERR!     /home/cedric/.npm/_logs/2019-08-22T13_13_42_232Z-debug.log
Error: Publishing to npm failed
Caused by: failed to execute `npm publish`: exited with exit code: 1
```

To learn more, you can take a look at the learning resources below:

### Examples

Recent example of projects:

- [petersalomonsen/wasm-git](https://github.com/petersalomonsen/wasm-git) - Git for Node.js and the browser using https://libgit2.org compiled to WebAssembly with [Emscripten](https://emscripten.org)

### Tools and Libraries

- [wasmtime](https://wasmtime.dev/) - A small, efficient, and standalone JIT-style runtime for WebAssembly and WASI, using Cranelift.
