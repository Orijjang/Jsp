<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품등록</title>
	</head>
	<body>
		<h3>상품등록</h3>
		
		<a href="/shopApp">처음으로</a>
		<a href="/shopApp/product/list.do">목록이동</a>
		
		<form action="#" method="post">
			<table border="1">
				<tr>
					<td>상품번호</td>
					<td><input type="text" name="prodno" placeholder="상품번호 입력"/></td>
				</tr>
				<tr>
					<td>상품명</td>
					<td><input type="text" name="prodname" placeholder="상품명 입력"/></td>
				</tr>
				<tr>
					<td>재고량</td>
					<td><input type="number" name="stock" placeholder="재고수량 입력"/></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="number" name="price" placeholder="가격 입력"/></td>
				</tr>
				<tr>
					<td>제조사</td>
					<td><input type="text" name="company" placeholder="제조사 입력"/></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="등록하기"/>
					</td>
				</tr>			
			</table>		
		</form>
	</body>
</html>