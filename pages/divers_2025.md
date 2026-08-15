---
layout: page
show_meta: false
subheadline: "photos diverses !"
title: "2025"
header: no
permalink: "/divers/2025/"
---
<ul>
    {% for post in site.tags.divers_2025 %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
