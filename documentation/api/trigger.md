---
layout: method
name: trigger
description: Trigger the listeners for a type
signatures:
  -
    params:
    -
      name: types
      type: string
      description: |
        The type(s) of event to trigger.
        You may provide multiple event types by separating them with a space.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
---

Manually trigger an event.
It is also used internally to trigger the events.

```js
player.trigger("durationchange"); // Well… trigger the durationchange event

player.trigger("foo bar"); // Trigger the "foo" and "bar" events
```

{% include events.md %}