var HostGuestAppearance = function() {
  $('*[data-div-type="how_button"]').click(function(){
    $('*[data-div-type="host_guest_buttons"]').show()
  });
}

var HostGuestHide = function() {
  $('*[data-div-type="host_guest_buttons"]').hide()
}