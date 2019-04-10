<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>

<html>
    
<head>
    
<title>Add Your Shop</title>
 <!-- Bootstrap core CSS-->
    <link href="css/bootstrap.min.css" rel="stylesheet">

<!-- ===============================================CSS Style sheet =====================================================-->
 <style>
 
 @media (min-width: 1200px){
     body{
        
         margin-top: 50px;
         margin-bottom: 0px;
         padding: 0px;
         background-color:#AFEEEE;
         font-weight: bold;
         
     }  
    
     form{
         height: 500px;
         width: 100%;
         background-color: white;
         box-sizing: border-box;
         padding: 10px;
            margin-bottom: 100px;
     }
     input{
         padding: 5px;
         margin-left: 10px;
     }
     .asterick{
         color: red;
     }
    
     #location{
         
         height: 700px;
         background-color:white;
         color: black;
         margin-top: 100px;
         margin-bottom: 100px;
     }
    
          #contact{
         
         height: 200px;
         background-color:white;
         color: black;
         margin-top: 60px;

           
     }
     
     
     footer{
       background-color: black;
         color: white;
         padding: 20px;
        
     } 
     
     
     #spriteSheet{
         background-image: url('https://i.pinimg.com/originals/e7/0e/7d/e70e7d41a4a2af947f551aa49b1236d2.png');
         height:300px; 
         width:184px;
         display: block;
         color: firebrick;
         float:none;
        margin-bottom:0;margin-top:1200px;
         font-size:26px;
         animation: walk 1s steps(8) infinite,
         forward 10s linear infinite;
     }
     @keyframes walk{
         0%{
             background-position: 0px;
         }
         
         100%{
             background-position: 1472px;
         }
     }
     
     @keyframes forward{
         0%{
             transform: translateX(-300px);
             
         }
         
         100%{
             transform: translateX(1200px);
         }
     }
     
     #spriteSheet::after{
         content:'Thanks -:)';

position: relative;
         left: 300px;
         top: 100px;
     
     } 
     #map{
         height: 400px;
         width: 100%;
         margin-top: 100px;
     } 
     }
     
     
     @media (min-width: 992px){
     body{
        
         margin-top: 50px;
         margin-bottom: 0px;
         padding: 0px;
         background-color:#AFEEEE;
         font-weight: bold;
         
     }  
    
     form{
         height: 500px;
         width: 100%;
         background-color: white;
         box-sizing: border-box;
         padding: 10px;
            margin-bottom: 100px;
     }
     input{
         padding: 5px;
         margin-left: 10px;
     }
     .asterick{
         color: red;
     }
    
     #location{
         
         height: 700px;
         background-color:white;
         color: black;
         margin-top: 100px;
         margin-bottom: 100px;
     }
    
          #contact{
         
         height: 200px;
         background-color:white;
         color: black;
         margin-top: 60px;

           
     }
     
     
     footer{
       background-color: black;
         color: white;
         padding: 20px;
        
     } 
     
     
     #spriteSheet{
         background-image: url('https://i.pinimg.com/originals/e7/0e/7d/e70e7d41a4a2af947f551aa49b1236d2.png');
         height:300px; 
         width:184px;
         display: block;
         color: firebrick;
         float:none;
        margin-bottom:0;margin-top:1200px;
         font-size:26px;
         animation: walk 1s steps(8) infinite,
         forward 10s linear infinite;
     }
     @keyframes walk{
         0%{
             background-position: 0px;
         }
         
         100%{
             background-position: 1472px;
         }
     }
     
     @keyframes forward{
         0%{
             transform: translateX(-300px);
             
         }
         
         100%{
             transform: translateX(1200px);
         }
     }
     
     #spriteSheet::after{
         content:'Thanks -:)';

position: relative;
         left: 300px;
         top: 100px;
     
     } 
     #map{
         height: 400px;
         width: 100%;
         margin-top: 100px;
     } 
     }
     
   /*For responsiveness of the page using media query, inorder to show the relationship between screen size and the view*/
     
     @media (min-width:  765px){
     body{
        
         margin-top: 50px;
         margin-bottom: 0px;
         padding: 0px;
         background-color:#AFEEEE;
         font-weight: bold;
         
     }  
    
     form{
         height: 500px;
         width: 100%;
         background-color: white;
         box-sizing: border-box;
         padding: 10px;
            margin-bottom: 100px;
     }
     input{
         padding: 5px;
         margin-left: 10px;
     }
     .asterick{
         color: red;
     }
    
     #location{
         
         height: 700px;
         background-color:white;
         color: black;
         margin-top: 100px;
         margin-bottom: 100px;
     }
    
          #contact{
         
         height: 200px;
         background-color:white;
         color: black;
         margin-top: 60px;

           
     }
     
     
     footer{
       background-color: black;
         color: white;
         padding: 20px;
        
     } 
     
     
     #spriteSheet{
     display:none;
         background-image: url('https://i.pinimg.com/originals/e7/0e/7d/e70e7d41a4a2af947f551aa49b1236d2.png');
         height:300px; 
         width:184px;
         display: block;
         color: firebrick;
         float:none;
        
         font-size:26px;
         animation: walk 1s steps(8) infinite,
         forward 10s linear infinite;
     }
     @keyframes walk{
         0%{
             background-position: 0px;
         }
         
         100%{
             background-position: 1472px;
         }
     }
     
     @keyframes forward{
         0%{
             transform: translateX(-300px);
             
         }
         
         100%{
             transform: translateX(1200px);
         }
     }
     
     #spriteSheet::after{
         content:'Thanks -:)';

position: relative;
         left: 300px;
         top: 100px;
     
     } 
     #map{
         height: 400px;
         width: 100%;
         margin-top: 100px;
     } 
     }
     
     

     
    </style>  
<!-- ================================================================completed CSS Stylesheet=========================================== -->   
</head>
    
<body>
    


  <div class="container">
 <!-- ===============================================Session created ====================================================-->
    <%
    
     String user=request.getParameter("name");
    if(user!=null){
     session.setAttribute("name", user);
    }
     %> 
 <!--========================= printing the name of the user ==================================== -->    
     
     
     <br><br>
 <h2 id="h2"><% out.println("Welcome "+user + " "); %>add your shop :</h2> 
<h6>Basic info </h6>
<!--======================================Form============================================ -->


    <form method="post" action="shopkeeperindex.jsp">
 <div class="form-group">
     
  <label for="namefield">Shop Name<span class="asterick">*</span> </label> <br>
     <input name="resturantname" required id="namefield" type="search">
      <br>
     <br>
<label for="cityfield">CITY<span class="asterick">*</span> </label> <br>
     <input name="city" id="cityfield" type="search">
      <br> 
<br>
<label for="managerradio">ARE YOU THE OWNER OR MANAGER OF THIS SHOP?<span class="asterick">*</span> </label> <br>
     <input name="manageryesorno" id="managerradio" value="No" type="radio">I'm not the owner/manager
      <input name="manageryesorno" id="managerradio" value="yes" type="radio">'m the owner/manager
      <br>
     <br>
<label for="phonenum">PHONE NUMBER</label> <br>
     <input name="phonenumber" id="phonenum"type="number" min="0" maxlength="10">
      <br>
     <br>
<label for="openingstatuss">OPENING STATUS</label> <br>
     <input name="openingstatus" value="yes" id="openingstatuss" type="radio">This shop is already open
          <input name="openingstatus" value="no" id="openingstatuss" type="radio">This shop is opening soon
      <br>
  </div>   

   
    
 <div id="location">
  <label for="address">ADDRESS/LANDMARK</label>  
     <input type="search" id="address" name="location">
     
         <div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
         zoom: 10,
            center: {lat:23.2599, lng:77.4126}
         
        });
      }
    var marker = new google.maps.Marker({
  position: {lat:23.2075, lng:77.3870},
  map: map});
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBlTBjokh7f5AXz_qg854dQYvgVeCH8fgM&callback=initMap"
    async defer></script>
    
    
    
</div>
 <h4>Contact information</h4>     
 <div id="contact" >
   
  <label for="contactInfo">SHOP WEBSITE:</label> 
     <input type="url" id="contactInfo" name="contactInfo"><br><br>
     <label for="emailaddress">SHOP EMAIL :</label>
     <input type="email" id="emailaddress" name="emailaddress">
      
        <br>  <br>  <br>
<div style="display:block;height:50px;width:100px;float:right;">
<input type="submit" name="submit" value="submit" class="btn btn-primary lg-btn">
</div>    
    </div> 
    </form>    
      
     </div>
   

<div class="container" style="">
<section>
<article>
<div id="spriteSheet"></div>

</article>

</section>

</div>
    
  <!--============== for connection to database=================================================================== -->  

    
  <%--===================================For database connection ============================================--%>   

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
if(mobilenumber!=null){
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkeeper","root","");

String sql="insert into usersdetail (name,password,mobilenumber) values(?,?,?)";

PreparedStatement smt = con.prepareStatement(sql);
smt.setString(1, request.getParameter("name"));

smt.setString(2, request.getParameter("pswdId"));

smt.setString(3, request.getParameter("mobilenumber"));

int n = smt.executeUpdate();
if(n==0){
	System.out.print("failure");
}
else{
	System.out.print("sucess");
}

}
}
catch(Exception e){
System.out.println("Error : "+ e.getMessage());
}
%>   
   
 <%} %>  
   
   
   

   
   
   
   
   
   
   
        
    
    
    
    
    
    
    













     
    
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>