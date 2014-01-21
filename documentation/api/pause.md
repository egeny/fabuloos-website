---
layout: method
name: pause
description: Pause the playback
tags: [core]
signatures:
  -
    params: ~
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
---

Well… Pause the playback.

{% alert %}
This method does nothing if there is no renderer. (Although, if there is no renderer there is no playback. Well, you’d get it.)
{% endalert %}