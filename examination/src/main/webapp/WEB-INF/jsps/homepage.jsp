<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<style>

nav.navbar-webmaster { background: #1b242c;}
nav.navbar-webmaster a { color: #fff; }
nav.navbar-webmaster ul.navbar-nav a { color: #fff; border-style: solid; border-width: 2px 0 0 0; border-color:#1b242c; }
nav.navbar-webmaster ul.navbar-nav a:hover,
nav.navbar-webmaster ul.navbar-nav a:visited,
nav.navbar-webmaster ul.navbar-nav a:focus,
nav.navbar-webmaster ul.navbar-nav a:active { background:#3b4045; }
nav.navbar-webmaster ul.navbar-nav a:hover {border-color: #5fb000; }
nav.navbar-webmaster li.divider { background: #ccc; }
nav.navbar-webmaster button.navbar-toggle { background:  #1b242c; border-radius: 2px; }
nav.navbar-webmaster button.navbar-toggle:hover { background: #999; }
nav.navbar-webmaster button.navbar-toggle > span.icon-bar { background: #fff; }
nav.navbar-webmaster ul.dropdown-menu { border: 0; background: #fff; border-radius: 4px; margin: 4px 0; box-shadow: 0 0 4px 0 #ccc; }
nav.navbar-webmaster ul.dropdown-menu > li > a { color: #444; }
nav.navbar-webmaster ul.dropdown-menu > li > a:hover { background: #f14444; color: #fff; }
nav.navbar-webmaster span.badge { background: #f14444; font-weight: normal; font-size: 11px; margin: 0 4px; }
nav.navbar-webmaster span.badge.new { background: rgba(255, 0, 0, 0.8); color: #fff; }

</style>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<!------ Include the above in your HEAD tag ---------->
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<nav class="navbar navbar-webmaster">
    <div class="container">
    	<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Online Examination System</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar">
			<ul class="nav navbar-nav navbar-right">
		
				<li class="active"><a href="getloginpage">Login<span class="sr-only">(current)</span></a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Register<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="getfacultysignuppage">Faculty</a></li>
						<li><a href="getstudentsignuppage">Candidate</a></li>
					</ul>
				</li>
			</ul>
			
		</div>
	</div>
</nav>
</body>
</html>