<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
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

<div class="container my-5" id="show">
       <div class="card-body text-center">
  </div>
    <div class="card" id="hide">
        <table class="table table-hover table table-bordered">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Subject Name</th>
                <th scope="col">Edit List </th> 
              </tr>
            </thead>
            <tbody id="tbody">
               <c:forEach items="${subjectsList}" var="subjectObj">
			<tr>
				<td>${subjectObj.sub_name}</td>
				<td>
				<a class="btn btn-sm btn-danger" href="${pageContext.request.contextPath}/deleteUser/${subjectObj.subject_id}.json"><i class="fas fa-trash-alt"></i>Delete</a></td>
			</tr>
		</c:forEach> 
            </tbody>
            
          </table>
    </div>
    <!-- Large modal -->
    </div>
   
</body>

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

</html>