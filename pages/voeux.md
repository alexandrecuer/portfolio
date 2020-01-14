---
layout: page
show_meta: false
header:
   image_fullwidth: "gallery-example-8.jpg"
   title: "nos cartes de voeux !"
permalink: "/voeux/"
---
{% comment %}
{% for hp in site.html_pages %}
{% if hp.tags %}
{{ hp.title }} {{ hp.url }} has got the tag {{ hp.tags }}
{% endif %}
{% endfor %}
{% endcomment %}

<ul>
{% for hp in site.html_pages %}
  {% if hp.categories contains "voeux" %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ hp.url }}">{{ hp.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>