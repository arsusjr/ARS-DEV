<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0" />
<title>Aircon Reservation System</title>

<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="../weekly-calendar/css/materialize.css" type="text/css"
	rel="stylesheet" media="screen,projection" />
<link href="../weekly-calendar/css/style.css" type="text/css"
	rel="stylesheet" media="screen,projection" />
<link href='../weekly-calendar/fullcalendar.css' rel='stylesheet' />
<script src='../weekly-calendar/lib/moment.min.js'></script>
<script src='../weekly-calendar/lib/jquery.min.js'></script>
<script src='../weekly-calendar/fullcalendar.min.js'></script>
<script>
	$(document).ready(function() {

		$('#calendar').fullCalendar({
			header : {
				left : 'prev,next today',
				center : 'title',
				right : '',
			},
			defaultView : 'basicWeek',
			defaultDate : '2016-01-12',
			editable : true,
			eventLimit : true, // allow "more" link when too many events
			events : [ {
				id : 999,
				title : 'Repeating Event',
				start : '2016-01-09T16:00:00'
			}, {
				id : 999,
				title : 'Repeating Event',
				start : '2016-01-16T16:00:00'
			}, {
				title : 'Meeting',
				start : '2016-01-12T10:30:00',
				end : '2016-01-12T12:30:00'
			}, {
				title : 'Lunch',
				start : '2016-01-12T12:00:00'
			}, {
				title : 'Meeting',
				start : '2016-01-12T14:30:00'
			}, {
				title : 'Happy Hour',
				start : '2016-01-12T17:30:00'
			}, {
				title : 'Dinner',
				start : '2016-01-12T20:00:00'
			}, {
				title : 'Birthday Party',
				start : '2016-01-13T07:00:00'
			}, {
				title : 'Click for Google',
				url : 'http://google.com/',
				start : '2016-01-28'
			} ]
		});

	});
</script>
</head>
<body>


	<!-- START drop down1 content -->
	<ul id="dropdown1" class="dropdown-content">
		<li><a
			href="${pageContext.request.contextPath}/ars/aircon_schedule">View
				Schedule</a></li>
		<li><a
			href="${pageContext.request.contextPath}/ars/weekly_schedule">Calendar
				Weekly View</a></li>
	</ul>
	<!-- END drop down1 content -->
	<!-- START drop down2 content -->
	<ul id="dropdown2" class="dropdown-content">
		<li><a href="#!">One</a></li>
		<li><a href="#!">Two</a></li>
		<li class="divider"></li>
		<li><a href="${pageContext.request.contextPath}/ars/logout">Logout</a></li>
	</ul>
	<!-- END drop down2 content -->
	<nav class="light-blue lighten-1" role="navigation">
	<div class="nav-wrapper container">
		<a id="logo-container" href="#" class="brand-logo">@rs</a>
		<!-- WEB VIEW NAV -->
		<ul class="right hide-on-med-and-down">
			<li><a href="index.html">Home</a></li>
			<li><a href="#">Users</a></li>
			<li><a class="dropdown-button" href="#!"
				data-activates="dropdown1">Schedule<i
					class="material-icons right">arrow_drop_down</i></a></li>
			<li><a class="dropdown-button" href="#!"
				data-activates="dropdown2">${first_name}<i
					class="material-icons right">arrow_drop_down</i></a></li>
		</ul>
		<!-- END WEB VIEW NAV -->

		<!-- MOBILE VIEW NAV -->

		<!-- END MOBILE VIEW NAV -->
		<a href="#" data-activates="nav-mobile" class="button-collapse"><i
			class="material-icons">menu</i></a>
	</div>
	</nav>
	<div class="name">
		<h4>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; &nbsp; &nbsp; &nbsp; Weekly View</h4>
	</div>

	<div id='calendar'></div>


	<script src="../weekly-calendar/js/materialize.js"></script>
	<script src="../weekly-calendar/js/init.js"></script>
	<script type="text/javascript">
		$(".dropdown-button").dropdown();
	</script>

</body>

</html>
