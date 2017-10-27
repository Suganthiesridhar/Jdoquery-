<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register page</title>
</head>
	<script type="text/javascript">  
	function validate()  
	 {  
	      var d=document.register;  
	      var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;  
	      if(d.fullname.value == '')  
	      {  
	           alert("Enter Name"); 
	                   document.getElementById('fullname').style.backgroundColor = "red";
	 
	           d.fullname.focus();  
	           return false;  
	         }
	           else{
	            document.getElementById('fullname').style.backgroundColor = "white";
	 
	           }
	       
	      if(d.fullname.value.length<=2)  
	      {  
	      alert("Minimum Name Should be greater than two");  
	      document.getElementById('fullname').style.backgroundColor = "red";

	      return false;       
	      }  
	      else{ 
	            document.getElementById('fullname').style.backgroundColor = "white";
	 
	           }
	      if(d.age.value == '')  
	      {  
	           alert("Enter Age");  
	          document.getElementById('age').style.backgroundColor = "red";

	           return false;  
	      }  
	      else{
	            document.getElementById('age').style.backgroundColor = "white";
	 
	           }
	      if(d.age.value.length>=3)  
	      {  
	      alert("Invalid age");  
	       document.getElementById('age').style.backgroundColor = "red";

	      return false;       
	      } 
	      else{
	            document.getElementById('age').style.backgroundColor = "white";
	 
	           }
	     
	 
	      if(d.email.value == '')  
	      {  
	      document.getElementById('email').style.backgroundColor = "red";

	      alert("Email is is Required");  
	      d.email.focus();  
	      return false;       
	      }  
	      else{
	            document.getElementById('email').style.backgroundColor = "white";
	 
	           }
	      if(reg.test(d.email.value) == false)  
	      {  
	      alert("Invalid Email"); 
	      document.getElementById('email').style.backgroundColor = "red";
	 
	      return false;       
	      } 
	      else{
	            document.getElementById('email').style.backgroundColor = "white";
	 
	           }
	      if(d.salary.value == '')  
	      {  
	           alert("Enter Salry"); 
	                   document.getElementById('salary').style.backgroundColor = "red";
	 
	           d.salary.focus();  
	           return false;  
	         }
	           else{
	            document.getElementById('salary').style.backgroundColor = "white";
	 
	           }

	     
 </script>
 <style>
label {
  	float: left;
  	width: 175px;
  	text-align: right;
  	padding-right: 12px;
  	margin-top: 12px;
  	clear: left;
  }

  input {
  	margin-top: 12px;
  }

  td {
  font-weight: bold;
  color: white;
  }

    
  h1 {
  	font-size: 25;
  	font-family: courier;
  	background-color: #483D8B;
  	padding: 30px;
  	color: gray;
   }
  
  h2{
  	background-color: #ADFF2F;
  	color: blue;
  	font-weight: normal;
  	font-family: Arial;
  	padding: 10px;
  	font-size: 20;
  	text-align:center;
  }
  h3{
   color: #ADFF2F;
   text-align: center;
  }
  h5{
  	color:red;
    font-size: 25;
    text-align: center;
  }
   }
  
 .wishlist{
 	color: #483D8B;
 	font-size: 20;
 }
div.ex {
    
	text-align: right width:300px;
	padding: 100px;
	border: 5px solid white;
	margin: 0px
	
}
body {
   background-color: black;
}
p {
color: white;
text-align:right;
}
</style>
<body>

	 
	  <div id="list">
	   	  </div> 
  
  <div style="clear:both;"></div>
  	
  <div id="h2">
    <h2>FULL CREATIVE PRIVATE LIMITED</h2>
    <h3 class="wishlist">EMPLOYEE REGISTRATION FORM </h3>
  </div> 

  
   <div id="h5">
     <h5>ENTER YOUR DETAILS</h5>
   </div>
   
	<form action="/Reg"	 name="register" method="post" onSubmit="return validate()">
		<table class="tble" width="500" border="1" align="center" height="100">
			
			<tr>
				<td>Full Name<span style="color:black"></span>:
				</td>
				<td><input type="text" name="fullname" id="fullname"></td>
			</tr>
			
			<tr>
				<td>Age<span style="color: black"></span>:
				</td>
				<td><input type="text" name="age" id="age"></td>
			</tr>
			
			<tr>
				<td>Email<span style="color: black"></span>:
				</td>
				<td><input type="text" name="email" id="email"></td>
			</tr>
			
			<tr>
				<td>Salary<span style="color: black"></span>:
				</td>
				<td><input type="text" name="salary" id="salary"></td>
			</tr>
			
			
			<tr>
				<td colspan="2" align="center">
				<input type="submit" name="submit" id="submit" value="REGISTER"></td>
		   </tr>
			
		</table>
	</form>


</body>
</html>