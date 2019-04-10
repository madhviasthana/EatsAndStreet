<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% 


String user=request.getParameter("name");

session.setAttribute("name", user);


	%>
	
 
 
 
 
    <%!Connection con =null; %>

<%
if(request.getParameter("submit")!=null){
try{
	
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkeeper","root","");
String sql = "select count(*) from usersdetail where name=? and password=?";
PreparedStatement st = con.prepareStatement(sql);
st.setString(1, request.getParameter("name"));
st.setString(2, request.getParameter("pswdId"));
ResultSet rs= st.executeQuery();
if(rs.next()){
if(rs.getInt(1)==1){
	response.sendRedirect("shopkeeperindex.jsp");
}
}
	System.out.print("customer");
	 sql = "select count(*) from customerdetail where name=? and password=?";
	 st = con.prepareStatement(sql);
	 st.setString(1, request.getParameter("name"));
	 st.setString(2, request.getParameter("pswdId"));
	 rs= st.executeQuery();
	 if(rs.next()){
		 if(rs.getInt(1)==1){
		 	response.sendRedirect("customerindex.jsp");
		 }
		 else{
			 response.sendRedirect("index.jsp");
			 out.println("<h1>Sorry</h1>");
			 
			
		 }
		 }




}
catch(Exception e){
	System.out.print("Error"+e.getMessage());
}
}
%>
    
    
    
</body>
</html>