+++
title = "Discriminative learning rate using LARS"
#description = "This is a showcase post."
date = 2018-07-11T15:14:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["machine learning", "pytorch"]

[extra]
ToC = false
+++

# Discriminative Learning Rate

This paper, [Large Batch Training of Convolutional Networks](https://arxiv.org/abs/1708.03888) by Boris Ginsburg et. al has discriminative learning rate algorithm known as Layer-wise Adaptive Rate Scaling (LARS).

It was used to train ImageNet with very very large batch sizes by looking at the ratio between the gradient and the mean at each layer and using that to change the learning rate of each layer automatically. They found that they could use much larger batch sizes.

## Code Implementation

A training algorithm based on LARS implemented as an optimizer in PyTorch follows:

```py
from torch.optim.optimizer import Optimizer, required


class LARS(Optimizer):
    def __init__(
        self,
        params,
        lr=required,
        momentum=0,
        dampening=0,
        weight_decay=0,
        nesterov=False,
        eta=0.001,
    ):
        if lr is not required and lr < 0.0:
            raise ValueError("Invalid learning rate: {}".format(lr))
        if momentum < 0.0:
            raise ValueError("Invalid momentum value: {}".format(momentum))
        if weight_decay < 0.0:
            raise ValueError("Invalid weight_decay value: {}".format(weight_decay))

        defaults = dict(
            lr=lr,
            momentum=momentum,
            dampening=dampening,
            weight_decay=weight_decay,
            nesterov=nesterov,
            eta=eta,
        )

        if nesterov and (momentum <= 0 or dampening != 0):
            raise ValueError("Nesterov momentum requires a momentum and zero dampening")
        super().__init__(params, defaults)

    def __setstate__(self, state):
        super().__setstate__(state)

        for group in self.param_groups:
            group.setdefault("nesterov", False)

    def step(self, closure=None):
        """
        Performs a single optimization step.

        Arguments:
            closure (callable, optional): A closure that reevaluates the model and returns the loss.
        """
        loss = None

        if closure is not None:
            loss = closure()

        for group in self.param_groups:
            weight_decay = group["weight_decay"]
            momentum = group["momentum"]
            dampening = group["dampening"]
            nesterov = group["nesterov"]
            eta = group["eta"]

            for p in group["params"]:
                if p.grad is None:
                    continue

                d_p = p.grad.data
                d_pn = d_p.norm()

                if weight_decay != 0:
                    d_p.add_(weight_decay, p.data)
                    d_pn.add_(weight_decay, p.data.norm())

                if momentum != 0:
                    param_state = self.state[p]

                    if "momentum_buffer" not in param_state:
                        buf = param_state["momentum_buffer"] = torch.zeros_like(p.data)
                        buf.mul_(momentum).add_(d_p)
                    else:
                        buf = param_state["momentum_buffer"]
                        buf.mul_(momentum).add_(1 - dampening, d_p)

                    if nesterov:
                        d_p = d_p.add(momentum, buf)
                    else:
                        d_p = buf
                rho = eta * p.data.norm() / (1e-15 + d_pn)
                p.data.add_(-group["lr"] * rho, d_p)

        return loss

```
