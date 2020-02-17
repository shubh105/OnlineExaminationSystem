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
<div class="container" style="width:75%">
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
</div>
<div class="container" style="width:75%">
  <div class="form-group">
        <label for="subject_id" class="col-lg-2 control-label">Select Test:</label>
        <div class="col-sm">
 <select  class="form-control" name="test_id" id="test_id" >
			<option value="0">----Select Project--------</option>
 	 		<c:forEach items="${testList}" var="dOb">

 	 			<option value="${dOb.test_id}">${dOb.testname}</option>

	 		</c:forEach>

		</select>
		</div>
		</div>
		<br>
				
		
		
<div id="Add">
 
 <input type="submit" id="btnsubmit" value="Add Question">
 
 </div>
		
<div class="card" id="questions" style="margin-top: 2%">
<table class="table table-hover table table-bordered">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Select</th>
                <th scope="col">Question</th>
                <th scope="col">Option A</th> 
                <th scope="col">Option B</th> 
                <th scope="col">Option C</th> 
                <th scope="col">Option D</th>
                <th scope="col">Correct Answer</th>
                <th scope="col">Assigned Marks</th>
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
			    console.log('I m in if');
			    data.forEach(function(e, index) {
			    	//console.log('Hello I m in for Each..');
			    	var row = "<tr><td>" + "<input type='checkbox' class='case' id='select'>" + "</td><td name='question' class='question'>";
			    	row	+= e.question + "</td><td name='optionA'>";
			    	row +=e.optionA + "</td><td name='optionB'>";
					row += e.optionB + "</td><td name='optionC'>";
					row +=e.optionC + "</td><td name='optionD'>";
					row += e.optionD + "</td><td name='correct_ans'>";
					row += e.correct_ans + "</td><td>";
					row +=e.marks + "</td></tr>";
					$("tbody").append(row); 
					});
			    }
			     //var a_marks= $("#a_marks").val;
	    		 //var n_marks= $("#n_marks").val;
			    
			    $('select#test_id').on('change',function(){
				     var testId=this.value;
				     alert(testId);
		           
				     
			    
			    $(document).ready(function() {
			    	//debugger;
			    	
			    	$('.case').on('click', function() {
			    		var array=[];   
			    		 var obj = {};
			    	    if ($(this).prop('checked')) {
			    	        columns = $(this).closest('tr').find('td:not(:first-child)');
			    	        //alert(columns);
				    	   $(columns).each(function(index) {
				    		  // alert("column" + (index+1) + "has value" + $(this).text());
				    		   array.push($(this).text());
				    		   index++;
				    	   });
				    	  
			    	    }
			    	    console.log(array);
			    	    
			    	    
			    	    //alert(subjectId);
			    	   
			    	    alert(array);
			    	  
			    
				    	
				      $("#btnsubmit").on("click",function(){				    	  
				    	  //alert(array[0]);
				    	/* var question=[];
				    	var optionA= [];
				    	var optionB= [];
				    	var optionC= [];
				    	var optionD= [];
				    	var correctAns= [];
				    	//for(i=0;i<array[0].length;i++){
				    		question.push(array[0]);
				    		optionA.push(array[1]);
				    		optionB.push(array[2]);
				    		optionC.push(array[3]);
				    		optionD.push(array[4]);
				    		correctAns.push(array[5]);
				    	//}
				    	 alert(question);
				    	 alert(optionA); */
				   
				    	  
				    	  $.ajax({
				    		   url:"savetestquestion",
				    		   method:"POST",
				    		   contentType : "application/json",
				    		   data:JSON.stringify({question :array[0],optionA : array[1],optionB : array[2],optionC : array[3],optionD : array[4],correctAns : array[5],marks : array[6],testId : testId}),
				    		   success:function(data){
				    	      alert(data);
				    		   }
				    		   }); 
				    

			    	  });
			    	
			    	});
					
		 
	 });
			    });
		 
	 });
	 });


	 
</script>
<!-- 
<script type="text/javascript">

 $(document).ready(function(){
	
 });


</script> -->



</body>
</html>