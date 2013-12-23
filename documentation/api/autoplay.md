---
layout: method
method: autoplay
description: Get or set the player's autoplay value
signatures:
  -
    params: []
    return:
      type: boolean
      description: Return the current autoplay value
  -
    params:
    -
      name: value
      types: boolean
      description: The new autoplay value
    return:
      type: fabuloos
      description: Return the current instance of the player to allow chaining
---

This method allows you to get or set the `autoplay` property of the player.

## Example:
```js
player.autoplay(); // Return the player's autoplay value
player.autoplay(false); // Set the autoplay value to false
```