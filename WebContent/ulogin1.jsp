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
String name=request.getParameter("name");
String pwd=request.getParameter("pwd");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","123456");
	PreparedStatement ps=con.prepareStatement("select * from user where name=? and password=?");
	ps.setString(1,name);
	ps.setString(2,pwd);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{	
	HttpSession s=request.getSession();
	s.setAttribute("k1",name);
	response.sendRedirect("index1.jsp");
	}
	else
	{
		response.sendRedirect("ulogin.jsp");
	}
	}catch(Exception e)
	{
	out.println(e);	
	}
	
%>
</body>
</html>