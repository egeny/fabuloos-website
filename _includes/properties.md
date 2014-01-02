Here is the list of properties:

* `autoplay`: Do the player have to launch playback automatically?
* `buffered`: The buffered ranges of the media. Currently badly implemented, we recommend to **not** use this property for now.
* `controls`: Do we have to display the player's native controls?
* `currentSrc`: The source currently playing, may be different from `src`.
* `currentTime`: The current position of the playback. In seconds.
* `defaultPlaybackRate`: The default playback speed. Almost not implemented for now, do **not** use this property for now.
* `duration`: The duration of the media. Might be `0` or `Infinity` if you're trying to play a live stream.
* `ended`: Does the player ended the playback? Will always be `false` if `loop` is `true`.
* `error`: The current error of the player. `null` means no error. Currently badly implemented, do **not** use this property for now.
* `height`: The current height of the player. For now, it is recommended to use [`height()`](/documentation/api/height.html) instead.
* `loop`: Do the player have to start playing the media back when it ended?
* `muted`: Is the player currently muted?
* `networkState`: The current network state. Currently badly implemented, we recommend to **not** use this property for now.
* `paused`: Is the player currently paused?
* `playbackRate`: The current playback speed. Almost not implemented for now, do **not** use this property for now.
* `played`: The range of seconds played. Currently badly implemented, we recommend to **not** use this property for now.
* `poster`: The poster image to use before launching the playback of the video.
* `preload`: The preloading mode.  Currently badly implemented, we recommend to **not** use this property for now.
* `readyState`: The current player's state. Currently badly implemented, we recommend to **not** use this property for now.
* `seekable`: The range of seconds seekable. Currently badly implemented, we recommend to **not** use this property for now.
* `seeking`: Is the player currently seeking?
* `src`: The source currently playing.
* `videoHeight`: The height of the video's source.
* `videoWidth`: The width of the video's source.
* `volume`: The current volume between `0` and `1`. While `muted` the volume still have a value.
* `width`: The current width of the player. For now, it is recommended to use [`width()`](/documentation/api/width.html) instead.
