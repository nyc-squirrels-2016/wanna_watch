var ShowAboutHosting = function (){
  $('*[data-div-type="host_clicker"]').click(function(){
    $('*[data-div-type="as_a_guest"]').hide()
    $('*[data-div-type="as_a_host"]').show()
  });
}

var ShowAboutGuesting = function (){
  $('*[data-div-type="guest_clicker"]').click(function(){
    $('*[data-div-type="as_a_host"]').hide()
    $('*[data-div-type="as_a_guest"]').show()
  });
}

var HideAboutsOnLoad = function () {
  $('*[data-div-type="as_a_host"]').hide()
  $('*[data-div-type="as_a_guest"]').hide()
}





