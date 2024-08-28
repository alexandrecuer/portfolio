---
layout: page
show_meta: false
subheadline: "Vacances !"
title: "holidays 2024"
header: no
permalink: "/vacances/2024/"
---
<ul>
    {% for post in site.tags.vacances_2024 %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
