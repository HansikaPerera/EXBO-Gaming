<%@page import="modelEXBO.info"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

    <title>HEADER | EXBO Gaming</title>
    
    <%
			info Info = (info) session.getAttribute("currentSessionUser");
			
			String type = (String)request.getAttribute("type");
			
	%>

	<style>
            
            body{
                font-family: calibri;
                margin: 0px;
                background-color: #F8F8F8;
            }
            
            a{
                text-decoration: none;
            }
        
            .mainHeader{
	            height: 85px;
	            width: 100%;
	            background-color: #0F0228;
	            padding-top: 10px;
	            padding-bottom: 10px;
	            position: fixed;
	            top: 0;
	            z-index: 0;
            }
            
            .logo{
				height: 130px;
				width: 320px;
				float: left;
				margin-left: 15px;
           		border: none;
                background-image: url(images/logo4.png);
                background-size: contain;
                background-repeat: no-repeat;
				
            }
            
            .searchArea{
				height: 30px;
				width: 500px;
				padding-top: 20px;
				margin-left: 50px;
				float: center;
            }
            
            #searchBar{
                height: 18px;
                width: 400px;
                font-size: 16px;
                color: white;
                background-color: #363636;
                border: 0px;
                border-radius: 5px;
                padding: 5px;
            }
            
            #searchButton{
                height: 30px;
				width: 70px;
				background-color: #FF4D4D;
				color: white;
                font-size: 15px;
                border: none;
				border-radius: 5px;
                float: right;
                transition: background-color 0.2s ease-in-out;
            }
            
            #searchButton:hover{
                background-color: #8FEA90;
                color: #0F0228;
            }
            
            .topNav{
	            height: 30px;
	            width: 600px;
	            margin-top: 5px;
	            font-size: 19px;
	            float: center;
	            
            }
            
            .topNav a{
                margin-left: 60px;
                text-decoration: none;
                color: white;
                transition: color 0.2s ease-in-out;
            }
            
            .topNav a:hover{
                color: #4EA250;
            }
            
            .userLog{
                height: 30px;
                width: 270px;
                float: right;
                padding-top: 20px;
                margin-left: 100px;
            }
        
        	.userLog button {
				height: 30px;
				width: 60px;
				border: 0px;
				border-radius: 5px;
                margin-right: 10px;
                float: right;
                transition: background-color 0.2s ease-in-out;
			}
            
            .userLog .account{
				height: 40px;
				width: 40px;
                background-image: url(images/default.png);
                background-size: cover;
				border: 1.5px solid #00d32d;
				border-radius: 100px;
                margin-top: -5px;
                margin-right: 30px;
                transition: border 0.2s ease-in-out;
			}
            
            .userLog .account:hover{
				border: 1.5px solid red;
			}
            
            .userLog .logout {
            	background-color: red;
            	color: white;
				height: 30px;
				width: 60px;
				border: 0px;
				border-radius: 5px;
			}
            
            .userLog .logout:hover{
                background-color: #FF3333;
                border: none;
			}
            
			.userLog .loginButton{
				background-color: #4EA250;
				color: white;
			}
            .userLog .loginButton:hover{
                background-color: #8FEA90;
                color: #0F0228;
			}
			
			.userLog .signupButton{
				background-color: red;
				color: white;
			}
            
            .userLog .signupButton:hover{
                background-color: #EB7979;
                color: #0F0228;
			}
         	
         	
            </style>

            <script type="text/javascript">
        
			function checkSearch() {
				
				var query = document.getElementById('searchBar').value;
		
				if ((query == null) || (query == "")){
					return false;
				}
				
				else {
					return true;
				}
			}
			
		</script>
</head>

<body>
	<div class="mainHeader" align="center">
            
           
            <div class="logo"></div>
            
            
            <div class="topNav" align="center">
            	<%if(Info != null) { %>
            	
            		<%if(Info.getType().equals("admin")) { %>
            
            			<a href="games.jsp">PLAY</a>
                		<a href="adminEdit.jsp">EDIT DETAILS</a>
                		<a href = "messages.jsp">MESSAGES</a>
                	
                	
                	<%}
            		else{ %>
                
                		<a href="games.jsp">PLAY</a>
                		<a href="action.jsp">CATEGORIES</a>
                		<a href="preview.jsp">PREVIEW</a>
                		<a href="contact.jsp">CONTACT</a>
                
             	<%} %>
                	

             	<%}else{ %>
             
             		<a href="index.jsp">HOME</a>
                	<a href="action.jsp">CATEGORIES</a>
                	<a href="preview.jsp">PREVIEW</a>
                	<a href="contact.jsp">CONTACT</a>
               
             	<%} %>
            </div>
           
            <div class="userLog">
            	<% if(Info == null){ %>

                    <a href="Signup.jsp"><button class="signupButton">Signup</button></a>
                    <a href="Login.jsp"><button class="loginButton">Login</button></a>

                <% } 
            	else {%> 

                    <a href="Logout">
                    	<button type="submit" class="logout">Logout</button>
                    </a>

                 	<a href="UAccount.jsp">
                    	<button class="account"></button>
					
                 		<span style="color: white; float: right; margin-right: 20px; padding-top: 4px;">
                 			<%= Info.getUserName() %>
                 		</span>
                 	</a>
			    <%} 
   				%>
            </div>
            
            <div class="searchArea">
                <form method="GET" action="SearchGame" onSubmit="return checkSearch();">
                    <input id="searchBar" type="text" name="q" placeholder="What are you looking for?"/>
                    <input id="searchButton" type="submit" value="Search">
                </form>
            </div>
            
    </div>

</body>
</html>