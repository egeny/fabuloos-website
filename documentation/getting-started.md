---
layout: documentation
next:
  label: Renderers
  url: renderers.html
---

# Getting started

<p>Fabuloos is pretty easy to set up no matter the coding langage. It can take a matter of seconds to get the player up and working on your web page or application.</p>

<h3> Javascript Method</h3>

<ol>
	<li>
		<h4>Include fabuloos to your project</h4>
		<p>Download <a href="#">fabuloos.js</a> and host it on your server. Insert the <code>&lt;script&gt;</code> when needed or just before the <code>&lt;/body&gt;</code>.
		{% highlight html %}<script src="http://fabuloos.org/js/fabuloos-min.js"></script>{% endhighlight %}
	</li>
	<li>
		<h4>Add an HTML5 player (<code>&lt;video&gt;</code> or <code>&lt;audio&gt;</code>)</h4>
		<p>Semantic is important, fabuloos will extend HTML5's media tags.</p>
		{% highlight html %}<video id="example" width="640" height="360" src="http://fabuloos.org/clip.mp4" controls></video>{% endhighlight %}
	</li>
	<li>
		<h4>Enjoy!</h4>
		<p>Add interactivity, build something beautiful, </p>
{% highlight js %}fab("example").at("1m20", function() {
alert("Awesome!");
});{% endhighlight %}
	</li>
</ol>

## Other methods

<p>Coming soon</p>