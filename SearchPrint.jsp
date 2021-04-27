<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.java.mphasis.library.ConnectionHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
Connection con=ConnectionHelper.getConnection();
PreparedStatement ps;


String str=request.getParameter("criteria");
String str1=request.getParameter("src");
%>
<%
if(str.equals("1"))
{	
	String str2="select * from Books where Id=?";
	ps=con.prepareStatement(str2);
	ps.setInt(1, Integer.parseInt(str1));
	
	ResultSet rs=ps.executeQuery();
	%>
	
		<table border="3">
	<tr>
	<th>Id</th>
	<th>Name</th>
	<th>Author</th>
	<th>Edition</th>
	<th>Department</th>
	<th>Total Books</th>
	<th>Select</th>

	</tr>
	<%
	while(rs.next())
	{
%>
<tr>
<td><%=rs.getInt("Id") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("author") %></td>
<td><%=rs.getString("edition") %></td>
<td><%=rs.getString("dept") %></td>
<td><%=rs.getInt("totalbooks") %></td>
<td><input type="checkbox"></td>


</tr>





<% }%>
</table>
<%} %>

<%
if(str.equals("2"))
{	
	String str3="select * from Books where Dept=?";
	ps=con.prepareStatement(str3);
	ps.setString(1,str1);
	
	ResultSet rs=ps.executeQuery();
%>
	
		<table border="3">
	<tr>
	<th>Id</th>
	<th>Name</th>
	<th>Author</th>
	<th>Edition</th>
	<th>Department</th>
	<th>Total Books</th>
	<th>Select</th>

	</tr>
	<%
	while(rs.next())
	{
%>
<tr>
<td><%=rs.getInt("Id") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("author") %></td>
<td><%=rs.getString("edition") %></td>
<td><%=rs.getString("dept") %></td>
<td><%=rs.getInt("totalbooks") %></td>
<td><input type="checkbox"></td>


</tr>





<% }%>
</table>
<% }%>


<%
if(str.equals("3"))
{	
	String str3="select * from Books where Name=?";
	ps=con.prepareStatement(str3);
	ps.setString(1,str1);
	
	ResultSet rs=ps.executeQuery();
%>
	
		<table border="3">
	<tr>
	<th>Id</th>
	<th>Name</th>
	<th>Author</th>
	<th>Edition</th>
	<th>Department</th>
	<th>Total Books</th>
	<th>Select</th>

	</tr>
	<%
	while(rs.next())
	{
%>
<tr>
<td><%=rs.getInt("Id") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("author") %></td>
<td><%=rs.getString("edition") %></td>
<td><%=rs.getString("dept") %></td>
<td><%=rs.getInt("totalbooks") %></td>
<td><input type="checkbox"></td>


</tr>





<% }%>
</table>
<% }%>


<%
if(str.equals("4"))
{	
	String str3="select * from Books where Author=?";
	ps=con.prepareStatement(str3);
	ps.setString(1,str1);
	
	ResultSet rs=ps.executeQuery();
%>
	
		<table border="3">
	<tr>
	<th>Id</th>
	<th>Name</th>
	<th>Author</th>
	<th>Edition</th>
	<th>Department</th>
	<th>Total Books</th>
	<th>Select</th>

	</tr>
	<%
	while(rs.next())
	{
%>
<tr>
<td><%=rs.getInt("Id") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("author") %></td>
<td><%=rs.getString("edition") %></td>
<td><%=rs.getString("dept") %></td>
<td><%=rs.getInt("totalbooks") %></td>
<td><input type="checkbox"></td>


</tr>





<% }%>
</table>
<% }%>


<%
if(str.equals("5"))
{	
	String str3="select * from Books";
	ps=con.prepareStatement(str3);
	
	
	ResultSet rs=ps.executeQuery();
%>
	
		<table border="3">
	<tr>
	<th>Id</th>
	<th>Name</th>
	<th>Author</th>
	<th>Edition</th>
	<th>Department</th>
	<th>Total Books</th>
	<th>Select</th>

	</tr>
	<%
	while(rs.next())
	{
%>
<tr>
<td><%=rs.getInt("Id") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("author") %></td>
<td><%=rs.getString("edition") %></td>
<td><%=rs.getString("dept") %></td>
<td><%=rs.getInt("totalbooks") %></td>
<td><input type="checkbox"></td>


</tr>





<% }%>
</table>
<% }%>




</body>
</html>