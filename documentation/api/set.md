---
layout: method
name: set
description: Set a player’s property
tags: [setter, property]
signatures:
  -
    params:
    -
      name: property
      type: string
      description: The property to set.
    -
      name: value
      type: "*"
      description: The new property’s value.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params:
    -
      name: obj
      type: object
      description: An object literal of properties and their values.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
---

Set a value for a player’s [property](/documentation/properties.html).
If there is no renderer, this method will store the value in the config which will be passed to a new renderer.

## Example:
```js
player.set("autoplay", true);

player.set({
	autoplay: true,
	controls: true
});
```

{% alert %}
Some properties are badly or not implemented for now.  
Give us some time to standardize them all.
{% endalert %}