---
layout: method
name: init
description: Initialize an instance
tags: core, instance
signatures:
  -
    params:
    -
      name: config
      types: object
      optional: true
      description: See [`.config()`](/documentation/api/config.html).
    return:
      type: fabuloos
      description: Return the current instance of the player to allow chaining.
---

This method is the first called when you try to create a player. It handle the initialization of the player.

Calling this method on an existing instance will reset it.

{% alert info %}
Usually you don't have to call this method.
{% endalert %}

## Example:
```js
var player = fab.init("player"); // player is based on the element having "player" for ID

player.init(); // player is now a standalone player, not related to an element
```

You can extend this method when developping a plugin if you have to handle thing at initialization time:

```js
fab.extend({
  init: function(config) {
    this._super(config); // Remember to pass the configuration
    // More stuff
  }
});

// Or do your stuff first then initialize

fab.extend({
  init: function(config) {
    // Stuff
    return this._super(config); // Remember to return the instance to allow chaining
  }
});

```