<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page isELIgnored="false" %>
    
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
    
<!DOCTYPE html>
<html>
<style>

.select-pane {
    display:none;
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
<div style="width: 50%;margin-top: 2%;margin-left: 25%">
<div class="container">
<form id="showquestionform">
  <div class="form-group">
        <label for="subject_id" class="col-lg-2 control-label">Choose Subject:</label>
        <div class="col-sm">
 <select  class="form-control" name="subject_id" id="subject_id" >
			<option value="0">----Select Project--------</option>
 	 		<c:forEach items="${subjectsList}" var="dOb">

 	 			<option value="${dOb.subject_id}">${dOb.sub_name}</option>

	 		</c:forEach>

		</select>
		</div>
		</div>
		<br>
		
</form>
</div>
<div class="card" id="questions" style="margin-top: 2%">
<table class="table table-hover table table-bordered">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Subject Name</th>
                <th scope="col">Option A</th> 
                <th scope="col">Option B</th> 
                <th scope="col">Option C</th> 
                <th scope="col">Option D</th>
                <th scope="col">Correct Answer</th>
                <th scope="col">Marks</th>
                <th scope="col">Actions</th>
              </tr>
            </thead>
            <tbody>
            
            </tbody>  
  </table>
  </div>
</div>

<script>
	 $('select#subject_id').on('change',function(){
		 $("tbody").empty();
		 var subjectId=this.value;
		alert(subjectId);
		 
		 $.get("showquestion?subjectId="+subjectId, function(data, status){
			    
			    console.log(data.length);
			    if(data.length!=0){
			    //console.log('I m in if');
			    data.forEach(function(e, index) {
			    	//console.log('Hello I m in for Each..');
			    	var row = "<tr><td>" + e.question + "</td><td>";
			    	row +=e.optionA + "</td><td>";
					row += e.optionB + "</td><td>";
					row +=e.optionC + "</td><td>";
					row += e.optionD + "</td><td>";
					row += e.correct_ans + "</td><td>";
					row += e.marks + "</td><td>";
					row += "<a href='#' class='btn btn-sm btn-danger'>Delete</td></tr>";
					$("table").append(row);
			    });
			    }
			    
		 
	 });
 });
	 </script>


</body>
</html>