// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//--------Table stripe color----------------
$(document).on('page:change', function() {
    $("#room_table tr:even").css({'background-color': 'lightblue'});

});

//--------Square feet button-----------------
$(document).on('page:change', function() {
    $("button").on("click", function(){
    var sqfeet = $(this).closest("#footage").data("sqfootage");
    var message = $("<span> Square feet: " + sqfeet + "</span>");
    $(this).closest("#room_info").append(message).find("button").remove();
    });
});

//--------Nav Bar----------------------------
$(document).on('page:change', function() {
    $('li.hover').hover( function() {
        $(this).find('a').text("Home");
    }, function() {
        $(this).find('a').text("Conference Room");
    });

   // $('li.active').on('mouseenter', function() {
   //    $(this).animate({"top": "10px"})
   // }).on('mouseleave', function(){
   //        $(this).animate({"top": "0px"});
   // });
});




//--------Campus index gylph icon show image----------
//$(document).on('page:change', function() {
//  $("#campus").on("click", "button", function() {
////    $(this).closest("#campus").find(".photos").slideToggle();
//      $(".photos").slideToggle();
//  });
//});