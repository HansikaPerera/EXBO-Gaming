<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="modelEXBO.Contact"%>
<%@page import="modelEXBO.info"%>
<%@page import="servicesEXBO.IContactServices"%>
<%@page import="servicesEXBO.ContactServicesImpl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.ArrayList"%>

<jsp:include page="WEB-INF/views/EXBOheader.jsp"/>
<!DOCTYPE html>
<html>
<head>

	<%
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
		String deleteMsg = (String) request.getAttribute("deleteMsg");
		
		info Info = (info) session.getAttribute("currentSessionUser");
		
		IContactServices iContactServices = new ContactServicesImpl();
		ArrayList<Contact> contactList = new ArrayList<Contact>();
		contactList = iContactServices.getMessages();
		
		
				
    %>

	<title>Messages | GameStation </title>
	
	<style>
	
		img{
			margin-top: 40px;
		}

        h1{
			color:black;
			margin-top: 0px;
			text-align: center;
			font-size: 30px;
            transition: color 0.15s;
		}
		
		h1:hover{
			color: red;
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
			color: #4EA250;
			background-color: #f2f2f2;
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0
						rgba(0, 0, 0, 0.1);
		}
        
        .mainArea{
            width: auto;
            min-height: 600px;
            text-align: center;
            margin-top: 50px;
            margin-bottom: 70px;
            margin-left: 20px;
            margin-right: 20px;
            padding: 15px;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
        }
        
        .sideBar{
            width: 500px;
            height: 560px;
            margin-top: auto;
            padding: 20px;
            float: left;
        }
        
        .content{
            width: auto;
            height: 560px;
            margin-top: auto;
            padding: 20px;
            float: left;
        }
        
        .mainArea table td{
        	width: 40%;
        	height: auto;
        	text-align: center;
        	padding: 10px;
        }
        
        input[type="submit"], .contact{
			height: 40px;
			width: auto;
			font-size: 16px;
			color: white;
			background-color: red;
			border: 1px solid red;
			border-radius: 5px;
			transition: background-color 0.2s ease-in-out;
		}
        
         input[type="submit"]:hover, .contact:hover{
			color: #0F0228;
			background-color: #4EA250;
			border:3px solid #0F0228;
			border-radius: 5px;
		}
        

	</style>
	
</head>
<body>

	<div class="mainArea1" style="min-height: auto; margin-bottom: 0px; margin-top: 120px; padding: 1px;">
		<h2>You have <font color="red"><%= contactList.size() %></font> messages to respond</h2>
		<% if(deleteMsg != null) { %>
        	<p style="color: green;" align="center"><br/><%= deleteMsg %></p>
        <%} %>
	</div>
    
    <div class="mainArea">
      	<%if(contactList.size() != 0) { %>
      	<div style="max-width: 900px; margin: auto;">
        	<table align="center">
        	<h3><font color="blue">Delete messages once you have taken actions!</font></h3></br>
        	
        	<% for(Contact showMessage : contactList) { %>
        		<tr>
        		
        			<td style="text-align: left;"><b>Message ID</b></td>
        			<td style="text-align: left;"><%= showMessage.getMessageID() %></td>
        			<td rowspan="4">	
				 		<form method="POST" action="DeleteMessage">
							<input type="hidden" name="mid" value="<%= showMessage.getMessageID() %>">
				 			<input type="submit" value= "Delete"/>
				 		</form>
        			</td>
        			
        		</tr>

        		<tr>
        			
        			<td style="text-align: left;"><b>From</b></td>
        			<td style="text-align: left;"><%= showMessage.getName() %></td>
        		
        		</tr>
        		
        		<tr>
        			
        			<td style="text-align: left;"><b>Email</b></td>
        			<td style="text-align: left;"><%= showMessage.getEmail() %></td>
        		
        		</tr>
        		
        		<tr>
        		
        			<td colspan="3" style="text-align: center; overflow: auto;">
        				<b>Message</b><br/><br/>
        				<%= showMessage.getMessage() %>
        			</td>
        		
        		</tr>
        		
        		<tr>
        			<td colspan="3"><hr></td>
        		</tr>
        		
        	
        	<% } %>
        	</table>
        </div>
		<%}else{ %>
		
			<img align="middle" src="images/finallogoo.png">
			
			<h1 style="color: dimgray; font-size: 40px;">No Messages</h1>
		
		<%} %>
        
    </div>
    
     <jsp:include page="WEB-INF/views/EXBOfooter.jsp"/>
    
</body>
</html>