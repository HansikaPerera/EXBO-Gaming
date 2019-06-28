<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<jsp:include page="/WEB-INF/views/EXBOheader.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
@import
	'https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800'
	;

@import
	'https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900'
	;
/*👇 Little trick for center W & H where you want*/
body {
	background-color: #0F0228;
	font-family: 'Dosis';
}

.container {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	margin: auto;
	width: 425px;
	height: 442px;
	background: #fff;
	border-radius: 5px;
	box-shadow: 0px 10px 50px 0px rgba(0, 0, 0, 0.25);
	z-index: 2;
	transition: transform 250ms linear;
}

.total-logo {
	position: relative;
	width: 100%;
	height: 72px;
	background: #ccc;
	display: flex;
	border-radius: 5px 5px 0 0;
}

.total-logo .total {
	width: 50%;
	height: 100%;
	background: #b62138;
	padding: 10px 30px;
	box-sizing: border-box;
	border-radius: 5px 0 0 0;
}

.total-logo .total span {
	display: block;
	text-transform: uppercase;
	font-size: 14px;
	color: #fff;
	margin-bottom: 3px;
}

.total-logo .total .total-n {
	font-size: 34px;
}

.total-logo .logo {
	width: 50%;
	height: 100%;
	background: #ffc6c6;
	padding: 20px 30px;
	box-sizing: border-box;
	text-align: right;
	border-radius: 0 5px 0 0;
}

.step {
	position: relative;
	width: 100%;
	height: 50px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.step .retry {
	width: 75px;
	height: 20px;
	box-sizing: border-box;
	background-color: #eee;
	border: 1px solid #b6b6b6;
	border-radius: 2px;
	text-align: center;
	margin: 0 20px;
	font-family: 'Roboto';
	text-transform: uppercase;
	font-size: 12px;
	color: #b6b6b6;
	padding-top: 3px;
	transition: all 200ms linear;
	cursor: pointer;
}

.step .retry:hover {
	background: #b6b6b6;
	color: #eee;
}

.step .line {
	width: 195px;
	height: 1px;
	background: linear-gradient(to right, #eee 0%, #ffc6c6 100%);
}

.step .payment {
	width: 75px;
	height: 20px;
	box-sizing: border-box;
	background-color: #ffc6c6;
	border: 1px solid #d77c7c;
	border-radius: 2px;
	text-align: center;
	margin: 0 20px;
	font-family: 'Roboto';
	text-transform: uppercase;
	font-size: 12px;
	padding-top: 3px;
	color: #b62138;
}

.cont-forms {
	position: relative;
	padding: 0px 20px 20px 20px;
	height: 315px;
	box-sizing: border-box;
}

.card-expiration, .card-holder, .card-number {
	text-transform: capitalize;
	margin: 5px 0px 15px 0px;
	font-family: 'Roboto';
}

.card-number label {
	font-family: 'Roboto';
	text-transform: uppercase;
	font-size: 12px;
	font-weight: 300;
	display: block;
	margin-bottom: 10px;
}

.flex-wrapper {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.flex-wrapper input {
	width: 23%;
	text-align: center;
	height: 35px;
	border: none;
	background: rgb(55, 152, 216);
	border-radius: 3px;
	outline: none;
	box-sizing: border-box;
}

.flex-wrapper input:focus {
	border: 1px solid #ccc;
}

.card-holder label {
	font-family: 'Roboto';
	text-transform: uppercase;
	font-size: 12px;
	font-weight: 300;
	display: block;
	margin-bottom: 10px;
}

.card-holder input {
	width: 100%;
	height: 35px;
	border: none;
	background: #eee;
	border-radius: 3px;
	outline: none;
	box-sizing: border-box;
}

.card-holder input:focus {
	border: 1px solid #ccc;
}

.card-expiration .expiry-ccv {
	display: flex;
	justify-content: space-between;
}

.card-expiration .expiry-ccv .expiration-date {
	width: 50%;
}

.card-expiration .expiry-ccv .expiration-date label {
	font-family: 'Roboto';
	text-transform: uppercase;
	font-size: 12px;
	font-weight: 300;
	display: block;
	margin-bottom: 10px;
}

.card-expiration .expiry-ccv .expiration-date input {
	width: 46%;
	text-align: center;
	height: 35px;
	border: none;
	background: #eee;
	border-radius: 3px;
	outline: none;
	box-sizing: border-box;
}

.card-expiration .expiry-ccv .expiration-date input:focus {
	border: 1px solid #ccc;
}

.card-expiration .expiry-ccv .expiration-date .last {
	margin-left: 7px;
}

.card-expiration .expiry-ccv .ccv {
	width: 23%;
}

.card-expiration .expiry-ccv .ccv label {
	font-family: 'Roboto';
	text-transform: uppercase;
	font-size: 12px;
	font-weight: 300;
	display: block;
	margin-bottom: 10px;
}

.card-expiration .expiry-ccv .ccv input {
	width: 100%;
	text-align: center;
	height: 35px;
	border: none;
	background: #eee;
	border-radius: 3px;
	outline: none;
	box-sizing: border-box;
}

.card-expiration .expiry-ccv .ccv input:focus {
	border: 1px solid #ccc;
}

.conf-button {
	position: relative;
	bottom: -35px;
}

.conf-button .purchase {
	width: 50%;
	height: 43px;
	border-radius: 3px;
	font-size: 20px;
	border: none;
	outline: none;
	font-weight: 100;
	font-family: 'Dosis';
	text-transform: uppercase;
	background-color: #b62138;
	color: #fff;
	box-sizing: border-box;
	transition: all 200ms linear;
	cursor: pointer;
}

.conf-button .purchase:hover {
	color: #b62138;
	background: #fff;
	border: 1px solid #b62138;
}

.conf-button .or-element {
	width: 10%;
	font-size: 13px;
	font-weight: 400;
	text-transform: uppercase;
	text-align: center;
	font-family: 'Roboto';
	cursor: context-menu;
}

.conf-button .applepay {
	width: 40%;
	height: 33px;
	border-radius: 3px;
	font-size: 20px;
	border: none;
	outline: none;
	font-weight: 100;
	background-color: #000;
	color: #fff;
	box-sizing: border-box;
	transition: all 200ms linear;
	cursor: pointer;
}

.conf-button .applepay:hover {
	color: #000;
	background: #fff;
	border: 1px solid #000;
}

.button-cart {
	width: 40px;
	height: 50px;
	background: #b62138;
	position: absolute;
	right: -40px;
	bottom: calc(50% - 25px);
	border-radius: 0 5px 5px 0;
	box-shadow: inset 11px 0px 30px -15px #000;
	cursor: pointer;
	opacity: 1;
	transition: all 250ms linear;
}

.button-cart:hover {
	background: #ffc6c6;
}

.button-cart img {
	width: 25px;
	margin-top: 13px;
	margin-left: 7px;
}

.button-cart .product-in-cart {
	position: absolute;
	background: #000;
	width: 20px;
	height: 20px;
	border-radius: 50%;
	right: -8px;
	top: -8px;
}

.button-cart .product-in-cart span {
	position: relative;
	display: block;
	color: #fff;
	padding-top: 3px;
	text-align: center;
	font-size: 13px;
}

.cont-product {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	margin: auto;
	width: 97px;
	height: 351px;
	transition: transform 250ms linear;
	z-index: 1;
}

.cont-product .product {
	position: relative;
	height: 97px;
	overflow: hidden;
	background: #fff;
	border-radius: 5px;
	text-align: center;
	margin: 10px 0px 10px 0px;
	z-index: 1;
	transition: transform 300ms cubic-bezier(0, 0, 0, 2.39);
	cursor: pointer;
}

.cont-product .product img {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	margin: auto;
	width: 80%;
}

.cont-product .product .cont-options {
	position: absolute;
	width: 100%;
	height: 15px;
	bottom: -15px;
	transition: bottom 250ms linear;
}

.cont-product .product .cont-options .quantity {
	position: relative;
	width: 50%;
	height: 100%;
	background: #eee;
}

.cont-product .product .cont-options .quantity .plus {
	position: absolute;
	height: 100%;
	top: 0px;
	left: 0px;
	width: 30%;
	padding: 0;
	margin: 0;
	border: none;
	outline: none;
	background: #000;
	color: #fff;
}

.cont-product .product .cont-options .quantity .num {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	margin: auto;
	top: 1px;
	width: 40%;
	color: #b62138;
	font-size: 80%;
}

.cont-product .product .cont-options .quantity .minus {
	position: absolute;
	height: 100%;
	right: 0;
	width: 30%;
	padding: 0 0 0px 0;
	margin: 0;
	border: none;
	outline: none;
	background: #000;
	color: #fff;
}

.cont-product .product .cont-options .remove {
	position: absolute;
	width: 50%;
	height: 100%;
	background: #b62138;
	margin: 0;
	padding: 0;
	right: 0;
	top: 0;
	border: none;
	text-transform: uppercase;
	font-size: 41%;
	font-weight: 100;
	color: #fff;
	outline: none;
}

.cont-product .active {
	z-index: 3;
	transform: scale(2);
	box-shadow: 0 0 27px rgba(0, 0, 0, 0.25);
}
/*class for animation*/
.slideup {
	bottom: 0 !important;
}

.zindex {
	z-index: 2;
}

.slide-right {
	transform: translateX(200px);
}

.slide-cont-left {
	transform: translateX(-100px);
}

.btn-hiding {
	opacity: 0;
}
</style>
<script type="text/javascript">

function validate{
	
function ValidateEmail(uemail)
{
	var uemail = document.f.Email;
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(uemail.value.match(mailformat))
{
return true;
}
else
{
alert("You have entered an invalid email address!");
uemail.focus();
return false;
}
}

function allLetter(uname)
{ 
	var uname = document.f.hname;
var letters = /^[A-Za-z]+$/;
if(uname.value.match(letters))
{
return true;
}
else
{
alert('Username must have alphabet characters only');
uname.focus();
return false;
}
}
}





</script>
</head>
<body>


	<div class="container">
	
	
		<!--End TOTAL-LOGO-->
		<div class="step">
			<div class=""></div>
	<h2>Enter payment Details</h2>
			<div class=""></div>
		</div>
		<!--End STEP-->
		<div class="cont-forms">
			<form action="Addpayment" class="form" method = "POST"  onsubmit="return validate()" >
				<fieldset class="card-holder">
					<label for="card-num">Credit card number</label> <input type="text" maxlength="4"
						placeholder="Enter last 4 digit  1111" required
						name="cnumber" />
				</fieldset>

				<fieldset class="card-holder">
					<label for="card-num">Credit card holder</label> <input type="text"
						placeholder="Mr.fernando" name="hname" required />
				</fieldset>
				<fieldset class="card-holder">
					<label for="card-num">Email</label> <input type="text" 
						placeholder="fernando@gmail.com" name="Email" required />
				</fieldset>
				<fieldset class="card-expiration">
					<div class="expiry-ccv">
						<div class="card-holder">
							<label for="card-num">Expiration Date</label> <input class="last"
								type="num" maxlength="5" placeholder="02/04" name="Date" required/>
						</div>
						<br>
						<div class="card-holder">
							<label for="card-ccv">ccv</label> <input type="text" 
								maxlength="3" placeholder="123" name="ccv" required/>
						</div>
					</div>
				</fieldset>
				<fieldset class="conf-button">
					<div class="flex-wrapper">
						<button class="purchase">
							<span>Confirm</span>
						</button>
						<div class="or-element">
						
							<span><span>
						</div>

						<button type="reset" value="reset" class="purchase">
							<span>Reset</span>
						</button>
					</div>
				</fieldset>
			</form>
		</div>
		<!--End CONT-FORMS-->

	</div>
	<!--End CONTAINER-->
</body>
</html>
