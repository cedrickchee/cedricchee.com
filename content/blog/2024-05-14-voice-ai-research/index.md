+++
title = "Voice AI Research"
description = "Make computers talk like human. My attempts and some notes about them, along the way."
date = 2024-05-14T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["audio_ai", "tts", "ai"]

[extra]
ToC = true
+++

Goal: make computers talk like human.

My notes from audio (voice + speech) AI research started in 2023.

## Emerging Research

### Audio-to-audio Models

Audio-to-audio or more precisely speech-to-speech models are trained end-to-end.

It's multimodal model = Audio Speech Recognition (ASR)/TTS + TTS + Language Model

- [Gazelle](https://github.com/tincans-ai/gazelle) is an open-sourced audio-to-audio model. real-time conversational speech with large language models. Website: https://tincans.ai/ Demo: [Tweet](https://twitter.com/hingeloss/status/1780718391461925049)
  
> This demo uses Gazelle, the world's first public LLM with direct audio input. By skipping transcription decoding, we save time and can operate directly on speech - with inflection, tone, emotion, etc.

  - Discussions: [Real-time voice chat with AI, no transcription (tincans.ai)](https://news.ycombinator.com/item?id=39759147)

- https://github.com/google-deepmind/deepmind-research/tree/master/perceiver - Perceiver [1] is a general architecture that works on many kinds of data, including images, video, audio, 3D point clouds, language and symbolic inputs, multimodal combinations, etc.
- [CoDi-2: In-Context, Interleaved, and Interactive Any-to-Any Generation (paper)](https://codi-2.github.io/)
- [SpeechGPT: Empowering Large Language Models with Intrinsic Cross-Modal Conversational Abilities (paper)](https://arxiv.org/abs/2305.11000) by Fudan U, May 2023 - This paper is a great introduction to speech-to speech modeling and details many of the challenges and needed datasets.
- https://github.com/alibaba-damo-academy/FunASR

- [Audiobox: Meta's new foundation research model for audio generation (meta.com)](https://news.ycombinator.com/item?id=38554691)
- [OpenVoice: Versatile instant voice cloning (myshell.ai)](https://news.ycombinator.com/item?id=39861578)

## TTS

Classic and modern Text-To-Speech (TTS) models and technologies.

- [ElevenLabs](https://elevenlabs.io/)
  - ElevenLabs has developed AI models and tools for creating AI-generated voices with different languages, accents and emotions.
  - Funding
    - [ElevenLabs launches new generative voice AI products and announces 19m series A round](https://elevenlabs.io/blog/elevenlabs-launches-new-generative-voice-ai-products-and-announces-19m-series-a-round-led-by-nat-friedman-daniel-gross-and-andreessen-horowitz/)
    
> ElevenLabs today launches a set of new product developments, enabling anyone to create an entire audiobook on the platform in a matter of minutes, and an AI speech detection model
> Since launch, ElevenLabs has amassed over 1 million registered users who have generated over 10 years worth of audio content.
>
> ElevenLabs tools can turn any text into speech using synthetic voices, cloned voices, or by creating entirely new artificial voices that can be tailored according to gender, age, and accent preferences. Through its research, ElevenLabs has been able to achieve a new level of speech quality that is almost indistinguishable from a real human with sub-1 second latency.

  - Voice AI startup ElevenLabs gains unicorn status after latest fundraising

  - [Sonia Health](https://www.soniahealth.com/) backed by ElevenLabs - Mental Health for Every Mind

- [StyleTTS2 – open-source Eleven-Labs-quality Text To Speech (github.com/yl4579)](https://news.ycombinator.com/item?id=38335255)
  - [StyleTTS 2 Setup Guide](https://llm-tracker.info/howto/StyleTTS-2-Setup-Guide)
  - [Vokan TTS](https://huggingface.co/ShoukanLabs/Vokan) - A StyleTTS2 fine-tune, designed for expressiveness.
- HuggingFace's [Parler TTS](https://github.com/huggingface/parler-tts)

> A female speaker with a soft-pitched voice delivering his words at a normal pace with a very clear audio and an angelic tone.
> 
> A female speaker with an angelic voice delivering her words at a normal pace with a very clear audio and an nice tone.

- [Any recommendation for human like voice AI model for conversation AI?](https://news.ycombinator.com/item?id=38872885)
  - Mozilla's TTS - good
  - TorToiSe TTS - good quality but slow. note: successor of Mozilla's TTS
    - For offline/local TTS, [Coqui TTS](https://github.com/coqui-ai/TTS) is quite good.
      It's essentially a continuation of Mozilla's TTS engine that Mozilla stopped working on ~2 years ago (and IIRC it's largely the same team that worked on Mozilla TTS).
    - There is also [this project](https://github.com/152334h/tortoise-tts-fast), which aims to optimize and accelerate Tortoise TTS inference
  - Mycroft's mimic3 - fast latency
- [Coqui](https://github.com/coqui-ai/TTS) is a deep learning toolkit for Text-to-Speech, battle-tested in research and production.
- [Zero-Shot Speech Editing and Text-to-Speech in the Wild (paper)](https://arxiv.org/abs/2403.16973) (Apr 2024) - [VoiceCraft code](https://github.com/jasonppy/VoiceCraft)
- [Does any other TTS on the market stand up to?](https://www.reddit.com/r/ElevenLabs/comments/17j9vee/does_any_other_tts_on_the_market_stand_up_to/)
  
>  [This](https://voice.fixie.ai/tts) was posted yesterday as an interesting tech/pricing focused view of a few

- [Neets vs. ElevenLabs](https://unrealspeech.com/compare/neets-ai-vs-elevenlabs)
  - [Neets](https://blog.neets.ai/p/introducing-neets-tts) - Stop overpaying for quality TTS.

> Where are we going? Last two miles.
> 
> Right now, there is a very uncanny valley in text-to-speech. Some
speech-to-text model (usually whisper) decodes the user’s speech to text
or directly transmits text to a large language model. That large language
model generates a text response. This is fed to a TTS API and then
streamed to the user. There is no backchanneling, just silence while
compute is churned. If that is more than 500 milliseconds, the effect is
very odd, almost like a very long-distance phone call. Even if it is very
fast, the lack of any noise whatsoever from the putative speaker is eerie
and destroys immersion. We hope to release a real-time always-on dialogue
agent at some point next year. This, in our opinion, is the true last
mile in text-to-speech. After that, the robots have won.

- [What's the best TTS engine you've heard?](https://news.ycombinator.com/item?id=35266151)
  - [Edge TTS](https://github.com/rany2/edge-tts)

- Reddit discussion: [anyone played and experimented with StyleTTS2?](https://www.reddit.com/r/speechtech/comments/1aqm6x1/anyone_played_and_experimented_with_styletts2/)

## STT

Classic and modern Speech-To-Speech (STT) models and technologies.

- OpenAI's [Whisper v3, new generation open source ASR model](https://github.com/openai/whisper/blob/main/model-card.md#release-date)
  - Discussion: [OpenAI releases Whisper v3](https://news.ycombinator.com/item?id=38166965)
  - Tweet: [Distil-Whisper v3](https://twitter.com/reach_vb/status/1770933042686632384)

>   Available with 🦀 WebGPU, Whisper.cpp, Transformers, Faster-Whisper and Transformers.js support!

- Reddit discussion: [Which STT API do I have to choose?](https://www.reddit.com/r/speechrecognition/comments/10wxlup/which_speechtotext_api_do_i_have_to_choose/)
    - "Deepgram, Whisper"

- NVIDIA's Parakeet and Canary model
  - Top of [HF Open ASR leaderboard](https://huggingface.co/spaces/hf-audio/open_asr_leaderboard):
    - Latency: Parakeet-TDT-1.1b
    - Low WER: Canary-1b
  - [New Model: NVIDIA's Parakeet STT models beat whisper-large-v3](https://www.reddit.com/r/LocalLLaMA/comments/1al7g92/new_model_nvidias_parakeet_stt_models_beat/)
  - [Speech-to-Text Benchmark: 47,638 mins transcribed per $1 on RTX3070 Ti (1000-fold cost reduction than managed services)](https://www.reddit.com/r/MachineLearning/comments/1b2m24h/p_speechtotext_benchmark_47638_mins_transcribed/)
  - [NVIDIA Speech and Translation AI Models Set Records for Speed and Accuracy](https://developer.nvidia.com/blog/nvidia-speech-and-translation-ai-models-set-records-for-speed-and-accuracy/)
- Deepgram
  - [Uncovering Voicebots: Secrets to building voice AI agents](https://deepgram.com/learn/uncovering-voicebots-secrets-to-building-voice-ai-agents)
  - [Introducing New Audio Intelligence Models for Sentiment, Intent, and Topic Detection](https://deepgram.com/learn/ai-speech-audio-intelligence-sentiment-analysis-intent-recognition-topic-detection-api)
    - [Product Showcase: Audio Intelligence](https://deepgram.com/events/product-showcase-audio-intelligence)

## Voice Platform

User Interface, Cloud service providers.

### Vapi

- [Vapi launch at ProductHunt](https://www.producthunt.com/products/vapi)
- Application
  - Tweet: [Eugene Yan created an AI personal coach (demo)](https://twitter.com/eugeneyan/status/1770850800232796595)
    - Something similar: [Suno Chat](https://www.suno.chat/) - The future of personal growth is here. Like chatting with your best friend, 24/7. A judgement-free zone made just for you.
- [Achieving PMF in voice AI](https://blog.vapi.ai/achieving-product-market-fit-in-voice-ai/)
- [YC-backed productivity app Superpowered pivots to become a voice API platform for bots](https://techcrunch.com/2023/11/10/yc-backed-productivity-app-superpowered-pivots-to-become-a-voice-api-platform-for-bots/)

### Open Source Softwares

- [Bolna](https://github.com/bolna-ai/bolna) - End-to-end platform for building voice first multimodal agents.
  - Discussions:
    - [Open source projects for connecting LLMs, TTS and STT (bolna.dev)](https://news.ycombinator.com/item?id=39764436)
    - [OSS voice based conversational API with <1sec latency and other nuances (bolna.dev)](https://news.ycombinator.com/item?id=39841965)
- [BUD-E](https://laion.ai/blog/bud-e/) - LAION's BUD-E: Enhancing AI voice assistants' conversational quality, naturalness and empathy.
- [LocalAIVoiceChat](https://github.com/KoljaB/LocalAIVoiceChat) - `Local AI Voice Chat = llama_cpp with Zephyr 7B + RealtimeSTT with faster_whisper + RealtimeTTS with Coqui XTTS`

### Real-time Human Conversational AI Systems

- Fixie.ai - scaling real-time human conversational AI systems.
  CTO: [Justin Uberti](https://twitter.com/juberti), ex-Google, created WebRTC and Google Duo; tech lead for Stadia, Hangouts.

  Human conversations are fast, typically around 200ms between turns, and we think LLMs should be just as quick.
  This site, [TheFastest.ai](https://thefastest.ai/) provides reliable measurements for the performance of popular models.

## Applications

- Text editor
  - [Aqua Voice (YC W24) – Voice-driven text editor launch](https://news.ycombinator.com/item?id=39828686)
    
> Since voice-to-text has gotten so good ...
> 
>   Your big challenge right now is just that STT is still relatively slow for this usecase. Time will be on your side in that regard as I'm sure you know.
> 
>   Voice is the future of a lot of the interactions we have with computers.
> 
> Not trying to hijack this. Great demo! But STT can be very much real-time now.
> Try SoundHound's transcription service available through the Houndify platform [0] (we really don't market this well enough).
> It's lightning fast and it's half of what powers the Dynamic Interaction demos that we've been putting out.

- [Retell AI (YC W24) – Conversational Speech API for Your LLM launch](https://news.ycombinator.com/item?id=39453402)

> Build AI Voice Agents that interact like humans, execute complex tasks, follow instructions, use any LLM

  Precursor and alternative? [SoundHound Dynamic Interaction demo](https://www.soundhound.com/newsroom/press-releases/launch-of-soundhound-dynamic-interaction-marks-new-groundbreaking-era-for-human-computer-interaction/). Thats's fast!

- Framework
  - [Livekit Agents](https://github.com/livekit/agents) - Build real-time multimodal AI applications 🤖🎙️📹 

- [ChatGPT with voice is now available to all free users (twitter.com/openai)](https://news.ycombinator.com/item?id=38370252)

## Voice Cloning (Synthetic Voices)

- [Real-Time-Voice-Cloning](https://github.com/CorentinJ/Real-Time-Voice-Cloning) - Clone a voice in 5 seconds to generate arbitrary speech in real-time.
- [Navigating the Challenges and Opportunities of Synthetic Voices](https://openai.com/blog/navigating-the-challenges-and-opportunities-of-synthetic-voices) by OpenAI
- [MockingBird](https://github.com/babysor/MockingBird)
  - "This repository is forked from [Real-Time-Voice-Cloning](https://github.com/CorentinJ/Real-Time-Voice-Cloning) which only support English."

- [GPT-SoVITS](https://github.com/RVC-Boss/GPT-SoVITS) - 1 min voice data can also be used to train a good TTS model! (few shot voice cloning).

## Text-To-Audio

Music Generative AI:

- [Tango 2](https://huggingface.co/spaces/declare-lab/tango2)

## Uncategorized

- [HF diarizers](https://github.com/huggingface/diarizers)
  - Based on [pyannote-audio](https://github.com/pyannote/pyannote-audio/tree/main)
    - Neural building blocks for speaker diarization: speech activity detection, speaker change detection, overlapped speech detection, speaker embedding
- [Personal AI, Pi](https://inflection.ai/press) - Pi is designed to be a kind and supportive companion offering conversations, friendly advice, and concise information in a natural, flowing style.

## Communities

- [Are you using Voice AI?](https://news.ycombinator.com/item?id=35968686)
  
> the tech is very good, but not quite there yet I don't think, it's extremely close though.
>
> While ElevenLabs seems the best, it's a shame it lacks the ability to edit the clips a little more like some of the other tools have, for speeding up certain words, making them louder or adding in some emotion. The other tools do this far better, however they sound robotic, i'm exploring if this could be achieved with some manual editing.
> I'd go over quota pretty quickly. I imagine the cost will come down.
>
> I’d like a TTS which is emotionally expressive and can be used for video game characters.

- [Are Voice AI Pipeline Platforms a Race to the Bottom?](https://news.ycombinator.com/item?id=39719570)
  
> "VoiceAI" platform examples are Vapi.ai (the best in my opinion), Bland.ai, Toma.so, Retell AI, Infer.so, Marr Labs, Elto.ai
>
> Voice examples are - playht, elevenlabs, amazon polly

- [PlayHT2.0: State-of-the-Art Generative Voice AI Model for Conversational Speech (play.ht)](https://news.ycombinator.com/item?id=37091221)

> Realtime Speech Generation
>
> Instant Voice Cloning
>
> Cross-language and Accent Cloning
>
> Directing Emotions

  - Self-proclaimed state of the art. A year ago, i would have been blown away, today, this is dramatically worse than Eleven Labs. Lower quality audio, strange cadence, pretty monotonic. It’s not what people sound like.
  I think it’s impressive, but i wouldn’t call it state of the art.

- [Looking for a 24-7 Real-Time Voice Transcription Tool](https://news.ycombinator.com/item?id=37542025)
  
> if you do decide to, start with ggml/whisper

- [New models and developer products (openai.com)](https://news.ycombinator.com/item?id=38166420) (Nov 2023)
  - As for all the surrounding stuff like detecting speech starting and stopping and listening for interruptions while talking, give my voice AI a try. It has a rough first pass at all that stuff, and it needs a lot of work but it's a start and it's fun to play with. Ultimately the answer is end-to-end speech-to-speech models, but you can get pretty far with what we have now in open source!
    - "How do you detect speech starting and stopping?"

      Using [Silero VAD](https://github.com/snakers4/silero-vad) [What is VAD? [Voice activity detection](https://en.wikipedia.org/wiki/Voice_activity_detection).

  - A few notes on pricing:
    - ElevenLabs is $0.24 per 1K characters while OpenAI TTS HD is $0.03 per 1K characters. Elevenlabs still has voice copying but for many use-cases it's no longer competitive.
  - The new TTS is much cheaper than eleven labs and better too.
    I don't know how the model works so maybe what i'm asking isn't even feasible but i wish they gave the option of voice cloning or something similar or at least had a lot more voices for other languages. The default voices tend to make other language output have an accent.
    - I'm not sure if the tts is better than eleven labs. English audio sounded really good, but the Spanish samples I've generated are off a bit. It definitely sounds human, but it sounds like an English native speaker speaking Spanish. Also I've noticed on inputs just a few sentences long, it will sometimes repeat, drop, or replace a word. The accent part I'm okay with, but the missing words is a big issue.
  - The TTS seems really nice, though still relatively expensive, and probably limited to English (?). I can’t wait until that level of TTS will become available basically for free, and/or self-hosted, with multi-language support, and ubiquitous on mobile and desktop.
    - It's not limited to English. The model at least. Doubt the API will be too. Expensive ? Compared to what? Eleven labs costs an arm and a leg in comparison.

- [Hume – voice AI with emotional intelligence (hume.ai)](https://news.ycombinator.com/item?id=39843092)
  - I've been playing around with it for 15 minutes or so. It's like having a conversation with five or six different people. It's pretty awesome!
  - This should rank higher. Absolutely mind-blowing stuff

- [Universal Speech Model (research.google)](https://news.ycombinator.com/item?id=35365399)

- Reddit discussions
  - [What about real time voice conversations with local LLMs? Is that a thing already or we're not there just yet?](https://www.reddit.com/r/LocalLLaMA/comments/1c8oj8h/what_about_real_time_voice_conversations_with/)

## Tweets

- https://twitter.com/EthanSutin/status/1753182461440434400
  
  ```
  The last demo depended on GPT-3.5 and ElevenLabs, but here's a full open-source stack running on a 16GB M1:

  📝 Conversation Transcription: Whisper Medium
  💬 Realtime Transcription: Whisper Small
  🔊 VAD: Silero
  🧠 LLM: Mistral-Instruct 7B
  🗣️ TTS: StyleTTS2
  ```

- https://twitter.com/zaprobest/status/1751495564192289213
  
> A list of TTS
> 
> - EmotiVoice: a Multi-Voice and Prompt-Controlled TTS Engine [INTERESTING]
> - VALL-E
> - Bark (open-sourced Suno)
> - OpenVoice

- [StyleTTS 2 - New king of the Text to Speech Arena! 👑](https://twitter.com/reach_vb/status/1772021931593666947)
  TTS Arena: Benchmarking TTS Models in the Wild: https://huggingface.co/spaces/TTS-AGI/TTS-Arena
  
  Related: https://twitter.com/reach_vb/status/1769842405988040841

- https://twitter.com/DeniTechh/status/1780668616113058260

> Now that voice is all the hype with AI voice products like AI Pin and  AirChat, I thought it was a good time to try making my own voice chatbot!
> So I played around with @Vapi_AI and created a chatbot helping beginners utilise AI and learn programming!
> 
> Idea: A THERAPIST FOR DEVS GOING THROUGH CODING JOURNEY

- OpenInterpreter's [01 Light (demo)](https://twitter.com/OpenInterpreter/status/1770821439458840846)

## Funding

- https://voice-ai-newsletter.krisp.ai/p/8-predictions-for-voice-ai-in-2024

> With the fast advancements in on-device STT and LLM technologies, it’s apparent that this technology will become part of our daily routine beyond call centers.
>
> We predict that the "second brain” sitting next to you and helping/coaching you during your meetings will already be a reality in 2024.
>
> Cloud Speech-to-text will get 2x cheaper
> The launch of Whisper disrupted the Speech-to-text market.

## Stack

Design and systems architecture:

- STT (Speech-To-Text)/ASR: Deepgram, Whisper API, [Parakeet (FastConformer) / Canary by NVIDIA NeMo + Suno.ai](https://docs.nvidia.com/nemo-framework/user-guide/latest/nemotoolkit/asr/models.html#parakeet)
- TTS (Text-To-Speech): StyleTTS 2, ElevenLabs, Neets.ai

Original text: [GitHub Gist](https://gist.github.com/cedrickchee/770277bd0d368f5e682389c36f3468c2)
