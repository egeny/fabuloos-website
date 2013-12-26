---
layout: method
name: element
description: Getter and setter for the current element
signatures:
  -
    params:
    -
      name: id
      types: string
      description: The ID attribute of the element to enhance (might be `<audio>`, `<video>` or any element).
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params:
    -
      name: element
      types: Element
      description: The element to enhance (might be `<audio>`, `<video>` or any element).
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params: ~
    return:
      type: Element | null
      description: Return the current element reflecting the player.
---

This method will define the given element as the one to replace by the player.  
The chosen renderer will replace this element by its markup (usually `audio`, `video`, `object` or `iframe`).

If you want to correctly swap the “source” element of the player, [restore](/documentation/api/restore.html) the initial one before:

```js
player.restore() // If the renderer changed the element for its markup, restore for the initial element
player.element("player"); // Set the element having “player” as ID to be the new element to replace (and replace it)
```

Whitout arguments, this method will act as a getter and will return the current element (the element inserted by the renderer).