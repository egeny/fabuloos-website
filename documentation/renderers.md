---
layout: documentation
next:
  label: Plugins
  url: plugins.html
---

# Renderers

Before you had to choose between players. With fabuloos, you just use a piece of code standardizing a player. That what we call a renderer (because it is in fact in charge of rendering the media).

To understand the problem let’s take an example: The [`play()`](/documentation/api/play.html) method.  
You might think every player have a `play()` method since it is the basic need. In fact, this is far from the reality. Youtube have a [`playVideo()`](https://developers.google.com/youtube/iframe_api_reference#playVideo) method, Flash based player cannot use `play` since it is a reserved keyword by ActiveX, etc.

This is the same for the other methods, properties and events.
Even embedding a player can be a nightmare.

A renderer will solve all these issues. When calling the [`play()`](/documentation/api/play.html) method on fabuloos, it will call the right play method on the renderer.

## Creating your own renderer

We’ve done most of the work for you. First, create a "class" and inherit from Renderer:

```js
function MyRenderer(config) {
	// This will handle the basic initialization
	this.init(config);
}

// "Teach" MyRenderer how to inherit and inherit from Renderer
MyRenderer.inherit = Renderer.inherit;
MyRenderer.inherit(Renderer);
```

Then, you have to add some static members so fabuloos will ask your renderer if it can play a source:

```js
// "Teach" MyRenderer how to extend and extend the class
MyRenderer.extend = Renderer.extend;
MyRenderer.extend(MyRenderer, {
	// Used to check if this renderer is able to play a given URL
	canPlay: function(url) {
		return "maybe";
	},

	// Used to check if this renderer is able to play a given MIME type
	canPlayType: function(type) {
		return "maybe";
	},

	// Used to check if this renderer is supported on this platform
	isSupported: true
});
```

The `isSupported` property is important because sometimes your renderer won’t be available. For instance, if your renderer use a Flash or Silverlight player, you have to check if those plugins are available on the browser:

```js
isSupported: Renderer.isPluginSupported({
	minVersion: "10.1",
	plugin:  "Shockwave Flash",
	activex: "ShockwaveFlash.ShockwaveFlash"
})
```

This example is extracted from the [FabuloosFlashRenderer](#FabuloosFlashRenderer).

You are almost done! You just have to add some methods to the prototype:

```js
MyRenderer.extend({
  get: function() {}, // How to get a property
  set: function() {}, // How to set a property

  bind:    function() {}, // Fabuloos ask to listen for an event
  unbind:  function() {}, // Fabuloos ask to stop listenning for an event
  trigger: function() {}, // Dispatch an event to fabuloos

  replace: function() {}, // Replace an element with the renderer’s markup
});
```

Finally, register this renderer in the list of renderers:

```js
Renderer.register(MyRenderer);
```

There is a lot more of cool stuff we’ll discuss later!

<h2 id="HTMLRenderer">HTMLRenderer</h2>

This renderer is a wrapper for the HTML5’s `<video>` and `<audio>` elements.

<h2 id="FabuloosFlashRenderer">FabuloosFlashRenderer</h2>

This renderer use a custom [Flash fallback](https://github.com/egeny/fabuloos-flash) we made. It implement the W3C’s specification to be the closer possible to the HTML5’s `<video>` and `<audio>` elements.

As a bonus, it can play some streams HTML5 doesn’t support yet (RTMP).

<h2 id="YoutubeRenderer">YoutubeRenderer</h2>

This renderer embed a Youtube player and allows you to use it like a `<video>` element. It is smart enough to embed using an `<iframe>` or an `<object>` depending on the browser’s capabilities.

{% alert %}
All the properties and events aren’t supported yet.  
Give us some time to fix this.
{% endalert %}