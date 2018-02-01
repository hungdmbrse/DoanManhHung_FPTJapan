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
		     <h1>感想の編集</h1>
		  </div>
	  </div>

       
       
      <p style="color: red;">${errorString}</p>
       
      <form method="POST" action="${pageContext.request.contextPath}/createComment">
      	<input type="hidden" name="book_id" value="${book_id}" />
         <table border="0">
         	<tr>
               <td>コメント</td>
               <td><input type="text" name="comment"  /></td>
            </tr>
            <tr>
            	<td></td>
               <td>                   
                   <input type="submit" value="送信" />
               </td>
            </tr>
         </table>
          <a href="commentList">戻る</a>
      </form>
       
      <jsp:include page="_footer.jsp"></jsp:include>
       
   </body>
</html>