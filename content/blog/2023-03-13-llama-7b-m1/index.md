+++
title = "4 Steps in Running LLaMA-7B on a M1 MacBook"
description = "Tutorial for LLaMA inferencing using llama.cpp. LLaMA hackers going to love this."
date = 2023-03-13T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "llama_model", "gpt", "ai"]

[extra]
ToC = true
+++

## The large language models usability

The problem with large language models is that you can’t run these locally on your laptop. Thanks to [Georgi Gerganov](https://www.linkedin.com/in/georgi-gerganov-b230ab24) and his [llama.cpp](https://github.com/ggerganov/llama.cpp) project, it is now possible to run Meta’s LLaMA on a single computer without a dedicated GPU.

## Running LLaMA

There are multiple steps involved in running LLaMA locally on a M1 Mac after downloading the model weights.

After you downloaded the model weights, you should have something like this:

```sh
.
├── 7B
│  ├── checklist.chk
│  ├── consolidated.00.pth
│  └── params.json
├── 13B
│  ├── checklist.chk
│  ├── consolidated.00.pth
│  ├── consolidated.01.pth
│  └── params.json
├── 30B
│  ├── checklist.chk
│  ├── consolidated.00.pth
│  ├── consolidated.01.pth
│  ├── consolidated.02.pth
│  ├── consolidated.03.pth
│  └── params.json
├── 65B
│  ├── checklist.chk
│  ├── consolidated.00.pth
│  ├── consolidated.01.pth
│  ├── consolidated.02.pth
│  ├── consolidated.03.pth
│  ├── consolidated.04.pth
│  ├── consolidated.05.pth
│  ├── consolidated.06.pth
│  ├── consolidated.07.pth
│  └── params.json
├── tokenizer.model
└── tokenizer_checklist.chk
```

You can see the different models are in a different directories.

### Step 1: Install dependencies

Xcode must be installed to compile the C++ project. If you don’t have it, please do the following:

```sh
$ xcode-select --install
```

Next, install dependencies for building the C++ project.

```sh
$ brew install pkgconfig cmake
```

Finally, we install Torch.

I assume you have Python 3 installed so you can create a virtual env like this:

```sh
$ /opt/homebrew/bin/python3.11 -m venv venv
```

Activate the venv. I am using bash.

```sh
$ source venv/bin/activate
```

Install PyTorch:

```sh
$ pip install --pre torch torchvision --extra-index-url https://download.pytorch.org/whl/nightly/cpu
```

Next, let's compile `llama.cpp`.

### Step 2: Compile `llama.cpp`

Clone the repo:

```sh
$ git clone https://github.com/ggerganov/llama.cpp.git
```

Run make:

```sh
$ make
```

Output:

```
I llama.cpp build info:
I UNAME_S:  Darwin
I UNAME_P:  arm
I UNAME_M:  arm64
I CFLAGS:   -I.              -O3 -DNDEBUG -std=c11   -fPIC -pthread -DGGML_USE_ACCELERATE
I CXXFLAGS: -I. -I./examples -O3 -DNDEBUG -std=c++11 -fPIC -pthread
I LDFLAGS:   -framework Accelerate
I CC:       Apple clang version 14.0.0 (clang-1400.0.29.202)
I CXX:      Apple clang version 14.0.0 (clang-1400.0.29.202)

cc  -I.              -O3 -DNDEBUG -std=c11   -fPIC -pthread -DGGML_USE_ACCELERATE   -c ggml.c -o ggml.o
c++ -I. -I./examples -O3 -DNDEBUG -std=c++11 -fPIC -pthread -c utils.cpp -o utils.o
c++ -I. -I./examples -O3 -DNDEBUG -std=c++11 -fPIC -pthread main.cpp ggml.o utils.o -o main  -framework Accelerate
./main -h
usage: ./main [options]

options:
  -h, --help            show this help message and exit
  -s SEED, --seed SEED  RNG seed (default: -1)
  -t N, --threads N     number of threads to use during computation (default: 4)
  -p PROMPT, --prompt PROMPT
                        prompt to start generation with (default: random)
  -n N, --n_predict N   number of tokens to predict (default: 128)
  --top_k N             top-k sampling (default: 40)
  --top_p N             top-p sampling (default: 0.9)
  --temp N              temperature (default: 0.8)
  -b N, --batch_size N  batch size for prompt processing (default: 8)
  -m FNAME, --model FNAME
                        model path (default: models/llama-7B/ggml-model.bin)

c++ -I. -I./examples -O3 -DNDEBUG -std=c++11 -fPIC -pthread quantize.cpp ggml.o utils.o -o quantize  -framework Accelerate
```

### Step 3: Convert the model to ggml format

Assuming you placed the models under `models/` in the `llama.cpp` repo.

```sh
$ python convert-pth-to-ggml.py models/7B 1
```

Output:

```sh
{'dim': 4096, 'multiple_of': 256, 'n_heads': 32, 'n_layers': 32, 'norm_eps': 1e-06, 'vocab_size': 32000}
n_parts =  1
Processing part  0
Processing variable: tok_embeddings.weight with shape:  torch.Size([32000, 4096])  and type:  torch.float16
Processing variable: norm.weight with shape:  torch.Size([4096])  and type:  torch.float16
  Converting to float32
Processing variable: output.weight with shape:  torch.Size([32000, 4096])  and type:  torch.float16
Processing variable: layers.0.attention.wq.weight with shape:  torch.Size([4096, 4096])  and type:  torch.f
loat16
Processing variable: layers.0.attention.wk.weight with shape:  torch.Size([4096, 4096])  and type:  torch.f
loat16
Processing variable: layers.0.attention.wv.weight with shape:  torch.Size([4096, 4096])  and type:  torch.f
loat16
Processing variable: layers.0.attention.wo.weight with shape:  torch.Size([4096, 4096])  and type:  torch.f
loat16
Processing variable: layers.0.feed_forward.w1.weight with shape:  torch.Size([11008, 4096])  and type:  tor
ch.float16
Processing variable: layers.0.feed_forward.w2.weight with shape:  torch.Size([4096, 11008])  and type:  tor
ch.float16
Processing variable: layers.0.feed_forward.w3.weight with shape:  torch.Size([11008, 4096])  and type:  tor
ch.float16
Processing variable: layers.0.attention_norm.weight with shape:  torch.Size([4096])  and type:  torch.float
16
...
Done. Output file: models/7B/ggml-model-f16.bin, (part  0 )
```

Next, quantize the model:

```sh
$ ./quantize ./models/7B/ggml-model-f16.bin ./models/7B/ggml-model-q4_0.bin 2
```

You should see an output like this:

```sh
llama_model_quantize: loading model from './models/7B/ggml-model-f16.bin'
llama_model_quantize: n_vocab = 32000
llama_model_quantize: n_ctx   = 512
llama_model_quantize: n_embd  = 4096
llama_model_quantize: n_mult  = 256
llama_model_quantize: n_head  = 32
llama_model_quantize: n_layer = 32
llama_model_quantize: f16     = 1
...
layers.31.attention_norm.weight - [ 4096,     1], type =    f32 size =    0.016 MB
layers.31.ffn_norm.weight - [ 4096,     1], type =    f32 size =    0.016 MB
llama_model_quantize: model size  = 25705.02 MB
llama_model_quantize: quant size  =  4017.27 MB
llama_model_quantize: hist: 0.000 0.022 0.019 0.033 0.053 0.078 0.104 0.125 0.134 0.125 0.104 0.078 0.053 0.033 0.019 0.022

main: quantize time = 29389.45 ms
main:    total time = 29389.45 ms
```

### Step 4: Run the model

```sh
$ ./main -m ./models/7B/ggml-model-q4_0.bin \
        -t 8 \
        -n 128 \
        -p 'The first man on the moon was '
```

```sh
main: seed = 1678615879
llama_model_load: loading model from './models/7B/ggml-model-q4_0.bin' - please wait ...
llama_model_load: n_vocab = 32000
llama_model_load: n_ctx   = 512
llama_model_load: n_embd  = 4096
llama_model_load: n_mult  = 256
llama_model_load: n_head  = 32
llama_model_load: n_layer = 32
llama_model_load: n_rot   = 128
llama_model_load: f16     = 2
llama_model_load: n_ff    = 11008
llama_model_load: n_parts = 1
llama_model_load: ggml ctx size = 4529.34 MB
llama_model_load: memory_size =   512.00 MB, n_mem = 16384
llama_model_load: loading model part 1/1 from './models/7B/ggml-model-q4_0.bin'
llama_model_load: .................................... done
llama_model_load: model size =  4017.27 MB / num tensors = 291

main: prompt: 'The first man on the moon was '
main: number of tokens in prompt = 9
     1 -> ''
  1576 -> 'The'
   937 -> ' first'
   767 -> ' man'
   373 -> ' on'
   278 -> ' the'
 18786 -> ' moon'
   471 -> ' was'
 29871 -> ' '

sampling parameters: temp = 0.800000, top_k = 40, top_p = 0.950000


The first man on the moon was 38-year-old astronaut Neil A. Armstrong.
Apollo 11 landed on the moon on July 20, 1969.
Apollo 11 was the first manned mission to land on the Moon. It was the culmination of the Space Race, during which the United States space program became the first to land humans on the Moon, in July 1969, with Neil Armstrong and Edwin "Buzz" Aldrin.
Apollo 11 launched from the Kennedy Space Center on July 16, 1

main: mem per token = 14434244 bytes
main:     load time =  1309.32 ms
main:   sample time =   276.53 ms
main:  predict time =  7374.62 ms / 53.36 ms per token
main:    total time =  9013.06 ms
```

We're done. Have fun prompting the model!

---

Original text: [GitHub Gist](https://gist.github.com/cedrickchee/e8d4cb0c4b1df6cc47ce8b18457ebde0)
