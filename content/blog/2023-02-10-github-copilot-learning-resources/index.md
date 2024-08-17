+++
title = "Learning GitHub Copilot"
description = "Useful resources for learning GitHub Copilot and AI coding tools."
date = 2023-02-10T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "ai-coding"]

[extra]
ToC = true
+++

Useful resources for learning GitHub Copilot and AI coding tools. I will continuously update this list.

## GitHub Copilot and Alternatives

- [Captain Stack — Code suggestion for VSCode](https://github.com/hieunc229/copilot-clone) - VSCode extension for code suggestion.
- [CodeGeeX: A Multilingual Code Generation Model](https://github.com/THUDM/CodeGeeX) with VS Code and Jetbrains extensions. [[official article](https://keg.cs.tsinghua.edu.cn/codegeex/), [article](https://medium.com/@innovation64feng/codegeex-a-programming-tool-based-on-ai-has-been-updated-with-new-features-6f4964b4b7d3)]
- [FauxPilot – an attempt to build a locally hosted version of GitHub Copilot (github.com/moyix)](https://news.ycombinator.com/item?id=32327711)
- [Show HN: Codeium: Free Copilot Alternative for Vim / Neovim (github.com/exafunction)](https://news.ycombinator.com/item?id=34432809) - Be careful of this project (has telemetry dialling home)
  - Mar 2023: [Codeium for Enterprises](https://codeium.com/blog/codeium-for-enterprises): Fine-tuning models on your existing repository entirely within your self-hosted Codeium instance. Full suite of AI acceleration for coding.
- Kodezi
- [Buildt AI](https://www.buildt.ai/) VSCode extension [[Tweet](https://twitter.com/DataChaz/status/1622518642058354689)]
- [Amazon Codewhisperer](https://aws.amazon.com/codewhisperer/)
- [Facebook's InCoder](https://sites.google.com/view/incoder-code-models) [[Tweet](https://twitter.com/dan_fried/status/1514265047761043456), [Paper](https://arxiv.org/abs/2204.05999)]
- [Salesforce's CodeGen](https://github.com/salesforce/CodeGen) [[Blog post](https://blog.salesforceairesearch.com/codegen/)]
- [BigCode](https://www.bigcode-project.org/)
- [Magic](https://magic.dev/) - Software that builds software.
- [Blackbox](https://www.useblackbox.io/)
- [Codium AI](https://www.codium.ai/)

## LLMs

- Codex by OpenAI
- SantaCoder by HuggingFace [HN: https://news.ycombinator.com/item?id=34097642]
  - "Is anyone else here building AI programming services based on models like this? I see a lot of comments saying the models can't do much programming. But I just suspect there must be a silent contingent that is also working on services like that. And maybe less likely to promote the abilities of these models because it encourages competition."
    - "We're building tools like this at Grit: https://www.grit.io/ These kinds of models are particularly good at repetitive, boring work like refactoring legacy code and completing framework migrations. Unlike Copilot, we've specialized specifically in these areas and completing them end-to-end (instead of just sitting in the IDE, we open already-verified PRs)."
    - "There's replit. Constantly announcing new features around such models. They'd introduced "ghostwriter" a while back and yesterday or so they announced ghostwriter chat."
  - "There are a bunch of really good ideas used to train this model - multi query attention, infilling, near deduplication and dataset cleaning."

## ChatGPT-like

- [askGPT extension for VSCode](https://marketplace.visualstudio.com/items?itemName=cloudcli.askgpt)
- [KnowledgeGPT](https://github.com/mmz-001/knowledge_gpt) - A question-answering tool for your documents that includes citations in its responses! 🔥

## Experimental

- Copilot Labs: https://cs.github.com , GitHub Next (We are a team of researchers and engineers at GitHub who investigate the future of software development.)
- [GitHub Copilot CLI (2023)](https://githubnext.com/projects/copilot-cli/) by GitHub Next team. They investigates the future of software development.


## Tweets

Examples and things I learned from various Tweets:

- [You can use copilot to *ask* what a regex in your codebase does. It'll even give you test cases.](https://twitter.com/BHolmesDev/status/1587788026637336576?t=lDiF7d9lPhDOIe0E6qdsZg&s=09)
- [Tired of forgetting terminal commands every 10 seconds? GPT-3.5 powered terminal commands - probably the biggest productivity hack you can install today :)](https://twitter.com/KevinAFischer/status/1601883697061380096)
- [My code comments were there to help the humans. Now they are there to help the copilot. Before they were for humans, now they aid the AI. It's a new way of coding, I can't deny.](https://twitter.com/karpathy/status/1607104323175211008?t=0d0u6blPBPySgYnBTGn9Rg&s=09)
- [Nice read on reverse engineering of GitHub Copilot 🪄. Copilot has dramatically accelerated my coding, it's hard to imagine going back to "manual coding". Still learning to use it but it already writes ~80% of my code, ~80% accuracy. I don't even really code, I prompt. & edit.](https://twitter.com/karpathy/status/1608895189078380544?t=QBbPSxACvnjpxDD8dRliAg&s=09)
- [github copilot feels like the blue-print for building AI-enabled applications. rich feature engineering, context stuffing, client-side request and response filtering, transparent telemetry collection, etc. much more than a wrapper around an OpenAI api.](https://twitter.com/FrankieIsLost/status/1610424956512514048)
- [Interesting work by Barke et al. on grounded theory analysis of CoPilot... Among the findings, one design choice that never made sense to me: the need to prompt the AI using an *in-line* comment that then sticks around in the repo. Devs delete these:](https://twitter.com/IanArawjo/status/1610309475587747841)
- [I put together a tutorial on automatically repairing C compiler errors. ...](https://twitter.com/josepablocam/status/1621615839861686272)
- [🤖 Github Copilot Pro Tip: Describe what your function should do in a comment before you implement the function.](https://twitter.com/erikras/status/1460562819452129284)
- [I used GitHub's Copilot to write this unit test by typing "func T" followed by pressing the "tab" key 5 times.](https://twitter.com/kelseyhightower/status/1617688243235086338)
- [Overheard from 10x engineer: "I would never work for a company that won’t allow me to use GitHub copilot and chatGPT — there is no going back"](https://twitter.com/jkronand/status/1621914803253149699)
- [GitHub Copilot has been getting noticeably better, it's now getting a lot more long-distance and cross file context](https://twitter.com/ejmejm1/status/1622139360543125506)
- [Announcing Ghostwriter Chat](https://twitter.com/Replit/status/1625916916593463296) from Replit - The first conversational AI built right into your IDE, complete with a proactive Debugger. Generate, debug, refactor, and understand code faster than ever. Available today in Beta.
- [This is by far the biggest impact feature since using other tabs for context. Game changer that's long overdue for GA](https://twitter.com/alexgraveley/status/1626137293022011394) - **Copilot is now (Feb 2023) using Codex’s Fill In the Middle capability to provide context from after the cursor to the model, giving more accurate completions**.

## Articles and Blog Posts

- [Refactoring code with ChatGPT](https://david.coffee/refactoring-code-with-chat-gpt/)
- [The Ultimate Manual to GitHub Copilot](https://nira.com/github-copilot/)
- [8 things you didn’t know you could do with GitHub Copilot](https://github.blog/2022-09-14-8-things-you-didnt-know-you-could-do-with-github-copilot/)
- [Getting the most from GitHub Copilot](https://shift.infinite.red/getting-the-most-from-github-copilot-8f7b32014748)
- [How to Use GitHub Copilot Effectively](https://matt-rickard.com/having-a-copilot)
- [Coding with GitHub Copilot](https://www.tanishq.ai/blog/github_copilot)
- [What Building "Copilot for X" Really Takes](https://lspace.swyx.io/p/what-building-copilot-for-x-really) - Note from swyx: I'm delighted to present our first guest post! This comes from the Codeium team. This small team blew away my expectations by creating a complete Copilot clone in one month (not exaggerating - I have disabled GitHub Copilot completely to use them, in part to beta-test [_Hey Github_](https://techcrunch.com/2022/11/10/github-teases-new-copilot-feature-that-lets-developers-code-with-their-voice/), but also Codeium seems a bit faster!)
- [AI Code Assistants: Head to Head](https://www.codeium.com/blog/code-assistant-comparison-copilot-tabnine-ghostwriter-codeium)
- [Can Amazon's CodeWhisperer Write Better Python than You?](https://blog.symops.com/2022/08/31/amazon-codewhisperer/)
- [Code-generating platform Magic challenges GitHub's Copilot with $23M in VC backing](https://techcrunch.com/2023/02/06/magic-dev-code-generating-startup-raises-23m/)
  - [Hugging Face and ServiceNow launch BigCode, a project to open source code-generating AI systems](https://techcrunch.com/2022/09/26/hugging-face-and-servicenow-launch-bigcode-a-project-to-open-source-code-generating-ai-systems/)

## HN

- [Copilot and Conversational Programming (jessmart.in)](https://news.ycombinator.com/item?id=27712626)
- [GitHub Copilot: First Impressions (vladiliescu.net)](https://news.ycombinator.com/item?id=27872116)
- [Kodezi - Autocorrect for Programmers (kodezi.com)](https://news.ycombinator.com/item?id=34485364)
- [GitHub Copilot Labs (github.com/github)](https://news.ycombinator.com/item?id=29405426)
- [Copilot Internals (thakkarparth007.github.io)](https://news.ycombinator.com/item?id=34032872)
- [Diff Models – A New Way to Edit Code (carper.ai)](https://news.ycombinator.com/item?id=34556688)
- [Ask HN: What are your favourite free Copilot alternatives?](https://news.ycombinator.com/item?id=31827002)
- [Ask HN: Are there any decent GitHub Copilot Alternatives?](https://news.ycombinator.com/item?id=32521452)
- [Coping with Copilot (sigarch.org)](https://news.ycombinator.com/item?id=32532438)
- [Copilot just got company: Amazon announced Codewhisperer (amazon.com)](https://news.ycombinator.com/item?id=31851373)
- [Build your own GitHub Copilot with Salesforce CodeGen AI [video] (youtube.com)](https://news.ycombinator.com/item?id=31934400)
  - "I implemented a "mini" version of Copilot using EleutherAl GPT-Neo-2.7B and HuggingFace model hub and wrote a wrapper to use in emacs -- https://github.com/samrawal/emacs-secondmate"
- [The VSCode GitLab extension now supports getting code completions from FauxPilot (twitter.com/moyix)](https://news.ycombinator.com/item?id=33210306)
  - "This is super awesome, too bad a A6000 cost $4500 or I would try this out myself."
    
    - "The smaller models run on smaller GPUs too! :) You can see how much VRAM is required for various models in the Documentation: https://github.com/moyix/fauxpilot/blob/main/documentation/server.md#setup"
    
    - "A planned feature is to implement INT8 and INT4 support for the CodeGen models, which would let the models run with much less VRAM (~2x smaller for INT8 and ~4x for INT4) :)"

   - "I know there seem to be a few different models to choose from, does anyone have a resource that collects them and shows the strengths and weaknesses of the various options? Also, how do they compare to copilot?"
    
    - "Unfortunately, Copilot is a lot more capable. Most important is that it works with many more languages out of the box, is continuously updated, has more mathematical plus scientific knowledge and is better at understanding your comments. ..."
- [I figured out how to get GitHub Copilot to run in the terminal (github.com/maxwell-bland)](https://news.ycombinator.com/item?id=32846691)
- [Is GitHub Copilot a blessing, or a curse? (fast.ai)](https://news.ycombinator.com/item?id=27889967) <!-- ALREADY READ -->
- [Part of my code makes Copilot crash (github.com/orgs)](https://news.ycombinator.com/item?id=32338469)
- [Copilot sells code other people wrote (twitter.com/reinh)](https://news.ycombinator.com/item?id=31846543)
- [GitHub Copilot is generally available (github.blog)](https://news.ycombinator.com/item?id=31825742)

## Papers

- [MultiPL-E: A Scalable and Extensible Approach to Benchmarking Neural Code Generation](https://arxiv.org/abs/2208.08227), 2022
- [The Programmer's Assistant: Conversational Interaction with a Large Language Model for Software Development](https://arxiv.org/abs/2302.07080) by IBM, 2023.
- [How should AI systems behave, and who should decide?](https://arxiv.org/abs/2210.14306) by MIT and Microsoft Research, 2022.
- [Learning Performance-Improving Code Edits](https://arxiv.org/abs/2302.07867) by CMU et al., 2023 - Project (code and dataset) are available at https://pie4perf.com/ TL;DR: Allows CODEGEN to match the performance of 10x bigger CODEX on the task of suggesing functionally correct, performance improving code edits. [[Tweet](https://twitter.com/arankomatsuzaki/status/1626032689110306818)]
- [LEVER: Learning to Verify Language-to-Code Generation with Execution](https://arxiv.org/abs/2302.08468) [[Tweet](https://twitter.com/johnjnay/status/1626935323321049089?t=g1fGmfbJEj8NTTg-NXKRPw&s=09)]
- [Parsel: A (De-)compositional Framework for Algorithmic Reasoning with Language Models (PDF)](https://zelikman.me/parselpaper/parsel_paper.pdf) [[Tweet](https://twitter.com/ericzelikman/status/1618426056163356675)]
- [Meet in the Middle: A New Pre-training Paradigm](https://arxiv.org/abs/2303.07295) [[Tweet](https://twitter.com/WeizhuChen/status/1635498612938670080)]

## Opinions

- FauxPilot
  - [FauxPilot: It's like GitHub Copilot but doesn't phone home to Microsoft](https://www.theregister.com/2022/08/06/fauxpilot_github_copilot/)
    
    > Not a perfect world
    >
    > FauxPilot doesn't use Codex. It relies on Salesforce's CodeGen model. However, that's unlikely to appease FOSS advocates because CodeGen was also trained using public open-source code without regard to the nuances of different licenses.
    >
    > the primary goal of FauxPilot is to provide a way to run the AI assistance software on-premises.
    >
    > GitHub, in its description of what data Copilot collects, describes an option to disable the collection of Code Snippets Data, which includes "source code that you are editing, related files and other files open in the same IDE or editor, URLs of repositories and files paths."
    >
    > Dolan-Gavitt said he sees FauxPilot as a research platform.
    >
    > "My personal feeling on this is I've had Copilot turned on basically since it came out last summer," he explained. "I do find it really useful. That said, I do kind of have to double check its work. But often, it's often easier for me at least to start with something that it gives me and then edit it into correctness than to try to create it from scratch."
    >
    > Updated to add
    >
    > Dolan-Gavitt has warned us that if you use FauxPilot with the official Visual Studio Code Copilot extension, the latter will still send telemetry, though not code completion requests, to GitHub and Microsoft.

- Amazon Codewhisperer
  > AWS developer tools like CodeCommit are just horrible. Seems like they crank out something with just the minimal amount of features to say they are competitive.
  >
  > The reason they announced this is specifically to capitalise on GitHub CoPilot becoming paid.
  >
  > Seems much more limited than copilot regarding supported languages.
  >
  > This at least seems directly in response to code copyright/licensing concerns raised with CoPilot.
  > - At least this will tell you the code it generates is close to something in its training set and tell you the license that code is under. So it’s got that going for it.
  >
  > Classic AWS...ripping off GitHub CoPilot.

## Hacks

- [charliermarsh/autobot](https://github.com/charliermarsh/autobot) - An automated code refactoring tool powered by GPT-3. Like GitHub Copilot, for your existing codebase.
- [copilot-hijacks](https://github.com/ckoshka/copilot-hijacks) - A collection of prompt-scripts that can make Copilot suggest fonts, translate languages, debug errors, and more.
- [prompt_builder_for_copilot](https://github.com/grahamwaters/prompt_builder_for_copilot) - An assistant to walk you through crafting your perfect, explicit prompt for GitHub Copilot.
- [Code-Pile](https://github.com/CarperAI/Code-Pile) by Carper.AI - This repository contains all the code for collecting large scale amounts of code from GitHub.

## Awesome Copilot

- [Awesome GitHub Copilot](https://github.com/program247365/awesome-github-copilot)
- [Awesome-Code-AI](https://github.com/sourcegraph/awesome-code-ai) - A list of AI coding tools (assistants, completions, refactoring, etc.)

## Copilot vs ChatGPT

- [Is ChatGPT3 an alternative to Github Copilot?](https://r.nf/r/ChatGPT/comments/zybvx2/is_chatgpt3_an_alternative_to_github_copilot/)
  > Been surprised to see that ChatGPT3 is not only able to generate code, but also explain it.
- [How does ChatGPT compare to GitHub Copilot for programming?](https://r.nf/r/ChatGPT/comments/zl2fjq/how_does_chatgpt_compare_to_github_copilot_for/)
  > ChatGPT (which I also didn't use extensively yet) for me adds a very different quality. You can ask it to debug, explain why a certain error occurs, and keep asking it until the code actually works. And it not only debugs or writes code, it actually explains it. It explains why errors occur, what might be an issue, gives you alternatives.
  >
  > I would love to have this functionality from within programming environment; I really hope that Copilot gets updated with some of this functionality. At the very least, I hope that ChatGPT will receive a subscription-based API, so that I can access it programmatically at some sensible price.
- [How does ChatGPT compare to GitHub Copilot for coding?](https://r.nf/r/OpenAI/comments/zl2e52/how_does_chatgpt_compare_to_github_copilot_for/)
  > ChatGPT is good to get broad architectural outlines while Copilot is excellent for short snippets. Both do reasonably well but copilot is better integrated into vscode and it's a nicer UX.
  >
  > Copilot uses the codex model while ChatGPT uses the bigger, more generic gpt3 davinci model
- [ChatGPT vs Github Copilot](https://r.nf/r/AskProgramming/comments/zg7cn7/chatgpt_vs_github_copilot/)
  > I have been using copilot every day professionally for a couple of months now, and ChatGPT this week.
  >
  > 1. For asking general questions, ChatGPT is generally easier to work with. E.g. 'This code I wrote isn't working, I'd like it to do X, but it fails at Y, can you tell me why it is failing?'
  >
  > 2. For one-off utilities and functions in languages I don't regularly use, they're both excellent. For ChatGPT, I would write it a prompt asking what I want it to do, and for Copilot I would open a new file and describe the desired behavior in comments.
  >
  > 3. Once it your Copilot 'gets the hang of' your codebase, it is invaluable. It learns your style conventions and will adapt to your suggestions. It really speeds up the amount of characters you can get on to the page, and makes refactoring easier as well.
  >
  > 4. When I want some inspiration for a way to approach a given problem, I find copilot's suggestions are all a bit samey, with minor variations. It is easier to use ChatGPT for inspiration / exploratory work because you can tell it what parts you don't like and how you'd like to change it, and even get it to give you its opinion on whether that's a good idea.
  >
  > I any event I think both are very useful tools to have in your toolbox and I recommend them to my teammates.
  
  > I am using github copilot for almost an year and recently came across chatgpt here are couple of key points on how to use one of them in a given scenario.
  >
  > - GithubCopilot works very well if you are using it from the start of the project it can quickly fill up functions, assign variable names , pick up algorithms for sorting and selecting and have a general idea of how you code, this is a key point because most of its suggestions are based on your style of programming, using copilot at the middle of the project it seems to provide solutions that needs to re write the existing solution that i have.
  >
  > - Chatgpt is more like a AI assistant where you can provide it a piece of code and ask it to optimize it it surprisingly comes up with a great and easy solution which is code when you want to refactor your code. Chatgpt is also nice in asking for suggestion like for example when to use Action and Func and use cases of anonymous functions a/c to your project for safety and security purposes.
  >
  > Summary: Both works in different way and provides optimal solution if you ask we how to define them i would say. GithubCopilot works with you and makes you work faster and effective where Chatgpt provides you improvements and alternative methods to do your work efficiently.
  
  > i was using Tabnine for a long time and switched recently to GitHub Copilot. I feel tabnine is less annoying and more predictable than Copilot. Regarding [ChatGPT vs Github Copilot vs TabNine](https://eremeev.ca/posts/github-copilot-my-experience/) I've tried to combine my experience in an article, but i think i will go back to tabnine.
  
  > Both ChatGPT as well as Copilot use a modified version of the GPT 3 model so technically they're rather equal. The difference is in the models that these two AIs have been trained on. Copilot uses all the endless resources found on Github and is clearly geared towards writing code while ChatGPT is trained with a model that is aiming to resemble natural language. I guess that's probably the key difference.
  
- [Writing Code with Github Copilot and ChatGPT Together — I](https://medium.com/databulls/writing-code-with-github-copilot-and-chatgpt-together-i-e5329b8b91a8)
- [ChatGPT is significantly superior to copilot, when will it get upgraded?](https://github.com/community/community/discussions/41551)
  - General consensus from the comments:
    - ChatGpt is far superior to Copilot.
    - You should not "affirm" your beliefs so strongly without actually informing yourself properly on a subject.
- [Battle of the Giants: GitHub Copilot vs ChatGPT ⚔️⚔️](https://dev.to/ruppysuppy/battle-of-the-giants-github-copilot-vs-chatgpt-4oac)

## References

I referenced the following stuffs while creating my learning resources:

- [What are your favorite new coding tools?](https://twitter.com/__embed/status/1600557516324163584?t=Lzq2sEQthDTW2IQTwjcYYQ&s=09)
- [Top 9 GitHub Copilot alternatives to try in 2022 (free and paid)](https://www.tabnine.com/blog/github-copilot-alternatives/)
- [GitHub Copilot is No Longer Free. Here are 3 Free Alternatives!](https://enlear.academy/github-copilot-is-no-longer-free-here-are-3-free-alternatives-d4266f165739)
- [Comparing Github Copilot and Replit Ghostwriter](https://docs.replit.com/power-ups/ghostwriter/copilot-vs-ghostwriter)
