---
layout: documentation
next:
  label: Getting started
  url: getting-started.html
---

# What is fabuloos?

{% aside %}
A big step forward for standardizing video playback across web browsers and devices.
{% endaside %}

There is a lot of options to play a media (to list a few: [JWPlayer](http://www.jwplayer.com), [Youtube](http://www.youtube.com) or HTML5). In a way, that's a good thing, but you'll have to waste time benchmarking to find the right one for your project. Then, you have to learn how to use it, dive into its documentation and, hopefully, succeed to play something. This increase the complexity of your day-job and embedding a media player had become a hard and boring task, sometimes painful to maintain. At the end, you closed yourself and your project into a specific API, you'll have to start over if you want to change the player.

We think it is important to provide the same experience anywhere, anytime on any devices. Regardless of the platform, coders face the same problem: differents implementations in the ecosystem. This fragmentation leads to an huge waste of time and some complex workaround. The time you spend not thinking about your product and the experience you want to offer should always be your first concern. Fabuloos wants to leverage the concept of media player for every platforms (in web-terms, fabuloos is a [polyfill](http://en.wikipedia.org/wiki/Polyfill)).

{% aside %}
The fabuloos initiative intent to create an unique and intuitive API for media playback no matter the development environment.
{% endaside %}

Our starting point was the [W3C's HTML5 specification](http://dev.w3.org/html5/spec-author-view/video.html) but we thunk it for developpers (W3C's specifications targets browser vendors). We are aiming the same behaviour and same code, no matter the platform.

Fabuloos hide the complexity of playback technologies and offer the developper an unique and intuitive API. It allows you to assemble exactly the player you need, in a fast and reliable way. You keep full control of your media by using your preferred hosting and encoding services. You code once and can change, for example, from Youtube to something else with no pain. Even better, with fabuloos' API you can start building interactions between your player and your application.

{% aside %}
A new way to build top-quality media players, based on open standards, and it works everywhere.
{% endaside %}