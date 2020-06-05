<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String cname=request.getParameter("cname");
String price=request.getParameter("price");
String details=request.getParameter("details");
String specs=request.getParameter("specs");
String type=request.getParameter("type");
String category=request.getParameter("category");
String image=request.getParameter("image");
String image1=request.getParameter("image1");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","123456");
	PreparedStatement ps=con.prepareStatement("update product set cname=?,price=?,details=?,specifications=?,type=?,category=?,image=?,image1=? where name=?");
	ps.setString(1,cname);
	ps.setString(2,price);
	ps.setString(3,details);
	ps.setString(4,specs);
	ps.setString(5,type);
	ps.setString(6,category);
	ps.setString(7,image);
	ps.setString(8,image1);
	ps.setString(9,name);
	int p=ps.executeUpdate();
	if(p!=0)
	{
		out.println("PRODUCT UPDATED");
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