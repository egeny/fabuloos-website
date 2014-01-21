---
layout: method
name: cmd
description: Launch a method on the instance
tags: [core]
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
      type: "*"
      description: Return the result of the method or `undefined` if the method doesn’t exists
---

This method allows you to programmatically launch a method.  
The first argument represent the method to launch (must be a `string`), the other arguments will be passed to the method (see examples bellow).

This method is a neat version of `player["cmd"]`.

## Example:
```js
player.cmd("play"); // Launch the "play" method, will return the current instance

// Launch the "currentTime" method, will return the player’s current time
player.cmd("currentTime");

 // Launch the "src" method with an argument, will return the current instance
player.cmd("src", "http://example.org/video.mp4");
```