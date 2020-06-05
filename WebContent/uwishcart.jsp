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
String price=request.getParameter("price");
String image=request.getParameter("image");
String id="hello";
String size=request.getParameter("size");



try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","123456");
PreparedStatement ps=con.prepareStatement("insert into cart values(?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,price);
ps.setString(3,image);
ps.setString(4,id);
ps.setString(5,size);

int p=0;
p=ps.executeUpdate();
if(p!=0)
{
response.sendRedirect("uscart.jsp");
}
else
{
out.println("something went wrong");
}
}catch(Exception e)
{
out.println(e);
}
%>
</body>
</html>