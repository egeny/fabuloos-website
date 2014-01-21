---
layout: documentation
next:
  label: Skins
  url: skins.html
---

# Plugins

Fabuloos is fully modular. You can use only what you need by creating a custom build or extend it with plugins if something is missing.

## Creating a plugin

Creating a plugin is very simple. There is no namespace, you don’t have to register anything, you just [`extend`](/documentation/api/fab.extend.html) fabuloos.

For example, if you want to change the behavior of the [`play()`](/documentation/api/play.html) method by allowing to pass a new source:

```js
// Extend fabuloos’ prototype to create a new "play" method
fab.extend({
	play: function(source) {
		// If we have a source, set it!
		if (source) {
			this.src(source);
		}

		// Don’t forget to launch the base "play" method
		// to actually launch the playback
		return this._super();
	}
})
```

In fact, the [`src()`](/documentation/api/src.html) method is perfectly capable to handle the case when there is no source, we could rewrite our plugin like this:

```js
// Extend fabuloos’ prototype to create a new "play" method
fab.extend({
	play: function(source) {
		this.src(source);

		// Don’t forget to launch the base "play" method
		// to actually launch the playback
		return this._super();
	}
})
```

We could even write less code by using [`set()`](/documentation/api/set.html) which always return the current instance for chaining methods:

```js
// Extend fabuloos’ prototype to create a new "play" method
fab.extend({
	play: function(source) {
		return this.set("src", source)._super();
	}
})
```

That’s pretty much you have to know about plugin creation, happy coding!

<h2 id="playlist">Playlist</h2>

We have created a simple playlist plugin adding these methods:

* `playlist()` — Get or set the playlist of media to play.
* `first()` — Pass to [`config()`](/documentation/api/config.html) the first item of the playlist.
* `previous()` — Pass to [`config()`](/documentation/api/config.html) the previous item of the playlist.
* `next()` — Pass to [`config()`](/documentation/api/config.html) the next item of the playlist.
* `last()` — Pass to [`config()`](/documentation/api/config.html) the last item of the playlist.

The full documentation is coming soon.