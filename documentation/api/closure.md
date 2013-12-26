---
layout: method
name: closure
description: Create a closure to launch a command
signatures:
  -
    params:
    -
      name: cmd
      types: string
      description: The command to launch
    -
      name: ...
      types: "*"
      optional: true
      description: The other arguments to pass to the command
    return:
      type: fabuloos
      description: Return the current instance of the player to allow chaining
---

This method allows you to create a closure for a specific command.  
The first argument represent the command to launch (must be a `string`), the other arguments will be passed to the command (see examples bellow).  

## Example:
```js
player.closure("play"); // Return a function launching the "play" method

// Listen for the "ended" event and launch player.currentTime(0)
player.on("ended", player.closure("currentTime", 0));
```