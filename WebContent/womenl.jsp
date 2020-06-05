<%@page import="java.sql.*" %>
<%@include file="header1.jsp" %>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<style>
	#div{
		margin-top: 84px;
		height: auto;
		width: auto;
	}
</style>
</head>
<body>
<div id="div">
<%
	String type=request.getParameter("type");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","123456");
	PreparedStatement ps=con.prepareStatement("select * from product where type=?");
	ps.setString(1,type);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		do
		{
			String name=rs.getString(1);
			String price=rs.getString(3);
			String image=rs.getString("image");
%>
		 <div style="height: auto;width: 300px;" class="d-inline-block">
		 
			<div class="row isotope-grid">
					<div class="col-sm-6 col-md-4 col-lg-9 p-b-35 isotope-item ">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img width="100%" src="<%=image %>" alt="IMG-PRODUCT">
	
								
							</div>
	
							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									
										<a href="ushowpro1.jsp?name=1.Roadster" target="_blank"><%=name %></a>
								
	
									<span style="color:black" class="stext-105 cl3">
										Rs.<%=price %>
									</span>
								</div>
	
								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>
		
<%		
		}while(rs.next());
	}
	}catch(Exception e)
	{
	out.println(e);	
	}

%>



</div>
							
</body>
</html>