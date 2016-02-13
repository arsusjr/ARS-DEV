<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link href="../aircon-schedule/css/materialize.css" type="text/css"
	rel="stylesheet" media="screen,projection" />
<link href="../aircon-schedule/css/style.css" type="text/css"
	rel="stylesheet" media="screen,projection" />
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
			<li><a href="${pageContext.request.contextPath}/ars/index">Home</a></li>
			<li><a href="${pageContext.request.contextPath}/ars/users">Users</a></li>
			<li><a class="dropdown-button" href="#!"
				data-activates="dropdown1">Schedules<i
					class="material-icons right">arrow_drop_down</i></a></li>
			<li><a class="dropdown-button" href="#!"
				data-activates="dropdown2">${first_name}<i
					class="material-icons right">arrow_drop_down</i>
			</a></li>
		</ul>
		<!-- END WEB VIEW NAV -->

		<!-- MOBILE VIEW NAV -->

		<!-- END MOBILE VIEW NAV -->
		<a href="#" data-activates="nav-mobile" class="button-collapse"><i
			class="material-icons">menu</i></a>
	</div>
	</nav>
	<div class="section no-pad-bot" id="index-banner">
		<div class="container" id="edit-form">
			<form class="col s12">
				<div class="row">

					<div class="input-field col s12">
						<input id="username" type="text" name="aircon_name"
							class="validate" value="${schedule.airconId}"> <label
							for="username">unit</label>
					</div>

					<div class="input-field col s12">
						<input id="theDate" type="date" name="date" class="datepicker">
						<label class="active" for="first_name2" value="${schedule.date}">date</label>
					</div>
					<div class="input-field col s6">
						<input id="start_time" type="text" name="time_start"
							class="validate" value="${schedule.timeStart}"> <label
							for="start_time">start time</label>
					</div>
					<div class="input-field col s6">
						<input id="end_time" type="text" name="time_end" class="validate"
							value="${schedule.timeEnd}"> <label for="end_time">end
							time</label>
					</div>
				</div>
				<div class="modal-footer">
					<a href="#!"
						class=" modal-action modal-close waves-effect waves-green btn-flat">Save</a>
				</div>
			</form>
		</div>
	</div>

	<div class="footer-copyright black-text">
		<div class="container">
			Made by <a class="black-text text-lighten-3"
				href="http://materializecss.com">Materialize</a>
		</div>
	</div>
	</footer>


	<!--  Scripts-->
	<script src="../aircon-schedule/js/jquery-2.1.1.min.js"></script>
	<script src="../aircon-schedule/js/materialize.js"></script>
	<script src="../aircon-schedule/js/init.js"></script>
	<script type="text/javascript">
		$(".dropdown-button").dropdown();
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.datepicker').pickadate({
				selectMonths : true, // Creates a dropdown to control month
				selectYears : 15
			// Creates a dropdown of 15 years to control year
			});

			// the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
			$('.modal-trigger').leanModal();

			var date = new Date();

			var day = date.getDate();
			var month = date.getMonth() + 1;
			var year = date.getFullYear();

			if (month < 10)
				month = "0" + month;
			if (day < 10)
				day = "0" + day;

			var today = year + "-" + month + "-" + day;
			document.getElementById("theDate").value = today;
		});

		$(".dropdown-button").dropdown();
	</script>
</body>

</html>
