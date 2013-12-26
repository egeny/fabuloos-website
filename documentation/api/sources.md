---
layout: method
name: sources
description: Analyze the sources against the renderers
tags: core, sources
signatures:
  -
    params:
    -
      name: value
      types: string
      description: The URL to analyze.
    return:
      type: fabuloos
      description: Return the current instance of the player to allow chaining.
  -
    params:
    -
      name: value
      types: object
      description: An object literal representing the source (might have additional properties).
    return:
      type: fabuloos
      description: Return the current instance of the player to allow chaining.
  -
    params:
    -
      name: value
      types: array
      description: A list of source to analyze (items can be string or object as described above).
    return:
      type: fabuloos
      description: Return the current instance of the player to allow chaining.
  -
    params: ~
    return:
      type: fabuloos
      description: Return the analyzed sources.
---

This method is used internally to search for solutions (renderers) for sources.
It will keep the result internally since it may be useful later.

{% alert warning %}
This method will **not** change the source. It will only analyze them.  
If you want to change the source, call [`.src()`](/documentation/api/src.html).
{% endalert %}

## Example:
```js
player.sources("http://example.org/video.mp4");
// Will determine that the MIME type for this source is "video/mp4"
// Will then search inside available renderers for the one capable of handling this MIME type

// Sometimes, your URL doesn't have an extension or you want to force a renderer:
player.sources({
  src:  "http://example.org/video",
  type: "application/vnd.apple.mpegurl" // Tell fabuloos that this URL is an HTTP Live Stream
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

{% alert info %}
Please note that when passing an `array` the order matter. The first sources will be prefered against the others.
{% endalert %}