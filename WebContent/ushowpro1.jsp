<%@include file="header2.jsp" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>

	<title>Product Detail</title>
	<body>
	<head>
	<script>
	function myFunction() {
		  alert("You need to login first");
		}
	
	</script>
	
	</head>	
	
	<%
String name=request.getParameter("name");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","123456");
	PreparedStatement ps=con.prepareStatement("select * from product where name=?");
	ps.setString(1,name);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		do
		{
			String name1=rs.getString("name");
			String cname=rs.getString("cname");
			String price=rs.getString("price");
			String details=rs.getString("details");
			String specifications=rs.getString("specifications");
			String type=rs.getString("type");
			String category=rs.getString("category");
			String image=rs.getString("image");
			String image1=rs.getString("image1");
		%>


	
			

	<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots"></div>
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

							<div class="slick3 gallery-lb">
								<div class="item-slick3" data-thumb="<%=image%>">
									<div class="wrap-pic-w pos-relative">
										<img src="<%=image%>" alt="IMG-PRODUCT">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="<%=image%>">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>

								<div class="item-slick3" data-thumb="<%=image1%>">
									<div class="wrap-pic-w pos-relative">
										<img src="<%=image1%>" alt="IMG-PRODUCT">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="<%=image1%>">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
					
				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<h4 style="color:black" class="mtext-105 cl2 js-name-detail p-b-14">
							<b><%=cname %></b>
						</h4>
						<h4 style="color:black"><b>DETAILS</b></h4>
						<br></br>
						<h5><%=details %></h5>
						<br></br>
						<span class="mtext-106 cl2">
							<h4 style="color:black"><b>Rs.<%=price %></b></h4>
						</span>
						<br></br>
							<h4 style="color:black"><b>SPECIFICATIONS</b></h4>
						<p class="stext-102 cl3 p-t-23">
						<h5><%=specifications %></h5>
						</p>
						
						<!--  -->
						<div class="p-t-33">
							<div class="flex-w flex-r-m p-b-10">
								<div class="size-203 flex-c-m respon6">
									Size
								</div>

								<div class="size-204 respon6-next">
									<div class="rs1-select2 bor8 bg0">
										<select class="js-select2" name="time">
											<option>Choose an option</option>
											<option>Size S</option>
											<option>Size M</option>
											<option>Size L</option>
											<option>Size XL</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
								</div>
							</div>

							
						
									<button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04" onclick="myFunction()">
										<a style="color:white" href="#">ADD TO CART</a>
									</button>
									<button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04" onclick="myFunction()" >
										<a style="color:white" href="#" >Add to Wishlist</a>
									</button>
									
									
								</div>
							</div>	
						</div>

						
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/slick/slick.min.js"></script>
	<script src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
<% }while(rs.next());
	}
	}catch(Exception e)
	{
	out.println(e);	
	}
	%>
</body>
</html>