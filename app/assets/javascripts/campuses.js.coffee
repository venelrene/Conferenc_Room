# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

##--------Table stripe color----------------
$(document).on "page:change", ->
  $("#room_table tr:even").css "background-color": "lightblue"

  #--------Campus index gylph icon show image----------
  $(".campus").on "click", "span", ->
    $(this).next(".photos").slideToggle "slow"
    return


  #-------Campus animation-----------
  $("span.glyphicon").on("mouseenter", ->
    $(this).animate top: "10px"
    return
  ).on "mouseleave", ->
    $(this).animate top: "0px"
    return

  return
