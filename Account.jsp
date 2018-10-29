


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">

    <title>
      
        Account &middot; 
      
    </title>

    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic" rel="stylesheet">
    
      <link href="assets1/css/toolkit-inverse.css" rel="stylesheet">
    
    
    <link href="assets1/css/application.css" rel="stylesheet">

    <style>
      /* note: this is a hack for ios iframe for bootstrap themes shopify page */
      /* this chunk of css is not part of the toolkit :) */
      body {
        width: 1px;
        min-width: 100%;
        *width: 100%;
      }
    </style>
  </head>


<body>
  <div class="container py-4  app-navbar">
  <nav class="navbar navbar-transparent navbar-padded navbar-toggleable-sm">
    <div class="hidden-sm-down text-uppercase">
      <ul class="navbar-nav">
    <li class="nav-item">
      <h4><a class="nav-link active" href="index.html">Home</a></h4>
    </li>
    <li class="nav-item">
      <h4><a class="nav-link" href="Login.html">Login</a></h4>
    </li>
    <li class="nav-item">
      <h4><a class="nav-link" href="Product.jsp">Products</a></h4>
    </li>
    <li class="nav-divider"></li>
    <li class="nav-item">
      <h4><a class="nav-link" href="About.html">About</a></h4>
    </li>  </ul>
    </div>
  </nav>
</div>
  

<div class="table-responsive">
  <table class="table" data-sort="table">
    <thead>
      <tr>
        <th>Serial No</th>
        <th>Product name</th>
        <th>Quantity</th>
        <th>Prize</th>
      </tr>
    </thead>
    <tbody>
      <%@ page import="java.sql.*" %>
<%
String name=session.getAttribute("Email").toString();
int a=0;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
	PreparedStatement stmt=con.prepareStatement("select * from product where email=?");
	stmt.setString(1, name);
	ResultSet rs=stmt.executeQuery();
	out.print(name); 
	while(rs.next())
	{
	%>
<tr>
	<td>
	<%a++;out.println(a);%>
	</td>
	<td>
	<%=rs.getString(2)%>
	</td>
	<td>
	<%=rs.getString(3)%>
	</td>
	<td>
	<%=session.getAttribute("Cost").toString()%>
	</td>
		   
<%
	}
}
catch(Exception e)
{response.sendRedirect("Login.html");}%>
</tbody>
</table>
</div>

   <script src="assets1/js/jquery.min.js"></script>
    <script src="assets1/js/tether.min.js"></script>
    <script src="assets1/js/chart.js"></script>
    <script src="assets1/js/tablesorter.min.js"></script>
    <script src="assets1/js/toolkit.js"></script>
    <script src="assets1/js/application.js"></script>
    <script>
      // execute/clear BS loaders for docs
      $(function(){while(window.BS&&window.BS.loader&&window.BS.loader.length){(window.BS.loader.pop())()}})
    </script>
  </body>
</html>

