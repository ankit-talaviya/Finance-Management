<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>login page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
 <form action="Agency_index" name="login" method="post" onsubmit="return validateform()">
   
   		<h3>Login Page</h3>
   		<table>
   			<tr>
   				<td>User Name</td>
   				<td>:</td>
   				<td><input type="text" name="username"  onchange="validateform()" Placeholder="username"/></td>
   			</tr>
   			<tr>
   				<td>Password</td>
   				<td>:</td>
   				<td><input type="password" name="password" onchange="validateform()" value="Password" Placeholder="password"></td>
   			</tr>
   			<tr>
   				<td colspan="3" align="center"><input type="submit" value="Login"/></td>
   			</tr>
   		</table>
   	</form>
   
   	<script type="text/javascript">
 
function validateform(){  
var username=document.login.username.value;  
var password=document.login.password.value;  
  
if (username==null || username==""){  
  alert("Name can't be blank");  
  return false;  
}else if(password==null || password==""){  
  alert("Plz enter password");  
  return false;  
  }  
}  
   	
   	</script>
     
   	
   	
  </body>
</html>
