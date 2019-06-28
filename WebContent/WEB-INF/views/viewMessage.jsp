<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="modelEXBO.Contact"%>
<%@page import="servicesEXBO.IContactServices"%>
<%@page import="servicesEXBO.ContactServicesImpl"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.ArrayList"%>

<jsp:include page="EXBOheader.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<%
		
	
		Contact contact = (Contact) request.getAttribute("currentMessage");

		if(contact == null){
	
			response.sendRedirect("contact.jsp");
		}
	
	%>
	
	
	<style>

        h1{
			color: #4EA250;
			text-align: center;
			font-size: 50px;
            margin: 30px;
		}
		
		h2{
			color: dimgray;
			text-align: center;
			font-size: 30px;
            margin: 20px;
		}
        
		body{
			
			margin: 0px;
		}
        
        .content{
            width: 600px;
            height: auto;
            color: black;
            text-align: center;
            background-color: white;
            margin-top: 170px;
            margin-left:auto;
            margin-right: auto;
            margin-bottom: 100px;
            padding: 50px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

		.container{
			width:600px;
			height:auto;
            text-align: center;
			margin-top:50px;
			margin-bottom: 20px;
			text-align: center;
			border-radius:15px;
			border:1px solid #17202A ;
			overflow: auto;
		}
		
		.container img{
			width:100px;
			height:100px;
			margin-top:-60px;
			margin-bottom:30px;
		}
        
        .contact td, .contact th{
        	height: 50px;
            text-align: left;
            font-size: 20px;
            vertical-align: baseline;
            margin: 10px;
        }
        
        a{
            text-decoration: none;
            color: dodgerblue;
        }
        
        a:hover{
            color: #e74c3c;
        }

		.home{
			height: 50px;
			width: 120px;
			margin-bottom: 20px;
			font-size: 16px;
			color: white;
			background-color: red;
			border: 1px solid red;
			border-radius: 5px;
			transition: background-color 0.2s ease-in-out;
		}
        
        .home:hover{
			color: #0F0228;
			background-color: #4EA250;
			border:3px solid #0F0228;
			border-radius: 5px;
		}
		
        
	</style>
	
	<%if(contact != null){ %>
		 	<title><%= contact.getName() +" - "+contact.getMessageID() %> | EXBO</title>
	<%} %>
	
</head>
<body>

	<div class="content">
	<h1>Message Sent Successfully</h1>
	<h2>We'll Send Our Feedback Soon</h2>
	
	<hr/>
	<div class = "container">
	
	<%if(contact != null){ %>
        <table align="center" class="contact" style="padding: 10px;">

				<tr>
					<th>Message ID &nbsp;&nbsp;&nbsp;</th>
					<td>
						<%=contact.getMessageID()%>
					</td>
				</tr>
                
                <tr>
					<th>Name &nbsp;&nbsp;&nbsp;</th>
					<td>
						<%=contact.getName()%>
					</td>
				</tr>

				
				<tr>
					<th>Email </th>
					<td>
						<%=contact.getEmail()%>
					</td>
				</tr>

				<tr>
					<th>Message </th>
					<td style="width: 50px;">
						<%=contact.getMessage()%>
					</td>
				</tr>

		</table>
	<%} %>
		
		</div>	
		
		<a href="index.jsp"><button class="home" align="center">Okay</button></a>
			
    </div>
    
	<jsp:include page="EXBOfooter.jsp"/>
</body>

</html>