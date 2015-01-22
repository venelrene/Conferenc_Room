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
//$(document).on('page:change', function() {
//    $("#room_table tr:even").css({'background-color': 'lightblue'});
//
//    //--------Campus index gylph icon show image----------
//    $('.campus').on('click', 'span', function() {
//            $(this).next('.photos').slideToggle("slow");
//        });
//
//     //-------Campus animation-----------
//     $('span.glyphicon').on('mouseenter', function() {
//        $(this).animate({"top": "10px"})
//        }).on('mouseleave', function(){
//            $(this).animate({"top": "0px"});
//        });
//});


//--------Square feet button-----------------
//$(document).on('page:change', function() {
//    $("button").on("click", function(){
//    var sqfeet = $(this).closest("#footage").data("sqfootage");
//    var message = $("<span> Square feet: " + sqfeet + "</span>");
//    $(this).closest("#room_info").append(message).find("button").remove();
//    });
//});



//--------Nav Bar----------------------------
$(document).on('page:change', function() {
    $('li.hover').hover( function() {
        $(this).find('a').text("Home");
    }, function() {
        $(this).find('a').text("Conference Room");
    });
});


(function(){var qs,js,q,s,d=document,gi=d.getElementById,ce=d.createElement,gt=d.getElementsByTagName,id='typef_orm',b='https://s3-eu-west-1.amazonaws.com/share.typeform.com/';if(!gi.call(d,id)){js=ce.call(d,'script');js.id=id;js.src=b+'share.js';q=gt.call(d,'script')[0];q.parentNode.insertBefore(js,q)}})()
