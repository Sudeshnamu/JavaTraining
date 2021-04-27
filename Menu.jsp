<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<%
	String user=request.getParameter("userName");
	out.println("Hello!!! "+user+"<br/>"+"Welcome to your Library Account"+"<br/><br/>");
%>
<form method="post" action="Login.html">
	<input type="submit" value="Logout"/>
</form>
</center><br/><br/>
<a href="AccountDetails.jsp">AccountDetails</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Search.jsp">Search/Issue</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Return.jsp">Return</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="History.jsp">History</a>
</body>
</html>
