---
layout: page
show_meta: false
subheadline: "Vacances !"
title: "farniente"
header: no
permalink: "/vacances/"
---
<ul>
    {% for post in site.tags.vacances %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
