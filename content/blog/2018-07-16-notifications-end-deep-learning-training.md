+++
title = "How to get notifications of 'end of training' on your mobile phone"
#description = "This is a showcase post."
date = 2018-07-16T01:49:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["deep learning"]

[extra]
ToC = false
+++

I often train machine learning/deep learning models and it takes a very long time to finish. Even an epoch in a moderately complex model takes near to half an hour to train. So, I constantly need to check (baby sit) the training process.

To help reduce the pain, I need a way to notify me on the training metrics. The idea is, we will send the training metrics (messages) as notifications on mobile using PyTorch Callbacks.

I have written some Python code snippets that helps me send my training metrics log as mobile push notifications using Pushover service. They have a limit of 7500 requests per month per user—which is fine for my usecase.

Those who'd like to have something like this, you can grab those little hacky scripts.

Cool, now, I can make tea while training without being anxious :smile:

`fastai_example.py`:

```py
from notification_callback import NotificationCallback

# An example of integrating PyTorch callback with fastai model training loop
learn = ConvLearner.from_model_data(md, data)
notif_cb = NotificationCallback()
learn.fit(lr, 1, wds=wd, cycle_len=2, use_clr=(10, 20), callbacks=[notif_cb])
```

`notification_callback.py`:

```py
from send_notification import send_notification

class NotificationCallback(Callback):
    """
        PyTorch callback for model training
    """
    def on_train_begin(self):
        self.epoch = 0

    def on_epoch_end(self, metrics):
        val_loss, accuracy = metrics[0], metrics[1]
        message = "epoch: " + str(self.epoch) + " val loss: " + str(val_loss[0])[0:7] + " val acc: " + str(accuracy)[0:7]
        send_notification(message)
        self.epoch += 1
```

`send_notification.py`:

```py
def send_notification(msg):
    """
        Send message to mobile using Pushover notifications.
        Calls Pushover API to do that.
        Pushover API docs: https://pushover.net/api
    """
    import requests
    from datetime import datetime

    url = "https://api.pushover.net/1/messages.json"
    data = {
        "user"  : "<<YOUR_USER>",
        "token" : "<<YOUR_TOKEN>>",
        "sound" : "magic"
    }
    data["message"] = msg
    data['message'] = data['message'] + "\n" + str(datetime.now())

    r = requests.post(url = url, data = data)
```
