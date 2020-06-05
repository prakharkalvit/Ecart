<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
%>
<form action="update.jsp">
<table>
<th>
<td>NAME<input readonly="readonly" type="text" name="name" value="<%=name%>"></td>
<th>COMPANY<input type="text" name="cname" value="<%=cname %>"></th>
<th>PRICE<input type="text" name="price" value="<%=price %>"></th>
<th>DETAILS<input type="text" name="details" value="<%=details %>"></th>
<th>SPECIFICATIONS<input type="text" name="specs" value="<%=specs %>"></th>
<th>TYPE<input type="text" name="type" value="<%=type%>"></th>
<th>CATEGORY<input type="text" name="category" value="<%=category %>"></th>
<th>IMAGE<input type="text" name="image" value="<%=image %>"></th>
<th>IMAGE1<input type="text" name="image1" value="<%=image1 %>"></th>


<th><input type="submit" value="UPDATE PRODUCT"></th>

</table>

</form>
</body>
</html>