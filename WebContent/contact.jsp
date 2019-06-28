<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="WEB-INF/views/EXBOheader.jsp"/>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
	<%
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

    %>
    
	<title> CONTACT US | EXBO </title>
	
	<style>

        h1{
			color:black;
			text-align: center;
			font-size:60px;
            margin: 80px;
		}
        
		body{
			
			margin: 0px;
		}
		
		.mainArea1 {
			width: auto;
			height: auto;
			text-align: center;
			margin-top: 10px;
			margin-bottom: 10px;
			margin-left: 20px;
			margin-right: 20px;
			padding: 10px;
			background-color: #f2f2f2;
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
		}
		
		.name {
			color: #00004d;
			text-align: center;
			font-size: 50px;
			font-weight: bolder;
			margin: 80px;
			transition: color 0.15s;
		}

		.name:hover {
			color: #008000;
		}
		
        
        .mainArea{
            width: auto;
            height: 700px;
            margin-top: 30px;
        }
        
        .sideBar{
            width: 260px;
            height: 560px;
            margin-left: 30px;
            margin-right: 5px;
            margin-top: 50px;
            margin-bottom: 30px;
            padding: 5px;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
           
        }
        
        .content{
            min-width: 600px;
            height: 560px;
            margin-top: 50px;
            text-align: center;
            margin-bottom: 30px;
            margin-right: 0px;
            margin-left: 30px;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
            float: left;
        }
        
        input[type="text"], input[type="email"]{
			width:600px;
			height:20px;
            font-size: 16px;
			margin-bottom: 20px;
			border:1px solid gray;
            border-radius: 5px;
			padding:10px;
		}
        
        textarea{
        	font-family: calibri;
        	font-size: 20px;
        	width: 600px;
			height: 150px;
            font-size: 16px;
			margin-bottom: 20px;
			border: 1px solid gray;
            border-radius: 5px;
			padding:10px;
        }
        
        input[type="submit"]{
			height: 50px;
			width: auto;
			padding: 5px;
			font-size: 16px;
			color: white;
			background-color: red;
			border: 1px solid red;
			border-radius: 5px;
			transition: background-color 0.2s ease-in-out;
		}
		
		input[type="submit"]:hover{
			color: red;
			background-color: white;
			border: 1px solid red;
			border-radius: 5px;
		}
        

	</style>
	
</head>
<body>

	<div class="mainArea1" style="margin-bottom: 0px; margin-top: 160px; padding: 1px;">
		<div class="name">Drop Us A Message</div>
	</div>
            
	<div class="mainArea" align="center">
        <div class="sideBar" align="center" style="float: left;">
        	
        	<p><font size = "13" color = "#4EA250"><b>Contact Us</b></font></p>
        	<br>
			<p><img src = "images/call.png" width = "60" height = "60" align = "center" > <font size = "3" > 0114563256 / 0714563333 </font></p>
			<br>
	
			<p><img src = "images/address.png" width = "60" height = "60" align = "center"><font size = "3"> No.25, Galle Rd, Colombo 7 </font></p>
			<br>
	
			<p><img src = "images/email.png" width = "60" height = "60" align = "center"> <font size = "3"> EXBO_Gaming1@gmail.com </font></p>
        
        </div>
        
        <div class="content">
        	
        	<form method="POST" action="ContactInfo">
				  <input type = "text" name = "name" placeholder = "Enter Your Full Name" required/><br><br>
				  <input type = "email" name = "email" placeholder = "Enter Your Email" required/><br><br>
				  <textarea rows="" cols="" name="message" placeholder="Enter your message" required></textarea><br><br>
				  <input type = "submit" value = "Send Message"/>
			</form>
            
        </div>
        
        <div class="sideBar" align="center"
			style="float: right; margin-right: 30px;">
			<img src="images/side2.jpg" width="260px" height="550px">
		</div>
		
    </div>
    
    <jsp:include page="WEB-INF/views/EXBOfooter.jsp"/>
    

</body>
</html>