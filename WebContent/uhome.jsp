<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String id=(String)session.getAttribute("k1");

%>
<h1 align="center">welcome <%=id %></h1>
<h1 align="corner"><a href="ulogout.jsp"> LOGOUT</a></h1>
<h1 align="corner"><a href="uscart.jsp">CART</a></h1>
<table align="center">
<th><h1>NAME</h1></th>
<th><h1>PRICE</h1></th>
<th><h1>TYPE</h1></th>
<th><h1>COMPANY</h1></th>
<% 
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","123456");
	PreparedStatement ps=con.prepareStatement("select * from product");
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		do
		{
			String x=rs.getString(1);
			String y=rs.getString(2);
			String z=rs.getString(3);
			String w=rs.getString(4);
		
	%>
	
	<tr>
	<td><h3><%=x %></h3></td>
	<td><h3><%=y %></h3></td>
	<td><h3><%=z %></h3></td>
	<td><h3><%=w %></h3></td>
	<td><a href="ucart.jsp?name=<%= x%>&price=<%=y %>">ADD TO CART</a></td>
	<td><a href="ubuy.jsp">BUY NOW</a></td>
	</tr>

<% 
		}while(rs.next());
	}
	}catch(Exception e)
	{
	out.println(e);	
	}
%>
</table>



</body>
</html>