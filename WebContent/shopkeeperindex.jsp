<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Welcome Shopkeeper</title>  
    <meta http-equiv="refresh" content="180">
<link href="shopkeeper.css" type="text/css" rel="stylesheet"> 
      <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">  
    <!-- JQUERY CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#typed-content-showcase").click(function(){
    $("#showOnceContent").show();

  });
});
</script>
</head>


<body>
    
<div id="mySidebar" class="sidebar">
<a href="javascript:void(0)" style="position: absolute;top: 1%;right: 10%;" onclick="closeNav()">X</a>
<a href="#">Home</a>
<a href="#">About</a>
<a href="#">Team</a>
<a href="productsaddition.jsp">Add Products</a>
<a href="#">Insight</a>
<a href="selectshoptype.jsp">Profile</a>
<a href="shopkeeperlogout.jsp">Logout</a>
    </div>   

<div class="main" style="background-color: white;color:white;text-transform:capitalize;">
    
 <button class="openbtn"  onclick="openNav()" >&#9776;</button> 
Add a shop and earn money online
    </div>    
    
 <script>
 function openNav(){
     document.getElementById("mySidebar").style.width="250px";
     document.getElementById("main").style.marginLeft="250px";
 }
    
function closeNav(){
         document.getElementById("mySidebar").style.width="0px";
     document.getElementById("main").style.marginLeft="0px";
}
 </script>
    
    
   
    
    
     <div>
      <%
     String sessionName= (String)session.getAttribute("name");
	 
     %>

   <marquee><h5><span style="text-transform: capitalize;color: #EA5B31;"><% out.println("Welcome "+sessionName + " Add Shop and earn money -:) "); %></span></h5></marquee>  
     <br><br>
   <br>   
     <br>
  <center> <h1 style="color: #EA5B31;">Discover restaurants delivering to your Street</h1><br>
<h3 style="color: black;">Place order on the Eats &amp; Street app</h3></center>
      </div>
    
    
    
   <div id="initialContent">
   <div id="initalcontent1"> <p>Welcome to our website.</p></div>
         <center>
             <div style="margin-top: 10vh;">
         <button id="typed-content-showcase" style="color: white;font-weight: bold;background-color:#993333;border: 1px solid white;" class="btn btn-lg btn-dark " data-toggle="popover" title="Book delicious food, hurry up!!!!!!!!!" data-content="And here's some amazing content. It's very engaging. Right?"></button>
                 </div>
       </center>
         
       </div> 
    <div id="showOnceContent" style="  padding: 50px;display:none;
  color:#EA5B31;font-weight:bold;font-style:cursive;font-size:24px;">Check it out some cool stuff!!!</div>
    <div id="spriteSheet">
    
 
</div>  

<%if(request.getParameter("submit")!=null){ %>

<%!Connection con=null; %>

  <% try{
	  
	String resturantname=request.getParameter("resturantname");
	String  city=request.getParameter("city");
	String phonenumber=request.getParameter("phonenumber");
	String location=request.getParameter("location");
	String contactInfo=request.getParameter("contactInfo");
	String emailaddress=request.getParameter("emailaddress");
	String manageryesorno= request.getParameter("manageryesorno");
	String openingstatus= request.getParameter("openingstatus");
	Class.forName("com.mysql.jdbc.Driver");

	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkeeper","root","");

	String sql="insert into addshopdetails (resturantname,city,phonenumber,location,contactInfo,emailaddress,manageryesorno,openingstatus) values(?,?,?,?,?,?,?,?)";

	PreparedStatement smt = con.prepareStatement(sql);
	smt.setString(1, resturantname);
	smt.setString(2, city);
	smt.setString(3, phonenumber);
	smt.setString(4, location);
	smt.setString(5, contactInfo);
	smt.setString(6,emailaddress);
	smt.setString(7, manageryesorno);
	smt.setString(8,openingstatus);
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
    
}
  
  %>
   
  
    
    

    
















    
 <footer>
     <center>
    <h6>&copy; Designed By~ Madhvi Asthana</h6>
    </center>
    </footer>   
    
    
 <!--Type.js plugin-->
      
 <script src="https://s3.amazonaws.com/myadvobuck/static/libs/typed.min.js"></script>
          
<!--Typed.js javascript-->
      
      <script>   
      var type = new Typed('#typed-content-showcase',{
          stringsElement:'#initalcontent1',
          typeSpeed:100,                 
                           
                           });
      
      </script>
      
      
     <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  
    
    </body>
    </html>
    
    
       
    
    
    
    
    
    
    
    
    
    
    