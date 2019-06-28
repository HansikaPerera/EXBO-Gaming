<%@page import="modelEXBO.info"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="/WEB-INF/views/EXBOheader.jsp" />

<!DOCTYPE html>
<html>
<head>
<%
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    
    	info Info = (info) session.getAttribute("currentSessionUser");
    %>
    
    <title>GameStation | Online Gaming Site</title>
        
    <style>
        
        .mainImage{
            width: auto;
            text-align: center;
            height: 500px;
            background-image: url(images/banner.jpg);
			background-size: cover;
    		background-repeat: no-repeat;
    		background-position: center center;
    		margin-top: 200px;
        }
        
        .gamers{
            width: auto;
            text-align: center;
            color: white;
            background-color: #e74c3c;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            height: auto;
            margin-top: 70px;
            margin-bottom: 50px;
            padding: 40px;
        }
        
        .subContent{
        	background-size: contain;
        	background-repeat: no-repeat;
        	background-position: center center;
        	transition: transform 0.1s;
        }
        
        .subContent:hover{
			transform: scale(1.1);
        }
        
        .gamers a{
        	transition: color 0.2s;
        }
                
        .gamers a:hover{
        	color: #FFB900;
        }
        
        .about{
            width: auto;
            height: 300px;
            text-align: left;
            background-color: #4EA250 ;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            margin-top: 50px;
            margin-bottom: 50px;
            padding: 20px;
            padding-top: 10px;
        }
        
        .aboutContent{
            width: 800px;
            height: 200px;
            font-size: 20px;
            float: left;
        }
        
        .mainLogo{
            width: 400px;
            height: 300px;
            background-image: url(images/finallogoo.png);
            background-size: cover;
    		background-repeat: no-repeat;
    		background-position: center center;
            float: right;
        }
        
        table #heading{
            font-size: 30px;
        }
        
        a{
        	text-decoration: none;
        	color: inherit;
        }
        
        
    </style>

        
    </head>
    <body>

	
    
    
    <br> <br> <br> <br> 
    <div class="gamers">
        <h1>GAMERS ON ANY PLATFORM</h1>
        <table width="1200" align="center">
        <tr id="heading">
            <th width="300" height="50"><a href="platform.jsp">PlayStation</a></th>
            <th width="300" height="50"><a href="platform.jsp">PC</a></th>
            <th width="300" height="50"><a href="platform.jsp">Xbox</a></th>
            
        </tr>
        <tr>
            <th class="subContent" width="300" height="300" style="background-image: url(images/ps4.png); background-size: cover;"></a></th>
            <th class="subContent" width="300" height="300" style="background-image: url(images/pc.png); background-size: cover;"></th>
            <th class="subContent" width="300" height="300" style="background-image: url(images/xbox.png); background-size: cover;"></th>
        </tr>
        <tr id="heading">
        <%if(Info == null){ %>
        	<th colspan="3"><a href="Signup.jsp">Register Now!</a></th>
        <%}else{ %>
        	<th colspan="4"><a href="games">Play Now!</a></th>
        <%} %>
        </tr>
        </table>
    </div>
    
    <div class="gamers" style="background-color: #484157;">
        <h1>GAMING CATEGORIES</h1>
        <table width="1200" align="center">
        <tr id="heading">
            <th width="300" height="50"><a href="action.jsp">Action</a></th>
            <th width="300" height="50"><a href="racing.jsp">Racing</a></th>
            <th width="300" height="50"><a href="sports.jsp">Sports</a></th>
            <th width="300" height="50"><a href="adventure.jsp">Adventure</a></th>
        </tr>
        <tr>
            <th class="subContent" width="300" height="300" style="background-image: url(images/action.png);"></th>
            <th class="subContent" width="300" height="300" style="background-image: url(images/racing.png);"></th>
            <th class="subContent" width="300" height="300" style="background-image: url(images/sports.png);"></th>
            <th class="subContent" width="300" height="300" style="background-image: url(images/adventure.png);"></th>
        </tr>
        <tr id="heading">
        <%if(Info == null){ %>
        	<th colspan="4"><a href="Signup.jsp">Register Now!</a></th>
        <%}else{ %>
        	<th colspan="4"><a href="games">Play Now!</a></th>
        <%} %>
        </tr>
        </table>
    </div>
    
    <div class="gamers" style="background-color: #717171 ;">
        <h1 style="color: black;">PlayerUnknown's Battlegrounds Gameplay</h1>
        
        <iframe width="1200" height="540" src="https://www.youtube-nocookie.com/embed/dHuk72sMljE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        
    </div>
        
    <div class="about">
    	<div class="mainLogo"></div>
         <h1>About Us</h1>
        <div class="aboutContent">
            <p>
                Welcome to EXBO Gaming. This is the best platform to all your gaming related needs that also helps players to communicate with the most up-to-date technology.
                <br/></br>EXBO Gaming is a high-end enthusiast online gaming site offering the best in high performance gaming with a reliable and exceptional customer service.
            </p>
        </div>
        
    </div>
    
    <jsp:include page="/WEB-INF/views/EXBOfooter.jsp" />
    
</body>
</html>


