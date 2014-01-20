---
layout: method
name: play
description: Launch the playback
tags: core
signatures:
  -
    params: ~
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
---

Well… Launch the playback.

{% alert %}
This method does nothing if there is no renderer. (Duh!)
{% endalert %}

{% alert info %}
Launching the playback doesn't always result to a playback (the client have to buffer the media).  
That's why there are a [`play`](/documentation/events.html) and [`playing`](/documentation/events.html) event.
{% endalert %}