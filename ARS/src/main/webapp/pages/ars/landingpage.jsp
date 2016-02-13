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
<link href="aircon-schedule/css/materialize.css" type="text/css"
	rel="stylesheet" media="screen,projection" />
<link href="aircon-schedule/css/style.css" type="text/css"
	rel="stylesheet" media="screen,projection" />
<link rel="stylesheet" type="text/css"
	href="aircon-schedule/css/index.css">
</head>
<body class="index">
	<header> <nav class="transparent borderless" role="navigation">
	<div class="nav-wrapper container">
		<a id="logo-container" href="#" class="brand-logo left">@rs</a>
		<ul class="right hide-on-med-and-down">
			<li><a class="modal-trigger" href="#modal1">Login</a></li>

		</ul>

		<ul id="nav-mobile" class="side-nav">
			<li><a href="#">Navbar Link</a></li>
		</ul>
		<a href="#" data-activates="nav-mobile" class="button-collapse"><i
			class="material-icons">menu</i></a>
	</div>
	</nav> </header>

	<main class="Site-content">
	<div class="container">
		<div class="col l6 s12">
			<h2 class="white-text pull-low">
				Aircon<br>Reservation<br>System
			</h2>


			<!-- Modal1 Structure -->
			<div id="modal1" class="modal">
				<div class="modal-content">
					<h4>Login</h4>
					<!--  ROW START-->
					<div class="row">
						<!-- FORM START -->
						<form class="col s12"
							action="${pageContext.request.contextPath}/ars/" method="POST">
							<div class="row">
								<div class="input-field col s12">
									<input id="username" name="email" type="text" class="validate">
									<label for="username">Email</label>
									<p>${ErrorMessage}</p>
								</div>
								<div class="input-field col s12">
									<input id="password" name="password" type="password"
										class="validate"> <label for="password">Password</label>
									<p>${ErrorMessage}</p>
								</div>
							</div>

							<div class="modal-footer">
								<button type="submit"
									class=" modal-action modal-close waves-effect waves-green btn-flat">Login</button>
							</div>
						</form>
						<!-- FORM END -->
					</div>
					<!-- ROW END -->
				</div>
				<!-- -->

			</div>

			<!-- MODAL1 END -->

		</div>
	</div>
	</main>
	<footer class="page-footer grey darken-3">
	<div class="container">
		<br> <br>
	</div>

	</footer>


	<!--  Scripts-->
	<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script src="aircon-schedule/js/materialize.js"></script>
	<script src="aircon-schedule/js/init.js"></script>
	<script type="text/javascript">
		// Initialize collapse button
		$(document).ready(function() {
			$('.datepicker').pickadate({
				selectMonths : true, // Creates a dropdown to control month
				selectYears : 15
			// Creates a dropdown of 15 years to control year
			});

			// the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
			$('.modal-trigger').leanModal();
		});
		$(".button-collapse").sideNav();
		// Initialize collapsible (uncomment the line below if you use the dropdown variation)
		//$('.collapsible').collapsible();
	</script>

</body>
</html>
