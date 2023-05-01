<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="layout/header.jsp" %>

<div class="container">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>상품 번호</th>
        <th>상품 이름</th>
        <th>상품 가격</th>
        <th>상품 재고</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="product" items="${products}">
        <tr>
          <td>${product.productId}</td>
          <td>${product.productName}</td>
          <td>${product.productPrice}</td>
          <td>${product.productQty}</td>
          <td><a href="/product/${product.productId}">${product.productName}</a></td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</div>

<%@ include file="layout/footer.jsp" %>