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
<div class="container"><br/><br/>
<%
if(request.getParameter("type").toString().trim().equals("Reg"))
{
	%><h2 class="h2">Your Registration Done Successfully....</h2>
	<br/>
	<a href="netbanking">Home</a>
<%}
if(request.getParameter("type").toString().trim().equals("UserReg"))
{
	%><h2 class="h2">Your Registration Done Successfully....</h2>
	<br/>
	<a href="netbanking">Home</a>
<%}
else if(request.getParameter("type").toString().trim().equals("Exp"))
{
	%><h2 class="h2">Branch Registration Done Successfully....</h2>
	<br/>
	<a href="adminHome">Home</a>
<%
}
else if(request.getParameter("type").toString().trim().equals("chqReq"))
{
	%><h2 class="h2">Cheque book Request Sent Successfully....</h2>
	<br/>
	<a href="/userHome">Home</a>
<%
}
else if(request.getParameter("type").toString().trim().equals("ProcessChqReq"))
{
	%><h2 class="h2">Cheque Book Request Processed Successfully....</h2>
	<br/>
	<a href="viewChqPending">Home</a>
<%
}
%>
</div>
</body>
</html>