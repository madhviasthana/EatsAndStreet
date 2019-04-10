package shops;
import java.io.*;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")

public class IndexRedirect1 extends HttpServlet {
protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException {
	
	PrintWriter out=res.getWriter();
	res.setContentType("text/html");
	String user=req.getParameter("name");
	String cpassword=req.getParameter("cpswdId");
	String password=req.getParameter("pswdId");
	if(password.equals(cpassword)) {
		out.println("Welcome "+user + " Thanks for Login!!");
		
	}
 
	
}
protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException {
	
	PrintWriter out=res.getWriter();
	res.setContentType("text/html");
	String user=req.getParameter("name");
	String cpassword=req.getParameter("cpswdId");
	String password=req.getParameter("pswdId");
	if(password.equals(cpassword)) {
		out.println("Welcome "+user +"Thanks for Login!!");
		
	}


    out.close();  
}
}
