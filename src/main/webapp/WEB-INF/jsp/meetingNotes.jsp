<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jasny-bootstrap.min.js"></script>
<script src="../js/jquery-ui.js"></script>
<script src="../js/meetingNotes.js"></script>
  <title>Create/View a Meeting Note</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="../css/jquery-ui.css" rel="stylesheet">
 	<link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/jasny-bootstrap.min.css" rel="stylesheet">
    <link href="../css/navmenu-reveal.css" rel="stylesheet">
    <link href="../css/common.css" rel="stylesheet">
    <link href="../css/meetingNotes.css" rel="stylesheet">   
    <link href="../css/survey.css" rel="stylesheet">  
    
    <style type="text/css">
    	.meeting-text-color-black {
			color: black;
		}
    </style>
</head>
<body>

<style>
    input.text { margin-bottom:12px; width:95%; padding: .4em; }
    fieldset { padding:0; border:0; margin-top:25px; }
    div#users-contain { width: 350px; margin: 20px 0; }  
  </style>
  
<%@ include  file="./html/include/nav.html" %>
<section class="container canvas">
<%@ include  file="./html/include/header.html" %>


<section class="container container-margin-top">
			
<section class="container page-top-section"></section>
			<header class="meeting-header">
				<section class="meeting-header-section">
					<h4>Notes</h4>					
				</section>
			</header>
			<section>
				<section class="meeting-box meeting-box-fullpage">
				
				<c:set var="datePartsFrom" value="${fn:split(meetingDetails.fromDateTime, ' ')}" />
				<c:set var="datePartsTo" value="${fn:split(meetingDetails.toDateTime, ' ')}" />					
											
					<section class="meeting-box-section">
						<span class="meeting-date-mon-time text-align-center">${fn:toUpperCase(datePartsFrom[0])}</span>
						<span class="meeting-date-dd text-align-center">${datePartsFrom[1]}</span>
						<span class="meeting-date-mon-time text-align-center">${datePartsFrom[3]}</span>
							<span class="meeting-box-text">to</span>
						<span class="meeting-date-mon-time text-align-center">${datePartsTo[3]}</span>
					</section>
					<section class="meeting-box-section-right meeting-text-bottom-padding">
						<article>${meetingDetails.companyName }</article>
						<section>
							<section>
								<span class="meeting-detail-span meeting-text-color-black">Contact Name(s): </span>
								<br>
								<c:forEach items="${meetingDetails.contacts}" var="contact">
												<span class="meeting-detail-span">${contact.name}</span> 
												<br>
								</c:forEach>
							</section>
							<br>
							
							<section>
								<span class="meeting-detail-span meeting-text-color-black">FIL team:</span>
								<br>
								<span class="meeting-detail-span meeting-box-color-grey">Jason Brand</span>
								<br>
								<span class="meeting-detail-span meeting-box-color-grey">Marcus Digby</span>
							</section>
							
							<br>
							<br>
							
							<section>
								<span class="meeting-detail-span meeting-text-color-black">Location:</span>
								<br>
								<span class="meeting-detail-span meeting-detail-span">${meetingDetails.location}</span>
							</section>
						</section>
					</section>
					
					<section class="meeting-box-section-third">
										<section class="close-button-section">
											<a href="/mymeetings?range=TODAY"> <img alt="Close Meeting" src="../img/Close_Card24x25.png"></a>
										</section>
										<section>
											<a href="/sendSurvey?eventId=${meetingDetails.id}"><img class="note-complete" alt="Send Survey"
												src="../img/Surveys_Card_Complete120x120.png" style="height: 80px;width: 80px"></a>
										</section>
									</section>
				</section>
				
				  <section class="btn-group container section-buttongroup">  
	  <ul class="nav nav-pills align-left container">
	    <li class="align-left active notes-tabs"><a data-toggle="tab" href="#notes">Notes</a></li>
	    <li class="notes-tabs"><a data-toggle="tab" href="#attendees">Attendees</a></li>
	    <li class="notes-tabs"><a data-toggle="tab" href="#filteam">FIL Team</a></li>
	    <li class="notes-tabs"><a data-toggle="tab" href="#products">Products</a></li>
	    <li class="notes-tabs"><a data-toggle="tab" href="#actions">Actions</a></li>
	    <li class="notes-tabs"><a data-toggle="tab" href="#surveys">Surveys</a></li>
	  </ul>	  
 </section> 
 
 
  <section class="tab-content notes-section">
  <section id="notes" class="tab-pane fade in active">
  <c:forEach items="${meetingDetails.notes}" var="note">
 	<section class="table-notes notes-section-text" style="height: auto;">
 		${note.text}
 		<br>
 		<br> 			
		<article>
			<span class="alignleftnotes" style="color: darkgrey;margin-left: 0px;width: auto;">Created by : <span style="color: black;">${note.createdBy}</span></span>
			<span class="aligncenternotes" style="color: darkgrey; padding-left: 50px;width: auto;">Note type : <span style="color: black;">${note.noteType}</span></span>
			<span class="alignrightnotes" style="color: darkgrey; padding-left: 50px;width: auto;">Date/Time : <span style="color: black;">${note.createdOn}</span></span>
		</article>	
	</section>
	</c:forEach>
	</section>
	
	<!-- Section for Surveys tab - start  -->
	<section id="surveys" class="tab-pane fade in">
	</section>
	
	<!-- Section for Actions tab - start  -->
	<section id="actions" class="tab-pane fade in">
	</section>
	
	<!-- Section for Attendees tab - start  -->
	<section id="attendees" class="tab-pane fade in">
	</section> 	
  	<!-- FILTEAM tab data -->
  	<section id="filteam" class="tab-pane fade in">
	<section class="attendees-section">
 	<table class="table attendees-table">
	  <tr>
	 	 <td class="td-border-none"><b>Full Name: </b> Matt Baker</td>
	   	<td class="td-border-none"><b> Job Title :</b> Relationship Manager</td>
	    <td class="td-border-none" rowspan="2"> <img src="../img/Close_Card24x25.png" alt="" class="attendees-cross-image"></img></td>
	  </tr>
	 <tr>
	  <td class="td-border-none"><b>Phone Number:</b> +44 7887560487</td>
	   	<td class="td-border-none"><b> Email: </b> matt.baker@fil.com</td>
	     <td class="td-border-none"></td>
	  </tr>
	</table>
	
	<table class="table attendees-table">
	  <tr>
	 	 <td class="td-border-none"><b>Full Name: </b> Stephanie Sutton</td>
	   	<td class="td-border-none"><b> Job Title :</b>  Investment Director</td>
	    <td class="td-border-none" rowspan="2"> <img src="../img/Close_Card24x25.png" alt="" class="attendees-cross-image"></img></td>
	  </tr>
	 <tr>
	  <td class="td-border-none"><b>Phone Number:</b> +4407886453345</td>
	   	<td class="td-border-none"><b> Email: </b> Stephanie.Sutton@fil.com</td>
	     <td class="td-border-none"></td>
	  </tr>
	</table>	
	</section>
  	</section> 
  	
  	<!-- PRODUCTS tab data -->
  	<section id="products" class="tab-pane fade in">
	<section class="attendees-section">
 	<table class="table attendees-table">
	  <tr>
	 	 <td class="td-border-none"><b>Fidelity Funds:</b> European Growth Fund A-EUR</td>
	   	<td class="td-border-none"></td>
	    <td class="td-border-none" rowspan="2"> <img src="../img/Close_Card24x25.png" alt="" class="attendees-cross-image"></img></td>
	  </tr>
	 <tr>
	  <td class="td-border-none"><b>ISIN:</b> EU1234</td>
	   	<td class="td-border-none"><b>Portfolio Manager:</b> Matthew Siddle</td>
	     <td class="td-border-none"></td>
	  </tr>
	</table>	
	</section>
  	</section> 	
  		
  		
  		<!-- ACTIONS tab data -->
  	<section id="actions" class="tab-pane fade in">
	<section class="attendees-section">
	<table class="table attendees-table">
		  <tr>
		 	 <td class="td-border-none">Meeting notes</td>
		   	<td class="td-border-none">Mar 17 2016 06:03</td>
		    <td class="td-border-none" rowspan="2"> <img src="../img/Close_Card24x25.png" alt="" class="attendees-cross-image"></img></td>
		  </tr>
		 <tr>
		  <td class="td-border-none">General</td>
		   	<td class="td-border-none">John Doe</td>
		     <td class="td-border-none"></td>
		  </tr>
		</table>
	
	<table class="table attendees-table">
	  <tr>
	 	 <td class="td-border-none">Meeting notes</td>
	   	<td class="td-border-none">Mar 17 2016 06:03</td>
	    <td class="td-border-none" rowspan="2"> <img src="../img/Close_Card24x25.png" alt="" class="attendees-cross-image"></img></td>
	  </tr>
	 <tr>
	  <td class="td-border-none">General</td>
	   	<td class="td-border-none">John Doe</td>
	     <td class="td-border-none"></td>
	  </tr>
	</table>
	
	<table class="table attendees-table">
	  <tr>
	 	 <td class="td-border-none">Meeting notes</td>
	   	<td class="td-border-none">Mar 17 2016 06:03</td>
	    <td class="td-border-none" rowspan="2"> <img src="../img/Close_Card24x25.png" alt="" class="attendees-cross-image"></img></td>
	  </tr>
	 <tr>
	  <td class="td-border-none">General</td>
	   	<td class="td-border-none">John Doe</td>
	     <td class="td-border-none"></td>
	  </tr>
	</table>	
	</section>
  	</section>
  	
  </section>  
 </section>

 <section class="icons-margin">
	<img id="add-notes" src="../img/Notes_Add80x80.png" class="align-left plus-image icon-plus-image">
 	<img src="../img/Cancel80x80.png" class="align-left plus-image icon-grey-image">
	<img src="../img/Save80x80.png" class="align-left plus-image icon-grey-image">
 	</section>  
</section>


<div id="dialog-form" title="Add Notes">
  <form>
    <fieldset>
      <label for="note" style="float: left;padding-right: 15px;">Notes :</label>
     <!--  <input type="text" name="note" id="noteText" value="Jane Smith" class="text ui-widget-content ui-corner-all"> -->
 		<textarea rows="3" cols="40" class="text ui-widget-content ui-corner-all"  name="note" id="noteText" form="usrform" placeholder="Add note text here..."></textarea>
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
</div>

</body>
</html>