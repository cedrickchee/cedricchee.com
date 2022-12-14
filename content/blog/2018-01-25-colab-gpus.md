+++
title = "Google Colab makes free GPUs available for folks to try out"
#description = "This is a showcase post."
date = 2018-01-18T13:12:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["deep learning", "machine learning", "gpu"]

[extra]
ToC = false
+++

Google-owned Kaggle adds free GPUs to online coding service.

Google says users of Colaboratory, its live coding mashup that works like a cross between a Jupyter Notebook and a Google Doc, now comes with free GPUs. Users can write a few code snippets, [detailed here](https://www.kaggle.com/getting-started/47096#post271139), and get access to two vCPUs with 13GB of RAM and, the icing on the cake - an NVIDIA K80 GPU, according to a comment from an account linked to [Michael Piatek at Google](http://www.michaelpiatek.com/).

[Access Colaboratory here](https://colab.research.google.com/).

This is awesome! This definitely increases the usability of Colab notebooks, which I have already started using in my day-to-day experiments. I especially like the ability to save multiple checkpoints - a features sorely lacking in standard Jupyter Notebooks.

Free GPUS with very few strings attached:
- Jupyter notebooks max running time of 12 hours, according to someone (Michael Piatek?) on the Colab team. What this means is, the 12 hour limit is for contiguous assignment of a single GCE VM and applies to both CPU and GPU machines. There's no per-day limit, so if you end up using one VM for 12h, you can use a distinct VM afterwards for another 12 hour.

I've used it for a few weeks when only CPU is available. Like Kaggle, it's just so quick to get into the environment and start coding.

Question remains:

- I wonder if there will be an option on the future to purchase instance upgrades (for example, to include GPU resources).
- Any chance you are throwing some TPUs our way? :)
- I looked around and didn't see any listed software capabilities;

Playing around in the environment, I think I saw the VM is running on Ubuntu 17.10 Linux OS.

I hope they keep it forever free and keep the Bitcoin miner from abusing it.
