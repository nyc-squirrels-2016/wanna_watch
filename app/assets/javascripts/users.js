var RegisterButton = function(){
  $('*[data-div-type="users_partial"]').hide()

  $('*[data-div-type="register_button"]').click(function(){
    $('*[data-div-type="users_partial"]').animate({
      height: 'toggle'
    });
    $('*[data-div-type="video"]').css("opacity", ".4");
    Unbinder()
  });
}

var LoginButton = function(){
  $('*[data-div-type="login_partial"]').hide()
  $('*[data-div-type="login_button"]').click(function(){
    $('*[data-div-type="login_partial"]').animate({
      height: 'toggle'
    });
    $('*[data-div-type="video"]').css("opacity", ".4");
    Unbinder()
  });
}

var Unbinder = function(){
  $('*[data-div-type="login_button"]').unbind("click")
  $('*[data-div-type="register_button"]').unbind("click")
}
