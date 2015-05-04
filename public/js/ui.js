$(document).ready(function(){
  console.log("ready!")
  $('.ui').mouseenter(function(){
    $(this).css("transform", "rotate(-20deg)");
    $(this).css("font-family", "'Pacifico', cursive");
  });

  $('.ui').mouseleave(function(){
    $(this).css("transform", "rotate(0deg)");
    $(this).css("font-family", "'Helvetica Neue',Helvetica,Arial,sans-serif");
  });
})

