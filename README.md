using foundation framework and not bootstrap 

the [foundation grid system](https://get.foundation/sites/docs-v5/components/grid.html)

to run the site localy :

```
jekyll serve --config _config.yml,_config_dev.yml
```

## ajouter une nouvelle collection de photos et produire les miniatures associées

Vous avez cloné le site via Github Desktop dans un dossier `C:\Users\votre_nom_d_utilisateur\Documents\GitHub\portfolio` ou dans `/home/votre_nom_d_utilisateur/Documents/GitHub/portfolio`

Vous conservez vos photos originales directement dans le dossier `portfolio`, dans un sous-dossier `sources`

Vous chargez un jeu de photos dans ce dossier `sources`, au sein d'un dossier `busset`

Ouvrez un gestionnaire de fichiers, positionnez-vous dans le dossier `portfolio` et lancez un invité de commande msdos ou shell depuis ce dossier

Sous Windows :
```
traitement.bat C:\Users\alexandre.cuer\Documents\GitHub\portfolio\sources\busset divers busset 2020
```

Sous Linux :
```
./traitement.sh /home/alexandrecuer/Documents/GitHub/portfolio/sources/busset divers busset 2020
```

les images retaillées seront produites dans `images/divers/2020/busset`: il ne faut donc pas de caractères accentués dans ces paramètres !!!! 

le dernier paramètre, içi 2020, sert aussi pour générer le tag d'archivage

Le script crée automatiquement la [page de la collection](collection.md), à la racine, directement dans [_posts](_posts). 

Il convient de la ranger manuellement dans le sous-répertoire adapté, après l'avoir éditée pour modifier le titre afin d'en faire une phrase. Par défaut, le script utilise balades_deconf pour le titre mais ce n'est pas très parlant....

Nota : la page de la collection n'est qu'un template, le script qui fait le travail est [_includes/gallery](_includes/gallery)

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

cf [pages/vacances_2019.md](pages/vacances_2019.md)

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
