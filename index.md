---
layout: default
---

<!--<iframe src="http://fabuloos.ws/U73ldn" width="100%" height="408" frameborder="0" webkitallowfullscreen mozallowfullscreen msallowfullscreen allowfullscreen></iframe>-->

<section class="jumbotron">

<div class="center">
  <a href="/" class="brand"><img src="/img/fabuloos.png" width="320" title="Fabuloos.org" /></a>
 </div>
 <div class="center">
  <h1>Any Device. Unified API. Same UI. Open Source.</h1>
  <p><button class="btn btn-large btn-default" role="button"><span class="glyphicon glyphicon-download"></span>View on Github</button><span class="spacer"></span><button class="btn btn-large btn-success" role="button"><span class="glyphicon glyphicon-download"></span>Download</button></p>
 </div>
 <div class="center">
    <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/follow_button.1384994725.html#_=1386853116727&amp;id=twitter-widget-0&amp;lang=en&amp;screen_name=_fabuloos&amp;show_count=false&amp;show_screen_name=true&amp;size=m" class="twitter-follow-button twitter-follow-button" title="Twitter Follow Button" data-twttr-rendered="true" style="width: 120px; height: 20px;"></iframe>
	<span class="spacer"></span>
    <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/tweet_button.1387492107.html#_=1387827273221&amp;count=horizontal&amp;id=twitter-widget-0&amp;lang=en&amp;original_referer=http%3A%2F%2Ffabuloos.org%2F&amp;size=m&amp;text=Fabuloos%20-%20Ultimate%20Player%20for%20Any%20Device&amp;url=http%3A%2F%2Ffabuloos.org&amp;via=fabuloos" class="twitter-share-button twitter-tweet-button twitter-count-horizontal" title="Twitter Tweet Button" data-twttr-rendered="true" style="width: 80px; height: 20px;"></iframe>
 </div>
</section>


<div class="row-fluid">
	<div class="span4">
				<h3>Play Videos Anywhere</h3>
				<p>Fabuloos is a simple yet powerful video framework that finally sparks the HTML5 Video revolution, by enabling full graphic freedom and features modularity, working perfectly on any browser and the latest mobile platforms.</p>

	</div>
	<div class="span4">
				<h3>Simply Plug-and-Play</h3>
				<p>Crazy fast, less than 100k, it can take a matter of seconds to get Fabuloos up and working on your web page. Fabuloos is fully modular and allows you to assemble exactly the player you need, so get started making the difference.</p>
	</div>
	<div class="span4">
				<h3>Enhance Experience</h3>
				<p>Tell Fabuloos stories and create interactive programs, web documentaries, and more. The Fabuloos API gives you the ability to control the player via JavaScript and easily implement custom and advanced functionality.</p>
	</div>

</div>

<hr />

<section>

## How It Works

### Step 1: Include the Fabuloos.js Javascript in your page

You can download the Fabuloos.js source and host it on your own servers, or use the free CDN hosted version. It's often recommended now to put JavaScript before the end body tag (`</body>`) instead of the head (`<head>`).

```html
<script src="http://fabuloos.org/js/fabuloos-min.js"></script>
```

### Step 2: Add an HTML5 video tag to your page

With Fabuloos.js you just use an HTML5 video tag to embed a video. Fabuloos.js will then read the tag and make it work in all browsers, not just ones that support HTML5 video.

```html
<video id="example" width="640" height="360" src="http://fabuloos.org/clip.mp4" controls></video>
```

### Step 3: Enjoy

```js
fab("example").at("1m20", function() {
	alert("hello");
});
```
	
</section>

<hr>

<section>

<h2>Why Fabuloos</h2>

<p class="lead">Keep It Simple, Stupid</p>

<h3>The vision</h3>

<p class="lead">The fabuloos initiative intent to create a common API for media player no matter the development environment.</p>

<p>You have an incredible list of options to play a media (JWPlayer, VideoJS, OSMF, Media Player Framework, Youtube, HTML5, using the player provided by your CDN or even proprietary solutions). In a way, that's a good thing, but you'll waste time benchmarking all this solutions to find the one for your project. Then, you'll have to dive into its documentation. Long story short, you waste time, energy, you have to learn new things even before starting to use a component. All of this increase the complexity, developping a so old and in-place thing such as a player had become a hard and boring task, sometimes painful to maintain.</p>
<p>After that, you're in a closed garden, you have mastered a specific API and you'll have to start over if you want to change your player. Fabuloos abstract the player, you code once, you can change from Youtube to something else with no pain. We don't hope you'll become a “fabuloos expert”, we want you to add a “media specialist” to your skills. There is a big difference.</p>

<blockquote>
  <p>If it can be written, or thought, it can be filmed.</p>
  <small>Stanley Kubrick</small>
</blockquote>

<h3>For the web and the others</h3>
<p>We think it is important to provide the same experience to the non-web part (such as desktop or mobile applications). The debate of the platform doesn't matter, the time you spend not thinking about your product and the experience you want to offer to your user is (and should always be) your first concern. Regardless of the platform, we find a common problem: different implementations in the eco-system. This fragmentation leads to an huge waste of time and some complex workaround to achieve simple things. Fabuloos wants to leverage the concept of media player for every platform (in web-terms, that's a polyfill).</p>

<h3>Standard</h3>
<p>Our starting point was the W3C's HTML5 specification about the media element. We extended it and thunk it for the developpers (W3C specifications' target are mostly browsers vendors). Our goal is the same behaviour no matter the coding langage. This mean an unique and intuitive API and some shared concepts.</p>

<h3>No dependency</h3>
<p>Your project is well-started and you decide to add a component you found online. Except that it requires some libraries which goes in conflict with the one you are already using. Wrong dependency version? New version conflicting with something else? Sometimes components use just a few percent of the dependencies, surcharging the memory. Coding was about efficiency, but now the overall complexity make you lose time on thing you don't want to focus on.</p>

<h3>Skin</h3>
<p>Some solutions embed the skin and give you some options to tweak it. This is nice but it won't fit with your design. We think skins are an essential aspect of a media player and should be treated like it deserve.</p>

<h3>Unified documentation</h3>
<p>Encyclopedia and references are a blessing. Most of technical documentation describe how to use a product although it should describe what should be done, no matter the product. A documentation should teach you to do things, not to use things. We're trying to build the most complete documentation on ”how you should build a player” (featuring guides on encoding, UI good practices and of course the available fabuloos' API).</p>

<h3>Open</h3>
<p>Of course it is lightweight, fast and have a low footprint.</p>

<h3>Get involved</h3>
<p>Starting by spreading the word and giving us some feedbacks. If your thing is writing code feel free to fork the repositories and send some pull requests. In any case, you can donate using PayPal, it will surely help us.</p>

</section>


<h3>Donate to the project</h3>

<p class="lead">Your support is critical to our success</p>

<p>When you click the PayPal icon, you will be taken to the PayPal website where you will be able to donate any amount up to ten thousand US dollars (or the equivalent in another currency) to the Fabuloos project. Note that you do not have to create a PayPal account in order to donate money. Please make sure you have read the legal notice at the bottom of this page. </p>

