---
layout: method
name: "at"
description: Register an handler for a given timestamp
tags: [timed]
signatures:
  -
    params:
    -
      name: seconds
      type: number
      description: The timecode to be reached to launch the handler.
    -
      name: handler
      type: function
      description: The function to call when the `currentTime` of the player is reached.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params:
    -
      name: timecode
      type: string
      description: The timecode (human readable) to be reached to launch the handler.
    -
      name: handler
      type: function
      description: The function to call when the `currentTime` of the player is reached.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
---

{% alert %}
This method is not implemented in the current alpha.
{% endalert %}