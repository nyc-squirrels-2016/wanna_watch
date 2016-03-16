var ShowAboutHosting = function (){
  $('*[data-div-type="host_clicker"]').click(function(){
    $('*[data-div-type="as_a_guest"]').hide()
    $('*[data-div-type="as_a_host"]').animate({height: 'toggle'})
    $('*[data-div-type="host_clicker"]').css("font-weight", "bold")
    $('*[data-div-type="guest_clicker"]').css("font-weight", "normal")
  });
}

var ShowAboutGuesting = function (){
  $('*[data-div-type="guest_clicker"]').click(function(){
    $('*[data-div-type="as_a_host"]').hide()
    $('*[data-div-type="as_a_guest"]').animate({height: 'toggle'})
    $('*[data-div-type="host_clicker"]').css("font-weight", "normal")
    $('*[data-div-type="guest_clicker"]').css("font-weight", "bold")
  });

}

var HideAboutsOnLoad = function () {
  $('*[data-div-type="as_a_host"]').hide()
  $('*[data-div-type="as_a_guest"]').hide()

}





