---
layout: page
show_meta: false
subheadline: "Vacances !"
title: "holidays 2020"
header: no
permalink: "/vacances/2020/"
---
<ul>
    {% for post in site.tags.vacances_2020 %}
    <li><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>