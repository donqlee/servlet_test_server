package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_insert")
public class Quiz03insert extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		Integer sellerId = Integer.valueOf(request.getParameter("id"));
		String title = request.getParameter("title");
		Integer price = Integer.valueOf(request.getParameter("price"));
		String description = request.getParameter("description");
		String picture = request.getParameter("picture");
		

		String query2 = "insert into `used_goods`"
				+ "(`sellerId`, `title`, `price`, `description`, `picture`)"
				+ "values"
				+ "('"+ sellerId + "', '" + title + "', '" + price + "', '" + description + "', '" + picture + "')";
		try {
			mysqlService.update(query2);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mysqlService.disconnect();
		response.sendRedirect("/lesson04/quiz03/template_list.jsp");
	}
}
