+++
title = "To Rust or Not"
#description = "This is a showcase post."
date = 2021-01-04T21:13:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["rust"]

[extra]
ToC = false
+++

A quick opinion.

Rust when:
- Correctness is important -- it provides more tools to help you write correct code and express invariants in a machine-checkable way.
- Performance is important -- either for single threaded programs or for those programs that benefit from concurrency or parallelism. Rust is a good option for some programs where there's a clear hot loop. Rust is a perfect fit for workloads that have relatively flat CPU profiles where the performance bottlenecks are making memory allocations or similar.
- Backward compatibility is important -- the commitment to backward compatibility from the Rust authors means that you don't get regular breakage simply from updating to a newer version of the language.

That doesn't mean you'd always choose Rust.

Rust is not a good fit when:
- It's too much to give away the benefit from not requiring a compile step and making use of the ubiquity of a interpreter.
- It's difficult to justify using Rust for a typical web backend that's mostly composing together various well-tested libraries to provide an API on top of a database.

Rust can makes hard things easy and easy things hard.

---

If you're here and are interested in learning Rust, check out my [Awesome Rust gist](https://gist.github.com/cedrickchee/f729e848b52eab8fbc88a3910072198c). I created this while I was learning Rust language in 2019. If you're in a hurry or need a refresher, there's a good post for that, ["Learn Rust in half hour"](https://fasterthanli.me/articles/a-half-hour-to-learn-rust).
