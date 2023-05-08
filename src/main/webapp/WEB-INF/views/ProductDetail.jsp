<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="layout/header.jsp" %>
		<div class="center">
			<div style="margin: 20px;">
				<table border="1" style="width: 1000px; height: 170px; text-align: center; margin-left: 450px;">
					<tr style="border: 1px solid">
						<th style="background-color: rgb(255, 255, 255)">상품명</th>
						<th style="background-color: rgb(255, 255, 255)">상품 가격</th>
						<th style="background-color: rgb(255, 255, 255)">상품 개수</th>
					</tr>
					<tr style="border: 1px solid">
						<th>${product.name}이름</th>
						<td>${vproduct.price}가격</td>
						<td>${product.qty}개수</td>
					</tr>
					<tr style="border: 1px solid">
						<th>${product.name}이름</th>
						<td>${vproduct.price}가격</td>
						<td>${product.qty}개수</td>
					</tr>
				</table>
				<div class="center" style="margin-top: 20px; text-align: center;">
					<form type="submit" action="/product/${product.id}/updateForm" method="get">
						<button style="width: 100px; height: 30px; margin-right: 20px; 
							background-color: rgb(230, 160, 160); border-radius: 2.5em; ">수정하기</button>
					</form>

					<form type="submit" action="/product/${product.id}/delete" method="post">
						<button style="width: 100px; height: 30px; margin-right: 20px; 
							background-color: rgb(230, 160, 160); border-radius: 2.5em; ">삭제하기</button>
					</form>
				</div>
			</div>
		</div>

		<%@ include file="layout/footer.jsp" %>