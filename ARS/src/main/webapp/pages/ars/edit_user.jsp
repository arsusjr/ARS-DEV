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
			<form class="col s12"
				action="${pageContext.request.contextPath}/ars/update_user?id=${user.id}"
				method="POST">
				<div class="row">
					<div class="input-field col s6">

						<input id="icon_prefix" name="first_name" type="text"
							class="validate" value="${user.firstName}"> <label
							for="icon_prefix">First Name</label>
					</div>
					<div class="input-field col s6">

						<input id="icon_telephone" name="last_name" type="tel"
							class="validate" value="${user.familyName}"> <label
							for="icon_telephone">Last Name</label>
					</div>

					<div class="input-field col s6">

						<input id="icon_telephone" name="email" type="tel"
							class="validate" value="${user.email}"> <label
							for="icon_telephone">Email</label>
					</div>

					<div class="input-field col s6">

						<input id="icon_telephone" name="tin_no" type="tel"
							class="validate" value="${user.tinNo}"> <label
							for="icon_telephone">#Tin No.</label>
					</div>

					<div class="input-field col s6">
						<input id="first_name2" name="birthday" type="date"
							class="datepicker" value="${user.birthdate}"> <label
							class="active" for="first_name2">Birthday</label>
					</div>
					<div class="input-field col s6">
						<div class="switch">
							<input id="cmn-toggle-1" class="cmn-toggle cmn-toggle-round"
								type="checkbox" name="admin_flag"> <label
								for="cmn-toggle-1" class="validate">Admin Flag</label>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" onClick="myFunction()"
						class=" modal-action modal-close waves-effect waves-green btn-flat">Add
						User</button>
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
				selectYears : 15,
				format : 'yyyy/mm/dd'
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
	<script>
		function myFunction() {
			var x = document.getElementById("cmn-toggle-1").checked;
			var admin_flag = document.getElementById('cmn-toggle-1');
			admin_flag.value = x;
		}
	</script>
</body>

</html>
