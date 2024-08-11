---
layout: page
show_meta: false
subheadline: "Vacances !"
title: "holidays 2021"
header: no
permalink: "/vacances/2021/"
---
<ul>
    {% for post in site.tags.vacances_2021 %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
