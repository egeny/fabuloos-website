---
layout: method
name: "off"
description: Unregister an handler for a given event
signatures:
  -
    params:
    -
      name: types
      type: string
      description: The event type(s) to stop listening.
    -
      name: handler
      type: function
      description: The handler previously attached.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params:
    -
      name: types
      type: string
      description: The event type(s) to stop listening.
    -
      name: handler
      type: "null"
      description: Passing `null` will remove all handlers associated to this/these type(s).
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params:
    -
      name: types
      type: "null"
      description: Passing `null will remove the given handler for all types.
    -
      name: handler
      type: function
      description: The handler previously attached.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params:
    -
      name: obj
      type: object
      description: An hash of types and handlers to remove.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params: ~
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
---

Stop listening for one or more events.  
The multiple signatures allows you to stop listening in many ways:

```js
player.off(); // Stop listening all events

player.off(null, handler); // Stop launching "handler" for all events type
player.off("pause"); // Stop listening for "pause" event
player.off("pause", handler); // Stop launching "handler" when a "pause" event occurs

player.off("play pause"); // Stop listening for "pause" and "play" events
player.off("play pause", handler); // Stop launching "handler" when a "pause" or "play" event occurs

player.off({
  play: null, // Stop listening for "play" event
  pause: handler // Stop launching "handler" when a "pause" event occurs
});
```