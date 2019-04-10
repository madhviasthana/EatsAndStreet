<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>
    Login Page
    </title>  
    <link href="https://fonts.googleapis.com/css?family=Margarine" rel="stylesheet">
    <link href="loginstyle.css" rel="stylesheet" type="text/css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

   
    </head>
    
<body>
    

    
    <div id="formBody">
        
        <center>
  <a href="#"><img id="fbicon" src="images/facebook-icon.png"/></a>  

      <h5>OR</h5>
            <br>
    <form method="post" action="commonintermediateforlogin.jsp">
        <div >
  <label for="nameId">Username:</label>
<input type="text" placeholder="Enter Your Name" name="name" id="nameId" required>
  </div>
        <br>
 <div>
  <label id="labelpassword" for="pswd">Password:</label>   
<input type="password" placeholder="Enter Your Password" name="pswdId" id="pswd" onkeyup="passwordStrengthChecker();">
        
  </div>       
         <br>
 <div>

<input type="submit" class="btn-lg btn-success" name="submit" value="Log in">
     
     <br>
        <a href="#">Don't have an account?</a>
     <a href="askuserssignup.jsp">Sign Up Now</a>
        
  </div>   

        
    </form>
   
     </center>

    </div>
    <script>
    function passwordStrengthChecker(){
    	var gpassword = document.getElementById("pswd");
    	var newpassword = gpassword.value;
    	var specialCharacters="~!@#$%^&*_-+=|\/<>";
    	var passwordscore=0;
    	var strength="";
    	var bordercolor="";
    	for(x=0;x<newpassword.length;x++){
    		if(specialCharacters.indexOf(newpassword.charAt(x))>-1){
    			passwordscore+=20;
    		}
    	}
    	
    	
    	if(newpassword.length>8){
    		passwordscore+=20;
    	}
    	if(/[a-z]/.test(newpassword)){
    		passwordscore+=20;
    	}
    	if(/[A-Z]/.test(newpassword)){
    		passwordscore+=20;
    	}
    	if(/[\d]/.test(newpassword)){
    		passwordscore+=20;
    	}
    	
    	if(passwordscore>=100){
    		strength="Strong";
    		bordercolor="green"
    	}
    	
    	else if(passwordscore>=80){
    		strength="Medium";
    		bordercolor="yellow"
    	}
    	
    	
    	else if(passwordscore>=100){
    		strength="weak";
    		bordercolor="red"
    	}
    	
    	else{
    		strength="weak";
    		bordercolor="red"
    	}
    	


    	document.getElementById("pswd").style.borderColor=bordercolor;
    }
    </script>
    
 <footer>
     
     <center>
   <h6> &copy; Designed By ~ Megha Waikar</h6>
    </center>
    </footer>
   
    
     <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  
    
    
    
    
    
    
    
    
    
    
</body>







</html>