---
layout: method
name: get
description: Get a player's property
signatures:
  -
    params:
    -
      name: property
      type: string
      description: The property's value to get.
    return:
      type: "* | undefined"
      description: Return the property's value.
---

Return the current value of a property.  
If there is no renderer, this method will return `undefined`.

## Example:
```js
player.get("autoplay"); // Return `true` of `false`
```

{% alert %}
Some properties are badly or not implemented for now. Give us some time to standardize all these properties.
{% endalert %}

{% include properties.md %}