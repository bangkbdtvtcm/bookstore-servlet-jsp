<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
	<%
		Object obj_notify = request.getAttribute("notify");
		String notify = "";
		if(obj_notify!=null) {
			notify = obj_notify.toString();
		}
	%>
	<div class="container m-auto" style="width: 720px;">
		<form action="Login" method="post">
		  <div class="mb-3">
		    <label for="username" class="form-label">Tên đăng nhập: </label>
		    <input type="text" class="form-control" id="username" name="username">
		  </div>
		  <div class="mb-3">
		    <label for="password" class="form-label">Mật khẩu</label>
		    <input type="password" class="form-control" id="password" name="password">
		    <p style="color: red; font-style: italic;"><%=notify %></p>
		  </div>
		  <button type="submit" class="btn btn-primary">Đăng nhập</button>
		</form>
	</div>
</body>
</html>