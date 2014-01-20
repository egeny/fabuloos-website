---
layout: method
name: load
description: Load the current source
tags: [core]
signatures:
  -
    params: ~
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
---

Explicitly ask the player to load the source.  
Calling this method depend on the value of the `preload` property.

```js
player.config({
  preload: "none",
  src: "http://fabuloos.org/video.mp4"
});

// When clicking on a button:
player.load();
```