---
layout: method
name: closure
description: Create a closure to launch a method
tags: core
signatures:
  -
    params:
    -
      name: cmd
      type: string
      description: The method to launch
    -
      name: ...
      type: "*"
      optional: true
      description: The other arguments to pass to the method
    return:
      type: fabuloos
      description: Return the current instance of the player to allow chaining
---

This method allows you to create a closure for a specific method.  
The first argument represent the method to launch (must be a `string`), the other arguments will be passed to the method (see examples bellow).  

## Example:
```js
player.closure("play"); // Return a function launching the "play" method

// Listen for the "ended" event and launch player.currentTime(0)
player.on("ended", player.closure("currentTime", 0));
```