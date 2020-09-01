package com.jayram;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/")
public class DemoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException {
		String name = "jayram";
		req.setAttribute("name", name);
		
		RequestDispatcher rd = req.getRequestDispatcher("display.jsp");
		rd.forward(req, res);
	}
}
