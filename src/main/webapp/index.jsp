<%@page import="com.models.States"%>
<%@page import="java.util.List"%>
<%@page import="com.models.GetStateNCities"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Online Banking a Banking Category Bootstrap Responsive Web Template | Home :: w3layouts</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Online Banking Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->
<!-- css files -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /> <!-- Bootstrap-Core-CSS -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" /> <!-- Banner-Slider-CSS -->
<!-- //css files -->
<link rel="stylesheet" type="text/css" href="css/demo.css"/>
<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Ubuntu+Condensed&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext" rel="stylesheet">
<!-- //online-fonts -->

<script language="Javascript" type="text/javascript">
 

function createRequestObject() {
    var tmpXmlHttpObject;
    if (window.XMLHttpRequest) {
            tmpXmlHttpObject = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        tmpXmlHttpObject = new ActiveXObject("Microsoft.XMLHTTP");
    }

    return tmpXmlHttpObject;
}


var http = createRequestObject();

function makeGetRequest(st) {
   // st=document.frm.state.value;
   
    http.open('get', 'RCities?state=' + st);
    http.onreadystatechange = processResponse;
    http.send(null);
}

function processResponse() {
    if(http.readyState == 4){
        var response = http.responseText;
        document.getElementById('cities').innerHTML = response;
    }
}
 
</script>

<script language="Javascript" type="text/javascript">
 

function createRequestObject() {
    var tmpXmlHttpObject;
    if (window.XMLHttpRequest) {
            tmpXmlHttpObject = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        tmpXmlHttpObject = new ActiveXObject("Microsoft.XMLHTTP");
    }

    return tmpXmlHttpObject;
}


var http = createRequestObject();

function makeGetRequest1(ct) {
	 
     st=document.frm11.state.value;
   
 	 
    http.open('get', 'Branches?city=' + ct+'&state='+st);
    http.onreadystatechange = processResponse1;
    http.send(null);
}

function processResponse1() {
    if(http.readyState == 4){
        var response = http.responseText;
        document.getElementById('branch').innerHTML = response;
    }
}
 
</script>
</head>
<body>

<!-- navigation -->
<div class="nav-links">	
		<div class="header-w3l">
			<div class="container">
				<a class="navbar-brand" href="index.html"><h1><span>Online</span> Banking</h1></a>
				<div class="call-w3l">
					<img src="images/call.png">
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<nav class="navbar navbar-inverse">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>                        
				</button>
			</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<div class="w3l-nav">
				<ul class="nav navbar-nav link-effect">
					<li class="active"><a href="netbanking">Home</a></li>
					<li><a href="#about" class="scroll">Login</a></li>
					<li><a href="#services" class="scroll">User Registration</a></li>
				 
				</ul>
			</div>
		</div>
	</nav>
	<div class="codecon_half">
				<div class="expSearchBox">
					<div class="expSearchFrom">
						<input id="field" type="search" placeholder="Search here"/>
						<div class="close">
							<span class="front"></span>
							<span class="back"></span>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
</div>
<!-- //navigation -->
<!-- banner section -->
<div class="banner-slider">
				<div class="container">
						<!--Slider-->	
				<div class="callbacks_container">
					 
				</div>
				<!-- //Slider -->

				</div>
</div>
<!-- Modal1 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
					<img src="images/g7.jpg" alt=" " class="img-responsive">
					<h5></h5>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, rds which don't look even slightly believable..</p>
			</div>
		</div>
		<!-- //Modal content-->
	</div>
</div>
<!-- //Modal1 -->
<!-- //banner section -->
<!-- about -->
<div class="about" id="about">
	<div class="container">
		<h3 class="w3l-title"><span>Login</span> </h3>
		<div class="w3-agileits-about-grids">
			<div class="col-md-5 agile-about-right">
				<img src="images/3.png" alt="" />
			</div>
			<div class="col-md-7 agile-about-left">
				 <form name="frm" method="post" action="login">
 <div class="jumbotron">
<table class="tblform ">
<tr>
<td>UserID
<td><input type="text" class="form-control" required name="txtuserid">
</tr>

<tr>
<td>Password
<td><input type="password"  class="form-control" required name="txtpass">
</tr>

<tr>
<td><input type="submit" class="btn btn-submit" value="Submit">
<td>
</tr>

</table></div>
</form>
				 
				 		</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //about -->
<!-- wthree-slid -->
	<div class="wthree-slid"> 
		<div class="col-sm-6 col-xs-8 wthree-slid-right"> 
			<h4>The best way to save your time and money</h4>
			<p>Express bank will save your time, money and improve the way you manage your business finances. You will have the control you need, with multiple disbursement and payment options, along with many other cash management features to help you optimize your business cash flow</p>
		<a class="w3l-cont scroll" href="#contact">Contact Us</a>
		</div> 
		<div class="col-sm-6 col-xs-4 wthree-slid-left"> 
			 
		</div>
		<div class="clearfix"> </div>
	</div>
	<!-- wthree-slid --> 
<!-- services -->
	<div class="services" id="services">
		<div class="container">
			<h3 class="w3l-title"><span>User</span> Registration</h3>
			<div class="col-md-4 services-grids-1">
				 
			</div>
			<div class="col-md-8 services-grids">
				 
				 <form id="frm11" name="frm11" action="RegUser" method="post">
									 <table class="tblform"><tr>
									 <td>
									  <table class="tblform">
									 <tr><td>UserName</td>
                <td><input type="text" class="form-control"  name="name" required></td></tr>
            <tr><td>UserID</td>
                <td><input type="text"  class="form-control"  name="userid" required></td></tr>
                       
             <tr><td>Password</td>
                <td><input type="password"  class="form-control"  name="pass" required></td></tr>
            
			<tr>
				<td>Mobile Number</td>
				<td>
				<input type="text"  class="form-control"  name="mobile" pattern="^\d{10}$"  >
				</td>
			</tr>
			
                <tr><td>Email ID:</td>
                    <td><input type="text" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"  name="email" required></td>
                </tr>
                      
            <tr>
	            <td>Address</td>
		            <td>
		            <textarea rows="5" cols="25" name="address" class="form-control" ></textarea>          
		            </td>
            </tr>
  
            </table></td><td><table class="tblform">
          
									 
									 <%
									 GetStateNCities obj=new GetStateNCities();
									 obj.getStates();
									 List<States> lst=obj.getLststate();
									 %>
									  <tr>
									 <td>State
									 </td>
									 <td> 
									 <select required id="state" name="state" class="form-control" onchange="makeGetRequest(this.value)">
									 <option value=""><--select--></option>
										<%for(int i=0;i<lst.size();i++)
											{%>
									 <option value="<%=lst.get(i).getState() %>"><%=lst.get(i).getState() %></option>											
											<%}%>															  
									 </select>
									 </td>
									 </tr>
									   <tr>
									 <td>City
									 </td>
									 <td> 
									<div id="cities"></div>
									 </td>
									 </tr>
									  <tr>
									 <td>Branch
									 </td>
									 <td> 
									<div id="branch"></div>
									 </td>
									 </tr>
									  <tr>
									  
									 <td>Balance
									 </td>
									 <td> 
									 <input required type="number" name="balance" class="form-control"/>
									 </td>
									 </tr>
									           
            <tr>
<td>DOB</td>
<td>
<input type="date" name="dob" required class="form-control"/>
</td>
</tr>
<tr>
<td>Gender</td>
<td>
<input type="radio" name="gender" value="Male"   checked="true" required >Male</input>
<input type="radio" name="gender" value="Female"  required>Female</input>
</td>
</tr>
									  <tr>
<td>Account NO </td>
<td>
<input type="text" name="accountNo" required class="form-control"/>
</td>
</tr>
 	 
									 </table></td> </tr>

									 <tr>
									 <td colspan="2"><input type="submit" value="Submit" class="btn btn-primary"/>
									 </td></tr>
									 </table>
									 </form>
			 
			</div>
			 
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //services -->
 
<!-- footer -->
<div class="footer-bot">
	<div class="container">
		<div class="logo2">
			<h2><a href="netbanking"><span>Online</span> Banking</a></h2>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<div class="copy-right">
	<div class="agileinfo_social_icons">
		 
	</div>
	<div class="container">
		<p> &copy; 2019-2020 Online Banking. All Rights Reserved  </p>
	</div>
</div>
<!-- //footer -->

<!-- js files -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
<!-- //js -->
<!-- js for banner -->
<!-- responsiveslider -->
	<script src="js/responsiveslides.min.js"></script>
		<script>
			// You can also use "$(window).load(function() {"
			$(function () {
			  // Slideshow 4
			  $("#slider3").responsiveSlides({
				auto: true,
				pager:true,
				nav:false,
				speed: 500,
				namespace: "callbacks",
				before: function () {
				  $('.events').append("<li>before event fired.</li>");
				},
				after: function () {
				  $('.events').append("<li>after event fired.</li>");
				}
			  });
		
			});
		 </script>
	<!-- //responsiveslider -->
	<!-- stats -->
<script type="text/javascript" src="js/numscroller-1.0.js"></script>
<!-- //stats -->
<!-- /js for banner -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- smooth scrolling -->
<script src="js/SmoothScroll.min.js"></script>
<!-- //smooth scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
	$(document).ready(function() {
		/*
		var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
		};
		*/
		
		$().UItoTop({ easingType: 'easeOutQuart' });
		
	});
</script>
<!-- //smooth-scrolling-of-move-up -->  
<!-- video-js -->
<script src="js/jquery.vide.min.js"></script>
<!-- //video-js -->
<!--gallery-js -->
<script src="js/jquery.picEyes.js"></script>
				<script>
					$(function(){
						//picturesEyes($('.demo li'));
						$('.demo li').picEyes();
					});
				</script>
<!--//gallery-js -->
<!-- //js files -->

</body>
</html>