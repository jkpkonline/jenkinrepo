<!DOCTYPE html>
<html lang="en">
<head>
  <title>Create/View a Meeting Note</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/jasny-bootstrap.min.css" rel="stylesheet">
    <link href="../css/navmenu-reveal.css" rel="stylesheet">
    <link href="../css/common.css" rel="stylesheet">
    

</head>
<body>

<%@ include  file="./html/include/nav.html" %>
    
<section class="container canvas">

<%@ include  file="./html/include/header.html" %>

<section class="container section-survey page-top-section">
<!-- <button type="button" class="btn btn-primary align-left button">Close</button> -->

<img src="../img/plus.png" class="align-right plus-image">
</section>
<hr class="hr-line">
<section class="container section-company">
	<section class="align-left"><B>Company Name</B><br> Subject</section>
	<section class="align-right">From Date/time <br> To Date/Time</section>
	<div>
		<h5 class="events text-center">Name : <b>${name}</b></h5>
		<h5 class="events text-center">Username : <b>${username}</b></h5>
	</div>
</section>
  
  <section class="btn-group container section-buttongroup">  
	  <ul class="nav nav-tabs align-left">
	    <li class="align-left active"><a data-toggle="tab" href="#notes">Notes</a></li>
	    <li class=""><a data-toggle="tab" href="#attendees">Attendees</a></li>
	    <li class=""><a data-toggle="tab" href="#filteam">FIL Team</a></li>
	    <li class=""><a data-toggle="tab" href="#notes">Products</a></li>
	    <li class=""><a data-toggle="tab" href="#notes">Actions</a></li>
	    <li class=""><a data-toggle="tab" href="#notes">Surveys</a></li>
	  </ul>
	  <article class="tab-article " >
	  	<a class="nav" data-toggle="tab" href="#notes">
	  		<img src="../img/plus.png" class="align-left plus-image">
		</a> 
	</article>
 </section>
  <section class="tab-content">
  <section id="notes" class="tab-pane fade in active">
 	<section class="table-notes">
 	<table class="table">
	  <tr>
	    <td class="td-notes-desciption">Created By <br> Note Type <br> Created/Datetime</td>
	    <td class="td-notes-details">Notes tab clicked. Lots of really interesting and useful insight into this meeting,
	     everything went very well and I was very happy with the client reaction to the presentation. Will followup very soon....</td>		
	  </tr>	  
	</table>
	</section>
 	
 	<section class="table-notes">
 	<table class="table">
	  <tr>
	    <td class="td-notes-desciption">Created By <br> Note Type <br> Created/Datetime</td>
	    <td class="td-notes-details">Lots of really interesting and useful insight into this meeting,
	     everything went very well and I was very happy with the client reaction to the presentation. Will followup very soon....</td>		
	  </tr>	  
	</table>
	</section>
	
	<section class="table-notes">
	<table class="table">
	  <tr>
	    <td class="td-notes-desciption">Created By <br> Note Type <br> Created/Datetime</td>
	    <td class="td-notes-details">Lots of really interesting and useful insight into this meeting,
	     everything went very well and I was very happy with the client reaction to the presentation. Will followup very soon....</td>		
	  </tr>	  
	</table>
	</section>
  </section>
  
  
  <!-- text for attendees -->
  <section id="attendees" class="tab-pane fade">
 	<section class="table-notes">
 	<table class="table">
	  <tr>
	    <td class="td-notes-desciption">Created By <br> Note Type <br> Created/Datetime</td>
	    <td class="td-notes-details">Attendees...Notes tab clicked. Lots of really interesting and useful insight into this meeting,
	     everything went very well and I was very happy with the client reaction to the presentation. Will followup very soon....</td>		
	  </tr>	  
	</table>
	</section>
 	
 	<section class="table-notes">
 	<table class="table">
	  <tr>
	    <td class="td-notes-desciption">Created By <br> Note Type <br> Created/Datetime</td>
	    <td class="td-notes-details">Lots of really interesting and useful insight into this meeting,
	     everything went very well and I was very happy with the client reaction to the presentation. Will followup very soon....</td>		
	  </tr>	  
	</table>
	</section>
	
	<section class="table-notes">
	<table class="table">
	  <tr>
	    <td class="td-notes-desciption">Created By <br> Note Type <br> Created/Datetime</td>
	    <td class="td-notes-details">Lots of really interesting and useful insight into this meeting,
	     everything went very well and I was very happy with the client reaction to the presentation. Will followup very soon....</td>		
	  </tr>	  
	</table>
	</section>
  </section>
    <!-- text for FIL TEAM -->
  <section id="filteam" class="tab-pane fade">
 	<section class="table-notes">
 	<table class="table">
	  <tr>
	    <td class="td-notes-desciption">Created By <br> Note Type <br> Created/Datetime</td>
	    <td class="td-notes-details">FIL TEAM...Attendees...Notes tab clicked. Lots of really interesting and useful insight into this meeting,
	     everything went very well and I was very happy with the client reaction to the presentation. Will followup very soon....</td>		
	  </tr>	  
	</table>
	</section>
 	
 	<section class="table-notes">
 	<table class="table">
	  <tr>
	    <td class="td-notes-desciption">Created By <br> Note Type <br> Created/Datetime</td>
	    <td class="td-notes-details">Lots of really interesting and useful insight into this meeting,
	     everything went very well and I was very happy with the client reaction to the presentation. Will followup very soon....</td>		
	  </tr>	  
	</table>
	</section>
	
	<section class="table-notes">
	<table class="table">
	  <tr>
	    <td class="td-notes-desciption">Created By <br> Note Type <br> Created/Datetime</td>
	    <td class="td-notes-details">Lots of really interesting and useful insight into this meeting,
	     everything went very well and I was very happy with the client reaction to the presentation. Will followup very soon....</td>		
	  </tr>	  
	</table>
	</section>
  </section>
    
    
    
 </section>
</section>
</body>
</html>
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jasny-bootstrap.min.js"></script>
