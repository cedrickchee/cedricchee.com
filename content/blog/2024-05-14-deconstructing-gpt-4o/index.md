+++
title = "Deconstructing GPT-4o"
description = "Tech dive into GPT-4o covering techniques and data, system, and tricks."
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

I know your timeline is flooded now with word salads of "insane, HER, 10 features you missed, we're so back". Sit down. Chill. <gasp> Take a deep breath like Mark does in the demo </gasp>. Let's think step by step:

## Techniques and Data

- Technique-wise, OpenAI **has figured out a way to map audio to audio directly as first-class modality**, and **stream videos to a transformer [^1] in real-time**. These require some new research on tokenization and architecture, but overall it's a data and system optimization problem (as most things are).

High-quality data can come from at least 2 sources: 

1) **Naturally occurring dialogues on YouTube, podcasts, TV series, movies** [^2], etc. Whisper can be trained to identify speaker turns [^3] in a dialogue or separate overlapping speeches for automated annotation.

2) Synthetic data. Run the **slow 3-stage pipeline using the most powerful models**: speech1->text1 (ASR), text1->text2 (LLM), text2->speech2 (TTS). The middle LLM can decide when to stop and also simulate how to resume from interruption. It could output additional "thought traces" that are not verbalized to help generate better reply.

Then GPT-4o distills directly from speech1->speech2, with optional auxiliary loss functions based on the 3-stage data. After distillation, these behaviors are now baked into the model without emitting intermediate texts.

## System

On the system side: the latency would not meet real-time threshold if every video frame is decompressed into an RGB image. OpenAI has likely developed their own **neural-first, streaming video codec to transmit the motion deltas as tokens**. The **communication protocol and neural network inference must be co-optimized**.

For example, there could be a small and energy-efficient neural network running on the edge device that decides to transmit more tokens if the video is interesting, and fewer otherwise.

- **I didn't expect GPT-4o to be closer to GPT-5**, the rumored **"Arrakis" model that takes multimodal in and out**. In fact, it's likely an early checkpoint of GPT-5 that hasn't finished training yet.

The branding betrays a certain insecurity. Ahead of Google I/O, **OpenAI would rather beat our mental projection of GPT-4.5 than disappoint by missing the sky-high expectation for GPT-5. A smart move to buy more time.**

- Notably, the assistant is much more **lively and even a bit flirty**. **GPT-4o is trying (perhaps a bit too hard) to sound like HER**. OpenAI is eating Character AI's lunch, with almost 100% overlap in form factor and huge distribution channels. It's **a pivot** towards more emotional AI with strong personality, which OpenAI seemed to actively suppress in the past.

- **Whoever wins Apple first wins big time**. I see 3 levels of **integration with iOS**:
  1) Ditch Siri. OpenAI distills a smaller-tier, purely on-device GPT-4o for iOS, with optional paid upgrade to use the cloud. 
  2) Native features to stream the camera or screen into the model. Chip-level support for neural audio/video codec. 
  3) Integrate with iOS system-level action API and smart home APIs. No one uses Siri Shortcuts, but it's time to resurrect. This **could become the AI agent product with a billion users from the get-go**. The FSD for smartphones with a **Tesla-scale data flywheel**.

## Tricks

Well-known and new tricks:

- The audio ability to respond with (an average 300ms, down from ~3000ms) low latency | [Tweet](https://twitter.com/karmedge/status/1790084650582397118?t=90xQ8sGy63D2OtiaoGJuww).
- Assistant handle interruptions and sing - VAD (Voice Activation Detection) handle that.
- Speak faster or in pirate/whale - style TTS handle that. can have different emotion (style)
- The tiktokenizer update revealed an expanded 200k vocab size that makes non-English cheaper or more native.

## What's new new

- Desktop app that has the ability to read from the screen and clipboard history. (are they about to challenge the desktop agent startups like Adept or Multion?)

---

Credit to: Jim Fan's [Tweet](https://twitter.com/DrJimFan/status/1790089671365767313)

[^1]: [Correction](https://twitter.com/iamRezaSayar/status/1790151469758546430)

[^2]: Whoever said we are running out of data, they didn't try hard enough.

[^3]: Silero VAD (Voice Activation Detection) model does that too some time back and it works well.

<!--
Correction:

I stand corrected: GPT-4o does NOT natively process video stream. The blog says it only takes image, text, and audio. That's sad, but the principle I said still holds: the right way to make a video-native model efficient is to co-develop the streaming codec on edge device.

Gemini seems to treat video as first-class citizen. Let's see how Google I/O goes tomorrow.
-->
