<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:include page="/WEB-INF/views/EXBOheader.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deactivate</title>
</head>
<body>

	<style>
body {
	margin: 0px;
}

.mainArea1 {
	width: auto;
	height: auto;
	text-align: center;
	margin-top: 150px;
	margin-bottom: 10px;
	margin-left: 20px;
	margin-right: 20px;
	padding: 15px;
	background-color: #f2f2f2;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0
		rgba(0, 0, 0, 0.1);
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

.mainArea {
	width: auto;
	height: 700px;
	margin-top: 20px;
}

.sideBar {
	width: 270px;
	height: 560px;
	margin-left: 30px;
	margin-right: 5px;
	margin-top: 50px;
	margin-bottom: 30px;
	padding: 5px;
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0
		rgba(0, 0, 0, 0.1);
}

.content {
	min-width: 600px;
	height: 530px;
	margin-top: 50px;
	margin-bottom: 30px;
	margin-right: 0px;
	margin-left: 25px;
	padding: 20px;
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0
		rgba(0, 0, 0, 0.1);
	float: left;
	text-align
	=
	left;
}

input[type="text"], input[type="email"] {
	width: 600px;
	height: 20px;
	font-size: 16px;
	margin-bottom: 20px;
	border: 1px solid gray;
	border-radius: 5px;
	padding: 10px;
}

input[type="submit"], .back {
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

 input[type="password"]{
			width:600px;
			height:20px;
            font-size: 16px;
			margin-bottom: 20px;
			border:1px solid gray;
            border-radius: 5px;
			padding:10px;
		}

input[type="reset"] {
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

input[type="submit"]:hover, .back:hover {
	color: red;
	background-color: white;
	border: 1px solid red;
	border-radius: 5px;
}

input[type="reset"]:hover {
	color: red;
	background-color: white;
	border: 1px solid red;
	border-radius: 5px;
}
</style>

</head>
<body>

	<div class="mainArea1"
		style="margin-bottom: 0px; margin-top: 160px; padding: 1px;">
		<div class="name">Deactivate Your Account</div>
	</div>

	<div class="mainArea" align="center">
		<div class="sideBar" align="center" style="float: left;">
			<img src="images/sash.jpg" width="260px" height="550px">
		</div>

		<div class="content">
			</br>
			</br>
			<form method="POST" action="Deactivate">

				<input type="text" name="email" placeholder="Enter email"
					required /><br> <input type="password" name="password"
					placeholder="Enter Password" required><br />
					<input type="password" name="password" placeholder="confirm password"
					required /><br> 
					 <input
					type="submit" value="Deactivate" /> &nbsp; <input type="reset"
					value="Reset" /> <br /> <br />

			</form>

			<a href="UAccount.jsp"><button class="back" style="width: 180px;">Back</button></a>
		</div>

		<div class="sideBar" align="center"
			style="float: right; margin-right: 30px;">
			<img src="images/sash.jpg" width="260px" height="550px">
		</div>

	</div>

</body>
</html>
<jsp:include page="/WEB-INF/views/EXBOfooter.jsp" />