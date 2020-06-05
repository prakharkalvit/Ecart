<jsp:include page="db.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
session.invalidate();
response.sendRedirect("ulogin.jsp");
%>
</body>
</html>