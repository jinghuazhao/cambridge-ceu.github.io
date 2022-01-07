---
#
# Use the widgets beneath and the content will be
# inserted automagically in the webpage. To make
# this work, you have to use › layout: frontpage
#
layout: frontpage
widget1:
  title: "Internal repositories"
  url: 'https://jinghuazhao.github.io/cambridge-ceu.github.io/internal/'
  text: 'These are written for internal use but a lot of information is generic.'
widget2:
  title: "Public repositories"
  url: 'https://jinghuazhao.github.io/cambridge-ceu.github.io/public/'
  text: 'Developed/hosted software for public use.'
widget3:
  title: "Blog posts"
  url: 'https://jinghuazhao.github.io/cambridge-ceu.github.io/blog/'
  text: 'A quick overview of all blog posts.'
widget4:
  title: "GitHub"
  url: 'https://github.com/cambridge-ceu'
  image: github.svg
  text: 'All GitHub repositories'
# Use the call for action to show a button on the frontpage
#
# To make internal links, just use a permalink like this
# url: /getting-started/
#
# To style the button in different colors, use no value
# to use the main color or success, alert or secondary.
# To change colors see sass/_01_settings_colors.scss
#
# This is a nasty hack to make the navigation highlight
# this page as active in the topbar navigation
#
#callforaction:
#  url: https://github.com/cambridge-ceu
#  text: Pose issues and make suggestions ›
#  style: alert
permalink: /index.html
#
# This is a nasty hack to make the navigation highlight
# this page as active in the topbar navigation
#
homepage: true
header:
    image_fullwidth: "header-bus.jpg"
---

![]({{ site.url }}{{ site.baseurl }}/assets/images/curtsy-alice-alice-in-wonderland-disney.gif)

<div id="videoModal" class="reveal-modal large" data-reveal="">
  <div class="flex-video widescreen vimeo" style="display: block;">
    <iframe width="1280" height="720" src="https://www.youtube.com/embed/3b5zCFSmVvU" frameborder="0" allowfullscreen></iframe>
  </div>
  <a class="close-reveal-modal">&#215;</a>
</div>
