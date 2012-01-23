# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

selectCat(e) ->
  e.preventDefault()
  $("#content div:last").removeClass("active")
  $('#content div:first').addClass("active")

$('#content div').delegate('#categories ul li a', 'click', selectCat)
