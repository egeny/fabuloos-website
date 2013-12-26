---
layout: method
name: destroy
description: Destroy the instance
signatures:
  -
    params: ~
    return:
      type: "null"
      description: Return `null` to stop chaining.
---

Before destroying the instance, this method will restore the initial element and remove the instance from the cache.

{% alert info %}
To perform a memory clean, it is recommanded to re-set the variable used for the player:
{% endalert %}

```js
var player = fab("player");

// This will destroy the player but the variable will still point to the object
player.destroy();

// With this, the variable will be set to null and the garbage collector will correctly clean the player
player = player.destroy();
```