---
layout: function
name: fab.shorthand
description: Create a closure calling a method on the renderer
tags: utility
signatures:
  -
    params:
    -
      name: method
      type: string
      description: The method name to call.
    return:
      type: function
      description: A closure calling the method.
---

This function is useful when you want to create a method, on the player, calling a method on the renderer.  
If there is no renderer, the function will fail silently.

## Example:
```js
fab.extend({
	pause: fab.shorthand("pause"),
	play:  fab.shorthand("play")
});
```

This will create a method `pause` and a method `play` on the player.  
When calling these methods, the closure will first check if there is a renderer, and if there is actually a function having the name provided as parameter during the first call.

{% alert %}
For now, the arguments passed to the closure aren't passed to the renderer's method.
{% endalert %}

```js
player.custom = fab.shorthand("custom");
player.custom("foo", "bar"); // These arguments will be ignored
```