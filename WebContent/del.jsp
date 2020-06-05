<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String x=request.getParameter("name");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","123456");
	PreparedStatement ps=con.prepareStatement("delete from product where name=?");
	ps.setString(1,x);
	int p=0;
	p=ps.executeUpdate();
	if(p!=0)
	{
		out.println("PRODUCT REMOVED");
	}
	else
	{
		out.println("SOMETHING WENT WRONG");
	}
}catch(Exception e)
{
	out.println(e);
}


%>
</body>
</html>