<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("email");
String pass=request.getParameter("pass");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
	PreparedStatement stmt=con.prepareStatement("select * from project where email=? and pass=?");
	stmt.setString(1, name);
	stmt.setString(2, pass);
	ResultSet rs=stmt.executeQuery();
	if(rs.next())
	{
	
		session.setAttribute("Email",name);
        RequestDispatcher rd=request.getRequestDispatcher("Account.jsp");
        rd.forward(request,response);
        
	}
	else
	{
		out.println("Login Failed. OOPS!");

		RequestDispatcher rd=request.getRequestDispatcher("Login.html");
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