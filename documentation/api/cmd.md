---
layout: method
method: cmd
description: Launch a command on the instance
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
      type: "*"
      description: Return the result of the command or undefined if the command doesn't exists
---

This method allows you to programmatically launch a command.  
The first argument represent the command to launch (must be a `string`), the other arguments will be passed to the command (see examples bellow).

This method is a neat version of `player["cmd"]`.

## Example:
```js
player.cmd("play"); // Launch the "play" method, will return the current instance

// Launch the "currentTime" method, will return the player's current time
player.cmd("currentTime");

 // Launch the "src" method with an argument, will return the current instance
player.cmd("src", "http://example.org/video.mp4");
```