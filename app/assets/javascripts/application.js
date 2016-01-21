// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$("#newUser").click(function(){
  $("h1").text("Registration");
  $(".logo").css({
    "width":"120px",
    "height":"120px",
    "top":"10px"
  });
  $("#login-form").fadeOut(200);
  $("#registration-form").delay(300).fadeIn(500);
  $(".other-options").fadeOut(200);
});

$("#signup-btn,#getpass-btn").click(function(){
  $("h1").text("Log in");
  $(".logo").css({
    "width":"150px",
    "height":"150px",
    "top":"30px"
  });

  $("#registration-form,#fpass-form").fadeOut(200);
  $("#login-form").delay(300).fadeIn(500);
  $(".other-options").fadeIn(300);
});

$("#fPass").click(function(){
  $("h1").text("Forgotten password");
  $(".logo").css({
    "width":"190px",
    "height":"190px",
    "top":"40px"
  });

  $("#login-form").fadeOut(200);
  $("#fpass-form").delay(300).fadeIn(500);
  $(".other-options").fadeOut(200);
});
