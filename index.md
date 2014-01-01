---
layout: default
---

<div class="jumbotron">

<div class="center">
 <img src="/img/fabuloos.png" width="380" title="Fabuloos.org" />
 </div>
 <div class="center">
  <h1>A better way to build media players!</h1>
	  <p>
		<!-- Button trigger modal -->
		<button class="btn btn-lg btn-default" data-toggle="modal" data-target="#myModal">
  			<span class="icon-play"></span>  Lauch a Demo</a>
		</button>
		<span class="spacer"></span>
		<a href="download" class="btn btn-lg btn-download" role="button">
			<span class="glyphicon glyphicon-download-alt"></span> Download</a>
		</p>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Kubrick // One-Point Perspective</h4>
      </div>
      <div class="modal-body">
		<iframe src="http://fabuloos.ws/U73ldn" width="100%" height="408" frameborder="0" webkitallowfullscreen mozallowfullscreen msallowfullscreen allowfullscreen></iframe>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
		
 </div>
 <div class="center">
    <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/follow_button.1384994725.html#_=1386853116727&amp;id=twitter-widget-0&amp;lang=en&amp;screen_name=_fabuloos&amp;show_count=false&amp;show_screen_name=true&amp;size=m" class="twitter-follow-button twitter-follow-button" title="Twitter Follow Button" data-twttr-rendered="true" style="width: 120px; height: 20px;"></iframe>
	<span class="spacer"></span>
    <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/tweet_button.1387492107.html#_=1387827273221&amp;count=horizontal&amp;id=twitter-widget-0&amp;lang=en&amp;original_referer=http%3A%2F%2Ffabuloos.org%2F&amp;size=m&amp;text=Fabuloos%20-%20Ultimate%20Player%20for%20Any%20Device&amp;url=http%3A%2F%2Ffabuloos.org&amp;via=fabuloos" class="twitter-share-button twitter-tweet-button twitter-count-horizontal" title="Twitter Tweet Button" data-twttr-rendered="true" style="width: 80px; height: 20px;"></iframe>
 </div>
</div>


<div class="row">
	<div class="col-md-4 col-sm-4">
				<h3>Any Device</h3>
				<p>Fabuloos offers a radically faster, cleaner and simpler approach to build top-quality media players in a fraction of the time, whether you're an expert developer or just getting started. It works perfectly on any browser and any device.</p>

	</div>
	<div class="col-md-4 col-sm-4">
				<h3>Unified API</h3>
				<p>Fabuloos is a toolset for building the media framework most suited to your application development. It is fully modular, works with your prefered hosted service, and gives you the ability to assemble exactly the player you need and to control it easily.</p>
	</div>
	<div class="col-md-4 col-sm-4">
				<h3>Interactive Experience</h3>
				<p>Tell Fabuloos stories and create web documentaries, slides alongside a video, second screen apps and more. You can program an infinity of interactions between video and others components.</p>
	</div>
</div>

<hr class="section-line" />

<section>
<h1>How It Works</h1>

<ul class="nav nav-tabs">
  <li><a href="#browser" data-toggle="tab"><span class="icon-html5"></span> For Browsers</a></li>
  <li><a href="#ios" data-toggle="tab"><span class="icon-apple"></span>  For iOS</a></li>
  <li><a href="#android" data-toggle="tab"><span class="icon-android"></span> For Android</a></li>
  <li><a href="#windows" data-toggle="tab"><span class="icon-windows8"></span> For WindowsPhone</a></li>
</ul>

<div class="tab-content">
  <div class="tab-pane fade in active" id="browser">
  <h3>Step 1: Include the Fabuloos.js Javascript in your page</h3>
  </div>
  <div class="tab-pane" id="ios">
  	<h3>Step 1: </h3>
  	<h3>Step 2: </h3>
  	<h3>Step 3: </h3>
  </div>
  <div class="tab-pane" id="android">
  	<h3>Step 1: </h3>
  	<h3>Step 2: </h3>
  	<h3>Step 3: </h3>
  </div>
  <div class="tab-pane" id="windows">...</div>
</div>

<script>

$('#myTab a:first').tab('show') // Select first tab

$('#myTab a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
})

</script>
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

<hr class="section-line" />

<section>

<h1>Why Fabuloos</h1>
<div class="row">
	<div class="col-md-8">
	<h2>An initiative for standardizing media playback.</h2>
		<p>You have an incredible list of options to play a media (JWPlayer, VideoJS, OSMF, Media Player Framework, Youtube, HTML5, using the player provided by your CDN or even proprietary solutions). In a way, that's a good thing, but you'll waste time benchmarking all this solutions to find the one for your project. Then, you'll have to dive into its documentation. Long story short, you waste time, energy, you have to learn new things even before starting to use a component. All of this increase the complexity, developping a so old and in-place thing such as a player had become a hard and boring task, sometimes painful to maintain. After that, you're in a closed garden, you have mastered a specific API and you'll have to start over if you want to change your player. </p>
		<p>We think it is important to provide the same experience any where, any time, any device. The debate of the platform doesn't matter, the time you spend not thinking about your product and the experience you want to offer to your user is (and should always be) your first concern. Regardless of the platform, we find a common problem: different implementations in the eco-system. This fragmentation leads to an huge waste of time and some complex workaround to achieve simple things. Fabuloos wants to leverage the concept of media player for every platform (in web-terms, that's a polyfill).</p>
		<p>Fabuloos offers you a new way to build top-quality media players. No more browser plugins, no librairies dependencies, no proprietary platforms. You only need to use one method for embedding a video, based on open standards, and it works everywhere. This is actually a big step forward for standardizing video playback across web browsers and devices.</p>
	</div>
	<div class="col-md-4">
		<div class="center">
		<img src="/img/any-device.png" class="img-rounded" width="300px">
		</div>
	</div>
</div>
<hr />
<div class="row">
	<div class="col-md-4">
		<div class="center">
		<img src="/img/api-unified.png" class="img-rounded" width="300px" style="background-color:#fff;">
		</div>
	</div>
	<div class="col-md-8">
		<h2>One API to create an infinity of interactions.</h2>
		<p>The fabuloos initiative intent to create a unique and intuitive API for media playback no matter the development environment.</p>
		<p>Our starting point was the W3C's HTML5 specification about the media element. We extended it and thunk it for the developpers (W3C specifications' target are mostly browsers vendors). Our goal is the same behaviour no matter the coding langage. This mean an unique and intuitive API and some shared concepts.</p>
		<p>Fabulloos is fully modular and provide a new level of abstraction which hide all the complexity of various technologies. It allows you to assemble exactly the player you need, in a fastest and reliable way. You keep full control of your videos by freely using your preferred hosting and encoding service(s). You code once, you can change from Youtube to something else with no pain.</p>
		<p>Fabuloos includes an advanced event system for creating interactions between video and other elements on the page. Once loaded, Fabuloos Player instantiates a unique API object called fabuloos. Event-handler routines handle the events to which the media player respond and find DOM nodes by selector.</p>
	</div>
</div>
<hr />
<div class="row">
	<div class="col-md-8">
		<h2>A pixel perfect graphic engine.</h2>
		<p>Some solutions embed the skin and give you some options to tweak it. This is nice but it won't fit with your design. We think skins are an essential aspect of a media player and should be treated like it deserve.</p> 
		<p>Fabuloos comes with a custom set of controls over top of the video element to provide a consistent look between any environement. The rendering of every control and UI element is resolution independent and delivers a pixel-perfect rendering on Retina displays. It fixs many cross browser bugs or inconsistencies and adding new features that haven't been implemented by all browsers (like fullscreen and subtitles).</p>

	</div>
	<div class="col-md-4">
		<div class="center">
		<img src="/img/skin.png" class="img-rounded" width="200px" style="background-color:#fff;">
		</div>	
	</div>
</div>
<hr />
<div class="row">
	<div class="col-md-4">
		<div class="center">
		<img src="/img/no-dependency.png" class="img-rounded" width="200px" style="background-color:#fff;">
		</div>
	</div>
	<div class="col-md-8">
		<h2>Pure Javascript.</h2>
		<p>Your project is well-started and you decide to add a component you found online. Except that it requires some libraries which goes in conflict with the one you are already using. Wrong dependency version? New version conflicting with something else? Sometimes components use just a few percent of the dependencies, surcharging the memory. Coding was about efficiency, but now the overall complexity make you lose time on thing you don't want to focus on.</p>
	</div>
</div>
<hr />

<div class="row">
	<div class="col-md-8">
		<h2>Unified documentation</h2>
		<p>Encyclopedia and references are a blessing. Most of technical documentation describe how to use a product although it should describe what should be done, no matter the product. A documentation should teach you to do things, not to use things. We're trying to build the most complete documentation on ”how you should build a player” (featuring guides on encoding, UI good practices and of course the available fabuloos' API).</p>
		<p>We don't hope you'll become a “fabuloos expert”, we want you to add a “media specialist” to your skills. There is a big difference.</p>
	</div>
	<div class="col-md-4">
		<div class="center">
		<img src="/img/documentation.png" class="img-rounded" width="200px" style="background-color:#fff;">
		</div>	
	</div>
</div>
<hr />
<div class="row">
	<div class="col-md-4">
		<div class="center">
		<img src="/img/open.png" class="img-rounded" width="200px" style="background-color:#fff;">
		</div>
	</div>
	<div class="col-md-8">
		<h2>Free,Open Source and always will be</h2>
		<p class="lead">Lead</p>
		<p>Of course it is lightweight, fast and have a low footprint.</p>	
	</div>
</div>

<hr/>

<span class="spacer"></span>
<blockquote>
  <p>If it can be written, or thought, it can be filmed.</p>
  <small>Stanley Kubrick</small>
</blockquote>
<span class="spacer"></span>

</section>
