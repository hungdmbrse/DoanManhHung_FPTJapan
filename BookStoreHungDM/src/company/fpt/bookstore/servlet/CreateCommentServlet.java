package company.fpt.bookstore.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 


import company.fpt.bookstore.beans.*;
import company.fpt.bookstore.utils.*;
 
@WebServlet(urlPatterns = { "/createComment" })
public class CreateCommentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public CreateCommentServlet() {
        super();
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String bookidStr = (String) request.getParameter("book_id");
		request.setAttribute("book_id", bookidStr);
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/WEB-INF/views/createCommentView.jsp");
        dispatcher.forward(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
        
        String name = (String) request.getParameter("comment");
        String strBookID = request.getParameter("book_id");
        int bookID =0;
        try {
        	bookID = Integer.parseInt(strBookID);
		} catch (Exception e) {
			e.printStackTrace();
		}
         
        
        
        Comment comment = new Comment();
        comment.setName(name);
        comment.setBook_id(bookID);
        
        String errorString = null;
 
 
        if (errorString == null) {
            try {
                DBUtils.insertComment(conn, comment);
            } catch (SQLException e) {
                e.printStackTrace();
                errorString = e.getMessage();
            }
        }
 
        request.setAttribute("errorString", errorString);
        request.setAttribute("comment", comment);
 
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/createCommentView.jsp");
            dispatcher.forward(request, response);
        }
        else {
            response.sendRedirect(request.getContextPath() + "/commentList?book_id="+strBookID);
        }
    }
 
}