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


var ExitLogin = function(){
  $('*[data-div-type="close_login_button"]').click(function(){
    $('*[data-div-type="login_partial"]').hide()
    $('*[data-div-type="video"]').css("opacity", "1");
    $('*[data-div-type="login_button"]').on("click", function(){
      $('*[data-div-type="login_partial"]').show()
      $('*[data-div-type="video"]').css("opacity", ".4");
    });
    $('*[data-div-type="register_button"]').on("click", function(){
      $('*[data-div-type="users_partial"]').show()
      $('*[data-div-type="video"]').css("opacity", ".4");
    });
  })
}

var ExitRegister = function(){
  $('*[data-div-type="close_register_button"]').click(function(){
    $('*[data-div-type="users_partial"]').hide()
    $('*[data-div-type="video"]').css("opacity", "1");
    $('*[data-div-type="register_button"]').on("click", function(){
      $('*[data-div-type="users_partial"]').show()
      $('*[data-div-type="video"]').css("opacity", ".4");
    });
    $('*[data-div-type="login_button"]').on("click", function(){
      $('*[data-div-type="login_partial"]').show()
      $('*[data-div-type="video"]').css("opacity", ".4");
    });
  })
}








