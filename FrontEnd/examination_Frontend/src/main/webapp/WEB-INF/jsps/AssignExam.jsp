<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>

<div class="container">
<f:form id ="assigncandidate" modelAttribute="assignObj" method="post">


  <div class="form-group">
        <label for="subject_id" class="col-lg-2 control-label">Test:</label>
        <div class="col-sm">
		<f:select  class="form-control" path="test_id" id="test_id">
		<f:option value="0">----Select Test--------</f:option>
		<core:forEach items="${testList}" var="dOb">
			
 	 			<f:option value="${dOb.test_id}">${dOb.testname}</f:option>

	 		</core:forEach>

		</f:select><br>
</div>
  </div>




  <div class="form-group">
		<label>Scheduled Time :</label>
<div class="col-sm">
		<f:select class="form-control" path="escheduler_id" id="scheduledexam" required="true">
			<f:option value="0">----Scheduled Exams--------</f:option>
		</f:select ><br>
		<div id="msg"></div>
		</div>
		</div>
	
		
<div class="card" id="questions">
<table class="table table-hover table table-bordered">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Select</th>
                <th scope="col">Roll Number</th>
                <th scope="col">Candidate Name</th>
                <th scope="col">Password</th>
                <th scope="col">Email</th>
              </tr>
            </thead>
         <tbody>
            <core:forEach items ="${candidatelist}" var="canObj" >
			<tr>
			    <td><input type="checkbox" class="case"></td>
				<td>${canObj.roll_no}</td>
				<td>${canObj.first_name} ${canObj.last_name}</td>
				<td>${canObj.password}</td>
				<td>${canObj.candidate_email}</td>
			</tr>
		   </core:forEach> 
       </tbody>  
  </table>
  </div>


		<div class="form-group">

		    <button type="submit" class="btn btn-primary">Submit</button>

		 </div>

	</f:form>

	</div>
	<script type="text/javascript">
		$('select#test_id').on('change', function() {
			$("#scheduledexam").empty();
			
			
			$("div#msg").html("");
			var testId=this.value;
			//console.log('test Id : '+testId);
			$.get("getExamScheduleList?testId="+testId, function(data, status){
			    
			    console.log(data.length);
			    if(data.length!=0){
			    console.log('I m in if');
			    data.forEach(function(e, index) {
			    	//console.log('Hello I m in for Each..');
			        //console.log(el.start_date);
			    var startmonth;
			    var endmonth;
			    var startdate;
			    var enddate;
			    var starthours;
			    var endhours;
			    var startmin;
			    var endmin;
			    	if(e.start_date[1]=='1'){
			    		startmonth="Jan";
			    	}else if(e.start_date[1]=='2'){
			    		startmonth="feb";
			    	}else if(e.start_date[1]=='3'){
			    		startmonth="March";
			    	}else if(e.start_date[1]=='4'){
			    		startmonth="April";
			    	}else if(e.start_date[1]== 5){
			    		startmonth="May";
			    	}else if(e.start_date[1]=='6'){
			    		startmonth="June";
			    	}else if(e.start_date[1]=='7'){
			    		startmonth="July";
			    	}else if(e.start_date[1]=='8'){
			    		startmonth="August";
			    	}else if(e.start_date[1]=='9'){
			    		startmonth="Sept";
			    	}else if(e.start_date[1]=='10'){
			    		startmonth="Oct";
			    	}else if(e.start_date[1]=='11'){
			    		startmonth="Nov";
			    	}else {
			    		startmonth="Dec";
			    	}
			    	
			    	
			    	if(e.end_date[1]=='1'){
			    		endmonth="Jan";
			    	}else if( e.end_date[1]=='2'){
			    		endmonth="feb";
			    	}else if(e.end_date[1]=='3'){
			    		endmonth="March";
			    	}else if(e.end_date[1]=='4'){
			    		endmonth="April";
			    	}else if(e.end_date[1]== 5){
			    		endmonth="May";
			    	}else if(e.end_date[1]=='6'){
			    		endmonth="June";
			    	}else if(e.end_date[1]=='7'){
			    		endmonth="July";
			    	}else if(e.end_date[1]=='8'){
			    		endmonth="August";
			    	}else if(e.end_date[1]=='9'){
			    		endmonth="Sept";
			    	}else if(e.end_date[1]=='10'){
			    		endmonth="Oct";
			    	}else if(e.end_date[1]=='11'){
			    		endmonth="Nov";
			    	}else {
			    		endmonth="Dec";
			    	}
			    	
			    	if(e.start_date[2]=='1'){
			    		startdate='01';
			    	}else if(e.start_date[2]=='2'){
			    		startdate='02';
			    	}else if(e.start_date[2]=='3'){
			    		startdate='03';
			    	}else if(e.start_date[2]=='4'){
			    		startdate='04';
			    	}else if(e.start_date[2]=='5'){
			    		dstartate='05';
			    	}else if(e.start_date[2]=='6'){
			    		startdate='06';
			    	}else if(e.start_date[2]=='7'){
			    		startdate='07';
			    	}else if(e.start_date[2]=='8'){
			    		startdate='08';
			    	}else if(e.start_date[2]=='9'){
			    		startdate='09';
			    	}
			    	
			    	
			    	if(e.end_date[2]=='1'){
			    		enddate='01';
			    	}else if(e.end_date[2]=='2'){
			    		enddate='02';
			    	}else if(e.end_date[2]=='3'){
			    		enddate='03';
			    	}else if(e.end_date[2]=='4'){
			    		enddate='04';
			    	}else if(e.end_date[2]=='5'){
			    		enddate='05';
			    	}else if(e.end_date[2]=='6'){
			    		enddate='06';
			    	}else if(e.end_date[2]=='7'){
			    		enddate='07';
			    	}else if(e.end_date[2]=='8'){
			    		enddate='08';
			    	}else if(e.end_date[2]=='9'){
			    		enddate='09';
			    	}
			    	
			    	if(e.start_date[2] >= 10 && e.start_date[2]<= 31){
			    		startdate=e.start_date[2];
			    	}

			    	if(e.end_date[2] >=10 && e.end_date[2]<=31){
			    		enddate=e.end_date[2];
			    	}
			    	 
			    	 if(e.start_time[0]=='0'){
				    		starthours='00';
				    }else if(e.start_time[0]=='1'){
				    	starthours='01';
			    	} else if(e.start_time[0]=='2'){
			    		hours='02';
			    	}else if(e.start_time[0]=='3'){
			    		starthours='03';
			    	}else if(e.start_time[0]=='4'){
			    		starthours='04';
			    	}else if(e.start_time[0]=='5'){
			    		starthours='05';
			    	}else if(e.start_time[0]=='6'){
			    		starthours='06';
			    	}else if(e.start_time[0]=='7'){
			    		starthours='07';
			    	}else if(e.start_time[0]=='8'){
			    		starthours='08';
			    	}else if(e.start_time[0]=='9'){
			    		starthours='09';
			    	}
			    	 
			    	 
			    	 if(e.end_time[0]=='0'){
				    		endhours='00';
				    }else if(e.end_time[0]=='1'){
				    	endhours='01';
			    	} else if(e.end_time[0]=='2'){
			    		endhours='02';
			    	}else if(e.end_time[0]=='3'){
			    		endhours='03';
			    	}else if(e.end_time[0]=='4'){
			    		endhours='04';
			    	}else if(e.end_time[0]=='5'){
			    		endhours='05';
			    	}else if(e.end_time[0]=='6'){
			    		endhours='06';
			    	}else if(e.end_time[0]=='7'){
			    		endhours='07';
			    	}else if(e.end_time[0]=='8'){
			    		endhours='08';
			    	}else if(e.end_time[0]=='9'){
			    		endhours='09';
			    	}
			    	 
			    	 
			    	 if(e.start_time[0]=='10'|| e.start_time[0]=='11'||e.start_time[0]== '12'||e.start_time[0]== '13'||e.start_time[0]== '14'||e.start_time[0]== '15'||e.start_time[0]== '16'||e.start_time[0]== '17'||e.start_time[0]=='18'||e.start_time[0]== '19'|| e.start_time[0]=='20'||e.start_time[0]== '21'|| e.start_time[0]=='22'|| e.start_time[0]=='23'||e.start_time[0]== '24'){
			    		starthours=e.start_time[0];
			    	} 
			    	
			    	 if(e.end_time[0]=='10'||e.end_time[0]=='11'||e.end_time[0]== '12'||e.end_time[0]== '13'||e.end_time[0]== '14'||e.end_time[0]== '15'||e.end_time[0]== '16'||e.end_time[0]== '17'||e.end_time[0]=='18'||e.end_time[0]== '19'|| e.end_time[0]=='20'||e.end_time[0]== '21'|| e.end_time[0]=='22'|| e.end_time[0]=='23'||e.end_time[0]== '24'){
			    		endhours=e.end_time[0];
			    	} 
			    	
			    	 if(e.start_time[1]=='0'){
			    		startmin='00';
			    	}else if(e.start_time[1]=='1'){
			    		startmin='01';
			    	} else if(e.start_time[1]=='2'){
			    		startmin='02';
			    	}else if(e.start_time[1]=='3'){
			    		startmin='03';
			    	}else if(e.start_time[1]=='4'){
			    		startmin='04';
			    	}else if(e.start_time[1]=='5'){
			    		startmin='05';
			    	}else if(e.start_time[1]=='6'){
			    		startmin='06';
			    	}else if(e.start_time[1]=='7'){
			    		startmin='07';
			    	}else if(e.start_time[1]=='8'){
			    		startmin='08';
			    	}else if(e.start_time[1]=='9'){
			    		startmin='09';
			    	}
			    	 
			    	 if(e.end_time[1]=='0'){
				    		endmin='00';
				    	}else if(e.end_time[1]=='1'){
				    		endmin='01';
				    	} else if(e.end_time[1]=='2'){
				    		endmin='02';
				    	}else if(e.end_time[1]=='3'){
				    		endmin='03';
				    	}else if(e.end_time[1]=='4'){
				    		endmin='04';
				    	}else if(e.end_time[1]=='5'){
				    		endmin='05';
				    	}else if(e.end_time[1]=='6'){
				    		endmin='06';
				    	}else if(e.end_time[1]=='7'){
				    		endmin='07';
				    	}else if(e.end_time[1]=='8'){
				    		endmin='08';
				    	}else if(e.end_time[1]=='9'){
				    		endmin='09';
				    	}
			    	 
			    	
			    	 if(e.start_time[1] >= 10 && e.start_time[1] <= 60){
			    		startmin=e.start_time[1];
			    	} 
			    	
			    	if(e.end_time[1] >= 10 && e.end_time[1] <= 60){
			    		endmin=e.end_time[1];
			    	} 
			        
			        
			        var o = new Option(e.start_date, e.escheduler_id);
		                 /// jquerify the DOM object 'o' so we can use the html method
		                 $(o).html(startdate + "-" + startmonth + "-"+ e.start_date[0] + "  " + starthours+":"+startmin + "  " + " To " + "  " + enddate +"-"+endmonth +"-" + e.end_date[0] + " "+endhours+":"+endmin);
		                 $("#scheduledexam").append(o);      
		                
			      });
			    }
			    else {
			    	console.log('I m in else');
			    	$("div#msg").html("No Schedule exist");
			    	
			    }
			   
			  });
			
		});
	</script>
	
	<script>
 $(document).ready(function() {
	 $('select#test_id').on('change',function(){
        var selectedtest= $(this).children('option:selected').val();
        alert(selectedtest);
        
        $('select#scheduledexam').on('change',function(){
            var selectedschedule= $(this).children('option:selected').val();
            alert(selectedschedule);
            
			    var email;
			    
			    $('.case').on('change', function() {
				    $('.case').not(this).prop('checked', false); 
				    if ($(this).prop('checked')) {
		    	        columns = $(this).closest('tr').find('td:eq(4)');
		    	        $(columns).each(function() {
		    	        	alert($(this).text());
		    	        	email=$(this).text();
		    	        }); 	
				    }
			       
			    });     
        
	    $('#assigncandidate').submit(function(event) {
	        	event.preventDefault();
	        	//alert(selectedtest);
	        	ajaxPost(selectedtest,email,selectedschedule);
	        });
	  
        });

 });
	 function ajaxPost(selectedtest,email,selectedschedule) {

	        	$.ajax({
					type : "POST",
					contentType : "application/json",
					url : "assigncandidate",
					data : JSON.stringify({selectedtest : selectedtest , selectedschedule : selectedschedule , email :email }),
					dataType : 'json',
					success : function(result) {
						if (result.status == "success") {
							alert("success");
							$('#assigncandidate')[0].reset();
							$('#msg').html("Successfully Saved").css("color","green");
						//alert("Saved Succesfully");
						} else {
							$('#assigncandidate')[0].reset();
							$('#msg').html("Error While Saving");
						}
						console.log(result);
					},
					error : function(e) {
						$('#assigncandidate')[0].reset();
						$('#msg').html("Error While Saving").css("color","red");
					}
					
					
				});

			}
});
	 
 </script>
	
	
</body>
</html>