using foundation framework and not bootstrap 

the [foundation grid system](https://get.foundation/sites/docs-v5/components/grid.html)

to run the site localy :

```
jekyll serve --config _config.yml,_config_dev.yml
```

## adding a collection of photos

Il faut générer des photos de taille 800x600 et des miniatures

### Sous Windows :

La situation est la suivante :

- Vous conservez vos photos originales dans un répertoire sur votre bureau, par exemple : `C:\Users\alexandre.cuer\Desktop\extra\`

- Vous chargez un jeu de photos dans ce dossier `extra`, au sein d'un dossier `balades_deconf\busset`

- Vous avez cloné le site via Github Desktop dans un dossier `C:\Users\alexandre.cuer\Documents\GitHub\portfolio`

Ouvrez un explorateur Windows depuis ce dossier `portfolio` et lancez un invité de commande msdos depuis ce dossier

```
traitement.bat C:\Users\alexandre.cuer\Desktop\extra\balades_deconf\busset divers balades_deconf busset
```

### Sous Linux

script à créer

### Mise à jour du menu de navigation 

[_data/navigation.yml](_data/navigation.yml)

```
- title: Divers
  url: "/divers"
  side: left
  dropdown:
  - title: "Busset"
    url: "/divers/conf_2020_busset"
```

### Création de la page de la collection 

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
Nota : le script qui publie les images est [_includes/gallery](_includes/gallery)

## original repo

https://github.com/Phlow/feeling-responsive

## other ressources

https://github.com/alexivkin/Jekyll-Art-Gallery-Plugin

https://olgaivkin.com/portfolio/flowers/

the [documentation](https://alexandrecuer.github.io/portfolio/documentation)

the [blog](https://alexandrecuer.github.io/portfolio/blog)

## image manipulation

https://www.commentcamarche.net/faq/6120-imagemagick-manipuler-les-images-en-ligne-de-commande

TO DO : shell script to autoresize image and create thumbnail when posting
right now done manually with a window dos script 

https://imagemagick.org/script/identify.php

https://unix.stackexchange.com/questions/294341/shell-script-to-separate-and-move-landscape-and-portrait-images

## logo for mobile

related code is in [_includes/_navigation.html](_includes/_navigation.html)
