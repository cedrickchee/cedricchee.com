+++
title = 'Rethinking "Clean Code"'
#description = "This is a showcase post."
date = 2021-05-26T19:01:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["programming", "coding style", "guide"]

[extra]
ToC = false
+++

I've written about [this topic](https://cedricchee.com/2020/05/30/clean-code/) before.

Today, I'm seeing anti-"clean code" stuff topping social media again. This time, it's about Robert C. Martin's book "Clean Code". I'm talking about this blog post, ["It's probably time to stop recommending Clean Code"](https://qntm.org/clean).

I have actually read Clean Code. It's not a perfect book. It's not going to make anyone into a great programmer.

### What I Discovered

I'm going to quote some good points from an old (2020) [/r/programming](https://www.reddit.com/r/programming/comments/hhlvqq/its_probably_time_to_stop_recommending_clean_code) thread.

> I've more or less given up on lists of rules for "clean code". Every time I've proposed a list, someone creates some working code that assiduously follows every rule, and yet is a complete pile of crap. And yes, the someone is doing this in good faith.
>
> Probably the only rule that really matters is: "use good judgement".

> Personally, I think the principles in Clean Code are very important. However, the book itself isn't the best thing I've ever read, and attaching Uncle Bob's name to it isn't necessarily doing the subject matter a service
>
> In my opinion, Sandi Metz' [blog](https://www.sandimetz.com/blog) and books (i.e. [POODR](https://www.informit.com/store/practical-object-oriented-design-an-agile-primer-using-9780134456478)) present the same principles as Clean Code
 but in a much more concise, clear fashion. If I had to pick two "required reading" books for every software developer, I absolutely think POODR and Code Complete (by Steve McConnel) would be on the top of the list.
>
> I'll be honest, reading POODR a few years ago felt like a wake-up call for me in terms of realizing just how much of a junior developer I am. There really is an art to designing abstractions, and if I ever end up doing imperative programming again, I'm going to try to do OO "the right way" this time.

I would personally recommend another Sandi Metz' book, [99 Bottles of OOP - 2nd Edition](https://sandimetz.com/99bottles). I have read and completed the exercises in this book. I liked the Flock principles being taught throughout this book to uncover abstractions (Not pre-mature/forced abstraction, not abusing OOP. Instead, practicing continuous refactoring with test to improve code. Test in this context is not necessary following strictly TDD style, which is good).

The author of that blog post suggested "A Philosophy of Software Design" (2018) by John Ousterhout. If you're interested, I found these two blog posts and they have good reviews of that book.
- [Book Review by Johnz](https://johz.bearblog.dev/book-review-philosophy-software-design/) - Johnz explained as to why the he recommended it to other software engineers and developers. What caught my attention is his point on "Teaching Principles Over Rules".
- [My Take (and a Book Review) by Gergely Orosz](https://blog.pragmaticengineer.com/a-philosophy-of-software-design-review/)


**Aside:**

1. I've also seen the [Semantic Compression](https://caseymuratori.com/blog_0015) idea from Casey Muratori, mainly this part:

> Like a good compressor, I don't reuse anything until I have at least two instances of it occurring. Many programmers don’t understand how important this is, and try to write “reusable” code right off the bat, but that is probably one of the biggest mistakes you can make. My mantra is, “make your code usable before you try to make it reusable”.’

2. [Goodbye, Clean Code](https://overreacted.io/goodbye-clean-code/) post by Dan.

> I sure didn’t think deeply about any of those things. I thought a lot about how the code looked — but not about how it evolved with a team of squishy humans.
> ...
> Don’t be a clean code zealot. Clean code is not a goal. It’s an attempt to make some sense out of the immense complexity of systems we’re dealing with.

That's it for now. Till next time.
