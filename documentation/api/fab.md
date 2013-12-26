---
layout: function
name: fab
description: The fabuloos function
tags: core
signatures:
  -
    params:
    -
      name: id
      types: string
      description: The ID attribute of the element to enhance (might be `<audio>`, `<video>` or any element).
    return:
      type: fabuloos
      description: Return a new fabuloos instance or an instance from the instances' cache.
  -
    params:
    -
      name: element
      types: Element
      description: The element to enhance (might be `<audio>`, `<video>` or any element).
    return:
      type: fabuloos
      description: Return a new fabuloos instance or an instance from the instances' cache.
  -
    params:
    -
      name: config
      types: object
      description: |
        The configuration to apply.
        If the configuration contains an `element` property the player will be based on this element.
        You can specify a string or an Element, just as the previous signatures.
    return:
      type: fabuloos
      description: Return a new fabuloos instance or an instance from the instances' cache.
  -
    params: ~
    return:
      type: fabuloos
      description: Return a new fabuloos instance.
---

Create a player based on an element or retrieve an existing (cached) player.

To base the player on an element you can pass an id (with ou without `#`) or a DOM Element. You can call this function using an object, it will be passed to [`.config()`](/documentation/api/config.html).

Creating a player will call the [`.init()`](/documentation/api/init.html) method.

{% alert %}
Please note fabuloos doesn't use a query selector. Using `player` and `#player` will work but not `.player` or more complex query string.
{% endalert %}

## Example:
```js
var video = document.getElementById("player")

// Those are the same
fab("player");
fab("#player");
fab(video);
fab({ element: "player" });
fab({ element: "#player" });
fab({ element: video });

// Calling a multiple time using the same element will not create a new player:
var player = fab("player"); // Enhance the element having "player" as ID

fab("player").play(); // Retrieve the previously created player
```