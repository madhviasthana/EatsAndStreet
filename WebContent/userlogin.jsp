<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML>

<html>
    
<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width-device-width">
    <link href="submitstyle.css" type="text/css" rel="stylesheet">
    <title>
        
    User Sign up
    
    </title>
    
    </head>
    
    <body>
    

    
    
    
        <div id="contentbox">
            <div id="container">
                <div id="heading">
            <h1>Sign Up</h1>
                    <hr>
                    </div>
                <div id="information">
                <form  method="post" action="userintermediateloginpage.jsp" onsubmit="return validationEvent()">
                    <label for="namefield">UserName:</label>
                    <br>
                    <input type="text" required name="name" placeholder="&#128134; | Write your name here.." id="namefield">
                    <br>
                    
                 <label id="labelpassword" for="emailfield">Password</label>
                    <br>
                    <input type="password" id="pswd" required name="pswdId" placeholder=" Let us know how to contact you back.." onkeyup="passwordStrengthChecker();">
                    <br><label id="labelpassword" style="float:right;"></label>    <br>
                     <label for="cpswd" >Confirm Password</label>
                    <br>
                    <input type="password" id="cpswd" required name="confirmpassword" placeholder="confirm your password">..
                    <br>
                    
                    <label for="namefield">Mobile Number:</label>
                    <br>
                    <input type="number" maxlength="10" min="0" required name="mobilenumber" placeholder="&#9742; | Enter your mobile number here.." id="namefield">
                    <br>
                    <input type="submit" name="submit" value="Signup" >
                    </form>
     
                </div>
            </div>
        
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
    	

    	document.getElementById("labelpassword").innerHTML=strength;
    	document.getElementById("pswd").style.borderColor=bordercolor;
    	document.getElementById("labelpassword").style.fontSize="12px";
     	
    	if(strength=="weak"){
        	document.getElementById("labelpassword").style.color="red";	
        	return false;
    	}
    	
    	if(strength=="Medium"){
        	document.getElementById("labelpassword").style.color="yellow";
        	return true;
    	}
    	if(strength=="Strong"){
        	document.getElementById("labelpassword").style.color="green";
        	return true;
    	}
    }
    </script>
    
    
      
     		<script>
     		function validationEvent(){
     		var realpassword=document.getElementById("pswd").value;
     		var confirmpassword=document.getElementById("cpswd").value;
     		if((realpassword==confirmpassword)&& realpassword.length>=8){
     			if(passwordStrengthChecker()=="true"){
     		return true;
     		
     		}}
     		else{
     			document.getElementById("labelpassword").innerHTML="Fill correctly!!!!";
     			document.getElementById("labelpassword").style.fontSize="10px";
     		return false;
     		}
     		
     		}
     		</script>

        
        
        
    
    </body>
</html>
