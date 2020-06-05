<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	a{
		text-decoration: none;
	}
</style>
</head>
<body>
<table align="center" border="2px solid ">
<th><h3>NAME</h3></th>
<th><h3>COMPANY</h3></th>
<th><h3>PRICE</h3></th>
<th><h3>DETAILS</h3></th>
<th><h3>SPECIFICATIONS</h3></th>
<th><h3>TYPE</h3></th>
<th><h3>CATEGORY</h3></th>
<th><h3>IMAGE</h3></th>
<th><h3>IMAGE1</h3></th>

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
			String name=rs.getString(1);
			String cname=rs.getString(2);
			String price=rs.getString(3);
			String details=rs.getString(4);
			String specs=rs.getString(5);
			String type=rs.getString(6);
			String category=rs.getString(7);
			String image=rs.getString(8);
			String image1=rs.getString(9);

		
	%>
	
	<tr>
	<td><h3><%=name%></h3></td>
	<td><h3><%=cname %></h3></td>
	<td><h3><%=price%></h3></td>
	<td><h3><%=details%></h3></td>
	<td><h3><%=specs%></h3></td>
	<td><h3><%=type%></h3></td>
	<td><h3><%=category%></h3></td>
	<td><h3><%=image%></h3></td>
	<td><h3><%=image1%></h3></td>
	
	
	<td><a href="del.jsp?name=<%=name%>">DELETE</a></td>
	<td><a href="updatepro.jsp?name=<%=name%>&cname=<%=cname %>&price=<%=price%>&details=<%=details%>&specs=<%=specs %>&type=<%=type%>&category=<%=category%>&image=<%=image%>&image1=<%=image1%>">UPDATE</a></td>
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