<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <title>Aircon Reservation System</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="aircon-schedule/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="aircon-schedule/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link rel="stylesheet" type="text/css" href="aircon-schedule/css/index.css">
</head>
<body class="index">
 <header>		
 <nav class="transparent borderless" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" href="#" class="brand-logo left">@rs</a>
      <ul class="right hide-on-med-and-down">
        <li><a class="modal-trigger" href="#modal1">Login</a></li>
        <li><a class="modal-trigger" href="#modal2">Sign Up</a></li>
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">Navbar Link</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
  
</header>

  <main class="Site-content">
  	<div class="container">
  		<div class="col l6 s12">
          <h2 class="white-text pull-low">Aircon<br>Reservation<br>system</h2>
         

        

  <!-- Modal1 Structure -->
  <div id="modal1" class="modal">
    <div class="modal-content">
      <h4>Login</h4>
<!--  ROW START-->      
      <div class="row">
<!-- FORM START -->
        <form class="col s12">
          <div class="row">
            <div class="input-field col s12">
              <input id="username" type="text" class="validate">
              <label for="username">Username</label>
            </div>
            <div class="input-field col s12">
              <input id="password" type="password" class="validate">
              <label for="password">Password</label>
            </div>
          </div>          
        </form>
<!-- FORM END -->
     </div>
<!-- ROW END -->
    </div>
    <!-- -->
    <div class="modal-footer">
      <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Login</a>
    </div>
  </div>

<!-- MODAL1 END -->


 <!-- Modal2 Structure -->
  <div id="modal2" class="modal modal-fixed-footer">
    <div class="modal-content">
      <h4>Sign Up</h4>
<!--  ROW START-->      
       <div class="row">
    <form class="col s12">
      <div class="row">
        <div class="input-field col s6">
          
          <input id="icon_prefix" type="text" class="validate">
          <label for="icon_prefix">First Name</label>
        </div>
        <div class="input-field col s6">
        
          <input id="icon_telephone" type="tel" class="validate">
          <label for="icon_telephone">Last Name</label>
        </div>
        <div class="input-field col s6">
          
          <input id="icon_telephone" type="tel" class="validate">
          <label for="icon_telephone">username</label>
        </div>
        <div class="input-field col s6">
          
          <input id="icon_telephone" type="tel" class="validate">
          <label for="icon_telephone">password</label>
        </div>
        <div class="input-field col s6">
          
          <input id="icon_telephone" type="tel" class="validate">
          <label for="icon_telephone">confirm password</label>
        </div>
        <div class="input-field col s6">
          
          <input id="icon_telephone" type="tel" class="validate">
          <label for="icon_telephone">Telephone</label>
        </div>
        <div class="input-field col s6">
          
          <input id="icon_telephone" type="tel" class="validate">
          <label for="icon_telephone">address</label>
        </div>
        <div class="input-field col s6">
          <input id="first_name2" type="date" class="datepicker">
          <label class="active" for="first_name2">birth date</label>
        </div>
      </div>
    </form>
  </div>
<!-- ROW END -->
    </div>
    <!-- -->
    <div class="modal-footer">
      <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Sign Up</a>
    </div>
  </div>

<!-- MODAL2 END -->
    </div>
  	</div>
  </main>
  <footer class="page-footer grey darken-3">
    <div class="container">
      <br><br>
    </div>
   
  </footer>


  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="aircon-schedule/js/materialize.js"></script>
  <script src="aircon-schedule/js/init.js"></script>
  <script type="text/javascript">
   // Initialize collapse button
   $(document).ready(function(){
     $('.datepicker').pickadate({
      selectMonths: true, // Creates a dropdown to control month
      selectYears: 15 // Creates a dropdown of 15 years to control year
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
