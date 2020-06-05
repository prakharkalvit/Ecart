<%@page import="java.sql.*" %>
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","123456");
}catch(Exception e)
{
outprintln(e);
}