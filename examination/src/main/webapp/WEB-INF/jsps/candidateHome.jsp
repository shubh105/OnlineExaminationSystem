<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>


<style>


@import 'https://fonts.googleapis.com/css?family=Raleway:300,400';


body {
    font-family: 'Raleway:300', sans-serif
}
    
.admin-sidenav {
    width: 10%;
	height: auto;
	margin-left: 0px; 
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

<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>

<!------ Include the above in your HEAD tag ---------->
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div class="navbar navbar-inverse nav">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="/">Candidate Panel</a>
    		
          	<div class="nav-collapse collapse">
              <ul class="nav">
                  <li class="divider-vertical"></li>
                  <li><a href="#"><i class="icon-home icon-white"></i> Home</a></li>
              </ul>
              <div class="pull-right">
                <ul class="nav pull-right">
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Welcome, User <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="/user/preferences"><i class="icon-cog"></i> Profile</a></li>
                            <li><a href="/help/support"><i class="icon-envelope"></i> Contact Support</a></li>
                            <li class="divider"></li>
                            <li><a href="homepage"><i class="icon-off"></i> Logout</a></li>
                        </ul>
                    </li>
                </ul>
              </div>
            </div>
        </div>
    </div>
</div>

 <div class="container-fluid">
        <div class="row">    
            <div id="admin-sidebar" class="col-md-2 p-x-0 p-y-3">
                <ul class="sidenav admin-sidenav list-unstyled">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">View Subjects</a></li>
                    <li><a href="#">Exam</a></li>
                    <li><a href="#">Result</a></li>                
                </ul>
            </div> <!-- /#admin-sidebar -->
           
        </div> <!-- /.row -->
</div> <!-- /.container-fluid -->


       
      
</body>
</html>