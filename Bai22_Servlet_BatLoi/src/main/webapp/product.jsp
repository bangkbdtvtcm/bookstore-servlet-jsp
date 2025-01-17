<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<style>
	.rq {
		color: red;
	}
</style>
</head>
<body>
	<%
		String e_productId = request.getAttribute("e_productId")+"";
		e_productId = e_productId.equals("null")?"":e_productId;
		String i_productId = request.getAttribute("i_productId")+"";
		i_productId = i_productId.equals("null")?"":i_productId;
		String i_productName = request.getAttribute("i_productName")+"";
		i_productName = i_productName.equals("null")?"":i_productName;
		String i_priceBuy = request.getAttribute("i_priceBuy")+"";
		i_priceBuy = i_priceBuy.equals("null")?"":i_priceBuy;
		String i_priceSale = request.getAttribute("i_priceSale")+"";
		i_priceSale = i_priceSale.equals("null")?"":i_priceSale;
	%>
	<div class="container mt-4" style="width: 720px">
		<form class="row g-3 needs-validation" novalidate action="save-product" id="my_form">
			<!--  -->
			<div class="row">
			 <div class="col-6 form-group">
			    <label for="productId" class="form-label">Mã sản phẩm<span class="rq">*</span></label>
			    <input type="text" class="form-control" id="productId" name="productId" value="<%=i_productId%>"  required>
			    <div class="rq"><%=e_productId%></div>
			    <span class="form-message"></span>
			  </div>
			 <div class="col-6 form-group">
			    <label for="productName" class="form-label">Tên sản phẩm<span class="rq">*</span></label>
			    <input type="text" class="form-control" id="productName" name="productName" value="<%=i_productName%>" required>
			 	<span class="form-message"></span>
			  </div>
			</div>
		 	<!--  -->
			<!--  -->
			<div class="row">
			 <div class="col-6 form-group">
			    <label for="priceBuy" class="form-label">Giá nhập: <span class="rq">*</span></label>
			    <input type="number" step="0.01" min="0" class="form-control" name="priceBuy" id="priceBuy" value="<%=i_priceBuy%>"  required>
			  	<span class="form-message"></span>
			  </div>
			 <div class="col-6 form-group">
			    <label for="priceSale" class="form-label">Giá bán: <span class="rq">*</span></label>
			    <input type="number" step="0.01" min="0" class="form-control" name="priceSale" id="priceSale" value="<%=i_priceSale%>" required>
			  	<span class="form-message"></span>
			  </div>
			</div>
		 	<!--  -->
		 	<!--  -->
			<div class="row">
			 <div class="col-6 form-group">
			    <label for="shelfLife" class="form-label">Hạn sử dụng:</label>
			    <input type="datetime-local" class="form-control" name="shelfLife" id="shelfLife">
			    <span class="form-message"></span>
			  </div>
			 <div class="col-6 form-group">
			    <label for="vat" class="form-label">VAT<span class="rq">*</span></label>
			    <input type="number" step="0.01" min="0" class="form-control" name="vat" id="vat">
			    <span class="form-message"></span>
			  </div>
			</div>
		 	<!--  -->
		 	<!--  -->
			<div class="row form-group">
			    <label for="discription" class="form-label">Mô tả:</label>
			    <textarea rows="10" class="form-control" name="discription" id="discription"></textarea>
			    <span class="form-message"></span>
			 </div>
		 	<!--  -->
		  <div class="row mt-4">
		    <button class="btn btn-primary" type="submit">Lưu sản phẩm</button>
		  </div>
		</form>
	</div>
	<script src="validator.js"></script>
	<script>
        // Mong muon
        Validator({
            form: '#my_form',
            errorSelector: '.form-message',
            formGroupSelector: '.form-group',
            rules: [
                Validator.isRequired('#productId'),      
                Validator.isRequired('#productName'),
                Validator.minLength('#productName', 6),
                Validator.isRequired('#priceBuy'),      
                Validator.isRequired('#priceSale'),
            ],
            onsubmit(data) {
                console.log(data)
            }
        });
    </script>
</body>
</html>