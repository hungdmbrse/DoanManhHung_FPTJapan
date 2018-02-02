<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Book</title>
</head>
<body>

	<div style="height: 55px; padding: 5px;">
		<div style="float: left">
			<h1>書籍の編集</h1>
		</div>
	</div>

	<div style="height: 55px; padding: 5px;">
		<div style="float: left">
			<p style="color: red;">${errorString}</p>

			<form method="POST"
				action="${pageContext.request.contextPath}/createBook">
				<table border="0">

					<tr>
						<td>書籍名</td>
						<td><input type="text" name="name" value="${book.name}" /></td>
					</tr>
					<tr>
						<td>出版社名</td>
						<td><input type="text" name="publisher"
							value="${book.publisher}" /></td>
					</tr>
					<tr>
						<td>ページ数</td>
						<td><input type="text" name="page" value="${book.page}" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="送信" /></td>
					</tr>
				</table>
				<a href="bookList">戻る</a>
			</form>
		</div>
	</div>

	<jsp:include page="_footer.jsp"></jsp:include>

</body>
</html>