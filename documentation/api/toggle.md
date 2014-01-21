---
layout: method
name: toggle
description: Toggle a player’s property’s value
tags: [property]
signatures:
  -
    params:
    -
      name: property
      type: string
      description: The property to toggle.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
---

Toggle the value of a [property](/documentation/properties.html).  
Well… That’s it!

## Example:
```js
player.toggle("autoplay"); // `autoplay` will be set to `true` or `false`, nobody knows.
```

{% alert %}
Some properties are badly or not implemented for now.  
Give us some time to standardize them all.
{% endalert %}