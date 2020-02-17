<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
   
   <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<style>

.margin-top-20{
  margin-top: 20px;
}
body{
  background:url('http://www.wallpaperup.com/uploads/wallpapers/2012/08/30/12087/3574f899daef41d2f145eba13ff7840f.jpg');
  background-size:100% 100%;
  background-attachment: fixed; 
  background-repeat:no-repeat;
  font-family: 'Open Sans', sans-serif;
  padding-bottom: 40px;
}
.auth h1{
  color:#fff!important;
  font-weight:300;
  font-family: 'Open Sans', sans-serif;
}
.auth h1 span{
  font-size:21px;
  display:block;
  padding-top: 20px;
}
.auth .auth-box legend{
  color:#fff;
  border:none;
  font-weight:300;
  font-size:24px;
}
.auth .auth-box{
  background-color:#fff;
  max-width:460px;
  margin:0 auto;
  border:1px solid rgba(255, 255, 255, 0.4);;
  background-color: rgba(255, 255, 255, 0.2);
  background: rgba(255, 255, 255, 0.2);
  margin-top:40px;
  -webkit-box-shadow: 0px 0px 30px 0px rgba(50, 50, 50, 0.32);
  -moz-box-shadow:    0px 0px 30px 0px rgba(50, 50, 50, 0.32);
  box-shadow:         0px 0px 30px 0px rgba(50, 50, 50, 0.32);
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  -webkit-transition: background 1s ease-in-out;
  -moz-transition: background 1s ease-in-out;
  -ms-transition: background 1s ease-in-out;
  -o-transition: background 1s ease-in-out;
  transition: background 1s ease-in-out;
}
@media(max-width:460px){
  .auth .auth-box{
   margin:0 10px;
 }
}

.auth .auth-box input::-webkit-input-placeholder { /* WebKit browsers */
  color:    #fff;
  font-weight:300;
}
.auth .auth-box input:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
  color:    #fff;
  font-weight:300;
}
.auth .auth-box input::-moz-placeholder { /* Mozilla Firefox 19+ */
  color:    #fff;
  font-weight:300;
}
.auth .auth-box input:-ms-input-placeholder { /* Internet Explorer 10+ */
  color:    #fff;
  font-weight:300;
}
.auth span.input-group-addon,
.input-group-btn button{
  border:none;
  background: #fff!important;
  color:#000!important;
}
.auth form{
    font-weight:300!important;
}
.auth form input[type="text"],
.auth form input[type="password"],
.auth form input[type="email"],
.auth form input[type="search"]{
  border:none;
  padding:10px 0 10px 0;
  background-color: rgba(255, 255, 255, 0)!important;
  background: rgba(255, 255, 255, 0);
  color:#fff;
  font-size:16px;
  border-bottom:1px dotted #fff;
  border-radius:0;
  box-shadow:none!important;
  height:auto;
}
.auth textarea{
  background-color: rgba(255, 255, 255, 0)!important;
  color:#fff!important;
}
.auth input[type="file"] {
  color:#fff;
}
.auth form label{
    color:#fff;
    font-size:21px;
    font-weight:300;
}
/*for radios & checkbox labels*/
.auth .radio label,
.auth label.radio-inline,
.auth .checkbox label,
.auth label.checkbox-inline{
    font-size: 14px;    
}

.auth form .help-block{
    color:#fff;
}
.auth form select{
  background-color: rgba(255, 255, 255, 0)!important;
  background: rgba(255, 255, 255, 0);
  color:#fff!important;
  border-bottom:1px solid #fff!important;
  border-radius:0;
  box-shadow:none;
}
.auth form select option{
    color:#000;
}
/*multiple select*/
.auth select[multiple] option, 
.auth select[size] {
  color:#fff!important;
}

/*Form buttons*/
.auth form .btn{
  background:none;
  -webkit-transition: background 0.2s ease-in-out;
  -moz-transition: background 0.2s ease-in-out;
  -ms-transition: background 0.2s ease-in-out;
  -o-transition: background 0.2s ease-in-out;
  transition: background 0.2s ease-in-out;
}
.auth form .btn-default{
    color:#fff;
    border-color:#fff;
}
.auth form .btn-default:hover{
    background:rgba(225, 225, 225, 0.3);
  color:#fff;
  border-color:#fff;
}
.auth form .btn-primary:hover{
    background:rgba(66, 139, 202, 0.3);
}
.auth form .btn-success:hover{
    background:rgba(92, 184, 92, 0.3);
}
.auth form .btn-info :hover{
    background:rgba(91, 192, 222, 0.3);
}
.auth form .btn-warning:hover{
    background:rgba(240, 173, 78, 0.3);
}
.auth form .btn-danger:hover{
    background:rgba(217, 83, 79, 0.3);
}
.auth form .btn-link{
  border:none;
  color:#fff;
  padding-left:0;
}
.auth form .btn-link:hover{
  background:none;
}


.auth label.label-floatlabel {
  font-weight: 300;
  font-size: 11px;
  color:#fff;
  left:0!important;
  top: 1px!important;
}


</style>

<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div class="container auth">
    <h1 class="text-center">Bootstrap form theme <span>It's nice!</span> </h1>
    <div id="big-form" class="well auth-box">
      <f:form id="addquestionform" method="post" modelAttribute="quesObj">
        <fieldset>

          <!-- Form Name -->
          <legend style="text-align: center">Add Question Here!!</legend>
           
           
           <!-- Select Basic -->
          <div class="form-group">
            <label class=" control-label" for="selectbasic">Select Subject</label>
            <div class="">
              <f:select path="subject_id" id="subject_id">
			<f:option value="0">----Select Subject--------</f:option>
			
 	 		<c:forEach items="${subjectList}" var="dOb">

 	 			<f:option value="${dOb.subjectId}"></f:option>

	 		</c:forEach>

		</f:select><br>
            </div>
          </div>
          
           <!-- Textarea -->
          <div class="form-group">
            <label class=" control-label" for="textarea">Enter Your Question</label>
            <div class="">                     
              <f:textarea class="form-control" id="QuestionDesc" path="QuestionDesc"></f:textarea>
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class=" control-label" for="textinput">Option A</label>  
            <div class="">
              <f:input id="optionA" path="optionA" placeholder="Fill Option A" class="form-control input-md" type="text"/> 
            </div>
          </div>
           <!-- Text input-->
          <div class="form-group">
            <label class=" control-label" for="textinput">Option B</label>  
            <div class="">
              <f:input id="optionB" path="optionB" placeholder="Fill Option B" class="form-control input-md" type="text"/> 
            </div>
          </div>
           <!-- Text input-->
          <div class="form-group">
            <label class=" control-label" for="textinput">Option C</label>  
            <div class="">
              <f:input id="optionC" path="optionC" placeholder="Fill Option C" class="form-control input-md" type="text"/> 
            </div>
          </div>
           <!-- Text input-->
          <div class="form-group">
            <label class=" control-label" for="textinput">Option D</label>  
            <div class="">
              <f:input id="optionD" path="optionD" placeholder="Fill Option D" class="form-control input-md" type="text"/> 
            </div>
          </div>
           <!-- Text input-->
          <div class="form-group">
            <label class=" control-label" for="textinput">Correct Answer</label>  
            <div class="">
              <f:input id="correctAns" path="correctAns" placeholder="Write Correct Answer" class="form-control input-md" type="text"/> 
            </div>
          </div>

          <div class="form-group">
            <div class="">
              <input type="submit" class="form-control input-md" value="Add"> 
            </div>
          </div>

        </fieldset>
      </f:form>
    </div>
    <div class="clearfix"></div>
  </div>

</body>
</html>