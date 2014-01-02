---
layout: method
name: detach
description: Detach all listeners from the renderer
signatures:
  -
    params: ~
    return:
      type: fabuloos
      description: Return the current instance of the player to allow chaining
---

This method detach all registered listeners from the current renderer.

{% alert %}
You shouldn't call this method, its purpose is for internal use only.
{% endalert %}

## Example:
```js
player.on("click", function() { console.log("Clicked!"); }); // Listen for the "click" event
player.detach(); // Detach all listeners

// Clicking won't trigger the "click" event

player.attach()

// Now, clicking will correctly trigger the "click" event
```