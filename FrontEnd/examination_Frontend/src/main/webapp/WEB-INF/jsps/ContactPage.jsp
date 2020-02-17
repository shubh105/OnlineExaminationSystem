<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;
	background-image: url(bg2.jpg);
	backgroung-size:100% 100%;
	background-repeat: no-repeat;
  	background-attachment: fixed;
  	background-size: cover;
}
* {box-sizing: border-box;}


input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 60px;
  width: 800px;
  margin: auto;
  opacity: 0.89;
}
</style>
</head>
<body>

<h1 align="center">Contact</h1>

<div class="container">
  <form action="">
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Please Enter your good name.">

    <label for="contact">Contact</label>
    <input type="text" id="contact" name="contact" placeholder="Contact Number.">

   <label for="email">Email Address</label>
    <input type="text" id="email" name="email" placeholder="Please Enter your email id.">

    <label for="subject">Subject</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
s