# [![fabuloos](https://github.com/egeny/fabuloos-website/raw/master/img/fabuloos.svg)](http://fabuloos.org)

This repository contains the fabuloos’ website ([fabuloos.org](http://fabuloos.org)).

## How to build

The website is powered by [Jekyll](http://jekyllrb.com). In order to build it you’ll have to install Jekyll first:

```bash
gem install jekyll
```

Or simply launch the `_jekyll.command`, it will install everything your need.

Then, you have two options:

1. Launch `build.command` (double-clicking might work depending on your platform).  
The script will install the dependencies and build the website.
2. Open a terminal console, browse to the folder and launch:  
	* `jekyll build` to build the website,
	* `jekyll build --watch` to build the website and keep watching the files for modifications,
	* `jekyll server --watch` to build, watch and create a webserver ([0.0.0.0:4000](http://0.0.0.0:4000)).
