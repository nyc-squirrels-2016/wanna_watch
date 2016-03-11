var RegisterButton = function(){
  $('*[data-div-type="users_partial"]').hide()

  $('*[data-div-type="register_button"]').click(function(){
    $('*[data-div-type="users_partial"]').animate({
      height: 'toggle'
    });
    $('*[data-div-type="video"]').css("opacity", ".4");
  });
}
