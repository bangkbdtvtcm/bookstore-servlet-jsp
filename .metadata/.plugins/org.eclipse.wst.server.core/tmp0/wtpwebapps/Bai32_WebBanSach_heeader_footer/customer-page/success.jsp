<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Đăng ký thành công</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div>
		<h3>
			Chúc mừng bạn đã thao tác thành công <a href="login.jsp"> đang chuyển về
				trang chủ</a>
		</h3>
		<script type="text/javascript">
			setTimeout(() => {
				window.location = "index.jsp";
			}, 3000);
		</script>
	</div>
</body>
</html>