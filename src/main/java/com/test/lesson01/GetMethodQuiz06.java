package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class GetMethodQuiz06 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/json");

		String num1 = request.getParameter("number1");
		String num2 = request.getParameter("number2");
		int number1 = Integer.valueOf(num1);
		int number2 = Integer.valueOf(num2);
		PrintWriter out = response.getWriter();
		out.print("{\"addition\":" +(number1 + number2)+ ",\"subtraction\":" + (number1 - number2) + "}");
			
		
	}
}
