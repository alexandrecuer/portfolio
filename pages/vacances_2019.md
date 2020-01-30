---
layout: page
show_meta: false
subheadline: "Vacances !"
title: "farniente 2019"
header: no
permalink: "/vacances/2019/"
---
<ul>
    {% for post in site.tags.vacances_2019 %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>