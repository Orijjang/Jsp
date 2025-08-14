<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>계좌이체</title>
	</head>
	<body>
		<h3>계좌이체</h3>
		
		<a href="/ErdBank">처음으로</a>
		<a href="/ErdBank/account/list.do">목록이동</a>
		
		<form action="/ErdBank/account/transfer.do" method="post">
			<table border="1">
				<tr>
					<td>출금 계좌번호</td>
					<td><input type="text" name="a_no_from" value="${customerDTO.c_a_no}"/></td>
				</tr>
				<tr>
					<td>입금 계좌번호</td>
					<td><input type="text" name="a_no_to" placeholder="입금 계좌번호 입력하세요."/></td>
				</tr>
				<tr>
					<td>입금주</td>
					<td><input type="text" name="c_name" value="${customerDTO.c_name}"/></td>
				</tr>
				<tr>
					<td>이체금액</td>
					<td><input type="number" name="t_amount"/></td>
				</tr>
				
				<tr>					
					<td colspan="2" align="right">
						<input type="submit" value="이체하기"/>
					</td>
				</tr>			
			</table>		
		</form>
	</body>
</html>