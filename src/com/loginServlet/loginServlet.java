package com.loginServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.loginDao.AdministratorCheckDao;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet 
{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		AdministratorCheckDao dao=new AdministratorCheckDao();
		boolean ans=dao.checkAdmin(email,password);
		if(ans) {
			response.sendRedirect("PrintQuery.jsp");
		}else {
			response.sendRedirect("login.jsp");
		}
	}
	
}
