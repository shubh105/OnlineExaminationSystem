<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<style>


@import 'https://fonts.googleapis.com/css?family=Raleway:300,400';


body {
    font-family: 'Raleway:300', sans-serif
}
    
.admin-sidenav {
    width: auto;
	height: auto;
	margin-left:0%;
	margin-top: 60%; 
	
}
.admin-sidenav a {
	text-decoration: none; 
}
.admin-sidenav li {
	text-align: justify;
	padding: .5rem;
	padding-left: 1rem;
	-webkit-transition: all .2s linear;
	transition: all .2s linear;
	background-color: #000;
	border: 1px solid #333; 
}
.admin-sidenav li a {
	color: #fff; 
}

.admin-sidenav li a:active {
	border-color: #02d3f5; 
}

.admin-sidenav li:hover {
	border-radius: 0 .5rem .5rem 0;
	border-color: #02d3f5;
	-webkit-transform: translate(30px, 0px);
	transform: translate(30px, 0px);
	background: -webkit-linear-gradient(left, #006a7b, #002340);
	background: linear-gradient(to right, #006a7b, #002340); 
}

.admin-sidenav li:active {
	border-color: #02d3f5; 
}




</style>






<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<!------ Include the above in your HEAD tag ---------->

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" rel="stylesheet"/>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="#"> <img class="logo" src="http://exams-online.in/Demo/img/mainlogo.png" height="40">LOGO</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar1" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="nav-link" href="#"><i class="fa fa-home"></i>Home</a>
  <div class="collapse navbar-collapse" id="navbar1">
    <ul class="navbar-nav ml-auto"> 
<li class="nav-item active">
</li>
<li class="nav-item dropdown">
	<a class="nav-link  dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-cog"></i> Account Settings</a>
    <ul class="dropdown-menu">
	  <li><a class="dropdown-item" href="#"><i class="fa fa-user"></i> Edit Profile</a></li>
	  <li><a class="dropdown-item" href="facultyLogOut"><i class="fa fa-power-off"></i> Logout</a></li>
    </ul>
</li>
    </ul>
  </div>
</nav>



    <div class="container-fluid">
        <div class="row">    
            <div id="admin-sidebar" class="col-md-2 p-x-0 p-y-3">
                <ul class="sidenav admin-sidenav list-unstyled">
                    <li><a id="subjectsection" href="#">Subject Section</a></li>
                    <li><a id="papersection" href="#">Paper Section</a></li>
                    <li><a id="questionsection" href="#">Question Section</a></li>
                    <li><a id="viewresult" href="#">View Result</a></li>
                    <li><a id="notice" href="#">Notice</a></li>                 
                </ul>
            </div> <!-- /#admin-sidebar -->
            <div id="commondiv" class="col-md-10 p-x-3 p-y-1">
               
        </div> <!-- /.row -->
    </div> <!-- /.container-fluid -->
    </div>
</body>
<script>

$(document).ready(function(){
	
	$('#subjectsection').click(function(){
		$("#commondiv").load("getsubjectsection");
	});
	
	$('#papersection').click(function(){
		$("#commondiv").load("getpapersection");
	})
	$('#questionsection').click(function(){
		$("#commondiv").load("getquestionsection");
	})
	$('#viewresult').click(function(){
		$("#commondiv").load("getviewresult");
	})
	$('#notice').click(function(){
		$("#commondiv").load("getnotice");
	})
	
})


</script>
</html>