package com.contactUsServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.contactUsDao.TakeInputDao;
import com.contactUsPOJO.GetInputPOJO;
@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String message=request.getParameter("message"); 
		GetInputPOJO inputObject=new GetInputPOJO();
		inputObject.setName(name);
		inputObject.setEmail(email);
		inputObject.setMessage(message);
		TakeInputDao.sendInput(inputObject);
		RequestDispatcher rd=request.getRequestDispatcher("PrintUserInput.jsp");
		rd.forward(request, response);
		
		
	}

}
