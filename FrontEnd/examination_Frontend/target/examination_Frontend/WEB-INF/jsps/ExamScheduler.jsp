<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page isELIgnored="false" %>
    
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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

<%-- <div style="width: 50%;margin-top: 2%;margin-left: 25%">
<div class="container">
<form id="showquestionform">
  <div class="form-group">
        <label for="test_id" class="col-lg-2 control-label">Choose Subject:</label>
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
		
</form>
</div>
</div> --%>



<main>

<div class="container my-5">

       <div class="card-body text-center" style="width: 50% ">
       <form id='testselect'>
       <label for="test_id" style="font-size: medium;font-style: italic;">Choose Test:</label>
    <select  class="form-control" name="test_id" id="testid" >
			<option value="0">----Select Project--------</option>
 	 		<c:forEach items="${testList}" var="dOb">

 	 			<option value="${dOb.test_id}">${dOb.testname}</option>

	 		</c:forEach>

		</select>
</form>
  </div>
 
  <br>
  <br>
  
  
    <div class="card">
    
 <div class="card-body text-center" style="width: 15% ">
 <form>
  <select class="form-control" id="action">
     <option value="0">Action</option>
	 <option value="active">Activate </option>
 	 <option value="inactive">InActivate</option>
  </select>
  </form>
  </div>
    
        <button id="add__new__list" type="button" class="btn btn-success position-absolute" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="fas fa-plus"></i> Add a new List</button>
        <table class="table table-hover">
            <thead>
              <tr>
                 <th scope="col">Select</th>
                <th scope="col">Test Name</th>
                <th scope="col">Start Date And Time</th>
                <th scope="col">End Date and Time</th>
                <th scope="col">Exam Status</th>
                <th scope="col">Edit List</th>
              </tr>
            </thead>
            <tbody>
              
            </tbody>
          </table>
    </div>
    <!-- Large modal -->


<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
          <div class="card-body text-center">
            <h4 class="card-title">Schedule Test</h4>
          </div>
            <div class=" card col-8 offset-2 my-2 p-3">
            
          <f:form id="addeschudelerform" method="post" modelAttribute="eschedulerObj" >
          
             <div class="form-group">
              <label for="testid">Choose The Test</label>
              <f:select class="form-control" path="test_id" id="test_id">
			<f:option value="0">----Select Test--------</f:option>
			
 	 		<c:forEach items="${testList}" var="dOb">

 	 			<f:option value="${dOb.test_id}">${dOb.testname}</f:option>

	 		</c:forEach>

		</f:select><br>
		
            </div>
          
            <div class="form-group">
              <label for="listname">Start Date</label>
              <f:input class="form-control" type="date" path="start_date" id="start_date" placeholder="Enter your listname"/>
            </div>
            
            <div class="form-group">
              <label for="datepicker">End Date</label>
              <f:input class="form-control"  type="date" path="end_date" id="end_date" placeholder="Pick up a date"/>
            </div>
            
            <div class="form-group">
              <label for="time">Start Time</label>
              <f:input class="form-control" path="start_time" type="time" value="13:45:00" id="start_time"/>
            </div>
            
            <div class="form-group">
              <label for="time">Start Time</label>
               <f:input class="form-control" path="end_time" type="time" value="13:45:00" id="end_time"/>
            </div>
            
            
           <div class="form-group text-center">
             <button type="submit" class="btn btn-block btn-primary">Schedule</button>
          </div>
          
        </f:form>
    </div>
    </div>
  </div>
</div>
</div>
</main>
<!---->

</body>



<script>
	 $('select#testid').on('change',function(){
		 $("tbody").empty();
		 var test_id=this.value;
		alert(test_id);
		 
		 $.get("showscheduledtest?test_id="+test_id, function(data, status){
			    
			    console.log(data);
			    if(data.length!=0){
			    console.log('I m in if');
			    var month;
			    var startdate;
			    var enddate;
			    var starthours;
			    var endhours;
			    var startmin;
			    var endmin;
			    data.forEach(function(e, index) {
			    	if(e.start_date[1]=='1'|| e.end_date[1]=='1'){
			    		month="Jan";
			    	}else if(e.start_date[1]=='2'|| e.end_date[1]=='2'){
			    		month="feb";
			    	}else if(e.start_date[1]=='3'|| e.end_date[1]=='3'){
			    		month="March";
			    	}else if(e.start_date[1]=='4'|| e.end_date[1]=='4'){
			    		month="April";
			    	}else if(e.start_date[1]== 5|| e.end_date[1]== 5){
			    		month="May";
			    	}else if(e.start_date[1]=='6'|| e.end_date[1]=='6'){
			    		month="June";
			    	}else if(e.start_date[1]=='7'|| e.end_date[1]=='7'){
			    		month="July";
			    	}else if(e.start_date[1]=='8'|| e.end_date[1]=='8'){
			    		month="August";
			    	}else if(e.start_date[1]=='9'|| e.end_date[1]=='9'){
			    		month="Sept";
			    	}else if(e.start_date[1]=='10'|| e.end_date[1]=='10'){
			    		month="Oct";
			    	}else if(e.start_date[1]=='11'|| e.end_date[1]=='11'){
			    		month="Nov";
			    	}else {
			    		month="Dec";
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
			    	 
			    	 
			    	    
			    	//console.log('Hello I m in for Each..');
			    	var row = "<tr><td>" + "<form><input type='checkbox' class='case' id='select'></form>"+ "</td><td class='eId'>";
			    	row += e.escheduler_id + "</td><td>";
			    	row += e.testObj.testname + "</td><td>";
			    	row += startdate+"-"+month+"-"+e.start_date[0]+" "+starthours+":"+startmin +"</td><td>";
			    	row += enddate+"-"+month+"-"+e.end_date[0]+" "+endhours+":"+endmin+"</td><td>";
					row += e.exam_status+ "</td><td>";
					row += "<a href='#' class='btn btn-sm btn-danger'><i class='fas fa-trash-alt'></i> Delete</td></tr>";
					$("table").append(row);
				    	$('.eId').hide();  
			    });
			    }
			    
			    $(document).ready(function(){
			    var id;
			   /*  $('.case').on('click', function() {
			    	
			    	alert("checked");
			    	if ($(this).prop('checked')) {
		    	        columns = $(this).closest('tr').find('td:eq(1)');
		    	        $(columns).each(function(index) {
		    	        	//alert($(this).text());
		    	        	array.push($(this).text());
		    	        });
			    	}
			    	
			    }); */
			    
			    $('.case').on('change', function() {
				    $('.case').not(this).prop('checked', false); 
				    if ($(this).prop('checked')) {
		    	        columns = $(this).closest('tr').find('td:eq(1)');
		    	        $(columns).each(function() {
		    	        	alert($(this).text());
		    	        	id=$(this).text();
		    	        }); 	
				    }
			       
			    });   
			    
			    //$('form')[0].reset();
			    
			   $('#action').on('change',function(){
			    	var value;
			    	if(this.value != 0){
			    		value=this.value; 
			    	}
			    	//alert(array + value);
			    	//array.push(value);
			    	//alert(array);
			    
			    $.ajax({
		    		   url:"changestatus",
		    		   method:"PUT",
		    		   contentType : "application/json",
		    		   data:JSON.stringify({status : value,id : id}),
		    		   success:function(data){
		    			   if(data.length!=0) {
		    				   
		    				   $('tbody').empty();
		    				   //$('#testselect')[0].reset();
		    				    
		    				    //console.log('I m in if');
		    				    var month;
		    				    var startdate;
		    				    var enddate;
		    				    var starthours;
		    				    var endhours;
		    				    var startmin;
		    				    var endmin;
		    				    data.forEach(function(e, index) {
		    				    	if(e.start_date[1]=='1'|| e.end_date[1]=='1'){
		    				    		month="Jan";
		    				    	}else if(e.start_date[1]=='2'|| e.end_date[1]=='2'){
		    				    		month="feb";
		    				    	}else if(e.start_date[1]=='3'|| e.end_date[1]=='3'){
		    				    		month="March";
		    				    	}else if(e.start_date[1]=='4'|| e.end_date[1]=='4'){
		    				    		month="April";
		    				    	}else if(e.start_date[1]== '5'|| e.end_date[1]== '5'){
		    				    		month="May";
		    				    	}else if(e.start_date[1]=='6'|| e.end_date[1]=='6'){
		    				    		month="June";
		    				    	}else if(e.start_date[1]=='7'|| e.end_date[1]=='7'){
		    				    		month="July";
		    				    	}else if(e.start_date[1]=='8'|| e.end_date[1]=='8'){
		    				    		month="August";
		    				    	}else if(e.start_date[1]=='9'|| e.end_date[1]=='9'){
		    				    		month="Sept";
		    				    	}else if(e.start_date[1]=='10'|| e.end_date[1]=='10'){
		    				    		month="Oct";
		    				    	}else if(e.start_date[1]=='11'|| e.end_date[1]=='11'){
		    				    		month="Nov";
		    				    	}else {
		    				    		month="Dec";
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
		    			 
		    				 var row = "<tr><td>" + "<form id='tableform'><input type='checkbox' class='case' id='select'></form>"+ "</td><td class='eId'>";
		 			    	row += e.escheduler_id + "</td><td>";
		 			    	row += e.testObj.testname + "</td><td>";
		 			    	row += startdate+"-"+month+"-"+e.start_date[0]+" "+starthours+":"+startmin +"</td><td>";
		 			    	row += enddate+"-"+month+"-"+e.end_date[0]+" "+endhours+":"+endmin+"</td><td>";
		 					row += e.exam_status+ "</td><td>";
		 					row += "<a href='#' class='btn btn-sm btn-danger'><i class='fas fa-trash-alt'></i> Delete</td></tr>";
		 					$("table").append(row);
		 				    	$('.eId').hide(); 
		 		         });
                      }
		    			   
		          }
		    			   //$('form')[0].reset();
		    			  /*  $(document).ready(function(){
		    				    var id;
		    				   // $('#action').reset();
		    				    $('.case').on('change', function() {
		    					    $('.case').not(this).prop('checked', false); 
		    					    if ($(this).prop('checked')) {
		    			    	        columns = $(this).closest('tr').find('td:eq(1)');
		    			    	        $(columns).each(function() {
		    			    	        	alert($(this).text());
		    			    	        	id=$(this).text();
		    			    	        }); 	
		    					    }
		    				  
		    				    });   
		    			   }); */
		    				    //setInterval('location.reload()', 5000);    
		    		
			    });
			    
		   });
	
			    
	      });
      });
});
	 
</script>


<script>
 $(document).ready(function() {
	 $('select#test_id').on('change',function(){
        var selectedtest= $(this).children('option:selected').val();
        alert(selectedtest);
	    $('#addeschudelerform').submit(function(event) {
	        	event.preventDefault();
	        	ajaxPost(selectedtest);
	        });
	   });
	
		function ajaxPost(selectedtest) {

			// PREPARE FORM DATA
			var formData =  {
				
				test_id : selectedtest,
			    start_date : $("#start_date").val(),
				end_date : $("#end_date").val(),
				start_time : $("#start_time").val(),
				end_time : $("#end_time").val(),
			} 

	        	$.ajax({
					type : "POST",
					contentType : "application/json",
					url : "addexamscheduler",
					data : JSON.stringify(formData),
					dataType : 'json',
					success : function(result) {
						if (result.status == "success") {
							alert("success");
							$('#addeschudelerform')[0].reset();
							$('#msg').html("Successfully Saved").css("color","green");
						//alert("Saved Succesfully");
						} else {
							$('#addeschudelerform')[0].reset();
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

 </body>
</html>