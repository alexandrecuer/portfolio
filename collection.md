# Création de la page d'une collection d'images 

Créer le fichier md dans le répertoire [_posts/divers](_posts/divers) avec comme nom `YYYY-MM-JJ-bla_bla.md` avec le contenu suivant :

```
---
layout: page
header:
    image_fullwidth: "divers/balades_deconf/busset/balades_deconf_busset_45.jpg"
    title : autour du chateau de Busset
subheadline:  "mai 2020"
title:  "le déconfinement dans la nature (2)"
breadcrumb: true
permalink: /divers/conf_2020_busset
categories:
    - misc
tags:
    - misc
    - misc_2020
image:
   base: divers/balades_deconf/busset/balades_deconf_busset
   start: 1
   max: 68
---

{% include gallery %}

{: .t60 }
{% include list-posts tag='misc' %}
```
