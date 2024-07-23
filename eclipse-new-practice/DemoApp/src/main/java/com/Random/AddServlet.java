package com.Random;

import java.io.IOException;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
//	private static final long serialVersionUID = 102831973239L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int num1=Integer.parseInt(request.getParameter("num1"));
		int num2=Integer.parseInt(request.getParameter("num2"));
		String op = request.getParameter("button");
		int ans=0;
		PrintWriter rd = response.getWriter();
		
		if(op.equals("+")) {
			ans=num1+num2;
			
		}
		
		else if(op.equals("-")) {
			ans=num1-num2;
//			rd.println("Result is "+(num1-num2));
		}
		
		else if(op.equals("*")) {
			ans=num1*num2;
//			rd.println("Result is "+(num1*num2));
		}
		
		else if(op.equals("/")) {
			ans=num1/num2;
//			rd.println("Result is "+(num1/num2));
		}	
//		rd.println("Result is "+ans);
		response.sendRedirect("NewFile.jsp?ans="+ans);
	}
}