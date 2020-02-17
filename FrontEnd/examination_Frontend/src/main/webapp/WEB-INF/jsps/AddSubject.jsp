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
<title>Add Subject</title>
</head>
<body>

<div style="margin-top: 5% ; margin-left: 10%;width:80%">
 <form id="addsubjectform">
            <div class="form-group" style="margin-left:10%">
              <label>Subject Name</label>
              <input type="text" class="form-control" name="sub_name" id="sub_name" placeholder="Enter Subject Name">
            </div>
            
           <div class="form-group text-center" style="width:20%;margin-left:10%">
             <input type="submit" class="btn btn-block btn-primary" value="Add">
          </div>
          <div id="msg" style="float: left;margin-left:10%"></div>
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
					sub_name : $("#sub_name").val(),
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
						}
						else if(result.status == "error"){
							$('#addsubjectform')[0].reset();
							$('#msg').html("Subject Already Exists").css("color","Red");
						}
						
					},
					error : function(e) {
						alert(e)
						console.log("ERROR: ", e);
						$('#addsubjectform')[0].reset();
						$('#msg').html("Error While Saving").css("color","red");
					}
					
				});

			}

		});
     </script>


</body>
</html>