

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class SignUp extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("email");
		String pass=request.getParameter("pass");
		String name1=request.getParameter("name1");
		String name2=request.getParameter("name2");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		String key=request.getParameter("key");
				try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
			PreparedStatement stmt=con.prepareStatement("insert into project values(?,?,?,?,?,?,?)");
			stmt.setString(1, name);
			stmt.setString(2, pass);
			stmt.setString(3, name1);
			stmt.setString(4, name2);
			stmt.setString(5, contact);
			stmt.setString(6, address);
			stmt.setString(7, key);
			stmt.executeQuery();
			con.commit();
				out.println("Succesfully Registered");
			    RequestDispatcher rd=request.getRequestDispatcher("https://yatra.com");
                rd.forward(request,response);
                
			}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
