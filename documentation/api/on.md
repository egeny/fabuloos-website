---
layout: method
name: "on"
description: Register an handler for a given event
signatures:
  -
    params:
    -
      name: types
      type: string
      description: |
        The event type(s) to listen.
        You may provide multiple event types by separating them with a space.
    -
      name: handler
      type: function
      description: The function to call when the event type is fired.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params:
    -
      name: obj
      type: object
      description: An hash of types and handlers.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
---

Add a listener for one or more events.

```js
player.on("play", handler); // Launch "handler" when a "play" event occurs
player.on("play pause", handler); // Launch "handler" when a "play" or "pause" event occurs

player.on({
  play:  handler, // Launch "handler" when a "play" event occurs
  pause: handler  // Launch "handler" when a "pause" event occurs
});
```

{% alert info %}
You can register some for some events directly from the config.
{% endalert %}

```js
fab("player", {
  autoplay: true,
  on: {
    play:  handler,
    pause: handler
  }
});
```