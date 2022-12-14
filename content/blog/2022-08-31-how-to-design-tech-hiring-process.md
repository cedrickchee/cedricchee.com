+++
title = "How to Design and Fix Tech Hiring Processes"
description = "Reboot hiring, alternatives to coding interviews; take-home projects, candidate read code and talk about how it works."
date = 2022-08-31T15:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["hiring", "tech", "interview", "broken", "opinion"]

[extra]
ToC = false
+++

_**tl;dr**: Reboot hiring, alternatives to coding interviews; take-home projects,
candidate read code and talk about how it works._

The hiring process in the tech space is profoundly broken, infamously
known as "LeetCoding" interview or whiteboard interview.

## LeetCoding Interviews

Why do companies insist on using algorithmic code tests when hiring when this is
not what they do on a day to day basis. Here's why[^13]. You can skip that if
you're not interested.

## The First Principles

We can make changes that dramatically improve hiring process.

I try to follow these general principles to the process when I hire.
My guiding philosophy is that _it is impossible to know if a candidate is a good fit for a job_.[^4]

When hiring for a job, I first list what I am looking for and what I don’t want
in the next candidate. It also really depends on the role.

## Reboot Hiring

Don’t do interviews, do discussions.[^1]

Tech job interviews assess anxiety, not software skills.[^3]

Great interviewer knows how to ask great questions that give them a lot of
signal about the candidate’s skills while ensuring the candidate always feels
comfortable and confident.[^10] Trick questions and esoteric puzzles give the
interviewer no useful information about the interviewee — that’s a waste of
everyone’s time.





There are so many ways to tell a good developer from a bad one just by asking
some well thought questions but obviously that would require the interviewer to
put in some efforts to come up with those questions (which rarely happens).

I test on other things too. Having a great attitude, communication, enthusiasm
and work ethic are all incredibly important. Knowing how to write code and
structure a project are obviously a requirement. Having a baseline competency
in Computer Science, for the jobs I hire for, are also important so I ask
questions that require the necessary competency.





My best interview ever was just meeting for coffee with my future manager and
having a conversation about software development. Tech skills can be learned,
but getting along with various people including managers and leaders is more
important.[^16]

Interviews are almost worthless for telling how good of a team member someone will be.[^14]
Interviews are far better spent trying to understand who someone is, and how
interested they are in a given field of expertise. Trying to suss out how good
of a team member they will be is a fruitless endeavor. And believe me, how
smart or knowledgable someone is is also not a good indicator that they will be
a great team member.

We should consider communication a core skill instead of a soft skill.[^8]
Because a lot of people will probably do perfectly fine, technically, in any
given role, but can you communicate that to a job interviewer? Not a lot of
people can.

## Take-home Projects

Another commonly mentioned alternative to coding interviews is take-home
projects, where the candidates get a sizable assignment to complete at home;
this assignment can take on the order of 2-20 hours and is meant to evaluate
the candidate on a much more realistic project than a 45-min coding interview.[^13]

We stopped doing those types of algorithmic tests in our interviews. Now they are
all "implement this simplified version of a feature in our app". It’s a lot
more practical and actually gives us a much better signal on the candidate.[^15]


Take home modeling actual work we do day to day (2-5 hours completion time).
I've had interviews with take home assignment, nothing to big, like refactor and
write unit-test.[^16] Make sure it's time bounded.

The disadvantage of this format is, both the candidate and interviewer have to put in larger efforts.
Not sure how true but some candidates hate this because some companies try to exploit them.

However, according to this article, "A method I’ve used to eliminate bad tech hires",[^9]
paying candidates to work on a simple project and then discussing it has almost single handedly eliminated any bad hiring decisions.
This can counter the job exploitation problem.

There are at least three major challenges with this approach[^13]:
- Candidates don't like these - since they may take a long time to finish
- These assignments are a burden on the hiring team as well, since they take a long time to prepare and evaluate
- These assignments are very vulnerable to cheating (interviewer-candidate discussion can expose someone who cheated)

Now, LeetCoding questions are vulnerable to a kind of "cheating" as well.

### Examples

**Example 1:** at Replit the phone screen task was to build a small part of
Replit, Figma asked to align 2 rectangles and design Figma file format, etc.
What I loved about these problems is that they were all very relevant to the
product. They are also very "real-world”, with no best solution, and
readability was important too.[^5]

**Example 2:** the best engineering interview question they've ever gotten. The
programming challenge is: add a tiny new feature to memcached.[^7]

Read this[^11] if you're looking for other good examples that represent stuff
most people will do in their jobs.

## New Ideas

### Code Reading

A better way recently (2022) is, have the candidate read existing code[^6] and
talk about what it does and how it works. This offers some powerful
advantages:
- Reading probes the most fundamental skills
- Reading code is way more efficient than writing. A candidate can tell you a
  lot about their programming skill in the first five minutes of reading
  because reading is easily an order of magnitude faster than writing.
- Reading puts candidates at ease compared to writing code.

## The Red Flags[^12]

- Interviewers only open to solving the problem ONE way
- Not enough clarity about the role
- Consistent lack of interest or low morale from interviewers
- Interviewers aren’t prepared for the interview
- The company don't have a sane, speedy hiring process

## Hiring Developers: How to avoid the best[^17]

Call me crazy but I always focus more on the individual and asking them personal
questions more than delving into silly LeetCode they learned for the sake of
gaming a system and will soon forget.

Smart, hardworking dedicated employees are much harder to find than LeetCoders.
And they learn really quickly with a lot less attitude and grandiose opinions
of themselves.

## Hiring Senior or Leadership Roles

If hiring senior developer or leadership roles,
stop requiring specific tech experience[^2] and
be strategic around your interviews and chats.[^4]

## Conclusion

Hopefully this post clarifies why I think that these interview processes, while not
perfect, are an important objective evaluation technique for hiring software engineers.

Tech space hiring is very subjective and opinionated - there's no _one true way_ process of interview.

I don't really know if this guarantees better signals from the interviewing
candidates.

All of this is IMHO, of course, and I only speak for myself here.

[^1]: [Don’t Do Interviews, Do Discussions!](https://thinkingthrough.substack.com/p/dont-do-interviews-do-discussions)
[^2]: [Stop requiring specific technology experience for senior-plus engineers](https://mikemcquaid.com/stop-requiring-specific-technology-experience-for-senior-plus-engineers/)
[^3]: [Tech Sector Job Interviews Assess Anxiety, Not Software Skills](https://news.ncsu.edu/2020/07/tech-job-interviews-anxiety/)
[^4]: [Five takeaways from looking for a new senior role in tech](https://philcalcado.com/2021/12/20/job_hunt.html)
[^5]: [On Leaving Facebook](https://frantic.im/leaving-facebook/)
[^6]: [How to Freaking Find Great Developers By Having Them Read Code](https://freakingrectangle.com/2022/04/15/how-to-freaking-hire-great-developers/)
[^7]: [The best engineering interview question I’ve ever gotten, Part 1](https://quuxplusone.github.io/blog/2022/01/06/memcached-interview/)
[^8]: [Pioneering the developer advocate role, with Cassidy Williams, Director of Developer Experience at Netlify](https://about.sourcegraph.com/podcast/cassidy-williams)
[^9]: [The One Method I’ve Used to Eliminate Bad Tech Hires](https://mattermark.com/the-one-method-ive-used-to-eliminate-bad-tech-hires/)
[^10]: [My worst tech interview experience](https://www.jessesquires.com/blog/2021/12/01/my-worst-tech-interview-experience/)
[^11]: [Ten years of experience, still failing phone screens](https://kevin.burke.dev/kevin/phone-screens-broken/)
[^12]: [6 Red Flags I Saw While Doing 60+ Technical Interviews in 30 Days](https://meekg33k.dev/6-red-flags-i-saw-while-doing-60-technical-interviews-in-30-days)
[^13]: [Why coding interviews aren't all that bad](https://eli.thegreenplace.net/2022/why-coding-interviews-arent-all-that-bad/)
[^14]: [20 Things I’ve Learned in my 20 Years as a Software Engineer](https://www.simplethread.com/20-things-ive-learned-in-my-20-years-as-a-software-engineer/)
[^15]: [Why do companies insist on using algorithmic code tests when hiring? When this is not what they do on a day to day basis](https://r.nf/r/golang/comments/lygtgc/remote_role_interviews/)
[^16]: [Ask HN: What do companies WITHOUT a whiteboard interview ask?](https://news.ycombinator.com/item?id=24733700)
[^17]: [Hiring Developers: How to avoid the best](https://news.ycombinator.com/item?id=28431962)
