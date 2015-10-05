$(document).ready(function(){
  $(".events").click(function(){
    $('html,body').animate({
       scrollTop: $('#events').offset().top
    }, 1000);
    return false;
  });

  $(".sponsors").click(function(){
    console.log('test');
    $('html,body').animate({
       scrollTop: $('#sponsors').offset().top
    }, 1000);
    return false;
  });
 })
