+++
title = "A Career and Code Retreat Retrospective — 16 years working in tech"
#description = "This is a showcase post."
date = 2020-04-21T05:09:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true
aliases = ["2020/04/21/career-and-code-retreat-retro-16-years-working-in-tech"]

[taxonomies]
tags = ["career", "code retreat", "retrospective", "fast.ai", "deep learning", "data science"]

[extra]
ToC = false
+++

_This is part 1 of a series of upcoming posts on my career and code retreat retrospective — what has been great, what has been horrible. Please pardon my English as I am not a native English speaker._

## What is Educational/Code Retreat

I was excited to first learned about the idea of educational retreat from [Julia Evans' blog](https://jvns.ca/blog/2014/02/15/how-was-hacker-school/) in 2015. She attended Hacker School. In the words of the [Recurse Center (formerly known as Hacker School)](https://www.recurse.com/) website:

> The Recurse Center is a free, self-directed, educational retreat for people who want to get better at programming, whether they've been coding for three decades or three months.

It's as a retreat for programmers who want to get back into learning. You take sabbatical from work, away from deadlines and the stresses of everyday life. It's sort of like going back to college, but you get to decide what you want to learn, and homework is never boring because you get to choose the fun stuff that you want to work on.

## My Experience

I spent 14 months in educational retreat from 2019 to Feb 2020 — 7 months as an Entrepreneur-In-Residence (EIR) at [Antler](https://www.antler.co/) and the rest of the time in code retreat ran by a startup in Asia. I've been meaning to write about the experience itself, and what happened after for a while now, so here goes!

## The Journey

When I moved to Singapore in 2006, my main objective is to start my own tech startup business and chase my dream. I work hard and grab every little opportunities offered to me that allow me to learn and grow my skills and career while working for companies. I am always hungry to learn. Learning never stops. I still remember vividly my first ever experience attending [Barcamp 4 conference in 2009](http://barcamp.org/w/page/401626/BarCampSingapore4).

### Career as a Full Stack Software Engineer

I am a full stack software engineer all along (funnily, even before full stack title being a thing now). I mostly work on web developments in the early days of my career. I learned iOS (and Objective-C)[^1] and Android (Java) mobile development not long after the first iPhone and AppStore launched together with a group of people who started CocoaHeads meetup, buUuk and some worked at Apple now. I've [blogged about the iPhone 3G launch](https://cedrickchee.blogspot.com/2008/08/singtel-has-confirmed-to-launch-iphone.html) and my first foray into Android development in 2010 after attended the [Developer Lab by Google](https://cedrickchee.tumblr.com/post/18008767194/my-android-developer-lab-tag-on-flickr-looking) in my abandon blogs.

#### Front-end Development

In my full stack web roles, I spent most of my time on front-end development, writing vanilla JavaScript, CSS, jQuery, Backbone, and a bit of MooTools. I picked up React.js a year after it was announced as open source project in 2013. [I switched to React Native in 2015](https://youtu.be/J4hBjleaG8w) (video) after working in PhoneGap. Since then, I have delivered over 5 major React projects to production, be it for my consulting customers or my own startups.

#### Backend Development

Most of my experience in backend works are done in statically typed and compiled languages like C, C# or TypeScript. I have a short love with Ruby before Node.js came out. I have only done some toy projects with Ruby on Rails and that was long time ago. I have deep experience in Node.js together with a minimalistic MVC framework, Express.

I don't have many achievements in backend development that I'm proud of. I think my favorite contributions to backend systems were my work optimizing SQL database performance for several large legacy websites, created my first in-house web framework from scratch, RESTful API design and implementation for small to medium-sized apps, and sysadmin lead for greenfield infra projects on AWS.

As you can see, I lack the experience and skills in working in high traffic and large apps where [majestic monolith/macroservices (opposite of micro/services oriented architecture)](https://m.signalvnoise.com/the-majestic-monolith/) runs in a distributed systems environment and learning to build secure, reliable, and maintainable systems are important skills.

#### More than Just Programming

If you ask me to describe "what is software engineering in three words?", my response is "more than programming".

Throughout my time as a software engineer and consultant, I have lead technically several major projects and supported customers for both business and technical needs. My team are structured to work directly and closely with the customers in every project. This will minimize the cost of error due to communication gap. We wear many hats. We go beyond our own roles sometimes.

### Mid-Career Switch

Around 2013, I noticed my career growth stagnant even though I still learn every day on the job, but not much. So, I started making a change to the situation. At this point, I have learned enough the basics of building startup and high-growth business after getting to know entrepreneur27 (e27 now) and TechCrunch.

#### First Taste of Deep Learning

In 2015, I was confronted with a problem that is not feasible to solve using existing way of manually hand-written programming. The problem is simple, such that, "set the web font color *automatically* while maintaining good contrast with its background color".

As a curious learner and knowing the chance to step-up my learning several times, I spent a week exploring and researching for solution and eventually ended up discovering neural networks. As a self-taught Computer Science, I have no idea what is neural networks. But that didn't stop me from learning.

Then, I stumbled upon Stanford CS231n MOOC taught by Andrej Karpathy and started learning deep learning, convnet, and Computer Vision. I was still struggling to wrap my mind around all the new neural nets theory and concepts and Maths around backpropagation/gradient descent calculations. So, I persisted and studied Coursera Machine Learning course taught by Prof. Andrew Ng and got [certified](https://www.coursera.org/account/accomplishments/verify/L3MUCREKSY9T).

### The Growth Stage

I was doing all that while having a full-time job. But, at the end of 2017, I left my 6 years job and pursue my dream. It's my first sabbatical. I build my first startup using what I learned so far.

While working on my first startup in the medical domain, from 2018 onwards, I started my fellowship at fast.ai. Unlike Stanford's courses, fast.ai teaching style is geared towards practical examples first, theory later and top-down learning (I get to play baseball before learning about the sport science). fast.ai courses complement well with the more formal courses from Stanford and Coursera. During this period, I learned immensely up to the point I am capable of moving beyond deep learning research and experimentation and taking real-world projects to production in my startup. Unfortunately, my startup failed to gain traction at the end of 2018 and demised.

#### Fast.ai International Fellowship

I was accepted into Fast.ai International Fellowship 2018 program. As a fellow, I worked on a variety of data science and deep learning projects such as:

- [Awesome BERT NLP](https://github.com/cedrickchee/awesome-bert-nlp) repo - I have been tracking and researching Transformers networks and transfer learning in NLP for more than a year. Along the way, I share and update the repo with stuffs I find awesome.
- I wrote a [Deep Learning for Coders book](https://cedrickchee.gitbook.io/knowledge) based on my learnings and notes that I took while studying Stanford CS231 CNN, Stanford CS224 NLP, Coursera Machine Learning, and fast.ai courses.
- [Data science Python notebooks](https://github.com/cedrickchee/data-science-notebooks) - a collection of Jupyter notebooks on machine learning and deep learning. My favorites are ["Language modelling in Malay language for downstream NLP tasks"](https://twitter.com/PiotrCzapla/status/1060477218219003905), "Not Hotdog AI Camera mobile app", "Deep Painterly Harmonization", and "Guide to TensorFlow + Keras on TPU v2 for free on Google Colab".
- [PyTorch Mobile Kit](https://github.com/cedrickchee/pytorch-mobile-kit) is a starter kit app that does Machine Learning on edge from camera output, photos, and videos.
- [Fast.ai Mobile Camera](https://github.com/cedrickchee/data-science-notebooks/tree/master/notebooks/deep_learning/fastai_mobile) is a guide and demo on "How I Shipped a Neural Network on Android/iOS Phones with PyTorch and Android Studio/Xcode". The Android app is doing real time object classification. [[blog post from my team](https://medium.com/@init_27/anothernothotdog-280ee5b86fb3)]
- [PyTorch CapsNet](https://github.com/cedrickchee/capsule-net-pytorch) is the first few PyTorch implementation of Capsule Network NIPS 2017 paper by Geoffrey Hinton, et al. This is my first time implementing deep learning research paper from scratch using PyTorch 0.3.0.

---

### First Retreat

My first educational retreat was in early 2019. I applied and got accepted out of 3000+ applicants in SEA to join [Antler](https://www.antler.co/) as an Entrepreneur-In-Residence (EIR). It's sort of apprentice program and business retreat for entrepreneurs building startup. Our team failed to secure a pre-seed funding from Antler and my journey as an entrepreneur ended there. This itself is a blog post on its own, next time.

### I wasn't getting hired as a Data Scientist

After Antler, I went back to my original plan which is, I was trying to switch careers and land a new job as deep learning engineer or data scientist. I failed to break into this role after spending months interviewing. I got rejected multiple times because companies are either not confident in hiring someone like me without a Machine Learning/Deep Learning PhD or someone that cannot recite backpropagation algorithms during coding interview sessions.

> Instead of focusing on skills thought to be required of data scientists, we can look at what they have actually done before. ([source](https://towardsdatascience.com/i-wasnt-getting-hired-as-a-data-scientist-so-i-sought-data-on-who-is-c59afd7d56f5))

This is the truth?

I know hiring is broken for SWE roles at big tech companies but I never expect this bad. OK, I will stop there. This is not a post to rant about hiring is broken.

To add on, I have not touched data science for a while. Why? In my opinion, if you are not FAANG, it's costly to scale data science to production grade where your models can work robustly under known adversarial attacks. Data/AI ethics are challenging. Another smaller issue is research is not catching up fast enough with business demands of interpretable models. A lot more has been said on those issues. Check out ["Rebooting AI"](https://www.amazon.com/Rebooting-AI-Building-Artificial-Intelligence-ebook/dp/B07MYLGQLB/) by Gary Marcus. Another example is this ["Data Science: Reality Doesn't Meet Expectations"](https://dfrieds.com/articles/data-science-reality-vs-expectations.html) post.

I'm sorry to say that I don't have solutions now. I will consider to give data science another go in the future.

## Why did you join code retreat?

I found out about RC in a period of my career when I wasn't growing much. I was frequently the sole software engineer on my team and frequently worked on projects on my own.

## The Second Code Retreat

I've moved on from pursuing Data Scientist role. So I started my journey into the second educational retreat phase. The startup company that runs the code retreat is flexible enough that allows us to design and customize plan for our retreat. My design mainly drew inspirations from [Recurse Center User's Manual](https://www.recurse.com/manual) and my experience organizing and running virtual/in-person study groups for fast.ai and AI Saturdays students. I also referenced a few online articles:
- [Example of how Recurser spent their time at RC](https://jvns.ca/blog/2017/09/17/how-i-spent-my-time-at-the-recurse-center/).
- [Why I Decided to Learn to Code in Bali with Institute of Code](https://www.livelikeitstheweekend.com/decided-learn-code-bali-institute-code/)
- [Coderetreat](https://www.coderetreat.org/) was spawned by Gary Bernhardt, Corey Haines, and many more.

The goal and focus of this code retreat is I want to get significantly better at programming and the fundamentals of Computer Science. As Richard Feynman put it:

> What I cannot create, I do not understand

And I [want to be a wizard](https://jvns.ca/wizard-zine.pdf) :smile: Joke aside, during the COVID-19 crisis, where most of us are stuck at home and work suspended, this is the best time to start doing things you always wanted to do.

### What did you do at your code retreat?

I worked on a variety of projects. Some reached completion, and some didn't. I did things that I've always wanted to do, but also ended up doing things I never thought I would. Some of my favorites (marked as _*_) are:

- _*_ Learned a new programming language, [Rust](https://www.rust-lang.org/). I created a very inaccurate ["knowledge map"](https://gist.github.com/cedrickchee/f729e848b52eab8fbc88a3910072198c) of stuffs I referenced learning Rust.
- Learned to make my own version of the classic command line tool [grep](https://en.wikipedia.org/wiki/Grep) using Rust.
- Build a basic [multithreaded web server](https://github.com/cedrickchee/rust-webserver) from scratch (zero dependencies) using Rust and along the way, learn a bit about TCP and HTTP.
- _*_ Implements Conway's Game of Life in Rust and WebAssembly.
- Learn Rust by creating too many linked lists.
- _*_ [KVS](https://github.com/cedrickchee/experiments/tree/main/rust/kvs), a high-performance, networked, parallel and asynchronous key/value store (embedded database like SQLite) developed in Rust.
- [RNNoise](https://www.npmjs.com/package/rnnoise) is a Rust and Node.js bindings to Xiph's RNNoise denoising C library.
- _*_ Deep dive into [Xi Editor](https://xi-editor.io) internals. Xi is a modern editor for the next 20 years. This exercise altered my appreciation for persistent rope data structure.
- _*_ [You Don't Know Go, Yet book](https://ydkgo.netlify.app/) is a project for me to relearn Go from first principles by writing a book on it. I learned advanced Go stuffs in this study.
- [Learn Test-Driven Development (TDD) in Go](https://github.com/cedrickchee/learn-go-with-tests) for the last time.
- _*_ [MinTorrent](https://github.com/cedrickchee/min-torrent) is yet another minimalistic, zero dependency torrent client, written in Go (golang).
- _*_ Build yourself a programming language. I created [Hou](https://github.com/cedrickchee/hou) programming language interpreter and compiler from scratch using Go.
- [Snippetbox](https://github.com/cedrickchee/snippetbox) is a project I created to learn full-stack Go web application development.
- _*_ Learn distributed systems from first principles by doing [MIT 6.824 distributed system](https://pdos.csail.mit.edu/6.824/index.html) labs and reading [Designing Data Intensive Applications](https://dataintensive.net/) book (learning-in-progress). I'm currently reading academic papers and reimplementing [Raft consensus algorithm](https://raft.github.io/).
- ...and more (are you here and looking for [project ideas to practice a new programming language?](https://github.com/danistefanovic/build-your-own-x))

A lot of them are focused on Computer Science, systems or Linux concepts and go deep into the concepts.

I will continue in another post going into much more detail on each project.

Lastly, I would to take this opportunity to apologize to anyone who have contacted me and I didn't response back. It is not in my truest intention as I was beating and recovering from burnout last year.

---

## Hire Cedric Chee

I'm back on the job market! I just lost my freelance job, and I was living without a stable income for the past 9 months.

Contact info and details [here](https://cedricchee.com/2020/04/21/hire-cedric-chee/).

That's it for now. Thank you and take care.

---

[^1]: [Testing the 2 most-wanted features of iPhone OS 3.0 (2009)](https://cedrickchee.blogspot.com/2009/06/two-most-wanted-iphone-os-30-features.html)
