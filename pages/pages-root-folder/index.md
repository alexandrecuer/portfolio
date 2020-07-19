---
#
# Use the widgets beneath and the content will be
# inserted automagically in the webpage. To make
# this work, you have to use › layout: frontpage
#
layout: frontpage
widget1:
  title: "week-end du 14 juillet 2020"
  url: '/vacances/2020_07_14_we'
  image: /vacances/2020_07_14_we/vacances_2020_07_14_we_55.jpg
  text: 'balade en Haute-Loire'
widget2:
  title: "Séville"
  url: '/andalousie/sevilla/'
  image: andalousie/seville/andalousie_seville_121.jpg
  text: 'du 27 au 30 octobre 2019'
widget3:
  title: "Cordoue - la vidéo"
  text: avec en musique de fond, la flute of Hariprasad Chaurasia
  video: '<a href="#" data-reveal-id="videoModal"><img src="http://img.youtube.com/vi/vKxbpUA3xXY/hqdefault.jpg"></a>'
#widget3:
#  title: "Cordoue"
#  image: andalousie/cordoue/andalousie_cordoue_62.jpg
#  url: '/andalousie/cordoue/'
#  text: 'du 25 au 27 octobre 2019'
#
# Use the call for action to show a button on the frontpage
#
# To make internal links, just use a permalink like this
# url: /getting-started/
#
# To style the button in different colors, use no value
# to use the main color or success, alert or secondary.
# To change colors see sass/_01_settings_colors.scss
#
permalink: /index.html
#
# This is a nasty hack to make the navigation highlight
# this page as active in the topbar navigation
#
homepage: true
---
<a href="/andalousie/cordoue">Cordoue</a>
<div id="videoModal" class="reveal-modal large" data-reveal="">
  <div class="flex-video widescreen vimeo" style="display: block;">
     <iframe width="560" height="315" src="https://www.youtube.com/embed/vKxbpUA3xXY" frameborder="0" allowfullscreen></iframe>
  </div>
  <a class="close-reveal-modal">&#215;</a>
</div>
