---
layout: method
name: size
description: Measure or set the size of the player
tags: [size]
signatures:
  -
    params:
    -
      name: property
      type: string
      description: The property to get (`width` or `height`).
    return:
      type: number
      description: Return the width or the height of the player.
  -
    params:
    -
      name: property
      type: string
      description: The property to set (`width` or `height`).
    -
      name: value
      type: number
      description: The value to apply for the property.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params:
    -
      name: properties
      type: object
      description: The properties to set (`width` and/or `height`).
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params: ~
    return:
      type: object
      description: Return the width and height of the player.
---

Measure the player or set some new dimensions.

{% alert %}
Calling this method may cause a reflow.
{% endalert %}

## Example:
```js
player.size("width"); // 720
player.size("width", 1024); // Will set the width to 1024

// Change the width and height in the same time:
player.size({
  width:  720,
  height: 405
});

player.size(); // { width: 720, height: 405 }
```