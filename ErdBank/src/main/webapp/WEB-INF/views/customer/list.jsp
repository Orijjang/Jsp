<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>고객목록</title>
	</head>
	<body>
		<h3>고객목록</h3>
		
		<a href="/ErdBank">처음으로</a>
		<a href="/ErdBank/customer/register.do">등록하기</a>
		
		<table border="1">
			<tr>
				<th>강좌번호</th>
				<th>강좌명</th>
				<th>학점</th>
				<th>시간</th>
				<th>강의실</th>
				<th>관리</th>
			</tr>
			<c:forEach var="dto" items="${dtoList}">
				<tr>
					<td>${dto.lecNo}</td>
					<td>${dto.lecName}</td>
					<td>${dto.lecCredit}</td>
					<td>${dto.lecTime}</td>
					<td>${dto.lecClass}</td>
					<td>
						<a href="/ErdCollege/register/request.do?lecNo=${dto.lecNo}">수강신청</a>
					</td>
				</tr>
			</c:forEach>	
		</table>		
	</body>
</html>