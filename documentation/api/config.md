---
layout: method
name: config
description: Get or set the configuration
tags: [core, getter, setter, property]
signatures:
  -
    params: ~
    return:
      type: object
      description: Return the player’s configuration
  -
    params:
    -
      name: value
      type: object
      description: The configuration to apply to the player
    return:
      type: fabuloos
      description: Return the current instance of the player to allow chaining
---

This method allows you get or set the instance configuration.  
You can define all the [properties](/documentation/properties.html) you want.

If the property doesn’t exists it will just be stored in the instance so you can use it later.  
If the property exists in the API (for instance: [`on`](on.html)) it will call it passing the value.

## Example:
```js
player.config(); // Return the current configuration

// Change the source by providing the source’s MIME type
// (will help the renderer chooser algorithm)
player.config({
	src:  "http://example.org/video.mp4",
	type: "video/mp4"
});

// Set the autoplay to false, register an handler for the playing event.
player.config({
  autoplay: false,
  on: {
    playing: function() { console.log("playing"); }
  }
})
```