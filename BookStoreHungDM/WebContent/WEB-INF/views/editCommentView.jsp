<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Comment</title>
</head>
<body>

	<div style="height: 55px; padding: 5px;">
		<div style="float: left">
			<h1>感想の編集</h1>
		</div>
	</div>


	<p style="color: red;">${errorString}</p>

	<c:if test="${not empty comment}">
		<form method="POST"
			action="${pageContext.request.contextPath}/editComment">
			<input type="hidden" name="id" value="${comment.id}" /> <input
				type="hidden" name="book_id" value="${comment.book_id}" />
			<table border="0">
				<tr>
					<td>ID</td>
					<td style="color: red;">${comment.id}</td>
				</tr>
				<tr>
					<td>コメント</td>
					<td><input type="text" name="name" value="${comment.name}" /></td>
				</tr>
				<tr>
					<td>書籍＿ID</td>
					<td style="color: red;">${comment.book_id}</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="送信" /></td>
				</tr>
			</table>
			<a href="${pageContext.request.contextPath}/commentList?book_id=${comment.book_id}">戻る</a>
		</form>
	</c:if>

	<jsp:include page="_footer.jsp"></jsp:include>

</body>
</html>