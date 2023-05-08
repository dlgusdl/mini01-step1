<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="layout/header.jsp" %>

    <div class="container">
      <table class="table table-striped mt-4" style="text-align: center;">
        <thead>
          <tr>
            <th>상품 번호</th>
            <th>상품 이름</th>
            <th>상품 가격</th>
            <th>상품 재고</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${productList}" var="product">
            <tr>
              <td>${product.id}</td>
              <td><a href="/product/${product.id}">${product.name}</a></td>
              <td>${product.price}</td>
              <td>${product.qty}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>

    <%@ include file="layout/footer.jsp" %>