---
layout: default
---

# Documentation

{% for page in site.pages %}
{% if page.layout == "method" or page.layout == "function" %}
* [{{ page.name }}]({{ page.url }})
{% endif %}
{% endfor %}

{% comment %}
## Core
{% for page in site.pages %}
{% if page.tags contains "core" %}
[{{ page.name }}]({{ page.url }})
{% endif %}
{% endfor %}
{% endcomment %}