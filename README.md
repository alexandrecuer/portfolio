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

- Vous avez cloné le site via Github Desktop dans un dossier `C:\Users\alexandre.cuer\Documents\GitHub\portfolio`

- Vous conservez vos photos originales dans un répertoire sur votre bureau, par exemple : `C:\Users\alexandre.cuer\Desktop\extra\` ou directement dans le dossier github, dans un dossier `sources`

- Vous chargez un jeu de photos dans ce dossier `extra` ou `sources`, au sein d'un dossier `balades_deconf\busset`

Ouvrez un explorateur Windows depuis le dossier `portfolio` et lancez un invité de commande msdos depuis ce dossier

```
traitement.bat C:\Users\alexandre.cuer\Desktop\extra\balades_deconf\busset divers balades_deconf
```
Le script crée automatiquement la [page de la collection](collection.md) mais la crée à la racine, directement dans [_posts](_posts). 

Il convient de la ranger manuellement dans le sous-répertoire adapté, après l'avoir éditée pour modifier le titre afin d'en faire une phrase (balades_deconf par exemple n'est pas très parlant)

Nota : la page de la collection n'est qu'un template, le script qui fait le travail est [_includes/gallery](_includes/gallery)

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

### Archivage

Lorsque le menu de navigation se charge trop, on peut créer des archives annuelles....

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

## batch ressources

https://fr.wikibooks.org/wiki/DOS/Tree

https://initscreen.developpez.com/tutoriels/batch/apprendre-la-programmation-de-script-batch/

https://www.robvanderwoude.com/escapechars.php

https://windows.developpez.com/faq/batch/?page=fichiers
