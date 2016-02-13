<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<h4>Add Users</h4>
					<!--  ROW START-->
					<div class="row">
						<!-- FORM START -->
						<form class="col s12"
							action="${pageContext.request.contextPath}/ars/add_user"
							method="POST">
							<div class="row">
								<div class="input-field col s6">

									<input id="icon_prefix" name="first_name" type="text"
										class="validate" value="${user.firstName}"> <label
										for="icon_prefix">First Name</label>
								</div>
								<div class="input-field col s6">

									<input id="icon_telephone" name="last_name" type="tel"
										class="validate" value="${user.lastName}"> <label
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
										class="datepicker" value="${user.date}"> <label
										class="active" for="first_name2">Birthday</label>
								</div>
								<div class="input-field col s6">
									<div class="switch">
										<input id="cmn-toggle-1" class="cmn-toggle cmn-toggle-round"
											type="checkbox" name="admin_flag" value="${user.adminFlag}">
										<label for="cmn-toggle-1" class="validate">Admin Flag</label>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="submit"
									class=" modal-action modal-close waves-effect waves-green btn-flat">Add
									User</button>
							</div>
						</form>
						<!-- FORM END -->
					</div>
					<!-- ROW END -->
				</div>
				<!-- -->
				<!-- 				<div class="modal-footer">
				
					<a href="#!"
						class=" modal-action modal-close waves-effect waves-green btn-flat">Add
						User</a>
				</div> -->
			</div>

			<!-- add sched modal END -->
			<br> <br>


			<div class="row center">
				<h5 class="header col s12 light">Add new users</h5>
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
		<div class="section">

			<!--   Icon Section   -->
			<div class="row">
				<table>
					<thead>
						<tr>
							<th data-field="reserved_by">Email</th>
							<th data-field="reserved_to">Name</th>
							<th data-field="data">Birthday</th>
							<th data-field="start_time">Address</th>
							<th data-field="end_time">Admin Flag</th>
							<th data-field="end_time">Created by/date</th>
							<th data-field="end_time">Modified by/date</th>
							<th data-field="end_time">Actions</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="user" items="${user_list}">
							<tr>
								<td>${user.email}</td>
								<td>${user.firstName}${user.familyName}</td>
								<td>${user.birthdate}</td>
								<td>${user.address}</td>
								<c:choose>
									<c:when test="${user.adminFlag==1}">
										<td><center>ADMIN</center></td>
									</c:when>
									<c:otherwise>
										<td><center>USER</center></td>
									</c:otherwise>
								</c:choose>
								<td>${user.createdDate}</td>
								<td>${user.modifiedDate}</td>
								<td><a
									href="${pageContext.request.contextPath}/ars/edit_user?id=${user.id}"
									class="btn-floating btn-small waves-effect waves-light blue modal-trigger">
										<i class="material-icons">edit</i>
								</a> <a href="${pageContext.request.contextPath}/ars/delete_user?id=${user.id}"
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
				selectYears : 15,
				format : 'yyyy/mm/dd'
			});

			// the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
			$('.modal-trigger').leanModal();
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
