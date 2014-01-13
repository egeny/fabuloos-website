---
layout: documentation
next:
  label: Getting started
  url: getting-started.html
---

# What is Fabuloos?

<section id="initiative_">
    <h2>A big step forward for standardizing video playback across web browsers and devices.</h2>
    <p class="lead">Fabuloos offers you a new way to build top-quality media players. No more browser plugins, no librairies dependencies, no proprietary platforms. You only need to use one method for embedding a video, based on open standards, and it works everywhere.</p>
    <p>You have an incredible list of options to play a video (JWPlayer, VideoJS, OSMF, Media Player Framework, Youtube, HTML5, using the player provided by your CDN or even proprietary solutions). In a way, that's a good thing, but you'll waste time benchmarking all this solutions to find the one for your project. Then, you'll have to dive into its documentation. Long story short, you waste energy, you have to learn new things even before starting to use a component. All of this increase the complexity, developping a so old and in-place thing such as a player had become a hard and boring task, sometimes painful to maintain. After that, you're in a closed garden, you have mastered a specific API and you'll have to start over if you want to change your player.</p>
    <p>We think it is important to provide the same experience any where, any time, any device. Regardless of the platform, we find a common problem: different implementations in the eco-system. This fragmentation leads to an huge waste of time and some complex workaround to achieve simple things. Fabuloos is built around the belief that declarative code is better than imperative when it comes to building media players. The debate of the platform doesn't matter, the time you spend not thinking about your product and the experience you want to offer to your user is (and should always be) your first concern. Fabuloos wants to leverage the concept of media player for every platform (in web-terms, that's a polyfill).</p>
    <p class="lead">The Fabuloos initiative intent to create a unique and intuitive API for media playback no matter the development environment.</p>
    <p>Our starting point was the W3C's HTML5 specification about the media element. We extended it and thunk it for the developpers (W3C specifications' target are mostly browsers vendors). Our goal is the same behaviour no matter the coding langage. This mean an unique and intuitive API and some shared concepts.</p>
    <p>Fabuloos simplifies media player development by presenting a higher level of abstraction to the developer which hide all the complexity of playback technologies. It allows you to assemble exactly the player you need, in a fastest and reliable way. You keep full control of your videos by freely using your preferred hosting and encoding service(s). You code once, you can change from Youtube to something else with no pain.</p>
    <p>Fabuloos includes an advanced event system for creating interactions between video and other elements on the page. Once loaded, Fabuloos Player instantiates a unique API object called fabuloos. Event-handler routines handle the events to which the media player respond and find DOM nodes by selector.</p>
    <p class="lead">A pixel perfect graphic engine</p>
    <p>Some solutions embed the skin and give you some options to tweak it. This is nice but it won't fit with your design. We think skins are an essential aspect of a media player and should be treated like it deserve.</p> 
    <p>Fabuloos comes with a custom set of controls over top of the video element to provide a consistent look between any environement. The rendering of every control and UI element is resolution independent and delivers a pixel-perfect rendering on Retina displays. It fixs many cross browser bugs or inconsistencies and adding new features that haven't been implemented by all browsers (like fullscreen and subtitles).</p>
</section>

<section id="api_">

</section>

<section id="skin_">

</section>