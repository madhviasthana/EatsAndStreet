<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<!--====================================================food ordering website=================================================================-->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Food ordering website">
    <meta name="author" content="Madhvi asthana">
      <meta http-equiv="refresh" content="50">
    
    <title>Eats &amp; Street</title>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<!--google fonts-->
      <link href="https://fonts.googleapis.com/css?family=Coiny" rel="stylesheet">
<!--animation css-->
      <link href="css/animate.css" rel="stylesheet">
<!--external js file-->
  <script src="jfile.js" type="text/javascript"></script>
 <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="style.css" rel="stylesheet">
  </head>

  <body>
<!--======================Navigation bar========================================================================================================-->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top" style="background-color: firebrick;">
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
        <form class="form-inline my-2 my-lg-0">

          <button id="btn" name="redirectButton" onclick="redirectIt()" class="btn-lg"  type="submit"><i class="fas fa-shopping-cart"></i>  Eat now</button>
        </form>
      </div>
    </nav>
      
<!--==========================================initial portion of the page=============================================================-->
      
<section>
  <article id="section1">
    <!--one liner-->  
 <div>
  
     
     <%
    
     String sessionvar=(String) session.getAttribute("name");
	 
     %>

   <marquee><h5><span style="text-transform: capitalize;color: #EA5B31;"><% out.println("Welcome "+sessionvar + " Discover Shops that deliver near you -:) "); %></span></h5></marquee>  
     <br><br>
  <center> <h1 style="color: #EA5B31;"> Discover shops delivering to your Street</h1><br>
<h3 style="color: black;">Place order on the Eats &amp; Street app</h3></center>
      </div>
<!--use of typed.js file to show the content dynamically --> 
     
         
     <div id="body-dynamic-type">
         <div id="content-dynamic">
         <p class="content-bold">Eats &amp; Street</p>
         <p>Book Exclusively on our website</p>
         
         </div>
         <center>
             <div style="margin-top: 15vh; min-height:200px;margin-bottom:40px;" >
         <button type="button" id="typed-content-showcase" style="color: white;font-weight: bold;" class="btn btn-lg btn-warning " data-toggle="popover" title="Book delicious food, hurry up!!!!!!!!!" data-content="And here's some amazing content. It's very engaging. Right?"></button>
                 </div>
       </center>
         
         </div>
      <br><br>
     
</article>  
      </section>
      
      
      
      
       
<!--===============================Carrousel==================================================================================================-->

      <section id="carousel">
  <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/carrouselimg1.jpg" class="d-block w-100" height="500px" alt="carrousel image 1">
        <div class="carousel-caption">
        <h2 class="coinyFont animated rollIn" style="animation-delay: 1s;">We Provide Reliable Services</h2>
        </div>
    </div>
    <div class="carousel-item">
      <img src="images/carrouselimg2.jpg" class="d-block w-100" height="500px" alt="carrousel image 2">
          <div class="carousel-caption">
        <h2 class="coinyFont animated slideInRight" style="animation-delay: 1s;">We Provide Reliable Services</h2>
        </div>
    </div>
    <div class="carousel-item">
      <img src="images/carrouselimg3.jpg" class="d-block w-100" height="500px" alt="carrousel image 3">
          <div class="carousel-caption">
        <h2 class="coinyFont animated rollIn" style="animation-delay: 1s;">We Provide Reliable Services</h2>
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
      <br><br>
 <!-- new div-->
      <div id="after-carrousel-section">
      
      
     <div class="container">
  <div class="row">
    <div class="col-sm">
     <h3>For Foodies</h3>
        <ul class="iconlist">
<li><a href="#" >Code of Conduct </a></li><br>
<li><a href="#">Community</a></li><br>
<li><a href="#">Verified Users</a></li>
<br>
<li><a href="#">Blogger Help</a></li><br>
<li><a href="#">Developers</a></li><br>
<li><a href="#">Products for Businesses</a></li><br>
            </ul>
    </div>
    <div class="col-sm">
      <h3>For Restaurants</h3>
        <ul class="iconlist">
<li><a href="#">Add a Restaurant</a></li><br>
<li><a href="#">Claim your Listing</a></li><br>
<li><a href="#">Business App</a></li><br>
<li><a href="#">Business Owner Guidelines</a></li><br>
<li><a href="#">Business Blog</a></li><br>
<li><a href="#">Mobile Apps</a></li><br>
            </ul>
    </div>
    <div class="col-sm">
     <h3>About Eats &amp; Street</h3>
        <ul class="iconlist">
<li><a href="#">Code of Conduct</a></li><br>
<li><a href="#">Community</a></li><br>
<li><a href="#">Verified Users</a></li><br>
<li><a href="#">Blogger Help</a></li><br>
<li><a href="#">Developers</a></li><br>
<li><a href="#">Products for Businesses</a></li><br>
            </ul>
    </div>
  </div>
</div> 
 </div>
      
  
      
<!--====================================Footer=======================================================-->
      <footer id="footer">
     
          <center>
         
         
      <h1>Subscribe to our newsletter:</h1>
       <h6>&copy; Designed By Madhvi Asthana</h6>
<ul id="footericonlist">
      <li class="footer-content">Don't miss out on our great offers</li>
      <li  class="footer-content">Receive deals from all our top Shops via e-mail</li>
                  </ul>
      </center>
      <!--News-setter-->
      <center>
 <div id="newsSetter">
     
      <form method="post">
          
     <input id="newsSetterEmail" type="text" placeholder="Enter Your Email Address">
    <input type="submit" class="btn-lg" value="Subscribe">
     </form>
        
      </div>
    </center>
    <center>
     <h5>&copy; Designed ~ By Madhvi Asthana</h5> 
      </center>
      
      
      
      </footer>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      

    	  <%  if(request.getParameter("redirectButton")!=null){
    	 
    	  response.sendRedirect("showproducts.jsp");
    	 
      } %>
     
      
      
      
      
      
      
      
      
      
      
      
      
<!--Type.js plugin-->
      
 <script src="https://s3.amazonaws.com/myadvobuck/static/libs/typed.min.js"></script>
      
<!--Typed.js javascript-->
      
      <script>   
      var type = new Typed('#typed-content-showcase',{
          stringsElement:'#content-dynamic',
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
