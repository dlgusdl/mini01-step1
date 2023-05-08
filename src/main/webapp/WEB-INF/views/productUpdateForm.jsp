<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="layout/header.jsp"%>

<div class="container">
	<form action="/product/${id}/update" method="post">
		<div class="mb-3 mt-3">
			상품명 : <input id="name" name="name" type="text" value="${product.name}">
		</div>
		<div class="mb-3 mt-3">
			상품가격 : <input id="price" name="price" type="text" value="${product.price}">
		</div>
		<div class="mb-3 mt-3">
			상품수량 : <input id="qty"name="qty"  type="text" value="${product.qty}">
		</div>
		<button class="btn btn-primary">상품수정완료</button>
		
	</form>
</div>

<%@ include file="layout/footer.jsp"%>