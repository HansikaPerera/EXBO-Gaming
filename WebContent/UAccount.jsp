<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="/WEB-INF/views/EXBOheader.jsp"/>
<title>USER profile</title>



	<style>
			 body{
			
			margin: 0px;
			height:400px;
			width:600px:
			
		}
		 .mainarea{
            width: 1107px;
            height: 300px;
            margin-top: 5px;
        }
		
			
			.content{
			 min-width: 600px;
            height: 480px;
            margin-top: 0px;
            margin-bottom: 0px;
            margin-right: 0px;
            margin-left: 5px;
            padding-left: 300px;
            padding-bottom:200px;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
            float: left;
            text-align = left;
            }

			#card img{
				width:200px;
				height:300px;
				float:left;
				border-radius:5px;
				margin-right:20px;
				transform:all 0.5s ease-in;
			}

			.card h2{
				font-family:tahoma;
				color:#333;
				margin:0 auto;
				padding:0;
				font-size:33pt;
			}

			#card p{
				font-family :tahoma;
				color: #555;
				font-size:22px;
				padding-left:250px;
			}
			

		</style>
		
		
	
</head>
<body>
<div class = "content">


	
	<br>
	<br>
	<br>
	
	<br></br>
	<div class="mainarea">	<div class="card"><img src="desktop/htmlcss/allimages/a.jpg" alt=""></div>
			<h1>User Info</h1>
			<p>User Id :      	   </p>
			<p>First Name :      	   </p>
			<p>Last Name :      	   </p>
			<p>Gender :      	   </p>
			<p>Platform :      	   </p>
			<p>User Name :      	   </p>
			<p>E mail : 			</p>
			<p>Password :     			</p>
		
			<p><a href="Update"><button>Edit</button></a></p>
			
			<p><a href="Deactivate"><button>Deactivate Account</button></a></p>


	</div></div>

</body>
</html>

<jsp:include page="/WEB-INF/views/EXBOfooter.jsp"/>