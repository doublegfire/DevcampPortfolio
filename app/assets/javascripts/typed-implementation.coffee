ready = ->
  typed = new Typed('.element',
    strings: [
      'Hello! Welcome to my portfolio. By the way, I’m Guinel “Darnel” Gue, your amazing Software Developer.'
      'You can also call me, Double G. Development with me is DOUBLE the fun and DOUBLE the productivity with an above all great attitude!'
      'I’m an awesome team player and a magnificent leader. Let’s collaborate and create the website for you!'
    ]
    typeSpeed: 55)
  return
 
$(document).ready
$(document).on 'turbolinks:load', ready
