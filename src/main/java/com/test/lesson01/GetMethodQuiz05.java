package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz05")
public class GetMethodQuiz05 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		String num1 = request.getParameter("number");
		int num2 = Integer.valueOf(num1);
		out.print("<html><head><title>구구단" + num2 + "단</title></head><body>");
		out.print("<ul>");
		for (int i = 1; i <= 9; i++) {
			out.print("<li>" + num2 + " X " + i + " = " + num2 * i + "</li>");
		}
		out.print("</ul></body></html>");
	}
}
