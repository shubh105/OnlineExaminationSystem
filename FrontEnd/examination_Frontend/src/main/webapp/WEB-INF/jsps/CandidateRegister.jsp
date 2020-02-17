<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page isELIgnored="false" %>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
    
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
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<main>
<div class="container my-5">
      
    <div class="card" style="margin-top: 10%;">
        <button id="add__new__list" type="button" class="btn btn-success position-absolute" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="fas fa-plus"></i> Add a new List</button>
        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">Roll Number</th>
                <th scope="col">Candidate Name</th>
                <th scope="col">Password</th>
                <th scope="col">Email</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
             <c:forEach items ="${list}" var="canObj" >
			<tr>
				<td>${canObj.roll_no}</td>
				<td>${canObj.first_name} ${canObj.last_name}</td>
				<td>${canObj.password}</td>
				<td>${canObj.candidate_email}</td>
				
				<td>
				<a class="btn btn-sm btn-danger" href="${pageContext.request.contextPath}/deleteTest/${testObj.test_id}.json"><i class="fas fa-trash-alt"></i>Delete</a></td>
			</tr>
		</c:forEach> 
            
            </tbody>
          </table>
    </div>
    <!-- Large modal -->


<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
          <div class="card-body text-center">
            <h4 class="card-title">Add New Candidate</h4>
          </div>
            <div class=" card col-8 offset-2 my-2 p-3">
          <f:form  role="form" id="addcandidateform" method="post" modelAttribute="canObj">
            <div class="form-group">
              <label for="listname">Roll Number</label>
              <f:input type="text" path="roll_no" id="roll_no" placeholder="Roll Number" class="form-control" />
            </div>
            <div class="form-group">
              <label for="datepicker">First Name</label>
              <f:input  type="text" class="form-control" path="first_name" id="first_name" placeholder="Pick up a date"/>
            </div>
            
            <div class="form-group">
              <label for="datepicker">Last Name</label>
              <f:input  type="text" class="form-control" path="last_name" id="last_name" placeholder="Enter last_name"/>
            </div>
            
            <div class="form-group">
              <label for="datepicker">Password</label>
              <f:input  type="password" class="form-control" path="password" id="password" placeholder="Create Password"/>
            </div>
            
            <div class="form-group">
              <label for="datepicker">Email</label>
              <f:input  type="email" class="form-control" path="candidate_email" id="candidate_email" placeholder="Enter Email"/>
            </div>
            
           <div class="form-group text-center">
             <button id="btnsubmit" type="submit" class="btn btn-block btn-primary">Register</button>
             <button type="button" class="btn btn-block btn-danger" data-dismiss="modal">Close</button>
          </div>
        </f:form>
    </div>
    </div>
  </div>
  
</div>
</div>
 
</main>


<script>
 $(document).ready(function() {
	    $('#addcandidateform').submit(function(event) {
	        	event.preventDefault();
	        	ajaxPost();
	        });
	   });
	
		function ajaxPost() {

			// PREPARE FORM DATA
			var formData =  {
				
				first_name : $("#first_name").val(),
				last_name : $("#last_name").val(),
				candidate_email : $("#candidate_email").val(),
				password : $("#password").val(),
				roll_no : $("#roll_no").val(),
			} 

	        	$.ajax({
					type : "POST",
					contentType : "application/json",
					url : "addcandidate",
					data : JSON.stringify(formData),
					dataType : 'json',
					success : function(data) {
						$("tbody").empty();
						 if(data.length!=0){
							    console.log(data);
							    data.forEach(function(e, index) {
							    	//console.log('Hello I m in for Each..');
							    	var row = "<tr><td>" + e.roll_no + "</td><td>";
							    	row +=e.first_name + e.last_name + "</td><td>";
									row += e.password + "</td><td>";
									row +=e.candidate_email + "</td><td>";
									row += "<a href='#' class='btn btn-sm btn-danger'>Delete</td></tr>";
									$("table").append(row);
							    });
									$('#addcandidateform')[0].reset();
									$('#msg').html("Successfully Saved").css("color","green");
								    alert("Saved Succesfully");
								    $('#modalid').hide();
								}
								else if(result.status == "error"){
									$('#addcandidateform')[0].reset();
									$('#msg').html("Subject Already Exists").css("color","Red");
								}
						      
							  },
						
					error : function(e) {
						$('#addcandidateform')[0].reset();
						$('#msg').html("Error While Saving").css("color","red");
					}
					
					
				});

			}
     </script> 


</body>
</html>