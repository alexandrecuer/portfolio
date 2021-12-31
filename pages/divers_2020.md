---
layout: page
show_meta: false
subheadline: "Vacances !"
title: "divers 2020 :-)"
header: no
permalink: "/divers/2020/"
---
<ul>
    {% for post in site.tags.divers_2020 %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>