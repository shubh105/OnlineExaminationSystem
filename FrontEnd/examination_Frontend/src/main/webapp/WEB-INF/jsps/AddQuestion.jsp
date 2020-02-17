
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page isELIgnored="false" %>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
     
<!DOCTYPE html>
<html>


<style>
   
   /* Style inputs with type="text", select elements and textareas */
input[type=text], select, textarea {
  width: 100%; /* Full width */
  padding: 12px; /* Some padding */ 
  border: 1px solid #ccc; /* Gray border */
  border-radius: 4px; /* Rounded borders */
  box-sizing: border-box; /* Make sure that padding and width stays in place */
  margin-top: 6px; /* Add a top margin */
  margin-bottom: 16px; /* Bottom margin */
  resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}

/* Style the submit button with a specific background color etc */
input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
  background-color: #45a049;
}

/* Add a background color and some padding around the form */
.container {
  border-radius: 5px;
  background-color: ligth;
  padding: 20px;
}
</style>

<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container" style="margin-left: 20%">
<f:form id="addquestionform" method="post" modelAttribute="quesObj">

 <label for="subject_id">Choose Subject</label>
<f:select path="subject_id" id="subject_id">
			<f:option value="0">----Select Subject--------</f:option>
			
 	 		<c:forEach items="${subjectsList}" var="dOb">

 	 			<f:option value="${dOb.subject_id}">${dOb.sub_name}</f:option>

	 		</c:forEach>

		</f:select><br>
		
<label for="question">Question</label>
<f:textarea id="question" path="question" placeholder="Enter Question here!!" style="height:200px"></f:textarea>

<label for="optionA">Option A</label>
<f:input type="text" path="optionA" id="optionA" placeholder="Enter Option A"/>

<label for="optionB">Option B</label>
<f:input type="text" path="optionB" id="optionB" placeholder="Enter Option B"/>

<label for="optionC">Option C</label>
<f:input type="text" path="optionC" id="optionC" placeholder="Enter Option C"/>

<label for="optionD">Option D</label>
<f:input type="text" path="optionD" id="optionD" placeholder="Enter Option D"/>

<label for="correctAns">Correct Answer</label>
<f:input type="text" path="correct_ans" id="correct_ans" placeholder="Write Correct Answer"/>

<label for="correctAns">Marks</label>
<f:input type="number" path="marks" id="marks"/>

<input type="submit" value="Add"> 

</f:form>
<br>

<div id="msg" style="display: inline-block; vertical-align: top; margin-left: 2%;">   

</div>
<br>
<br>
</div>



</body>


<script>
 $(document).ready(function() {
	 $('select#subject_id').on('change',function(){
        var selectedsubject= $(this).children('option:selected').val();
        alert(selectedsubject);
	    $('#addquestionform').submit(function(event) {
	        	event.preventDefault();
	        	ajaxPost(selectedsubject);
	        });
	   });
	
		function ajaxPost(selectedsubject) {

			// PREPARE FORM DATA
			var formData =  {
				
				subject_id: selectedsubject,
				question : $("textarea#question").val(),
				optionA : $("#optionA").val(),
				optionB : $("#optionB").val(),
				optionC : $("#optionC").val(),
				optionD : $("#optionD").val(),
				correct_ans : $("#correct_ans").val(),
				marks : $("#marks").val(),
			} 

	        	$.ajax({
					type : "POST",
					contentType : "application/json",
					url : "addquestion",
					data : JSON.stringify(formData),
					dataType : 'json',
					success : function(result) {
						if (result.status == "success") {
							alert("success");
							$('#addquestionform')[0].reset();
							$('#msg').html("Successfully Saved").css("color","green");
						//alert("Saved Succesfully");
						} else {
							$('#addquestionform')[0].reset();
							$('#msg').html("Error While Saving");
						}
						console.log(result);
					},
					error : function(e) {
						$('#addquestionform')[0].reset();
						$('#msg').html("Error While Saving").css("color","red");
					}
					
					
				});

			}

		});
     </script> 
</html>
