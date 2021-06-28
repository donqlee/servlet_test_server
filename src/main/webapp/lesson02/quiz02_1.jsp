<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02_1</title>
</head>
<body>
	<%!
	SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
	SimpleDateFormat format2 = new SimpleDateFormat ( "yyyy년 MM월dd일 HH시mm분ss초");
			
	Date time = new Date();
	String time1 = format1.format(time);
	String time2 = format2.format(time);
	
	String types = request.getParameter("type");
	
	public String showDateTime(){
		if (types.equals("time")){
			return time1;
		}else{
			return time2;
		}
	}
	%>
	<h1><%= showDateTime() %></h1>
</body>
</html>