$(document).ready(function () {

$("#newUser").click(function(){
  $(".right-header").text("Registration");
  $(".logo").css({
    "width":"75px",
    "height":"75px",
    "top":"10px"
  });
  $("#login-form").fadeOut(150);
  $("#registration-form").delay(150).fadeIn(200);
  $("#newUser").fadeOut(200);
});

$("#leave").click(function(){
  // $(".left-header").text("Leave Kohort");
  $("#leaveConfirm").delay(150).fadeIn(200);
  $(".leaveWarning").fadeOut(200);
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

// $("#fPass").click(function(){
//   $(".right-header").text("Forgot password");
//   $(".logo").css({
//     "width":"75px",
//     "height":"75px",
//     "top":"10px"
//   });
//
//   $("#login-form").fadeOut(150);
//   $("#fpass-form").delay(200).fadeIn(200);
//   $(".other-options").fadeOut(200);
// });

//select menu
//
// $('select').each(function(){
//     var $this = $(this), numberOfOptions = $(this).children('option').length;
//
//     $this.addClass('select-hidden');
//     $this.wrap('<div class="select"></div>');
//     $this.after('<div class="select-styled"></div>');
//
//     var $styledSelect = $this.next('div.select-styled');
//     $styledSelect.text($this.children('option').eq(1).text());
//
//     var $list = $('<ul />', {
//         'class': 'select-options'
//     }).insertAfter($styledSelect);
//
//     for (var i = 0; i < numberOfOptions; i++) {
//         $('<li />', {
//             text: $this.children('option').eq(i).text(),
//             rel: $this.children('option').eq(i).val()
//         }).appendTo($list);
//     }
//
//     var $listItems = $list.children('li');
//
//     $styledSelect.click(function(e) {
//         e.stopPropagation();
//         $('div.select-styled.active').each(function(){
//             $(this).removeClass('active').next('ul.select-options').hide();
//         });
//         $(this).toggleClass('active').next('ul.select-options').toggle();
//     });
//
//     $listItems.click(function(e) {
//         e.stopPropagation();
//         $styledSelect.text($(this).text()).removeClass('active');
//         $this.val($(this).attr('rel'));
//         $list.hide();
//         //console.log($this.val());
//     });
//
//     $(document).click(function() {
//         $styledSelect.removeClass('active');
//         $list.hide();
//     });
//
// });
//
//
// 
//
});
