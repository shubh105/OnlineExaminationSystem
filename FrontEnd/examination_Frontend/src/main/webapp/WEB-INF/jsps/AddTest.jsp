<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page isELIgnored="false" %>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>

<style>

*[role="form"] {
    max-width: 530px;
    padding: 25px;
    margin: 0 auto;
    border-radius: 0.3em;
    background-color: #99ccff;
}

*[role="form"] h2 { 
    font-family: 'Open Sans' , sans-serif;
    font-size: 40px;
    font-weight: 600;
    color: #000000;
    margin-top: 5%;
    text-align: center;
    letter-spacing: 2px;
}



</style>


<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
            <f:form class="form-horizontal" role="form" id="addtestform" method="post" modelAttribute="testObj">
                <h2>Add Test</h2>
                <br>
                <div class="form-group">
                    <label for="testname" class="col-sm-3 control-label">Test Name</label>
                    <div class="col-sm-9">
                        <f:input type="text" path="testname" id="testname" placeholder="Test Name" class="form-control" />
                    </div>
                </div>
                
                <div class="form-group">
        <label for="subject_id" class="col-sm-3 control-label">Subject:</label>
        <div class="col-sm-9">
         <select  class="form-control form-control-lg" name="subject_id" id="subject_id" >
			<option class="form-control" value="0">----Select Project--------</option>
 	 		<c:forEach items="${subjectsList}" var="dOb">

 	 			<option value="${dOb.subject_id}">${dOb.sub_name}</option>

	 		</c:forEach>

		</select>
		</div>
		</div>
                
                <div class="form-group">
                        <label for="Height" class="col-sm-3 control-label">Total Marks</label>
                    <div class="col-sm-9">
                        <f:input type="number" id="total_marks" path="total_marks" placeholder="Please write your height in centimetres" class="form-control"/>
                    </div>
                </div>
                
                 <div class="form-group">
                        <label for="weight" class="col-sm-3 control-label">Passing Marks</label>
                    <div class="col-sm-9">
                        <f:input type="number" id="passing_marks" path="passing_marks" placeholder="Please write your weight in kilograms" class="form-control"/>
                    </div>
                </div>
                
                 <div class="form-group">
                        <label for="weight" class="col-sm-3 control-label">Instruction</label>
                    <div class="col-sm-2">
                        <f:textarea id="instruction" path="instruction" placeholder="Add Instruction here!!" style="width:360px"></f:textarea>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <span id="msg" class="help-block"></span>
                    </div>
                </div>
          
                <button type="submit" class="btn btn-primary btn-block">Generate Test</button>
            </f:form> <!-- /form -->
        </div> <!-- ./container -->
</body>


<script>
 $(document).ready(function() {
	 $('select#subject_id').on('change',function(){
        var selectedsubject= $(this).children('option:selected').val();
        alert(selectedsubject);
	    $('#addtestform').submit(function(event) {
	        	event.preventDefault();
	        	ajaxPost(selectedsubject);
	        });
	   });
	
		function ajaxPost(selectedsubject) {

			// PREPARE FORM DATA
			var formData =  {
				
				subject_id: selectedsubject,
				testname : $("#testname").val(),
				total_marks : $("#total_marks").val(),
				passing_marks : $("#passing_marks").val(),
				instruction : $("#instruction").val(),
				
			} 

	        	$.ajax({
					type : "POST",
					contentType : "application/json",
					url : "addtest",
					data : JSON.stringify(formData),
					dataType : 'json',
					success : function(result) {
						if (result.status == "success") {
							//alert("success");
							$('#addtestform')[0].reset();
							$('#msg').html("Successfully Saved").css("color","green");
						//alert("Saved Succesfully");
						} else {
							$('#addtestform')[0].reset();
							$('#msg').html("Error While Saving");
						}
						console.log(result);
					},
					error : function(e) {
						$('#addtestform')[0].reset();
						$('#msg').html("Error While Saving").css("color","red");
					}
					
					
				});

			}

		});
     </script> 

</html>