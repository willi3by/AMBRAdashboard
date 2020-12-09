$( document ).ready(function() {
  
});

// We define an handler called "computed", that can be called 
// from the server side of the {shiny} application
Shiny.addCustomMessageHandler('computed', function(mess) {
  // The received value (in mess) is serialized in JSON, 
  // so we can  access the list element with object.name
  alert("Computed " + mess.what + " in " + mess.sec + " secs");
});