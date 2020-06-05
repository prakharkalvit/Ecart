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
	PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,cname);
	ps.setString(3,price);
	ps.setString(4,details);
	ps.setString(5,specs);
	ps.setString(6,type);
	ps.setString(7,category);
	ps.setString(8,image);
	ps.setString(9,image1);

	
	int p=ps.executeUpdate();
	if(p==1)
	{
		out.println("PRODUCT ADDED");
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