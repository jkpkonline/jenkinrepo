<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Send Survey</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/jasny-bootstrap.min.css" rel="stylesheet">
<link href="../css/navmenu-reveal.css" rel="stylesheet">
<link href="../css/common.css" rel="stylesheet">
<link href="../css/survey.css" rel="stylesheet">

<style type="text/css">

.icon-plus-image {
	width: 50px;
	height: 50px;
	border: 0;
}

.icon-grey-image {
	width: 50px;
	height: 50px;
	border: 0;
	margin-left: 5%
}

.checkbxinput {
  color: orange;
  background-color: orange;
}



</style>
</head>
<body>

	<%@ include file="./html/include/nav.html"%>
	<section class="container canvas meeting-main-section">
		<%@ include file="./html/include/header.html"%>

		<section class="container page-top-section" style="padding-top: 20px">
		<div class="alert alert-success successMessage" style="display: none">
  <strong>Success!</strong> Survey email sent successfully.
</div>
</section>
		<section class="">
			<header class="meeting-header">
				<section class="meeting-header-section">
					<h4>Send survey</h4>
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
						<section class="close-button-section meeting-close-button-section">
							<a href="/mymeetings?range=TODAY"> <img alt="Close Meeting"
								src="../img/Close_Card24x25.png">
							</a>
						</section>
					</section>
					
					<section >
						<table class="table" style="background-color: lightgrey;margin-left: 20px;width: 96%" >
							<tbody style="padding: 20px">
								<tr>
									<td style="padding: 20px">Receipient Name</td>
									<td style="padding: 20px;float: left;"><div class="btn-group selectBoxTD">
											<button type="button" class="btn selectTitle">Survey Type</button>
											<button type="button" class="btn  dropdown-toggle"
												data-toggle="dropdown">
												<span class="caret"></span> <span class="sr-only">Toggle
													Dropdown</span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Survey A</a></li>
												<li><a href="#">Survey B</a></li>
												<li><a href="#">Survey C</a></li>
											</ul>
										</div></td>
									<td style="padding: 20px; float: right;"><input type="checkbox" checked="checked" class="checkbxinput" style="height: 25px; width: 25px"></td>
								</tr>
								<tr>
									<td style="padding: 20px">Receipient Name</td>
									<td style="padding: 20px;float: left;"><div class="btn-group selectBoxTD">
											<button type="button" class="btn selectTitle">Survey Type</button>
											<button type="button" class="btn  dropdown-toggle"
												data-toggle="dropdown">
												<span class="caret"></span> <span class="sr-only">Toggle
													Dropdown</span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Survey A</a></li>
												<li><a href="#">Survey B</a></li>
												<li><a href="#">Survey C</a></li>
											</ul>
										</div></td>
									<td style="padding: 20px; float: right;"><input type="checkbox" checked="checked" class="checkbxinput" style="height: 25px; width: 25px"></td>
								</tr>
								
								<tr>
									<td style="padding: 20px">Receipient Name</td>
									<td style="padding: 20px;float: left;"><div class="btn-group selectBoxTD">
											<button type="button" class="btn selectTitle">Survey Type</button>
											<button type="button" class="btn  dropdown-toggle"
												data-toggle="dropdown">
												<span class="caret"></span> <span class="sr-only">Toggle
													Dropdown</span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Survey A</a></li>
												<li><a href="#">Survey B</a></li>
												<li><a href="#">Survey C</a></li>
											</ul>
										</div></td>
									<td style="padding: 20px; float: right;"><input type="checkbox" class="" checked="checked" style="height: 25px; width: 25px"></td>
								</tr>
							</tbody>
						</table>

					</section>
					
					<section class="icons-margin" style="float: right; width: 230px;    padding-bottom: 20px;">
 	<img src="../img/Cancel80x80.png" class="align-left plus-image icon-grey-image">
	<img src="../img/Save80x80.png" class="align-left plus-image icon-grey-image sendSurveyEmail">
 	</section>
				</section>
			</section>

		</section>
		<script src="../js/jquery-1.10.2.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
		<script src="../js/jasny-bootstrap.min.js"></script>
		
		<script type="text/javascript">
			$(document).ready(function() {
				$('.sendSurveyEmail').on('click', function() {
					$.ajax({url: "sendRnREmail", success: function(result){
				       //alert('Email Sent with status : ' + result);
				       $('.successMessage').fadeIn();
				    }});
				});
				
				$('.dropdown-menu > li > a').on('click', function() {
					$(this).parents('td').find('.selectTitle').html($(this).html());
				});
			});
		</script>
</body>
</html>