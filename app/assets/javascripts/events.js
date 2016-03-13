var NewEventButton = function(){
  $('*[data-div-type="new_events_partial"]').hide()

  $('*[data-div-type="new_event_button"]').click(function(){
    $('*[data-div-type="new_events_partial"]').animate({
      height: 'toggle'
    });
    $(".container").css("opacity", "0.4")
    NewUnbinder()
  });
}


var ExitNewEventForm = function(){
	$('*[data-div-type="close_event_button"]').click(function(){
    $('*[data-div-type="new_events_partial"]').hide()
    $(".container").css("opacity", "1")
  $('*[data-div-type="new_event_button"]').on("click", function(){
    $('*[data-div-type="new_events_partial"]').show()
    $(".container").css("opacity", "0.4")
  });
	});
}
// var EditEventButton = function(){
//   $('*[data-div-type="edit_events_partial"]').hide()
//   $('#events-container').on('click', '*[data-div-type="edit_event_button"]', function(){
//     $('*[data-div-type="edit_events_partial"]').animate({
//       height: 'toggle'
//     });
//     Unbinder()
//   });
// }

var NewUnbinder = function(){
  $('*[data-div-type="new_event_button"]').unbind("click")
}

var HideHostedOnLoad = function(){
  $('*[data-div-type="hosted_events_body"]').hide()
}

var ToggleHostedEvents = function (){
  $('*[data-div-type="hosted_events"]').click(function(){
    $('*[data-div-type="hosted_events_body"]').show()
    $('*[data-div-type="upcoming_events_body"]').hide()
  });
}

var ToggleUpcomingEvents = function (){
  $('*[data-div-type="upcoming_events"]').click(function(){
    $('*[data-div-type="upcoming_events_body"]').show()
    $('*[data-div-type="hosted_events_body"]').hide()
  });
}
