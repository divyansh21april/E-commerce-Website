<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%
if(request.getParameter("drone")!=null)
{
	String name= session.getAttribute("Email").toString(),product="Drone",quantity="1";
	String price=request.getParameter("os1");
	
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
		PreparedStatement stmt=con.prepareStatement("insert into product values(?,?,?,?)");
		stmt.setString(1,name);
		stmt.setString(2,product);
		stmt.setString(3, quantity);
		stmt.setString(4, price);
		stmt.executeQuery();
		con.commit();
		   RequestDispatcher rd=request.getRequestDispatcher("payment.html");
	        rd.forward(request,response);
	        
		}
	catch(Exception e)
	{
		out.println(e);
	}

}
if(request.getParameter("robot")!=null)
{
	String name= session.getAttribute("Email").toString(),product="Robot Model",quantity="1";
	String price=request.getParameter("os1");
	
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
		PreparedStatement stmt=con.prepareStatement("insert into product values(?,?,?,?)");
		stmt.setString(1,name);
		stmt.setString(2,product);
		stmt.setString(3, quantity);
		stmt.setString(4, price);
		stmt.executeQuery();
		con.commit();
		    RequestDispatcher rd=request.getRequestDispatcher("payment.html");
	        rd.forward(request,response);		
	}
	catch(Exception e)
	{
		out.println(e);
	}

}
if(request.getParameter("helper")!=null)
{
	String name= session.getAttribute("Email").toString(),product="Helper",quantity="1";
	String price=request.getParameter("os1");
	
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
		PreparedStatement stmt=con.prepareStatement("insert into product values(?,?,?,?)");
		stmt.setString(1,name);
		stmt.setString(2,product);
		stmt.setString(3, quantity);
		stmt.setString(4, price);
		stmt.executeQuery();
		con.commit();
		    RequestDispatcher rd=request.getRequestDispatcher("payment.html");
	        rd.forward(request,response);
		}
	catch(Exception e)
	{
		out.println(e);
	}

}
if(request.getParameter("entertainmnet")!=null)
{
	
	String name= session.getAttribute("Email").toString(),product="Entertainment",quantity="1";
	String price=request.getParameter("os1");
	
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
		PreparedStatement stmt=con.prepareStatement("insert into product values(?,?,?,?)");
		stmt.setString(1,name);
		stmt.setString(2,product);
		stmt.setString(3, quantity);
		stmt.setString(4, price);
		stmt.executeQuery();
		con.commit();
		    RequestDispatcher rd=request.getRequestDispatcher("Product.html");
	        rd.forward(request,response);
		}
	catch(Exception e)
	{
		out.println(e);
	}

}

if(request.getParameter("spy")!=null)
{
	
	String name= session.getAttribute("Email").toString(),product="Surveillence",quantity="1";
	String price=request.getParameter("os1");
	
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
		PreparedStatement stmt=con.prepareStatement("insert into product values(?,?,?,?)");
		stmt.setString(1,name);
		stmt.setString(2,product);
		stmt.setString(3, quantity);
		stmt.setString(4, price);
		stmt.executeQuery();
		con.commit();
		
		    RequestDispatcher rd=request.getRequestDispatcher("payment.html");
	        rd.forward(request,response);
		}
	catch(Exception e)
	{
		out.println(e);
	}

}
%>
</body>
</html>