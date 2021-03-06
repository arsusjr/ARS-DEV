<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
  GOODLUCK 
-->

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
					class="material-icons right">arrow_drop_down</i></a></li>
		</ul>
		<!-- END WEB VIEW NAV -->

		<!-- MOBILE VIEW NAV -->

		<!-- END MOBILE VIEW NAV -->
		<a href="#" data-activates="nav-mobile" class="button-collapse"><i
			class="material-icons">menu</i></a>
	</div>
	</nav>
	<div class="section no-pad-bot" id="index-banner">
		<div class="container">
			<!-- Add Sched Structure -->
			<div id="add_sched" class="modal">
				<div class="modal-content">
					<h4>Aircon Schedule</h4>
					<!--  ROW START-->
					<div class="row">
						<!-- FORM START -->
						<form class="col s12">
							<div class="row">
								<div class="input-field col s12">
									<input id="unit" type="text" class="validate"> <label
										for="unit">unit</label>
								</div>
								<div class="input-field col s12">
									<input id="user" type="text" class="validate"> <label
										for="user">reserve to:</label>
								</div>

								<div class="input-field col s12">
									<input id="date" type="date" class="datepicker"> <label
										class="date" for="first_name2">date</label>
								</div>
								<div class="input-field col s6">
									<input id="start_time" type="text" class="validate"> <label
										for="start_time">start time</label>
								</div>
								<div class="input-field col s6">
									<input id="end_time" type="text" class="validate"> <label
										for="end_time">end time</label>
								</div>
							</div>
						</form>
						<!-- FORM END -->
					</div>
					<!-- ROW END -->
				</div>
				<!-- -->
				<div class="modal-footer">
					<a href="#!"
						class=" modal-action modal-close waves-effect waves-green btn-flat">Add</a>
				</div>
			</div>

			<div id="delete_sched" class="modal">
				<div class="modal-content">
					<h4>Delete Schedule?</h4>
					<p>This action is irreversible.</p>
				</div>
				<div class="modal-footer">
					<a href="#!"
						class=" modal-action modal-close waves-effect waves-green btn-flat">ok</a>
					<a href="#!"
						class=" modal-action modal-close waves-effect waves-green btn-flat">cancel</a>
				</div>
			</div>

			<!-- add sched modal END -->
			<br> <br>


			<div class="row center">
				<h5 class="header col s12 light">Add new schedule</h5>
			</div>
			<div class="row right">
				<a
					class="btn-floating btn-large waves-effect waves-light blue modal-trigger"
					href="#add_sched"><i class="material-icons">add</i></a>
			</div>
			<br> <br>

		</div>
	</div>


	<div class="container">

		<nav>
		<div class="nav-wrapper">
			<form action="${pageContext.request.contextPath}/ars/aircon_schedule" method="GET">
				<div class="input-field">
					<input id="search" type="search" name="search" required> <label
						for="search"><i class="material-icons">search</i></label> <i
						class="material-icons">close</i>
				</div>
			</form>
		</div>
		</nav>
		<div class="section">

			<!--   Icon Section   -->
			<div class="row">
				<table>
					<thead>
						<tr>
							<th data-field="reserved_by">Unit</th>
							<th data-field="reserved_to">Day</th>
							<th data-field="data">Time Start</th>
							<th data-field="start_time">Time End</th>
							<th data-field="end_time">Modified by - on</th>
							<th data-field="end_time">Actions</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="aircon_sched" items="${specific_schedule_list}">
							<tr>
								<td>${aircon_sched.airconId}</td>
								<td>${aircon_sched.date}</td>
								<td>${aircon_sched.timeStart}</td>
								<td>${aircon_sched.timeEnd}</td>
								<td></td>
								<td><a
									href="${pageContext.request.contextPath}/ars/edit_schedule?id=${aircon_sched.id}"
									class="btn-floating btn-small waves-effect waves-light blue modal-trigger">
										<i class="material-icons">edit</i>
								</a> <a href="#delete_sched"
									class="btn-floating btn-small waves-effect waves-light red modal-trigger">
										<i class="material-icons">delete</i>
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
		<br> <br>

		<div class="section">
			<hr>
		</div>
	</div>

	<footer class="page-footer white">
	<div class="container">
		<div class="row">


			<div class="col l3 s12">
				<ul class="pagination">
					<li class="disabled"><a href="#!"><i
							class="material-icons">chevron_left</i></a></li>
					<li class="active"><a href="#!">1</a></li>
					<li class="waves-effect"><a href="#!">2</a></li>
					<li class="waves-effect"><a href="#!">3</a></li>
					<li class="waves-effect"><a href="#!"><i
							class="material-icons">chevron_right</i></a></li>
				</ul>
				<ul>

				</ul>
			</div>
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
