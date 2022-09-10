package com.loginServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.loginDao.EditQueryDao;

@WebServlet("/setArchiveData")
public class setArchiveData extends HttpServlet {
	
public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	System.out.print(req.getParameter("name"));
	int id=Integer.parseInt(req.getParameter("name"));
	EditQueryDao data=new EditQueryDao();
	EditQueryDao.setDataInArchive(id);
	resp.sendRedirect("PrintQuery.jsp");
	}
}
