<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<style>

html {
  position: relative;
  min-height: 100%;
}

body {
  overflow-x: hidden;
  font-family: lato;
  background-color: #EEEEEE;
}

.textside {
  margin-left: 25px;
}

.navlogo img {
  margin-bottom: 10px;
  margin-top: 10px;
  width: 60%;
}

.fixed-top {
  position: fixed;
  top: 0;
  right: 0;
  left: 0;
  z-index: 1030;
  background: #FFFFFF;
  height: 60px;
  color: white;
}



.inforide {
  box-shadow: 1px 2px 8px 0px #f1f1f1;
  background-color: white;
  border-radius: 8px;
  height: 125px;
}

.rideone img {
  width: 70%;
}

.ridetwo img {
  width: 70%;
}

.rideone {
  background-color: white;
  padding-top: 25px;
  border-radius: 8px 0px 0px 8px;
  text-align: center;
  height: 125px;
  margin-left: 15px;
}

.ridetwo {
  background-color: white;
  padding-top: 30px;
  border-radius: 8px 0px 0px 8px;
  text-align: center;
  height: 125px;
  margin-left: 15px;
}

.fontsty {
  margin-right: -15px;
}

.fontsty h2{
  color: #6E6E6E;
  font-size: 35px;
  margin-top: 15px;
  text-align: right;
  margin-right: 30px;
}

.fontsty h4{
  color: #6E6E6E;
  font-size: 25px;
  margin-top: 20px;
  text-align: right;
  margin-right: 30px;
}

.content-wrapper {
  min-height: calc(100vh - 56px);
  padding-top: 4rem;
  overflow-x: hidden;
  background: transparent;
}

</style>


<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div class="content-wrapper" style="margin-left: 25%">
    <div class="container-fluid">
      <div class="row">

      <!-- Icon Cards-->
        <div class="col-lg-4 col-md-4 col-sm-6 col-12 mb-2 mt-4">
            <div class="inforide">
              <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-4 col-4 rideone">
                    <img src="http://icons.iconarchive.com/icons/iconsmind/outline/256/Cursor-Select-icon.png">
                </div>
                <div class="col-lg-9 col-md-8 col-sm-8 col-8 fontsty">
                  <h4><a href="#" id="Select">Select Questions</a></h4>
                </div>
              </div>
            </div>
        </div>

        <div class="col-lg-4 col-md-4 col-sm-6 col-12 mb-2 mt-4">
            <div class="inforide">
              <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-4 col-4 ridetwo">
                    <img src="https://secure.webtoolhub.com/static/resources/icons/set44/9351b548.png" style="size: 25%">
                </div>
                <div class="col-lg-9 col-md-8 col-sm-8 col-8 fontsty">
                    <h4><a href="#" id="addnewquestion">Add New Question</a></h4>
                </div>
              </div>
            </div>
        </div>

    </div>
    </div>
    <br>
    
    <div class="row" id="common">
    
    
    </div>
    
    
  </div>


<script type="text/javascript">
     
     $(document).ready(function(){
    	$('#Select').click(function(){
    		$('#common').load("getselectquestion");
		});
    	$('#addnewquestion').click(function(){
    		$('#common').load("getnewaddquestion");
    	});
		});
     
 </script>

</body>
</html>