var NewEventButton = function(){
  $('*[data-div-type="new_events_partial"]').hide()

  $('*[data-div-type="new_event_button"]').click(function(){
    $('*[data-div-type="new_events_partial"]').animate({
      height: 'toggle'
    });
    Unbinder()
  });
}

var EditEventButton = function(){
  $('*[data-div-type="edit_events_partial"]').hide()
  $('#events-container').on('click', '*[data-div-type="edit_event_button"]', function(){
    $('*[data-div-type="edit_events_partial"]').animate({
      height: 'toggle'
    });
    Unbinder()
  });
}

var Unbinder = function(){
  $('*[data-div-type="new_event_button"]').unbind("click")
  $('*[data-div-type="edit_event_button"]').unbind("click")
}