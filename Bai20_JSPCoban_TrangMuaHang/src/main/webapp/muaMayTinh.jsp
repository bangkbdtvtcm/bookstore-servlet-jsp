<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PC</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container" style="width: 720px">
		<h1 style="font-weight: bold;">Chọn máy tính bạn cần mua</h1>
		<form id="form-pc" action="datMuaMayTinh.jsp" >
			<h2>Processor</h2>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="processor" value="corei9" id="corei9">
			  <label class="form-check-label" for="corei9">
			   Core i9
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="processor" value="corei7" id="corei7">
			  <label class="form-check-label" for="corei7">
			   Core i7
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="processor" value="corei5" id="corei5">
			  <label class="form-check-label" for="corei5">
			   Core i5
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="processor" value="corei3" id="corei3">
			  <label class="form-check-label" for="corei3">
			   Core i3
			  </label>
			</div>
			<h2>Ram</h2>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="ram" value="8G" id="8G">
			  <label class="form-check-label" for="8G">
			   Ram 8G
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="ram" value="16G" id="16G">
			  <label class="form-check-label" for="16G">
			   Ram 16G
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="ram" value="32G" id="32G">
			  <label class="form-check-label" for="32G">
			   Ram 32G
			  </label>
			</div>
			<h2>Monitor</h2>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="monitor" value="24i" id="24i">
			  <label class="form-check-label" for="24i">
			   24 inches
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="monitor" value="27i" id="27i">
			  <label class="form-check-label" for="27i">
			   27 inches
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="monitor" value="32i" id="32i" >
			  <label class="form-check-label" for="32i">
			   32 inches
			  </label>
			</div>
			<h2>Accessories</h2>
			<select class="form-select"  multiple aria-label="Default select example" name="accessories">
			  <option value="Camera">Camera</option>
			  <option value="Printer">Printer</option>
			  <option value="Scanner">Scanner</option>
			  <option value="Speaker">Speaker</option>
			</select>
			<br/>
			<button type="submit"  id="submit-form" class="btn btn-primary">Buy	</button>
		</form>
	</div>
</body>
</html>