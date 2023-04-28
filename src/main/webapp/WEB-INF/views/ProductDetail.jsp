<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>
<div class="container">
	<form action="/product/add" method="post">
		<div class="mb-3 mt-3">상품명 : 1111</div>
		<div class="mb-3 mt-3">상품가격 : 111</div>
		<div class="mb-3 mt-3">상품수량 : 111</div>
		<span><a href="/product/1/updateForm" class="btn btn-warning">수정하러가기</a></span>

	</form>
	<span>
	<form action="/product/1/delete" method="post">
		<button class="btn btn-danger">삭제하기</button>
	</form>
	</span>
</div>
<%@ include file="layout/footer.jsp"%>