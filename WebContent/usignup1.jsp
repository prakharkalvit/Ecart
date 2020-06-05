
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
String y=request.getParameter("pwd");
String z=request.getParameter("email");
String w=request.getParameter("number");
String q=request.getParameter("address");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","123456");
	PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?,?)");
	ps.setString(1,x);
	ps.setString(2,y);
	ps.setString(3,z);
	ps.setString(4,w);
	ps.setString(5,q);	
	int p=0;
	p=ps.executeUpdate();
	if(p!=0)
	{
	response.sendRedirect("ulogin.jsp");	
	}
	else
	{
		out.println("Something went wrong");
	}
	}catch(Exception e)
		{
		out.println(e);
		
		}
%>
</body>
</html>