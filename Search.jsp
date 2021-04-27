<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
<form method="post" action="index.jsp">
<input type="submit" value="Logout">
</form>
<br>
<a href="AccountDetails.jsp" >Account Details</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="SearchBook.jsp">Search/Issue</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="ReturnBook.jsp">Return</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="UserHistory.jsp">History</a>
<br>
<br>

<p>
Select Search Criteria: 

</p>
<form method="post" action="SearchPrint.jsp">
<input type="radio" name="criteria" value="1" >By Book ID
<br>
<input type="radio" name="criteria" value="2" >By Department
<br>
<input type="radio" name="criteria" value="3" >By Book Name
<br>
<input type="radio" name="criteria" value="4" >By Author Name
<br>
<input type="radio" name="criteria" value="5" >All books
<br>
<br>

Insert Search Value:
<input type="text" name="src">
<br>
<input type="submit" value="Search">

</form>

</body>
</html>