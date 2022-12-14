+++
title = "Go is my shell script/scripting language in Linux"
#description = "This is a showcase post."
date = 2020-03-06T11:47:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["go", "shell script", "linux"]

[extra]
ToC = false
+++

Long before, I have this theory: Go compiler is so fast that we can use it like an "interpreted" scripting language.

Yesterday, this wild idea surfaced again when I stumbled upon this Reddit post and discussion: 

https://www.reddit.com/r/golang/comments/fcumfu/golang_is_my_new_shell/

Last year, I saw some early attempts like the one in this post by Eyal in 2017:

[Story: Writing Scripts with Go](https://gist.github.com/posener/73ffd326d88483df6b1cb66e8ed1e0bd).

However, I stop there as I felt the approach is a bit clumsy. And no, I don't expect Go Authors to officially bake this support in Go tooling.

The post from Reddit yesterday really pique my interest again. So, I continue reading and discovered this great blog post by Cloudflare (2018):

[Using Go as a scripting language in Linux](https://blog.cloudflare.com/using-go-as-a-scripting-language-in-linux/).

Next, I proceed to try it out and I found the approach is nearly perfect for my use case.

So, along the way, I learned how Linux executes files. By reading the Linux kernel documentation, [kernel support for miscellaneous (your favourite) binary formats](https://www.kernel.org/doc/html/latest/admin-guide/binfmt-misc.html).
  
The `binfmt_misc` is a [script module](https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git/tree/fs/binfmt_script.c?h=linux-4.14.y) responsible for parsing [shebang lines](https://en.wikipedia.org/wiki/Shebang_(Unix)) and executing scripts on the target system.

Who knows that the shebang support is actually implemented in the kernel itself and not in the shell or other daemon/process? At least not me.

Once in a while, I like fiddling with some kernel 'magic'. Today is the day.

As I think back of today's tiny experiment, it reminds me again of what important things I've forgotten.

One way for **me** to be a better software engineer, be it for front-end or back-end engineering is to learn the fundamentals (of computer science). That is, to me is the Operating System (OS) like Unix or Linux. Today's example tells me that almost every time I go back and learn about the Linux kernel, it taught me new things that surprises me. 

I suggest, if you have not, you should check [The Linux kernel documentation](https://www.kernel.org/doc/html/latest/index.html). There are many hidden gems there, like the one I encountered today.

That's it for today. Thanks for reading.

Have a nice day.
