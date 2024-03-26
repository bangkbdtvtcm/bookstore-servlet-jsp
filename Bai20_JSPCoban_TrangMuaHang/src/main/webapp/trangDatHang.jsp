<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Dat Hang</title>
</head>
<body>
	<%
		String fullName = request.getParameter("fullName");
		String email = request.getParameter("inputEmail");
		String productQuantity = request.getParameter("productQuantity");
		int quantity = 0;

		try {
			quantity= Integer.parseInt(productQuantity);			
		} catch(Exception e) {
			
		}
	%>
	<h1>Xác nhận đặt hàng</h1>
	<p>Xin cảm ơn bạn <b><%=fullName%></b> đã đặt <b><%= productQuantity%></b> sản phẩm.</p> 
	<p>Bạn cần phải trả: <b><%=quantity*5%> $</b> </p> 
	<p>Thông báo mua hàng đã được gửi đến email: <b><%=email %></b></p>
</body>
</html>