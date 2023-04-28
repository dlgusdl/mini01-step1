<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="layout/header.jsp"%>

<div class="container">
	<form action="/product/1/update" method="post">
		<div class="mb-3 mt-3">
			상품명 : <input id="name" name="productName" type="text" value="상품1">
		</div>
		<div class="mb-3 mt-3">
			상품가격 : <input id="price" name="productPrice" type="text" value="상품가격1000">
		</div>
		<div class="mb-3 mt-3">
			상품수량 : <input id="qty"name="productQty"  type="text" value="재고">
		</div>
		<button class="btn btn-primary">상품수정완료</button>
		
	</form>
</div>

<%@ include file="layout/footer.jsp"%>