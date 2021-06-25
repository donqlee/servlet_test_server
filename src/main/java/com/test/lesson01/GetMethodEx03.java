package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class GetMethodEx03 extends HttpServlet {
	@Override
	// get body가 없다. 정보를 조회할때, 요청하는 데이터가 보인다.
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		//queryString
		PrintWriter out = response.getWriter();
//		out.println("user_id:" + userId);
//		out.println("name:" + name);
//		out.println("age:" + age);
		
		//JSON(JavsScript Object Notation)으로 response를 구성하기 
		// {"user_id":"donq", "name":"q", "age":34}
		response.setContentType("text/json");
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\"" + name + "\", \"age\":" + Integer.valueOf(age) + "}");
	}

}
