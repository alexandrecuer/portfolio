---
layout: page
show_meta: false
subheadline: "Vacances !"
title: "holidays 2025"
header: no
permalink: "/vacances/2025/"
---
<ul>
    {% for post in site.tags.vacances_2025 %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
