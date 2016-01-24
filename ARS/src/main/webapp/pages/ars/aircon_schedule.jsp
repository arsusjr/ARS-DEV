<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
  GOODLUCK 
-->

<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <title>Aircon Reservation System</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="../aircon-schedule/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="../aircon-schedule/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>
<body>
  <!-- START drop down1 content -->

  <ul id="dropdown1" class="dropdown-content">
  <li><a href="#!">add schedules</a></li>
  <li><a href="#!">view schedules</a></li>
  <li class="divider"></li>
  <li><a href="#!">edit schedules</a></li>
  </ul>
  <!-- END drop down1 content -->
  <!-- START drop down2 content -->
  <ul id="dropdown2" class="dropdown-content">
  <li><a href="#!">one</a></li>
  <li><a href="#!">two</a></li>
  <li class="divider"></li>
  <li><a href="#!">logout</a></li>
  </ul>
  <!-- END drop down2 content -->
  <nav class="light-blue lighten-1" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo">@rs</a>
      <!-- WEB VIEW NAV -->
      <ul class="right hide-on-med-and-down">
        <li><a href="index.html">home</a></li>
        <li><a href="#">users</a></li>
        <li><a class="dropdown-button" href="#!" data-activates="dropdown1">schedules<i class="material-icons right">arrow_drop_down</i></a></li>
        <li><a class="dropdown-button" href="#!" data-activates="dropdown2">User<i class="material-icons right">arrow_drop_down</i></a></li>
      </ul>
      <!-- END WEB VIEW NAV -->

      <!-- MOBILE VIEW NAV -->
     
      <!-- END MOBILE VIEW NAV -->
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
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
                    <input id="unit" type="text" class="validate">
                    <label for="unit">unit</label>
                  </div>
                  <div class="input-field col s12">
                    <input id="user" type="text" class="validate">
                    <label for="user">reserve to:</label>
                  </div>
                  
                  <div class="input-field col s12">
                    <input id="date" type="date" class="datepicker" >
                    <label class="date" for="first_name2">date</label>
                  </div>
                  <div class="input-field col s6">
                    <input id="start_time" type="text" class="validate">
                    <label for="start_time">start time</label>
                  </div>
                  <div class="input-field col s6">
                    <input id="end_time" type="text" class="validate">
                    <label for="end_time">end time</label>
                  </div>
                </div>          
              </form>
      <!-- FORM END -->
           </div>
      <!-- ROW END -->
          </div>
          <!-- -->
          <div class="modal-footer">
            <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Add</a>
          </div>
        </div>
        <div id="edit_sched" class="modal">
          <div class="modal-content">
            <h4>Edit Schedule</h4>
      <!--  ROW START-->      
            <div class="row">
      <!-- FORM START -->
              <form class="col s12">
                <div class="row">
                  <div class="input-field col s12">
                    <input id="username" type="text" class="validate">
                    <label for="username">unit</label>
                  </div>
                  <div class="input-field col s12">
                    <input id="username" type="text" class="validate">
                    <label for="username">reserve to:</label>
                  </div>
                  
                  <div class="input-field col s12">
                    <input id="theDate" type="date" class="datepicker">
                    <label class="active" for="first_name2">date</label>
                  </div>
                  <div class="input-field col s6">
                    <input id="start_time" type="text" class="validate" value="10:00 AM">
                    <label for="start_time">start time</label>
                  </div>
                  <div class="input-field col s6">
                    <input id="end_time" type="text" class="validate" value="7:00 PM">
                    <label for="end_time">end time</label>
                  </div>
                </div>          
              </form>
      <!-- FORM END -->
           </div>
      <!-- ROW END -->
          </div>
          <!-- -->
          <div class="modal-footer">
            <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Save</a>
          </div>
        </div>
        <div id="delete_sched" class="modal">
           <div class="modal-content">
            <h4>Delete Schedule?</h4>
            <p>This action is irreversible.</p>
          </div>
          <div class="modal-footer">
            <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">ok</a>
            <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">cancel</a>
          </div>
        </div>

      <!-- add sched modal END -->
      <br><br>

      
      <div class="row center">
        <h5 class="header col s12 light">Add new schedule</h5>
      </div>
      <div class="row right">
         <a class="btn-floating btn-large waves-effect waves-light blue modal-trigger" href="#add_sched"><i class="material-icons">add</i></a>
      </div>
      <br><br>
      
    </div>
  </div>


  <div class="container">
    <div class="section">

      <!--   Icon Section   -->
      <div class="row">
        <table>
        <thead>
          <tr>
              <th data-field="reserved_by">Unit</th>
              <th data-field="reserved_to">Date</th>
              <th data-field="data">From - To</th>
              <th data-field="start_time">Created by - on</th>
              <th data-field="end_time">Modified by - on</th>
              <th data-field="end_time">Actions</th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td>model 200-29</td>
            <td>Eclair</td>
            <td>10-12-2015</td>
            <td>9:00 AM</td>
            <td>10:00 AM</td>
            <td>
              <a href="#edit_sched" class="btn-floating btn-small waves-effect waves-light blue modal-trigger">
                <i class="material-icons">edit</i>
              </a>
              <a href="#delete_sched" class="btn-floating btn-small waves-effect waves-light red modal-trigger">
                <i class="material-icons">delete</i>
              </a>
            </td>
          </tr>
          <tr>
            <td>Panasonic bla bla</td>
            <td>Jellybean</td>
            <td>10-18-2015</td>
            <td>12:00 PM</td>
            <td>7:00 PM</td>
            <td>
              <a href="#edit_sched" class="btn-floating btn-small waves-effect waves-light blue modal-trigger">
                <i class="material-icons">edit</i>
              </a>
              <a href="#delete_sched" class="btn-floating btn-small waves-effect waves-light red modal-trigger">
                <i class="material-icons">delete</i>
              </a>
            </td>
          </tr>
          <tr>
            <td>CDR king</td>
            <td>Lollipop</td>
            <td>11-3-2015</td>
            <td>8:00 AM</td>
            <td>12:00 PM</td>
            <td>
              <a href="#edit_sched" class="btn-floating btn-small waves-effect waves-light blue modal-trigger">
                <i class="material-icons">edit</i>
              </a>
              <a href="#delete_sched" class="btn-floating btn-small waves-effect waves-light red modal-trigger">
                <i class="material-icons">delete</i>
              </a>
            </td>
          </tr>
        </tbody>
      </table>
      </div>

    </div>
    <br><br>

    <div class="section">
      <hr>
    </div>
  </div>

  <footer class="page-footer white">
    <div class="container">
      <div class="row">
        
        
        <div class="col l3 s12">
           <ul class="pagination">
            <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
            <li class="active"><a href="#!">1</a></li>
            <li class="waves-effect"><a href="#!">2</a></li>
            <li class="waves-effect"><a href="#!">3</a></li>            
            <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
          </ul>
          <ul>
            
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright black-text">
      <div class="container">
      Made by <a class="black-text text-lighten-3" href="http://materializecss.com">Materialize</a>
      </div>
    </div>
  </footer>


  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="../aircon-schedule/js/materialize.js"></script>
  <script src="../aircon-schedule/js/init.js"></script>
  <script type="text/javascript">
   $(document).ready(function(){
       $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 15 // Creates a dropdown of 15 years to control year
      });
          
      // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
      $('.modal-trigger').leanModal();

      var date = new Date();

      var day = date.getDate();
      var month = date.getMonth() + 1;
      var year = date.getFullYear();

      if (month < 10) month = "0" + month;
      if (day < 10) day = "0" + day;

      var today = year + "-" + month + "-" + day;       
      document.getElementById("theDate").value = today;
    });

  $(".dropdown-button").dropdown();
  </script>
  </body>
  
</html>
