<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="">
	<tr >
		<td width="600px">
			<jsp:include page="inc/top.jsp"/>
		</td>
	</tr>
	<tr>
		<td>
			<jsp:include page="${mainUrl }"/>
		</td>
	</tr>
	<tr>
		<td>
			<jsp:include page="inc/bottom.jsp"/>
		</td>
	</tr>
</table>
</body>
</html>