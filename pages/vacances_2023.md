---
layout: page
show_meta: false
subheadline: "Vacances !"
title: "holidays 2023"
header: no
permalink: "/vacances/2023/"
---
<ul>
    {% for post in site.tags.vacances_2023 %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
