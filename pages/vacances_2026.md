---
layout: page
show_meta: false
subheadline: "Vacances !"
title: "holidays 2026"
header: no
permalink: "/vacances/2026/"
---
<ul>
    {% for post in site.tags.vacances_2026 %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
