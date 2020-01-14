---
layout: page
show_meta: false
header:
   image_fullwidth: "gallery-example-8.jpg"
   title: "nos cartes de voeux !"
permalink: "/voeux/"
---
<ul>
    {% for post in site.categories.voeux %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>