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

<div class="card" id="questions" style="margin-top: 2%;margin-left: 20%;width:70%">
<table class="table table-hover table table-bordered">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Test Name</th>
                <th scope="col">Subject Name</th>
                <th scope="col">Total Marks</th>
                <th scope="col">Passing Marks</th>
                <th scope="col">Instruction</th>
                <th scope="col">Actions</th>
              </tr>
            </thead>
            <tbody id="tbody">
               <c:forEach items ="${testList}" var="testObj" >
			<tr>
				<td>${testObj.testname}</td>
				<td>${testObj.subjectObj.sub_name}</td>
				<td>${testObj.total_marks}</td>
				<td>${testObj.passing_marks}</td>
				<td>${testObj.instruction}</td>
				
				<td>
				<a class="btn btn-sm btn-danger" href="${pageContext.request.contextPath}/deleteTest/${testObj.test_id}.json"><i class="fas fa-trash-alt"></i>Delete</a></td>
			</tr>
		</c:forEach> 
            </tbody>
  </table>
  </div>

<script>

$(document).ready(function() {
    
    var deleteLink = $("a:contains('Delete')");
       
    $(deleteLink).click(function(event) {
           
        $.ajax({
            url: $(event.target).attr("href"),
            type: "DELETE",
                 
              beforeSend: function(xhr) {
                xhr.setRequestHeader("Accept", "application/json");
                xhr.setRequestHeader("Content-Type", "application/json");
              },
                 
              success: function(smartphone) {
                var respContent = "";
                var rowToDelete = $(event.target).closest("tr");
                     
                rowToDelete.remove();
              }
        });
   
        event.preventDefault();
    });
        
});   

</script>


</body>
</html>