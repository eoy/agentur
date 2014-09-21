# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https:#github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require foundation/foundation
#= require_tree .
$ ->
  $(document).foundation();

  $('span.fa-heart').click (e) ->
    e.preventDefault()
    $(@).toggleClass "active"

  $('span.fa-bookmark').click (e) ->
    e.preventDefault()
    src = $(@).parents('figure').data('image')
    $img = new Image()
    $img.src = src
    $(@).parents('li').prepend $img
    $($img).addClass 'toAnimate'

    $($img).animate({
      'bottom': '100px';
      'left': '-500px';
      'width': '50px';
      'height': 'auto !important';
    }).addClass 'animating'
    console.log $img
