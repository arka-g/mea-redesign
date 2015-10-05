$(document).ready(function(){
  $(".events").click(function(){
    $('html,body').animate({
       scrollTop: $('#events').offset().top
    }, 1000);
    return false;
  });

  $(".learn").click(function(){
    console.log('test');
    $('html,body').animate({
       scrollTop: $('#learn').offset().top
    }, 1000);
    return false;
  });
 })
