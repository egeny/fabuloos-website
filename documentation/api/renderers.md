---
layout: method
name: renderers
description: Define the list of supported renderers
signatures:
  -
    params:
    -
      name: renderers
      type: array
      description: The renderers to define as available.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params:
    -
      name: renderer
      type: Renderer
      description: The only renderer to define as available.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params: ~
    return:
      type: array | undefined
      description: Return the available renderers.
---

Get the available renderers.
Set the supported renderers, it will check if the renderer is supported on this platform.

{% alert %}
There is only a few case when you need to manually launch this method.  
Actually, I'm trying to find a use case but cannot.
{% endalert %}

When needed, this method is called automatically using the registered renderers (`Renderer.supported`).

```js
// First, we try to set 3 renderers as available
player.renderers([HTMLRenderer, FabuloosFlashRenderer, YoutubeRenderer]);

// But it seems only 2 are supported on this platform
player.renderers(); // [HTMLRenderer, YoutubeRenderer]
```

{% alert %}
Depending on the way you compiled fabuloos, the renderer might not be exposed on `window`.  
So, you'll have to use the long notation: `Renderer.FabuloosFlashRenderer`
{% endalert %}

{% include renderers.md %}