+++
title = "HuggingFace Transformers inference for Alpaca"
description = "Transformers inference for Stanford Alpaca, one of the first instruction-following language model, fine-tuned from LLaMA model."
date = 2023-02-14T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "llama_model", "gpt-3", "ai"]

[extra]
ToC = false
+++

## Guide

Stanford Alpaca is an instruction-following language model, fine-tuned from the LLaMA-7B model.

The inference code is using [Alpaca Native](https://huggingface.co/chavinlo/alpaca-native) model, which was fine-tuned using the original [tatsu-lab/stanford_alpaca](https://github.com/tatsu-lab/stanford_alpaca) repository. The fine-tuning process does not use LoRA, unlike [tloen/alpaca-lora](https://github.com/tloen/alpaca-lora).

### Hardware and software requirements

For the Alpaca-7B:

- Linux, MacOS
- 1x GPU 24GB in fp16 or 1x GPU 12GB in int8
- PyTorch with CUDA (not the CPU version)
- HuggingFace Transformers library
  
  ```sh
  pip install git+https://github.com/huggingface/transformers.git
  ```
  
    Currently, the Transformers library only has support for LLaMA through the latest GitHub repository, and not through Python package.

- If run in 8-bit (quantized model), install Bitsandbytes and set `load_in_8bit=true`

### Inference Code

```python
# Based on: Original Alpaca Model/Dataset/Inference Code by Tatsu-lab 

import time, torch
from transformers import LlamaTokenizer, LlamaForCausalLM, GenerationConfig

tokenizer = LlamaTokenizer.from_pretrained("./checkpoint-1200/")

def generate_prompt(instruction, input=None):
    if input:
        return f"""The following is an instruction that describes a task, paired with an input that provides further context. Write a response that appropriately completes the request.
    ### Instruction:
    {instruction}
    ### Input:
    {input}
    ### Response:"""
    else:
        return f"""The following is an instruction that describes a task. Write a response that appropriately completes the request.
    ### Instruction:
    {instruction}
    ### Response:"""

model = LlamaForCausalLM.from_pretrained(
    "checkpoint-1200",
    load_in_8bit=False,
    torch_dtype=torch.float16,
    device_map="auto"
)

while True:
    text = generate_prompt(input("User: "))
    time.sleep(1)
    input_ids = tokenizer(text, return_tensors="pt").input_ids.to("cuda")
    generated_ids = model.generate(
        input_ids, 
        max_new_tokens=250, 
        do_sample=True, 
        repetition_penalty=1.0, 
        temperature=0.8, 
        top_p=0.75, 
        top_k=40
    )
    
    print(tokenizer.decode(generated_ids[0]))
```

How to use.

1. Download model weights from https://huggingface.co/chavinlo/alpaca-native

2. Change `./checkpoint-1200/` to the directory of your HuggingFace format model files directory.

### FAQ

1. What if I want to fine-tune Stanford Alpaca myself?
    
    The Replicate team have repeated the training process and [published a tutorial](https://replicate.com/blog/replicate-alpaca) about how they did it. It cost less than $100.


Update: I've written a simpler tutorial, ["Creating a chatbot using Alpaca native and LangChain".](@/blog/2023-03-22-alpaca-native-langchain-chatbot-tutorial/index.md)

Original text: [GitHub Gist](https://gist.github.com/cedrickchee/3be95c8ab9f38132382737783bd5d55e)
