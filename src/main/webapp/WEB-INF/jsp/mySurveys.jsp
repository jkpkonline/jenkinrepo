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
  <title>My surveys</title>
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
  

		
		
		
		<%@ include file="./html/include/nav.html"%>
	<section class="container canvas meeting-main-section">
		<%@ include file="./html/include/header.html"%>

		<section class="container page-top-section"></section>
		<section class="">
			<header class="meeting-header">
				<section class="meeting-header-section">
					<h4>My surveys</h4>
				</section>
			</header>
			<section>
				<section class="meeting-box meeting-box-fullpage">
											
					<section class="meeting-box-section">
						<span class="meeting-date-mon-time text-align-center">MAR</span>
						<span class="meeting-date-dd text-align-center">18</span>
						<span class="meeting-date-mon-time text-align-center">14:30</span>
							<span class="meeting-box-text">to</span>
						<span class="meeting-date-mon-time text-align-center">15:30</span>
					</section>
					<section class="meeting-box-section-right meeting-text-bottom-padding">
						<article>Prudential Insurance Asia</article>
						<section>
							<section>
								<span class="meeting-detail-span meeting-text-color-black">Contact Name(s): </span>
								<br>
								<c:forEach var="i" begin="1" end="1" step="1">
												<span class="meeting-detail-span">Jane Ainsley</span> 
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
								<span class="meeting-detail-span meeting-detail-span">Tonbridge office</span>
							</section>
						</section>
					</section>
					<section class="meeting-box-section-third">
						<section class="close-button-section meeting-close-button-section">
							<a href="/mymeetings?range=TODAY"> <img alt="Close Meeting"
								src="../img/Close_Card24x25.png">
							</a>
						</section>
					</section>
					
					

<section class="btn-group container section-buttongroup">  
	  <ul class="nav nav-pills align-left container">
	  <li style="padding-left: 20px"><h4>Surveys</h4></li>	
	    <li class="align-left active notes-tabs" style="margin-left: 40%"><a data-toggle="tab" href="#allSurvey">All</a></li>
	    <li class="notes-tabs"><a data-toggle="tab" href="#outstandingSurvey">Outstanding</a></li>
	    <li class="notes-tabs"><a data-toggle="tab" href="#completedSurvey">Completed</a></li>

	  </ul>	  
 </section> 



					<section class="tab-content notes-section">
 	<!-- Section for Attendees tab - start  -->
	
  	<!-- FILTEAM tab data -->
  	<section id="allSurvey" class="tab-pane fade in active" style="padding: 20px">
	<section class="attendees-section">
 	<table class="table attendees-table">
	  <tr>
	 	 <td class="td-border-none">Survey Type</td>
	   	<td class="td-border-none">Company Name</td>
	    <td class="td-border-none" rowspan="2"> <img src="../img/Survey_IconLink36x36.png" 
	    alt="" class="attendees-cross-image" style="width: 40px;height: 40px;float: right;"></img></td>
	  </tr>
	 <tr>
	  <td class="td-border-none">Meeting Date/Time</td>
	   	<td class="td-border-none">Meting Subject</td>
	     <td class="td-border-none"></td>
	  </tr>
	</table>
	
	<c:forEach var="i" begin="1" end="3" step="1">
		<table class="table attendees-table">
	  <tr>
	 	 <td class="td-border-none">Survey Type</td>
	   	<td class="td-border-none">Company Name</td>
	    <td class="td-border-none" rowspan="2"> <img src="../img/Survey_IconLink36x36.png" 
	    alt="" class="attendees-cross-image" style="width: 40px;height: 40px;float: right;"></img></td>
	  </tr>
	 <tr>
	  <td class="td-border-none">Meeting Date/Time</td>
	   	<td class="td-border-none">Meting Subject</td>
	     <td class="td-border-none"></td>
	  </tr>
	</table>
	
	</c:forEach>
	
	
	
	</section>
  	</section> 
  	
  	
  	
  	<section id="outstandingSurvey" class="tab-pane fade in" style="padding: 20px">
	<section class="attendees-section">
 	<c:forEach var="i" begin="1" end="3" step="1">
		<table class="table attendees-table">
	  <tr>
	 	 <td class="td-border-none">Survey Type</td>
	   	<td class="td-border-none">Company Name</td>
	    <td class="td-border-none" rowspan="2"> <img src="../img/Survey_IconLink36x36.png" 
	    alt="" class="attendees-cross-image" style="width: 40px;height: 40px;float: right;"></img></td>
	  </tr>
	 <tr>
	  <td class="td-border-none">Meeting Date/Time</td>
	   	<td class="td-border-none">Meting Subject</td>
	     <td class="td-border-none"></td>
	  </tr>
	</table>
	
	</c:forEach>
	</section>
  	</section>
  	
  	
  	<section id="completedSurvey" class="tab-pane fade in" style="padding: 20px">
	<section class="attendees-section">
 	<c:forEach var="i" begin="1" end="3" step="1">
		<table class="table attendees-table">
	  <tr>
	 	 <td class="td-border-none">Survey Type</td>
	   	<td class="td-border-none">Company Name</td>
	    <td class="td-border-none" rowspan="2"> <img src="../img/Survey_IconLink36x36.png" 
	    alt="" class="attendees-cross-image" style="width: 40px;height: 40px;float: right;"></img></td>
	  </tr>
	 <tr>
	  <td class="td-border-none">Meeting Date/Time</td>
	   	<td class="td-border-none">Meting Subject</td>
	     <td class="td-border-none"></td>
	  </tr>
	</table>
	
	</c:forEach>
	</section>
  	</section>
  	
  </section>  
					
					<section class="icons-margin" style="float: right; width: 230px;    padding-bottom: 20px;">
 	<img src="../img/Cancel80x80.png" class="align-left plus-image icon-grey-image">
	<img src="../img/Save80x80.png" class="align-left plus-image icon-grey-image">
 	</section>
				</section>
			</section>

		</section>

</body>
</html>
