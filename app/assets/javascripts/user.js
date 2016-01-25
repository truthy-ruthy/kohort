$(document).ready(function () {

$("#newUser").click(function(){
  $("h1").text("Registration");
  $(".logo").css({
    "width":"75px",
    "height":"75px",
    "top":"10px"
  });
  $("#login-form").fadeOut(150);
  $("#registration-form").delay(150).fadeIn(200);
  $(".other-options").fadeOut(200);
});

// $("#signup-btn,#getpass-btn").click(function(){
//   $("h1").text("Log in");
//   $(".logo").css({
//     "width":"75px",
//     "height":"75px",
//     "top":"10px"
//   });
//   // $("#registration-form,#fpass-form").fadeOut(150);
//   // $("#login-form").delay(200).fadeIn(200);
//   // $(".other-options").fadeIn(200);
// });

$("#fPass").click(function(){
  $("h1").text("Forgotten password");
  $(".logo").css({
    "width":"75px",
    "height":"75px",
    "top":"10px"
  });

  $("#login-form").fadeOut(150);
  $("#fpass-form").delay(200).fadeIn(200);
  $(".other-options").fadeOut(200);
});

});
