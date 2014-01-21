---
layout: method
name: renderer
description: Change or get the renderer
tags: [core]
signatures:
  -
    params:
    -
      name: renderer
      type: Renderer
      description: The new renderer to use.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params: ~
    return:
      type: Renderer | undefined
      description: Return the current renderer.
---

Get the current [renderer](/documentation/renderers.html)’s instance or ask to change for another renderer.  
Changing for another renderer won’t check if it can play the source.

{% alert %}
You shouldn’t call this method, its purpose is for internal use only.
{% endalert %}

```js
player.renderer(); // HTMLRenderer
player.renderer(FabuloosFlashRenderer); // Ask to change for a FabuloosFlashRenderer (may or may not work)
```

{% alert %}
Depending on the way you compiled fabuloos, the renderer might not be exposed on `window`.  
So, you’ll have to use the long notation: `Renderer.FabuloosFlashRenderer`
{% endalert %}