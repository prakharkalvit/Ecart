<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","123456");
	PreparedStatement ps=con.prepareStatement("delete from cart where name=?");
	ps.setString(1,name);
	int p=0;
	p=ps.executeUpdate();
	if(p!=0)
	{
		response.sendRedirect("uscart.jsp");
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