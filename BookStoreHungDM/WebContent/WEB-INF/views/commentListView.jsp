<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Commet List</title>
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
 
    <div style="height: 55px; padding: 5px;">
	  <div style="float: left">
	     <h1>感想一覧</h1>
	  </div>
	</div>
 
    <p style="color: red;">${errorString}</p>
 	<a href="createComment?book_id=${book_id}" >追加</a>
    <table border="1" cellpadding="5" cellspacing="1"　 style="width:100%"  >
       <tr>
          <th>ID</th>
          <th>コメント</th>
          <th colspan="2">操作</th>
       </tr>
       <c:forEach items="${commentList}" var="comment" >
          <tr>
             <td>${comment.id}</td>
             <td>${comment.name}</td>
             <td>
                <a href="editComment?id=${comment.id}">修正</a>
             </td>
             <td>
                <a href="deleteComment?id=${comment.id}">削除</a>
             </td>
          </tr>
       </c:forEach>
    </table>
 
    
    <a href="${pageContext.request.contextPath}/bookList">戻る</a>
 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>