<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<%@ include file="layout/header.jsp" %>
		<div class="container">
			<form action="/product/insert" method="post" style="text-align: center;">
				<div class="mb-3 mt-3">
					상품명 : <input id="name" type="text" placeholder="&nbsp;&nbsp;상품명을 적어주세요">
					<button id="CheckproductName" class="btn btn-outline-primary btn-sm" style="border-radius: 2.5em; "
						type="button">상품명 중복체크</button>
				</div>
				<div class="mb-3 mt-3" style="width: 1184px">
					상품가격 : <input id="price" type="text" placeholder="상품 가격을 적어주세요">
				</div>
				<div class="mb-3 mt-3" style="width: 1184px">
					상품수량 : <input id="qty" type="text" placeholder="상품 수량을 적어주세요">
				</div>
				<button type="submit" class="btn btn-outline-primary btn-sm" style="border-radius: 2.5em;"
					action="/product">상품등록완료</button>
			</form>
		</div>

		<script>
			let sameCheck = false;
			// 중복 체크 여부 = false - 아직 체크 안한 상태

			// 상품명 중복체크
			$('#CheckproductName').on('click', function () {

				let data = { name: $('#name').val() }
				// ↑ 데이터를 변수로 만든것 (보기 편하기 위함)
				$.ajax({
					url: '/productinsert/checkName/',
					type: 'post',
					data: data,
					contentType: "application/x-www-form-urlemcoded; charset=utf-8"
				}).done((res) => {
					alert("등록 가능한 상품입니다.")
					// 콘솔창 확인용
					console.log(res);
					//등록 가능하니까 체크 여부를 true로 변경
					sameCheck = true;
				}).fail((err) => {
					alert("이미 등록한 상품입니다.")
					// 콘솔창 확인용
					console.log(err);
					// 등록 불가이기 때문에 중복체크를 안한것으로 설정(아래에 이벤트 처리를 위해서)
					sameCheck = false;
				});
			});

			// 상품명을 입력하는 input 태그에 값이 변경될때마다 sameCheck 를 false 로 설정하는 이벤트
			// => false 가 됐으니 상품명을 다른걸로 바뀌면 꼭 중복체크를 다시 해야되게 만든다.
			$('#name').on('input', function (e) {
				sameCheck = false;
				console.log(sameCheck);
			});

			// 동일 상품명 등록하지 못하게 처리하는 이벤트 (최종 상품 등록 버튼)
			// form 이 submit 될때 실행되는 이벤트
			$('form').on('submit', function (e) {
				// == 주의
				if (sameCheck == false) {
					alert("상품명을 중복확인 해주세요.");
					e.preventDefault();
					// 브라우저가 기존에 존재하는 상품명과 동일 상품명일 경우 
					// 이벤트 처리 동작을 중단시키는 메서드
					// submit 이벤트를 중단시키기 위해서 사용된다.
					console.log(sameCheck);
				} else if (sameCheck == true) {
					alert("상품이 등록되었습니다.");
					console.log(sameCheck);
				}
			});
		</script>

		<%@ include file="layout/footer.jsp" %>