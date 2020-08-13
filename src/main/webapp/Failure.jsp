<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="DefaultTop.jsp"></jsp:include>
<div class="container">
<%
if(request.getParameter("type").toString().trim().equals("Reg"))
{
	%><h2>Registration Failed!!</h2>
	<br/>
	<a href="index.jsp">Home</a>
<%}else if(request.getParameter("type").toString().trim().equals("UserReg"))
{
	%><h2>Registration Failed!!</h2>
	<br/>
	<a href="home">Home</a>
<%}
else if(request.getParameter("type").toString().trim().equals("Auth"))
{
	%><h2>Authentication Failed!!</h2>
	<br/>
	<a href="index.jsp">Home</a>
<%
}
else if(request.getParameter("type").toString().trim().equals("RegUserDisease"))
{
	%><h2>Disease Registration Failed!!</h2>
	<br/>
	<a href="userHome">Home</a>
<%
}
%>
</div>
</body>
</html>