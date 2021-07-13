<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService"%>
<%@ page import="java.sql.ResultSet"%>

<%
MysqlService mysqlService = MysqlService.getInstance();
mysqlService.connection();

String query = "select * from seller A join used_goods B on A.id = B.sellerId order by A.id desc";
ResultSet result = mysqlService.select(query);
%>

<div class="row row-cols-1 row-cols-md-3 g-4 ">
	<%
	while (result.next()) {
	%>
	<div class="col-4 mt-4">
		<div class="card h-100 b">
			<div class="d-flex justify-content-center m-2">
			<%
			String pic = result.getString("picture");
			if(pic != null){
			%>
				<img src="<%=pic %>" style="width:90%; height:200px;" class="card-img-top text-center" alt="...">
			<% 
			}else{
			%>
			<div style="width:90%; height:200px;" class="d-flex justify-content-center align-items-center">
			<h4 class="text-secondary">이미지 없음</h4>
			</div>
			<% 
			}
			
			%>
			</div>
			<div class="card-body">
				<div class="card-title font-weight-bold"><%=result.getString("title")%></div>
				<div class="card-text text-secondary"><%=result.getString("price")%>원</div>
				<div class="card-text nickname fs-5"><%=result.getString("nickname")%></div>
			</div>
		</div>
	</div>
	<%
	}
	%>
</div>
<%
mysqlService.disconnect();
%>