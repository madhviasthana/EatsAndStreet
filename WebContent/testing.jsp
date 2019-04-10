<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkeeper","root","");

String sql="select * from usersdetail";
PreparedStatement smt=con.prepareStatement(sql);
ResultSet rs=smt.executeQuery();
while(rs.next()){
	out.println(rs.getString(1));
}
}
catch(Exception e){
System.out.println("Error : "+ e.getMessage());
}
%>

</body>
</html>