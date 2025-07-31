<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>fileupload</title>
		<%--
			날짜 : 2025/07/30
			이름 : 김대현
			내용 : JSP 파일 업로드 실습하기
			
			JSP 파일 업로드 방식
			1) cos.jar 방식
			 - MultipartRequest를 이용한 파일 업로드, 가장 많이 알려진 방식
		 	 - 너무 오래된 라이브러리 지원으로 최신 JAVA17에서 이슈 발생
		 	 - cos.jar 외부 라이브러리 포함
		 	 
		 	 2) apache-fileupload 방식
		 	 - apache 오픈소스로 제공되는 파일업로드 라이브러리
		 	 - JAVA 지원 재단이 Javax에서 Jakarta로 변경되어 너무 잦은 버전변경으로 호환성 부족 
		 	 
		 	 3) WAS 의 part 방식
	         - Tocat 9버전 부터 지원되는 파일 업로드 방식
	         - 업로드 파일을 part 객체로 처리됨
			 - 별도의 외부 라이브러리 필요 없음
			 
			 WAS getPart 업로드 설정
			  - Server > context.xml > context 태그 allowCasualMultipartParsing="True" 속성 선언
			  - Server > server.xml > 63라인 Connector 태그에 maxPostSize="10485760"속성 선언 		 
		 --%>
	</head>

	<body>
		<h3>파일 업로드</h3>
		
		<form action="/ch06/proc/fileUpload.jsp" method="post" enctype="multipart/form-data">
			<input type="text" name="title" placeholder="파일 제목 입력" /><br/>
			<input type="text" name="name" placeholder="이름 입력" /><br/>
			<input type="file" name="file1" /><br/>	
			<input type="submit" value="파일 업로드 전송하기"/>
		</form>
	
		
	</body>
</html>