<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Đăng nhập</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous">
</script>
</head>
<body>
<%
	String errMsg = request.getParameter("errMgs")+"";
	errMsg = (errMsg.equals("null"))?"":errMsg;
%>
<main class="form-signin" style="width: 720px; margin: auto; padding-top: 64px; text-align: center;">
  <form action="login" method="post">
    <div style="width: 100%; display: flex; justify-content:  center;">
    <img class="mb-4" src="https://titv.vn/wp-content/uploads/2023/10/Screenshot-2023-01-29-230321.png" alt="" width="72">
    </div>
    <h1 class="h3 mb-3 fw-normal">Đăng nhập</h1>
	<span style="font-style: italic;"><%= errMsg%></span>
    <div class="form-floating">
      <input type="text" class="form-control" id="userName" name="userName" required>
      <label for="userName">Tài khoản đăng nhập:</label>
    </div>
    <div class="form-floating mt-2">
      <input type="password" class="form-control" id="password" name="password" required>
      <label for="password">Mật khẩu đăng nhập:</label>
    </div>
    <div class="form-check text-start my-3">
      <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        Ghi nhớ đăng nhập
      </label>
    </div>
    <button class="btn btn-primary w-100 py-2" type="submit">Đăng nhập</button>
    <p class="mt-4">Bạn chưa có tài khoản? vui lòng bấm vào <a href="register.jsp">Đăng ký</a></p>
  </form>
</main>
</body>
</html>