<%@page import="com.hb.model.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/960.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/menu.css">
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript">
<%GuestDto bean=(GuestDto)request.getAttribute("dto"); %>
	$(function() {
		$('.content button').click(function() {
			window.location.replace('edit.do?idx='+<%=bean.getSabun() %>);
		});
	});

</script>
</head>
<body>
	<jsp:include page="../template/header.jsp">
		<jsp:param value="./" name="path"/>
	</jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<h1>상세페이지</h1>
	<table>
		<tr>
			<td>사번</td>
			<td><%=bean.getSabun() %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=bean.getName() %></td>
		</tr>
		<tr>
			<td>날짜</td>
			<td><%=bean.getNalja() %></td>
		</tr>
		<tr>
			<td>금액</td>
			<td><%=bean.getPay() %></td>
		</tr>
	</table>
	<button>수정</button>
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>











