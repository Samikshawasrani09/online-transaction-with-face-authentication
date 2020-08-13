<%@page import="com.models.Branch"%>
<%@page import="com.models.Cities"%>
<%@page import="com.models.States"%>
<%@page import="java.util.List"%>
<%@page import="com.models.GetStateNCities"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<title>Register</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
 <select required name="branch" class="form-control">

<%
String st=request.getParameter("state");
String ct=request.getParameter("city");

//cities to be generated from the DB later
GetStateNCities obj=new GetStateNCities();
obj.getBranches(st, ct);
List<Branch> lst=obj.getLstbranch();
%><option value=""><--select--></option><%
 for(int i=0;i<lst.size();i++)
{%>
<option value="<%=lst.get(i).getUserid()  %>"><%=lst.get(i).getName() %></option>											
<%}%>
 

</select>
</body>
</html>