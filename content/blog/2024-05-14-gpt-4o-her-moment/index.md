+++
title = "GPT-4o: HER Went From Science Fiction to Reality"
description = "The new advanced voice and video mode is groundbreaking! Audio AI models are having their Stable Diffusion moment too."
date = 2024-05-14T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "gpt", "ai"]

[extra]
ToC = false
+++

[![](https://img.youtube.com/vi/DQacCB9tDaw/0.jpg)](https://www.youtube.com/watch?v=DQacCB9tDaw&t=706s)

[GPT-4o ("o" for "omni")](https://openai.com/index/spring-update/) is having the "HER" moment. To put it in another way, Audio[^1] AI models are having their Stable Diffusion moment too.

[HER](https://en.wikipedia.org/wiki/Her_(film)) is a 2013 sci-fi movie where Samantha, an AI virtual assistant personified through a female voice. GPT-4o shows us we are ridiculously close to this movie becoming reality.

GPT-4o is OpenAI's new model which can reason across text, audio, and video in real time. It is described as smart, fast, natively multimodal, and a step towards more natural human-computer interaction. It is extremely versatile and fun to play with.

## Thoughts and Reactions

The new voice and video mode is groundbreaking, feeling like AI from movies. It's fast, smart, fun, and natural.
It's still a bit surprising to me that it's real.

Getting to human-level response times and expressiveness turns out to be a big change.
(talking to a computer has never felt really natural for me; now it does?)

People were impressed by demos showcasing GPT-4o's real-time translation abilities, emotion detection and voice style control, and ability to sing and dramatize content.

Model capabilities, evaluations, limitations, and availability: [blog post](https://openai.com/index/hello-gpt-4o/)

[GPT-4o benchmarks](https://artificialanalysis.ai/models/gpt-4o) by Artificial Analysis.

> GPT-4o output speed of 109 tokens/s:
> - Over 5x faster than GPT-4 Turbo (~20 tokens/s)
> - Approximately twice as fast as GPT-3.5 (~55 tokens/s)

My first impressions are that GPT-4o feels **notably faster than gpt-4-turbo** [^2]. It can't beat Groq Llama-3 70B text generation speed yet.

GPT-4o will be available to all ChatGPT users, including on the free plan according. In the API, it is half the price and twice as fast as GPT-4-turbo, with 5x rate limits.

According to Simon Willison:

> not a huge leap in "intelligence" (whatever that might mean) but still very significant thanks mainly to the impressive new audio capabilities and the drop in price.

For developers, the new model itself is already available for text and image inputs via the API and in the Playground interface.

The real-time audio/video input and output represents a huge step change in user experience and will lead to more people conversing with AI.

**The argument**: GPT-4o is cool on paper but open source Voice AI is more practical.

Comparison to other models: GPT-4o surpasses GPT-4-turbo in terms of speed and quality. GPT-4o is up to 50% cheaper and 2x faster than GPT-4 Turbo. However, open-source models like Llama-3 are still 5x cheaper for pure language generation or coding use-cases. If you use GPT-4o as voice assistant, the cost can skyrocket, getting expensive really quickly.

GPT-4o audio is soft real-time with 320ms on average, similar to human conversation.

We already have a good recipe for creating true real-time Voice AI:

```
           Canary STT (alternative: Whisper Medium)
                             +
       ElevenLabs's TTS (alternative: StyleTTS2, ParlerTTS)
                             +
            Silero VAD (Voice Activation Detection)
                             +
Local Llama-3 (alternative: any models that LiteLLM/Ollama support)
                             +
           Vapi (UI) (alternative: open-source Bolna)
```

GPT-4o is an audio-to-audio model. [Gazelle](https://github.com/tincans-ai/gazelle) is one of such audio-to-audio model but open-sourced 3 month ago. (discovered from the creator's Tweet during [voice AI research](https://gist.github.com/cedrickchee/770277bd0d368f5e682389c36f3468c2))

The advantage of GPT-4o is it's multi-modal model architecture where audio and text is train end-to-end. End-to-end latency is easier to scale in multi-modal, except the tight hardware integration part (think mobile devices last-mile delivery + long-tail latency optimization can be very challenging). OpenAI developed several new methods for making tight integration between the software (model) and hardware (mobile devices). This is not so secret after all. Systems programmers at Apple understand the advantages of this method very well long time ago. The new data structure extending the token specifications for supporting audio and video is really interesting. Deployment of such model will be simplified.

Unlike GPT-4o, you need to glue all the different pieces together and then optimize the network latency between each piece if you're rolling your open source Voice AI. Despite the fact, open source Voice AI has its place.

I can really see an exciting future where we are able to use computers to do much more than ever before.

#### Reference

[^1]: Voice, speech, music

[^2]: https://simonw.substack.com/i/144607066/gpt-o
