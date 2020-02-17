<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html>

<html>

 <style>


footer{

	margin-top: 20px;
	padding-top: 20px;
}
.bg__card__navbar{
	background-color: #000000;
}
.bg__card__footer{
	background-color: #000000 !important;
}
#add__new__list{
    top: -38px;
    right: 0px;
}
</style>
    

<head>

 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   <!------ Include the above in your HEAD tag ---------->

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


<body>

<header>
<h2 class="card-title" style="text-align: center">Question Section</h2>
  <div class="container bg-dark p-5 ">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand active" href="getfacultyhome">Home</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link" id="showquestion" href="#">Show Questions</a>
          <a class="nav-item nav-link" id="addquestion" href="#">Add Question</a>
        </div>
      </div>
    </nav>
  </div>
</header>

 <div id="check">
          
    </div> 
    
    
     <script type="text/javascript">
     
     $(document).ready(function(){
    	$('#showquestion').click(function(){
    		$('#check').load("getshowquestion");
		});
    	$('#addquestion').click(function(){
    		$('#check').load("getaddquestion");
    	});
    	$('getfacultyhome').click(function(){
    		location.reload();
    	});
		});
     
     </script>

</body>


     
 </html>