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
</head>
<body>
<%
try
{  response.setHeader("Pragma", "No-cache");
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setDateHeader("Expires", -1);
if(session.getAttribute("userid")==null)
{
	response.sendRedirect("home");
}
%>
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
 
				     <li class="menu__item">
                                    <a   href="<%=session.getAttribute("utype").toString()+"Home" %>" class="menu__link"><span class="menu__helper">Home</span>
                                         
                                    </a>
                                </li>
                                <%if(session.getAttribute("utype").toString().trim().equals("admin"))
                                	{
                                	%>
                                <li class="menu__item">
                                    <a   href="BranchReg" class="menu__link"><span class="menu__helper">Register Branch</span></a>
                                </li>
                                 <li class="menu__item">
                                    <a  href="viewBranches"class="menu__link"><span class="menu__helper"> View Branches</span></a>
                                </li>
                                 <li class="menu__item">
                                <a  href="viewUsers" class="menu__link"><span class="menu__helper">View Users</span></a>
                            </li>
                                
                                <%} else if(session.getAttribute("utype").toString().trim().equals("user"))
                            	{
                            	%>
                            <li class="menu__item">
                                <a  href="#" class="menu__link"><span class="menu__helper">Money Transfer</span></a>
                            </li>
                             <li class="menu__item">
                                <a  href="#" class="menu__link"><span class="menu__helper">Transaction History</span></a>
                            </li>
                           
                            
                             <%} else if(session.getAttribute("utype").toString().trim().equals("branch"))
                            	{
                            	%>
                            <li class="menu__item">
                                <a  href="#" class="menu__link"><span class="menu__helper">Pending Chequebook Requests</span></a>
                            </li>
                             <li class="menu__item">
                                <a  href="#" class="menu__link"><span class="menu__helper">Threat Log</span></a>
                            </li>
                           
                            <%} %>
                                 <li class="menu__item">
                                <a  href="logout" class="menu__link"><span class="menu__helper">Logout</span></a>
                            </li>
                            
				</ul>
			</div>
		</div>
	</nav>
 
			<div class="clearfix"></div>
</div>
<!-- //navigation -->
<!-- banner section -->
<div class="banner-slider1">
				<div class="container">
						<!--Slider-->	
				<div class="callbacks_container">
					 
				</div>
				<!-- //Slider -->

				</div>
</div>
 

  <div class="container"> 
            <p class="para">
            Logged in as <%=session.getAttribute("username").toString() %>( <%=session.getAttribute("utype").toString() %>)
            </p>
         </div>
    <!--// end-smoth-scrolling -->
    <%}catch(Exception ex)
{
    	System.out.println("err="+ex.getMessage());
    	 
}%>
</body>

</html>