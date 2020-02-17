<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page isELIgnored="false" %>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<f:form id="addquestionform" method="post" modelAttribute="quesObj">

<f:select path="subject_id" id="subject_id">
			<f:option value="0">----Select Subject--------</f:option>
			
 	 		<c:forEach items="${subjectList}" var="dOb">

 	 			<f:option value="${dOb.subjectId}"></f:option>

	 		</c:forEach>

		</f:select><br>

<f:input type="text" path="QuestionDesc" id="QuestionDesc" placeholder="Enter The Question"/>
<f:input type="text" path="optionA" id="optionA" placeholder="Option A"/>
<f:input type="text" path="optionB" id="optionB" placeholder="Option B"/>
<f:input type="text" path="optionC" id="optionC" placeholder="Option C"/>
<f:input type="text" path="optionD" id="optionD" placeholder="Option D"/>
<f:input type="text" path="correctAns" id="correctAns" placeholder="Correct Answer"/>
<input type="submit" value="Add">

</f:form>

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
				questionDesc : $("#QuestionDesc").val(),
				optionA : $("#optionA").val(),
				optionB : $("#optionB").val(),
				optionC : $("#optionC").val(),
				optionD : $("#optionD").val(),
				correctAns : $("#correctAns").val(),
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



