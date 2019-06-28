<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/WEB-INF/views/EXBOheader.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Preview </title>
<link rel="stylesheet" href="pre.css">
</head>
<body onload="setInterval(changecolor,1000)" style="background-color: #717171;">

<h1 id="a"> New Game!! </h1>

<script>
function changecolor(){
	var x = document.getElementById("a");
	if(x.style.color == "Yellow")
	x.style.color="red";
	else if(x.style.color == "red")
	x.style.color = "green";
	else
	x.style.color = "red";
}

</script>

<table>
	<tr>
		
		<td><b><p>God Eater 3</p></b></td>
		<td><b><p>Metro Exodus</p></b></td>
		<td><b><p>Shakedown Hawaii</p></b></td>
		<td><b><p>Xenon Racer</p></b></td>
		
	</tr>

<tr>
	<td><img src = "images/god_eater3.jpg" style="width:70%; "></td>
	<td><img src = "images/metro_exodus.jpg" style="width:70%;"></td>
	<td><img src = "images/shake.jpg" style="width:70%; "></td>
	<td><img src = "images/xenon.jpg" style="width:70%; "></td>

</tr>

	<tr>
	<td><a href = "addpay.jsp"><button>Buy</button></a></td>
	<td><a href = "addpay.jsp"><button>Buy</button></a></td>
	<td><a href = "addpay.jsp"><button>Buy</button></a></td>
	<td><a href = "addpay.jsp"><button>Buy</button></a></td>
	
	</tr>
</table>

</style>
<div><marquee><h1 class = "upcoming"> Up Coming Games </h1></marquee></div>

	
<table>
	<tr>
		
		<td><b><p>Marvel Ultimate Alliance 3</p></b></td>
		<td><b><p>Close to the sun</p></b></td>
		<td><b><p>Super mario</p></b></td>
		<td><b><p>Shenmue</p></b></td>
		
	</tr>
	

<tr>
	<td><img src = "images/marvel.jpg" style="width:60%; "></td>
	<td><img src = "images/close_to_the_sun.png" style="width:50%;"></td>
	<td><img src = "images/super_mario.jpg" style="width:60%; "></td>
	<td><img src = "images/shenmue.jpg" style="width:40%; "></td>

</tr>

<tr>
	<td><p class= "date"> Release date: July 19,2019 </p></td>
	<td><p class= "date"> Release date: May 21,2019 </p></td>
	<td><p class= "date"> Release date: June 12,2019 </p></td>
	<td><p class= "date"> Release date: August 27,2019 </p></td>

</tr>
</table>
	


<h1> <p align="center" class="txt">  Trailer </p></h1>
<style>
.txt {
	font-size:2em;
	font-family:arial;
	animation:txt 7s ease-out infinite normal;
	color:yellow;
	text-transform:uppercase;
	font-weight:bold;
}

@keyframes txt{
	0%{
		transform:scale(0.9);
	}
	25%{
		transform:scale(2);
	}
	60%{
		transform:scale(0.9);
	}
	100%{
		transform:scale(0.9);
	}
}
</style>

<video width = "500" height = "200" controls>
	<source src = "videos/marvel.mp4" type="video/mp4">
	<source src = "videos/marvel.ogg" type="video/ogg">
</video>

<video width = "500" height = "200" controls>
	<source src = "videos/close_to_the_sun.mp4" type="video/mp4">
	<source src = "videos/close_to_the_sun.ogg" type="video/ogg">
</video>

<video width = "500" height = "200" controls>
	<source src = "videos/super_mario.mp4" type="video/mp4">
	<source src = "videos/super_mario.ogg" type="video/ogg">
</video>

<video width = "500" height = "200" controls>
	<source src = "videos/shenmue.mp4" type="video/mp4">
	<source src = "videos/shenmue.ogg" type="video/ogg">
</video>


</body>
<jsp:include page="/WEB-INF/views/EXBOfooter.jsp" />
</html>