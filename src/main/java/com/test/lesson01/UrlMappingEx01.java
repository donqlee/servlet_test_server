package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {
	 @Override
	    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
	     // 한글 깨짐 방지 
//		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/plain");
		 PrintWriter out = response.getWriter();
	        out.println("안녕하세요. 서블릿입니다.");
	        
	     Date now = new Date();
	     out.println(now);
	     
	     //2021-06-21 16:13:05
	     //formatter
	     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:aa");
	     out.println(sdf.format(now));
	    }
}
