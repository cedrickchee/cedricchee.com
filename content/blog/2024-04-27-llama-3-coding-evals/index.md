+++
title = "Evaluating Llama 3 on Code Tasks"
description = "We evals 100+ publicly available LLMs on code tasks. Llama-3-70b-Instruct performed better than open-source, code-specific LLMs and outperformed Claude-3-Opus."
date = 2024-04-27T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "llama_model", "ai_coding", "gpt", "ai"]

[extra]
ToC = false
+++

<!-- Category: LLM for Coding -->

To test Meta Llama 3's performance against existing models, we used the coding benchmarks: HumanEval. HumanEval tests the model's ability to complete code based on docstrings.

The benchmark tests 137 publicly available large language models (LLMs) on code tasks.

| Model                                     | Accuracy[^1] |
| ----------------------------------------- | ----- |
| openai/gpt-4-vision-preview               | 60    |
| openai/gpt-4-turbo                        | 60    |
| openai/gpt-4-0314                         | 60    |
| openai/gpt-4-32k-0314                     | 59    |
| google/gemini-pro-1.5                     | 59    |
| openai/gpt-4-turbo-preview                | 58    |
| openai/gpt-4                              | 58    |
| openai/gpt-3.5-turbo-0125                 | 58    |
| openai/gpt-3.5-turbo                      | 58    |
| meta-llama/llama-3-70b-instruct           | 56    |
| anthropic/claude-3-sonnet:beta            | 56    |
| openai/gpt-3.5-turbo-0301                 | 54    |
| anthropic/claude-3-sonnet                 | 54    |
| meta-llama/llama-3-70b-instruct:nitro     | 53    |
| openai/gpt-4-32k                          | 52    |
| anthropic/claude-3-opus:beta              | 52    |
| anthropic/claude-3-opus                   | 52    |
| phind/phind-codellama-34b                 | 51    |
| nousresearch/nous-capybara-34b            | 51    |
| openai/gpt-4-1106-preview                 | 50    |
| openai/gpt-3.5-turbo-1106                 | 50    |
| mistralai/mistral-medium                  | 50    |
| microsoft/wizardlm-2-8x22b:nitro          | 50    |
| microsoftwizardlm-2-8x22b                 | 50    |
| meta-llama/llama-2-70b-chat:nitro         | 50    |
| google/palm-2-chat-bison                  | 50    |
| cohere/command-r-plus                     | 50    |
| anthropic/claude-3-haiku                  | 50    |
| anthropic/claude-2.1:beta                 | 50    |
| anthropic/claude-2.1                      | 50    |
| meta-llama/llama-2-7b-chat                | 50    |
| Ol-ai/yi-34b-chat                         | 49    |
| perplexity/sonar-medium-chat              | 49    |
| perplexity/pplx-70b-chat                  | 48    |
| mistralai/mistral-7b-instruct:nitro       | 48    |
| google/gemma-7b-it:free                   | 48    |
| anthropic/claude-2.0                      | 48    |
| mistralai/mixtral-8x7b-instruct           | 47    |
| anthropic/claude-instant-1.1              | 47    |
| saolOk/fimbulvetr-llb-v2                  | 46    |
| openchat/openchat-7b                      | 46    |
| openai/gpt-3.5-turbo-16k                  | 46    |
| nousresearch/nous-hermes-mistral          | 46    |
| mistralai/mistral-7b-instruct:free        | 46    |
| mistralai/mistral-7b-instruct             | 46    |
| cohere/command-r                          | 46    |
| teknium/openhermes-2.5-mistral-7b         | 45    |
| teknium/openhermes-2-mistral-7b           | 45    |
| perplexity/pplx-7b-chat                   | 45    |
| mistralai/mixtral-8x7b-instruct:nitro     | 45    |
| google/gemma-7b-it                        | 45    |
| meta-llama/codellama-34b-instruct         | 44    |
| google/palm-2-codechat-bison-32k          | 44    |
| google/palm-2-codechat-bison              | 44    |
| google/gemini-pro-vision                  | 44    |
| cognitivecomputations/dolphin-mixtral     | 44    |
| perplexity/sonar-small-chat               | 43    |
| nousresearch/nous-hermes-yi-34b           | 43    |
| nousresearch/nous-hermes-2-mixtral        | 43    |
| lizpreciatior/lzlv-70b-fpl6-hf            | 43    |
| jondurbin/airoboros-l2-7b                 | 43    |
| google/gemini-pro                         | 43    |
| anthropic/claude-3-haiku:beta             | 43    |
| anthropic/claude-2.0:beta                 | 43    |
| sophosympatheia/midnight-rose-70b         | 42    |
| openai/gpt-3.5-turbo-0613                 | 42    |
| mistralai/mixtral-8x22b-instruct          | 42    |
| mistralai/mistral-small                   | 42    |
| meta-llama/llama-2-13b-chat               | 42    |
| google/gemma-7b-it:nitro                  | 42    |
| anthropic/claude-instant-1.2              | 42    |
| anthropic/claude-1.2                      | 42    |
| togethercomputer/stripedhyena-no          | 41    |
| databricks/dbrx-instruct                  | 41    |
| rwkv/rwkv-5-world-3b                      | 40    |
| openrouter/cinematika-7b                  | 40    |
| nousresearch/nous-hermes-2-mixtral        | 40    |
| nousresearch/nous-capybara-7b             | 40    |
| mistralai/mistral-large                   | 40    |
| huggingfaceh4/zephyr-orpo-14lb-a          | 40    |
| google/palm-2-chat-bison-32k              | 40    |
| meta-llama/llama-3-8b-instruct            | 39    |
| codellama/codellama-70b-instruct          | 39    |
| xwinlm/xwin-lm-70b                        | 38    |
| perplexity/sonar-medium-online            | 38    |
| meta-llama/llama-8b-instruct:nitro        | 37    |
| anthropic/claude-1                        | 36    |
| perplexity/pplx-7b-online                 | 35    |
| openrouter/cinematika-7b:free             | 35    |
| gryphe/mythomax-l2-13b:nitro              | 35    |
| gryphe/mythomax-l2-13b                    | 35    |
| recursal/eagle-7b                         | 34    |
| perplexity/sonar-small-online             | 34    |
| huggingfaceh4/zephyr-7b-beta              | 34    |
| 01-ai/yi-6b                               | 34    |
| perplexity/pplx-70b-online                | 33    |
| open-orca/mistral-7b-openorca             | 33    |
| nousresearch/nous-hermes-llama2           | 33    |
| mistralai/mixtral-8x22b                   | 33    |
| gryphe/mythomax-l2-13b:extended           | 33    |
| alpindale/goliath-120b                    | 33    |
| mistralai/mistral-tiny                    | 32    |
| microsoft/wizardlm-2-7b                   | 32    |
| cohere/command                            | 32    |
| austism/chronos-hermes-13b                | 32    |
| undi95/toppy-m-7b:free                    | 31    |
| undi95/toppy-m-7b                         | 31    |
| openchat/openchat-7b:free                 | 31    |
| pygmalionai/mythalion-13b                 | 30    |
| nousresearch/nous-capybara-7b:free        | 30    |
| huggingfaceh4/zephyr-7b-beta:free         | 30    |
| undi95/toppy-m-7b:nitro                   | 29    |
| undi95/remm-slerp-l2-13b                  | 29    |
| mistralai/mixtral-8x7b                    | 29    |
| anthropic/claude-instant-1.0              | 28    |
| recursal/rwkv-5-3b-ai-town                | 27    |
| undi95/remm-slerp-l2-13b:extended         | 26    |
| koboldai/psyfighter-13b-2                 | 26    |
| 01-ai/yi-34b                              | 26    |
| neversleep/noromaid-mixtral-8x7b-instruct | 25    |
| togethercomputer/stripedhyena-hessian-7b  | 24    |
| openai/gpt-3.5-turbo-instruct             | 24    |
| neversleep/noromaid-20b                   | 24    |
| gryphe/mythomist-7b                       | 22    |
| meta-llama/llama-8b-instructextension     | 20    |
| mancer/weaver                             | 20    |
| intel/neural-chat-7b                      | 20    |
| gryphe/mythomist-7b:free                  | 20    |
| fireworks/firellava-13b                   | 16    |
| lynn/soliloquy-13                         | 14    |
| nousresearch/nous-hermes-2-vision         | 0     |
| jondurbin/bagel-34b                       | 0     |
| jebcarter/psyfighter-13b                  | 0     |
| haotian-liu/llava-13b                     | 0     |
| anthropic/claude-instant-l:beta           | 0     |
| anthropic/claude-instant-1                | 0     |
| anthropic/claude-2:beta                   | 0     |
| anthropic/claude-2                        | 0     |

The benchmark showed that Llama-3-70b-Instruct performed better than open-source, code-specific LLMs (Phind-CodeLlama-34b, CodeLlama-70b-Instruct) and outperformed Claude-3-Opus.

<!-- In our own benchmark testing, {insert model} outperformed state-of-the-art publicly available LLMs on code tasks -->

#### Reference

[^1]: HumanEval (pass@1) accuracy, higher is better
