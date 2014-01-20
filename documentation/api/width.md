---
layout: method
name: width
description: Get or set the width or the player
tags: [getter, setter, property, size]
signatures:
  -
    params:
    -
      name: value
      type: number
      description: The new width to apply.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params: ~
    return:
      type: number
      description: Return the width of the player.
---

Get the measured width of the player.

{% alert %}
Calling this method may cause a reflow.
{% endalert %}

```js
player.width(); // Return 720
```

You can set the width of the player by passing a value.

```js
player.width(1280);
player.width("1280px"); // The value will be parsed
```

{% alert %}
Passing percentage is not supported (and may never will).
{% endalert %}