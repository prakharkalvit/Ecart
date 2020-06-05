<%@page import=" java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","123456");
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
if(id.equals("admin")&&pwd.equals("12345"))
{
	response.sendRedirect("ahome.jsp");
}
else
{
	response.sendRedirect("first.jsp");	
}
}catch(Exception e)
	{
	out.println(e);
	}

%>
</body>
</html>