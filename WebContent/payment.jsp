<%@page import="shops.product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
#fixedbutton {
    position: fixed;
    bottom: 0px;
    right: 0px; 
}


</style>


</head>
<body>
    
        
       
	 
 
   
<table border='1'>
<table class="table">
  <thead class="thead-dark">
    <tr>
   
      <th scope="col">Product</th>
      <th scope="col">Quantity</th>
      <th scope="col">Price</th>
    </tr>
  </thead>
<%
ArrayList<product> cart = (ArrayList)session.getAttribute("cart") ;
if(cart!=null){
	int sum=0;
	
	for(product p1 : cart){
	sum=sum+p1.getPrice()*p1.getQunt();
	%>
	 <tbody>
	<tr><td><%=p1.getProduct()%></td><td><%=p1.getQunt()%></td><td><%=p1.getPrice()%></td></tr>
	</tbody>
	<%
	}
	
	%>  <tr ><td colspan="2" style="background-color:#D4D4D4;" >Total Price</td><td   style="background-color:#D4D4D4;"><%= sum %></td></tr>  <% 
}
%>

<%
ArrayList <String> list = (ArrayList)(session.getAttribute("list"));
if(list==null)
	list = new ArrayList();

session.setAttribute("list", list);

for(String x : list)
	out.println(x);

%>
</table>

 <form class="form-inline my-2 my-lg-0" >

          <button style=" background-color:white;color:green;" id="fixedbutton" name="redirectButton" onclick="redirectIt()" class="btn-lg primary-btn"  type="submit"><i class="fas fa-shopping-cart"></i> &#128176;Payment mode</button>
        </form>




 
    	  <%  if(request.getParameter("redirectButton")!=null){
    	 
    	  response.sendRedirect("payu.jsp");
    	 
      } %>


















<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>









</body>
</html>