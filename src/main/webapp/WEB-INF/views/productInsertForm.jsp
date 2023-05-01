<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="layout/header.jsp"%>
<div class="container">
	<form action="/product/insert" method="post">
		<div class="mb-3 mt-3">
			상품명 : <input id="name" name="name" type="text" placeholder="상품명을 적어주세요">
		</div>
		<div class="mb-3 mt-3">
			상품가격 : <input id="price" name="price" type="text" placeholder="상품 가격을 적어주세요">
		</div>
		<div class="mb-3 mt-3">
			상품수량 : <input id="pty" name="pty" type="text" placeholder="상품 수량을 적어주세요">
		</div>
		<button type="submit" class="btn btn-primary" action="/product">상품등록완료</button>
	</form>
</div>

<%@ include file="layout/footer.jsp"%>