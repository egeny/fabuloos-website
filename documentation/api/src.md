---
layout: method
name: src
description: Get the source or set a new source
tags: [getter, setter, property]
signatures:
  -
    params:
    -
      name: value
      type: string
      description: The URL of the new source.
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params:
    -
      name: value
      type: object
      description: An object literal representing the new source (might have additional properties).
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params:
    -
      name: value
      type: array
      description: A list of possible sources (items can be string or object as described above).
    return:
      type: fabuloos
      description: Return the current instance to allow chaining.
  -
    params: ~
    return:
      type: object
      description: Return the current source.
---

Changing the source may change the [renderer](/documentation/renderers.html).  
You can provide more informations by passing an `object` having a property `type` or even a property `renderer`.

In this case, the renderer will be changed first.  
If it cannot play the source, too bad for you.

{% alert info %}
[`src()`](/documentation/api/src.html) will change the source an the renderer if needed. [`sources()`](/documentation/api/sources.html) only analyze the source(s) to guess which renderer is the best.
{% endalert %}

## Example:
```js
player.src("http://example.org/video.mp4"); // Search for the best renderer and use it

player.sources({
  src:  "http://example.org/video", // No extension = which MIME type?
  type: "application/vnd.apple.mpegurl" // Here is some help to find the right renderer
});

// Sometimes, you can have multiple representation of your source:
player.sources([
  "http://example.org/video.webm",
  {
    src: "http://example.org/video",
    type: "application/vnd.apple.mpegurl"
  }
]);
```