<%@page import="com.mysql.cj.jdbc.PreparedStatementWrapper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Purchase</title>
<link rel="stylesheet" href="showproducts.css" type="text/css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
 <!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">   
<style>


body{
	 background-image: url(images/bg1.jpg);
         background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
}

#fixedbutton {
    position: fixed;
    bottom: 0px;
    right: 0px; 
}

</style>
<script type="text/javascript">

function  update(x){
	
	var  n = document.getElementById('quantity').value;
	n = Number(n)+1;
	document.getElementById('quantity').value=n;
	
	}
	
function  addToCart(product,rate,quantity){
	var ajax = new XMLHttpRequest();
	ajax.open("GET","intermediateforcart.jsp?product="+product.value +"&rate=" +rate.value+"&quantity="+quantity.value,true);
	ajax.send();
	//alert(product.value);
	ajax.onreadystatechange=function(){
		if(this.readyState==4 && this.status==200){
			//alert(this.responseText);
		}
		
	};
}	
</script>
</head>
<body>
<!--======================Navigation bar========================================================================================================-->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top" style="background-color: firebrick;margin-bottom:200px;">
      <a class="navbar-brand" href="#"><h1><b>Eats</b> &amp; <b>Street</b></h1></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="customerindex.jsp"><h5><b>Home </b></h5><span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><h5><b>About</b></h5></a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="#"><h5><b>Team</b></h5></a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><b>Services</b></a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="showproducts.jsp"><b>Products</b></a>
              <a class="dropdown-item" href="#"><b>Your Profile</b></a>
              <a class="dropdown-item" href="customerlogout.jsp"><b>Logout</b></a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <section id="carousel" style="color:#F04A4C;">
  <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://i.pinimg.com/originals/8d/4b/9f/8d4b9f72bc508fe972426fa62e252b52.jpg" class="d-block w-100" height="500px" alt="carrousel image 1">
        <div class="carousel-caption">
        <h2 class="coinyFont animated rollIn" style="animation-delay: 1s;color:green;">
Find food you love from local shops and chain favourites.</h2>
        </div>
    </div>
    <div class="carousel-item">
      <img src="http://www.devendraanimations.com/images/np14.jpg" class="d-block w-100" height="500px" alt="carrousel image 2">
          <div class="carousel-caption">
        <h2 class="coinyFont animated slideInRight" style="animation-delay: 1s;color:white;">Tap to place your order and pay with your Uber account.

</h2>
        </div>
    </div>
    <div class="carousel-item">
      <img src="images/tired-grocery-store-cashier-animation-looping_r655sygx__F0000 (1).png" class="d-block w-100" height="500px" alt="carrousel image 3">
          <div class="carousel-caption">
        <h2 class="coinyFont animated rollIn" style="animation-delay: 1s;color:#92AA6C;">Track your items in real time from the shop to you.


</h2>
        </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</section>




  <form class="form-inline my-2 my-lg-0" >

          <button style=" background-color:#EA5B31;color:white;" id="fixedbutton" name="redirectButton" onclick="redirectIt()" class="btn-lg primary-btn"  type="submit"><i class="fas fa-shopping-cart"></i> Your Cart</button>
        </form>

<a href="payment.jsp"></a>
 
    	  <%  if(request.getParameter("redirectButton")!=null){
    	 
    	  response.sendRedirect("payment.jsp");
    	 
      } %>
     
<%!Connection con =null; %>

<%
try{
	
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkeeper","root","");
String sql = "select * from addproduct";
PreparedStatement st = con.prepareStatement(sql);
ResultSet rs= st.executeQuery();

while(rs.next()){%>
<form>
<div id="items">

	<div id="productname"><label><h4>Product :</h4></label> <input type="hidden" id="product"  name="product" value='<%=rs.getString(1)%>'><%=rs.getString(1)%> </div>
	<div id="productprice""><label><h5>Price(Rs): </h5><label> <input type="hidden" id="price"  name="price" value='<%=rs.getString(2)%>'><%=rs.getString(2)%> </div>
	<br/>
	
	
	<center>
	<input id="submitfield" type="button" value="Add to cart" class="btn btn-primary btn-lg"  name="submit" onclick="addToCart(product,price,quantity);alertFor()">
	
	</center>
	
	<br><input type="text" id="quantity" readonly="readonly" value="1"/> <i class="fas fa-shopping-cart"></i>
	
	<input id="qty" name="qty" class="btn btn-primary" type="button" value="add 1 more" onclick="update(quantity);alertFor()">
	
</div>
</form>
<%}

} catch(Exception e){
System.out.println("error :" + e.getMessage());

}
%>

<div id="idOfProducts"> </div>
<%-- <div id="nameOfProducts"> <%rs.getString(2); %> </div>
<div id="PriceOfProducts"> <%rs.getString(3); %> </div>
--%>
</div>
	
	<script>
	function alertFor(){
		alert("Added to cart");
	}
	
	</script>
<footer>

 
</footer>
	
     <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="ShopkeeperWebsite\WebContent\js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
  

</body>
</html>