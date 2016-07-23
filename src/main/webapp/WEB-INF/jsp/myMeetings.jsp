<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/jasny-bootstrap.min.css" rel="stylesheet">
<link href="../css/navmenu-reveal.css" rel="stylesheet">
<link href="../css/common.css" rel="stylesheet">

<title>Welcome  22</title>
</head>

<body>
	<%@ include file="./html/include/nav.html"%>

	<section class="container canvas meeting-main-section" >

		<%@ include file="./html/include/header.html"%>
		<!-- <section class="container page-top-section"></section> -->
		<section class="inprogress-section">
			<header class="meeting-header">
				<section class="meeting-header-section">
					<h4>My meetings 22</h4>
					<ul class="nav nav-pills">
						<li class="active meetingListTab" id="TODAY"><a href="#" data-toggle="tab">Today</a></li>
						<li class="meetingListTab" id="THIS_WEEK"><a href="#" data-toggle="tab">This week</a></li>
						<li class="meetingListTab" id="THIS_MONTH"><a href="#" data-toggle="tab">This month</a></li>
						<li class="meetingListTab" id="NEXT_MONTH"><a href="#" data-toggle="tab">Next month</a></li>
						<li class="meetingListTab" id="PREVIOUS_MONTH"><a href="#" data-toggle="tab">Previous month</a></li>
					</ul>
				</section>
			</header>
			<section>

				<c:choose>
					<c:when test="${empty meetingList}">

					</c:when>
					<c:otherwise>
						<c:forEach items="${meetingList}" var="meeting">
							<section class="meeting-box">
								
									<section class="meeting-box-section">

										
										<c:set var="dateParts" value="${fn:split(meeting.fromDateTime, ' ')}" />

										<span class="meeting-date-mon-time">${fn:toUpperCase(dateParts[0])}</span> <span
											class="meeting-date-dd" >${dateParts[1]}</span> <span
											class="meeting-date-mon-time">${dateParts[3]}</span>
									</section>
									<section class="meeting-box-section-right" style="color: black;">
										<article>${meeting.companyName}</article>
										<br>
										<section>
											<section>
												<span class="meeting-detail-span" style="color: black;">Contact Name(s): </span> <span
													class="meeting-detail-span" style="color: black; margin-left: 10px">Subject:</span>
											</section>
											<section>
											<c:forEach items="${meeting.contacts}" var="contact">
												<span class="meeting-detail-span" style="color: darkgrey">${contact.name}</span>
												<br> 
											</c:forEach>
												<span class="meeting-detail-span" style="color: darkgrey;margin-left: 10px">${meeting.subject}</span>
											</section>
										</section>
									</section>
									<section class="meeting-box-section-third">
										<section class="close-button-section">
											<img alt="Close Meeting" src="../img/Close_Card24x25.png">
										</section>
										<section>
											<a href="/meetingnotes?eventId=${meeting.id}"><img class="note-complete" alt="Edit Meeting"
												src="../img/Notes_Complete80x80.png"></a>
										</section>
									</section>
								
							</section>


						</c:forEach>
					</c:otherwise>
				</c:choose>			
		</section>

	</section>


	<script src="../js/jquery-1.10.2.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jasny-bootstrap.min.js"></script>
	
	<script type="text/javascript">
	
		$(document).ready(function() {
			$('.meetingListTab').on('click', function() {
				window.location.href = '/mymeetings?range=' + $(this).attr('id');
			});
			
			$('.meetingListTab').each(function() {
				$(this).removeClass('active');
			});
			var id = window.location.href.split("=")[1];
			$('#' + id).addClass('active')
		});
	</script>
</body>
</html>