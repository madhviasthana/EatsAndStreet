<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Intermediate</title>
</head>
<body>

<% 


String user=request.getParameter("name");

session.setAttribute("name", user);


	%>
	
	

  <%

if(request.getParameter("submit")!=null){
	
%>

<%!Connection con =null; %>

<%

try{
   String name = request.getParameter("name");
   String pswdId= request.getParameter("pswdId");
   String mobilenumber=request.getParameter("mobilenumber");
  
Class.forName("com.mysql.jdbc.Driver");

con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkeeper","root","");

String sql="insert into customerdetail (name,password,mobilenumber) values(?,?,?)";

PreparedStatement smt = con.prepareStatement(sql);
smt.setString(1, request.getParameter("name"));

smt.setString(2, request.getParameter("pswdId"));

smt.setString(3, request.getParameter("mobilenumber"));

int n = smt.executeUpdate();
response.sendRedirect("customerindex.jsp");
if(n==0){
	System.out.print("failure");
	
}
else{
	System.out.print("sucess");
	response.sendRedirect("customerindex.jsp");
}


}
catch(Exception e){
System.out.println("Error : "+ e.getMessage());
}
%>   
   
 <%} %>  
   
     





	
	
	
	
	
	
	
	
	
	
	
</body>
</html>