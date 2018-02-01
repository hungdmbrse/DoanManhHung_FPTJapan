<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Book List</title>
    
    <style>
	table, th, td {
	    border: 1px solid black;
	    border-collapse: collapse;
	}
	th, td {
	    padding: 5px;
	    text-align: left;    
	}
</style>
 </head>
 <body>
 
    <jsp:include page="_header.jsp"></jsp:include>

    <p style="color: red;">${errorString}</p>
 	<div><a href="createBook?=${bookid}" >追加</a></div>
    <table border="1" cellpadding="5" cellspacing="1"　 style="width:100%" >
       <tr>
          <th>ID</th>
          <th>書籍名</th>
          <th>出版社名</th>
          <th>ページ数</th>
          <th colspan="3">操作</th>
       </tr>
       <c:forEach items="${bookList}" var="book" >
          <tr>
             <td>${book.id}</td>
             <td>${book.name}</td>
             <td>${book.publisher}</td>
             <td>${book.page}</td>
             <td>
                <a href="editBook?id=${book.id}">修正</a>
                <a href="deleteBook?id=${book.id}">削除</a>
                <a href="commentList?book_id=${book.id}">感想の一覧</a>
             </td>
          </tr>
       </c:forEach>
    </table>
    
 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>