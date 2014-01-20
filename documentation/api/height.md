---
layout: method
name: height
description: Get or set the height of the player
tags: [getter, setter, property, size]
signatures:
  -
    params:
    -
      name: value
      type: number
      description: The new height to apply.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params: ~
    return:
      type: number
      description: Return the height of the player.
---

Get the measured height of the player.

{% alert %}
Calling this method may cause a reflow.
{% endalert %}

```js
player.height(); // Return 405
```

You can set the height of the player by passing a value.

```js
player.height(720);
player.height("720px"); // The value will be parsed
```

{% alert %}
Passing percentage is not supported (and may never will).
{% endalert %}