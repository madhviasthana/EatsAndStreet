<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add your products to display</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
body {
  padding-top: 50px;
      background-image: url(images/bg1.jpg);
         background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
margin-left:10px;
    padding-bottom: 0px;
    padding-left: 0px;
    padding-right: 0px;
  font-weight:bold;
  
}

</style>
</head>
<body>

<h1>Add your products:-</h1><br>

<form method="post">
<label for="name">Name Of Product:</label><br><br>
<input id="name" type="text" name="name"><br><br>
<label for="pricing">Price:</label><br><br>
<input type="number" id="pricing" name="price"><br><br>
<label for="quantity">Quantity:</label><br><br>
<input type="number" id="quantity" name="qty"><br><br>
<input type="file" name="image">
<input type="submit" name="submit" class="btn btn-lg btn-danger " style="background-color:#EA5B31;" value="submit">
</form>

<%

if(request.getParameter("submit")!=null){
	
%>

<%!Connection con =null; %>

<%

try{
   String name = request.getParameter("name");
   String price= request.getParameter("price");
   
  
Class.forName("com.mysql.jdbc.Driver");

con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkeeper","root","");

String sql="insert into addproduct (name,price,username,quantity) values(?,?,?,?)";

PreparedStatement smt = con.prepareStatement(sql);
smt.setString(1, request.getParameter("name"));

smt.setString(2, request.getParameter("price"));
smt.setString(3, session.getAttribute("name")+"");
smt.setString(4, request.getParameter("qty"));
int n = smt.executeUpdate();
if(n==0){
	System.out.print("failure");
}
else{
	System.out.print("sucess");
}


}
catch(Exception e){
System.out.println("Error : "+ e.getMessage());
}
%>   
   
 <%} %>  
   
   
   

   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>