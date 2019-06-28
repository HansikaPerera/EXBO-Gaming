<%@page import="modelEXBO.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="/WEB-INF/views/EXBOheader.jsp" />
<!DOCTYPE html>
<html>
<head>



<title>EDIT DETAILS | EXBO Gaming</title>

<style>
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

h1 {
	color: #00004d;
	font-weight: bold;
}

body {
	margin: 0px;
}

.mainArea {
	width: auto;
	height: auto;
	text-align: center;
	margin-top: 25px;
	margin-bottom: 50px;
	margin-left: 20px;
	margin-right: 20px;
	padding: 15px;
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0
		rgba(0, 0, 0, 0.1);
}

.sideBar {
	width: 500px;
	height: 560px;
	margin-top: auto;
	padding: 20px;
	float: left;
}

.content {
	width: auto;
	height: 560px;
	margin-top: auto;
	padding: 20px;
	float: left;
}

.mainArea table td {
	height: auto;
	text-align: left;
	padding: 10px;
	vertical-align: baseline;
}

table button {
	height: 50px;
	width: 150px;
	margin-top: 40px;
	margin-left: 60px;
	font-size: 16px;
	color: white;
	background-color: #FF4D4D;
	border: 1px solid red;
	border-radius: 5px;
	transition: background-color 0.2s ease-in-out;
}

table button:hover {
	color: #00004d;
	background-color: #4EA250;
	border: 2px solid #00004d;
	border-radius: 5px;
}
</style>

<script type="text/javascript">
		function checkPassword() {
			var password1 = document.getElementById('pass1').value;
			var password2 = document.getElementById('pass2').value;
			
			if ((password1 == null && password2 == null) || (password1 == "" && password2 == "")){
				document.getElementById('status').innerHTML = "Password cannot be empty!";
				return false;
			}
			else if (password1==password2) {
				document.getElementById('status').innerHTML = "Passwords Match!";
				return true;
			}
			else {
				document.getElementById('status').innerHTML = "Passwords Do Not Match!";
				return false;
			}
		}
		
		
		function checkProceed(){
			if(confirm("Do you want to Proceed?")){
		    	return true;
		    }
		    else{
		    	return false;
		    }
		}

	</script>


</head>

<body>

	<div class="mainArea"
		style="margin-bottom: 0px; margin-top: 160px; padding: 1px; background-color: #f2f2f2;">
		<div class="name">Edit Details</div>
	</div>

	<div class="mainArea" style="padding-top: 40px; height: 300px;">



		<table align="center">
			<tr>
				<td colspan="3" style="text-align: center;">
					<h1>GAMES</h1> <b>Select the action you want to perform</b> </br> </br> </br>
				</td>
			</tr>

			<tr>
				<td><a href="AddGame"><button>Add Games</button></a></td>

				<td><a href="RemoveGame"><button>Remove Games</button></a></td>

				<td><a href="UpdateGame"><button>Update Games</button></a></td>

			</tr>

		</table>


	</div>

	

	<jsp:include page="/WEB-INF/views/EXBOfooter.jsp" />

</body>
</html>

