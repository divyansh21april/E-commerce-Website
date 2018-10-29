<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
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
	    RequestDispatcher rd=request.getRequestDispatcher("index.html");
        rd.forward(request,response);
        
	}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>