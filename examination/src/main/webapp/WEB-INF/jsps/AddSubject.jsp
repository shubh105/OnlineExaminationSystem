<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div style="margin-top: 5%">
 <form id="addsubjectform">
            <div class="form-group" style="margin-left:5%">
              <label>Subject Name</label>
              <input type="text" class="form-control" name="subjectName" id="subname" placeholder="Enter Subject Name">
            </div>
            <div class="form-group" style="margin-left:5%">
              <label>Subject Id</label>
              <input  type="text" class="form-control" name="subjectId" id="subid" placeholder="Pick up a date">
            </div>
           <div class="form-group text-center" style="width:20%;margin-left:5%">
             <input type="submit" class="btn btn-block btn-primary" value="Add">
          </div>
          <div id="msg" style="float: left;margin-left:5%"></div>
        </form>
</div>

<script>
 $(document).ready(function() {
	    $('#addsubjectform').submit(function(event) {
	        	event.preventDefault();
	        	ajaxPost();
	        });
	  

		function ajaxPost() {

			// PREPARE FORM DATA
			var formData = {
				subjectName : $("#subname").val(),
				subjectId : $("#subid").val(),
			}

	        	$.ajax({
					type : "POST",
					contentType : "application/json",
					url : "addsubject",
					data : JSON.stringify(formData),
					dataType : 'json',
					success : function(result) {
						if (result.status == "success") {
							$('#addsubjectform')[0].reset();
							$('#msg').html("Successfully Saved").css("color","green");
						//alert("Saved Succesfully");
						} else {
							$('#addsubjectform')[0].reset();
							$('#msg').html("Error While Saving");
						}
						console.log(result);
					},
					error : function(e) {
						$('#addsubjectform')[0].reset();
						$('#msg').html("Error While Saving").css("color","red");
					}
					
					
				});

			}

		});
     </script> 

</body>
</html>