<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
<body>
<form>
<input type="search" placeholder="Enter your name" name="sname">
</form>
<%

try{
String sname=request.getParameter("sname");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkeeper","root","");
String sql = "select * from usersdetail where name=sname ";
PreparedStatement st = con.prepareStatement(sql);
ResultSet rs= st.executeQuery();

while(rs.next()){%>
<div><%=rs.getString(1) %></div>
<div><%=rs.getString(3) %></div>


<%}

} catch(Exception e){
System.out.println("error :" + e.getMessage());

}
%>
</body>
</html>