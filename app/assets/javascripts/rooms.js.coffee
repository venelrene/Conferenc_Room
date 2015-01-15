# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# --------Square feet button-----------------
$(document).on "page:change", ->
  $("button").on "click", ->
    sqfeet = $(this).closest("#footage").data("sqfootage")
    message = $("<span> Square feet: " + sqfeet + "</span>")
    $(this).closest("#room_info").append(message).find("button").remove()
    return

  return
