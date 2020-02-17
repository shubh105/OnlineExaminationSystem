<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<style>
/*
 * General styles
 */
body, html{
     height: 100%;
      background: url('https://cdn.pixabay.com/photo/2017/03/12/17/54/quiz-2137664_1280.jpg') fixed;
    background-size: cover;
     background-repeat: no-repeat;
 	font-family: 'Oxygen', sans-serif;
    font-size: 12px;
}
.main{
 	margin-top: 70px;
}
h1.title { 
	font-size: 50px;
	font-family: 'Passion One', cursive; 
	font-weight: 400; 
}
hr{
	width: 10%;
	color: #fff;
}
.form-group{
	margin-bottom: 15px;
}
label{
	margin-bottom: 14px;
}
input,
input::-webkit-input-placeholder {
    font-size: 9px;
    padding-top: 3px;
}
.main-login{
 	background-color: #fff;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}
.main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	max-width: 330px;
    padding: 40px 40px;
}
.login-button{
	margin-top: 3px;
}
.login-register{
	font-size: 8px;
	text-align: center;
}
</style>
    <head> 
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->


		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>SignUp</title>
	</head>
	<body>
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h2 class="title">SignUp</h2>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<f:form class="form-horizontal" method="post" action="addstudent" modelAttribute="stuObj">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <f:input type="text" class="form-control" path="name" id="name"  placeholder="Your Name"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<f:input type="text" class="form-control" path="email" id="email"  placeholder="Your Email"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class= "fa fa-key icon" aria-hidden="true"></i></span>
									<f:input type="password" class="form-control" path="password" id="password"  placeholder="create Password"/>
								</div>
							</div>
						</div>

                      <div class="form-group">
							<label for="instituteName" class="cols-sm-2 control-label">Institute Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="	fa fa-institution" aria-hidden="true"></i></span>
									<f:input type="text" class="form-control" path="instituteName" id="iname"  placeholder="Your Institute Name"/>
								</div>
							</div>
						</div>


						<div class="form-group ">
							<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="SignUp">
						</div>
					</f:form>
				</div>
			</div>
		</div>
	</body>
</html>