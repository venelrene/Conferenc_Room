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

$(document).on('page:change', function() {
    $("#room_table tr:even").css({'background-color': 'lightblue'});

});

$(document).on('page:change', function() {
    $("button").on("click", function(){
    var sqfeet = $("<p> <%= @room.squarefootage %> </p>");
    $("#room_info").append(sqfeet);
    $("button").remove();
    });
});

//$(document).on('page:change', function() {
//  $("button").on("click", function(){
//    var sqfeet = $(this).closest(".footage").data("sqfootage");
//    var message = $("<span>" + sqfeet + "sqft</span>");
//    $(this).closest(".footage").append(message);
//    $(this).remove();
//  });
//});


