<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot Password</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
String email=request.getParameter("email");
String key=request.getParameter("key");
String pass=request.getParameter("pass");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
	PreparedStatement stmt=con.prepareStatement("select * from project where email=? and key=?");
	stmt.setString(1, email);
	stmt.setString(2, key);
	ResultSet rs=stmt.executeQuery();
	if(rs.next())
	{
	
		PreparedStatement stmt1=con.prepareStatement("update project set pass=? where email=? and key=?");
		stmt1.setString(1, pass);
		stmt1.setString(2, email);
		stmt1.setString(3, key);
		ResultSet rs1=stmt1.executeQuery();
		RequestDispatcher rd=request.getRequestDispatcher("Login.html");
        rd.forward(request,response);
        
	}
	else
	{
		out.println("Login Failed. OOPS!");

		RequestDispatcher rd=request.getRequestDispatcher("SignUp.html");
		rd.include(request,response);

	}

}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>