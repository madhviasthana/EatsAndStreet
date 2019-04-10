<%@page import="java.util.ArrayList"%>
<%@page import="shops.product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<body>
<% 
product p1= new product();


p1.setProduct(request.getParameter("product"));
p1.setPrice(Integer.parseInt(request.getParameter("rate").trim()));
p1.setQunt(Integer.parseInt(request.getParameter("quantity").trim()));



	ArrayList<product> cart = (ArrayList) session.getAttribute("cart") ;
if (cart==null)
	cart=new ArrayList();
	


cart.add(p1);
session.setAttribute("cart", cart);

%>
</body>
 </html>

