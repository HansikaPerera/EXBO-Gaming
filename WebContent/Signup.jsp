<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="modelEXBO.info"%>
    
<!DOCTYPE html>
<html>
<head>

	<%
		info Info = (info) session.getAttribute("currentSessionUser");
	
		String delete_confirm = (String) request.getAttribute("delete_confirm");
	
		if(Info != null){
			
			response.sendRedirect("index.jsp");
		}
	
	%>

<meta charset="ISO-8859-1">
<title>Sign up</title>

<style>

        body{
			background-color: #0F0228;
			margin: 0px;
		}
		
		
        .name{
			color:#00004d;
			text-align: center;
			font-size: 50px;
			font-weight: bolder;
            margin: 80px;
            transition: color 0.15s;
		}
		
		.name:hover{
			color: #008000;
		}
        
        .mainArea{
            width: auto;
            height: 900px;
            margin-top: 100px;
            float: center;
        }
        
        
        
        .content{
            min-width: 600px;
            height: 680px;
            margin-top: 50px;
            margin-bottom: 30px;
            margin-right: 400px;
            margin-left: 400px;
            padding: 20px;
            border-radius: 8px;
            background-color: #F8F8F8;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
            float: center;
            text-align = left;
        }
        
        input[type="text"], input[type="email"]{
			width:500px;
			height:20px;
            font-size: 16px;
			margin-bottom: 20px;
			border:1px solid gray;
            border-radius: 5px;
			padding:10px;
		}
		
		  input[type="password"]{
			width:500px;
			height:20px;
            font-size: 16px;
			margin-bottom: 20px;
			border:1px solid gray;
            border-radius: 5px;
			padding:10px;
		}
        
        input[type="submit"],.back{
			height: 50px;
			width: 85px;
			padding: 5px;
			font-size: 16px;
			color: white;
			background-color: red;
			border: 0px;
			border-radius: 5px;
			transition: background-color 0.2s ease-in-out;
		}
		
		.sign{
		    height: 40px;
			width: 85px;
			padding: 5px;
			font-size: 16px;
			color: white;
			background-color: red;
			border: 0px;
			border-radius: 5px;
			transition: background-color 0.2s ease-in-out;
		
		}
       
		
		 input[type="reset"]{
			height: 50px;
			width: 85px;
			padding: 5px;
			font-size: 16px;
			color: white;
			background-color: red;
			border: 0px;
			border-radius: 5px;
			transition: background-color 0.2s ease-in-out;
		}
		
		input[type="submit"]:hover, .back:hover{
			color: red;
			background-color: white;
			border: 1px solid red;
			border-radius: 5px;
		}
        
        
        input[type="reset"]:hover{
			color: red;
			background-color: white;
			border: 1px solid red;
			border-radius: 5px;
		}
        

	</style>


</head>

<body>

	
	
    
    <div class="mainArea" align="center">
        
        
         <div class="content"> 
         	<font size = "10" color = "black" ><b> SIGN UP </b></font>
		
			<br> <br> <br> <br> 
			
			<form method = "POST" action = "Signup">

				  <input type = "text" name = "userID" placeholder = "any ID you would like to use" required/><br>
				  <input type = "text" name="firstName" placeholder="Enter first Name*" required><br/>
				   <input type = "text" name="lastName" placeholder="Enter last Name*" required><br/> 
				   <input type = "text" name="gender" placeholder="Enter gender*" required><br/>
				    <input type = "text" name="platform" placeholder="Enter platform*" required><br/>
				     <input type = "text" name="userName" placeholder="Enter user name*" required><br/>
				  <input type = "text" name="email" placeholder="Enter email*" required><br/>
				  <input type = "password" name="password" placeholder="Enter password*" required><br/>
				  <input type = "submit" name="Signup" value = "Sign Up"/> &nbsp;
				  <input type = "reset" value = "Reset"/> <br/> <br/>
				  
			</form>
            
           
         </div>
         
        
         
    </div>
    

</body>
</html>
