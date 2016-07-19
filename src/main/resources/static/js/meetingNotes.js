$(function() {
    var dialog, form,
    noteText = $( "#noteText" ),
      tips = $( ".validateTips" );
 
     function addUser() {
        $( "#notes" ).prepend(
         "<section class='table-notes notes-section-text'>"         
         + noteText.val() +        
        "<article><span class='alignleftnotes'>Created by: John </span><span class='aligncenternotes'>Note type: General</span><span class='alignrightnotes'>Date/Time:Mar 18 2016 </span></article></section>"); 
        dialog.dialog( "close" );
   		return valid;
    }
 
    dialog = $( "#dialog-form" ).dialog({
      autoOpen: false,
      position : ['center', 20],
      height: 300,
      width: 650,
      modal: true,
      responsive: true,
      resizable: true,
      buttons: {
        "Add Note": addUser,
        Cancel: function() {
          dialog.dialog( "close" );
        }
      }
    });
 
    form = dialog.find( "form" ).on( "submit", function( event ) {
      event.preventDefault();
      addUser();
    });
 
    $( "#add-notes" ).button().on( "click", function() {
    	$("#noteText").val("");
      dialog.dialog( "open" );
    });
  });