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
<link href="../css/meetingNotes.css" rel="stylesheet">   

<title>Welcome</title>



</head>

<body>
	<%@ include file="./html/include/nav.html"%>

	<section class="container canvas">

		<%@ include file="./html/include/header.html"%>
		<section class="container page-top-section"></section>
		<section>

			<div class="container">
				<!-- <ul class="nav nav-pills nav-justified"> -->
				<ul class="nav nav-pills align-left container" style="margin-bottom:10px;margin-top:10px;">
					<li class="active"><a data-toggle="pill" href="#pipeline">Pipeline</a></li>
					<li><a id="client-dashboard-sales" data-toggle="pill" href="#sales">Sales</a></li>
					<li><a id="client-dashboard-assets" data-toggle="pill" href="#assets">Assets</a></li>
				</ul>
				<div class="tab-content">
					<div id="pipeline" class="tab-pane fade in active">
						<img class="img-responsive" src="../img/Dasboard-Pipeline.png" alt="dashboard">
					</div>
					<div id="sales" class="tab-pane fade">
						<img class="img-responsive" src="../img/Dasboard-Sales.png" alt="dashboard">
					</div>
					<div id="assets" class="tab-pane fade">
						<img class="img-responsive" src="../img/Dashboard-Assets.png" alt="dashboard">
					</div>
				</div>
			</div>


		</section>

	</section>




</body>
</html>
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jasny-bootstrap.min.js"></script>