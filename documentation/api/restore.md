---
layout: method
name: restore
description: Restore the initial element
tags: [core, element]
signatures:
  -
    params: ~
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
---

Restore the initial element (the one replaced by the renderer's markup).

```js
var player = fab("player");

// The fabuloos function will search for an element having “player” for its ID
// and will replace it with the markup of the renderer

player.restore(); // The initial element will be restored
```

Use [`.element()`](/documentation/api/element.html) to define which element should be replace by the renderer.