<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService"%>
<%@ page import="java.sql.ResultSet"%>

<%
MysqlService mysqlService = MysqlService.getInstance();
mysqlService.connection();

String query = "select * from `seller`";
ResultSet result = mysqlService.select(query);
%>
<form method="post" action="/lesson04/quiz03_insert">
<div class="container">
	<div class="display-4 mt-5 mb-5">물건 올리기</div>
	<div class="d-flex">
		<select class="form-control col-3 mr-4" name="id">
			<option selected>-아이디 선택-</option>
			<%
			while (result.next()) {
			%>
			<option value="<%= result.getInt("id") %>"><%=result.getString("nickname")%></option>
			<%
			}
			%>
		</select> <input type="text" placeholder="제목"
			class="form-control col-5 mr-3 ml-3" name="title">
		<div class="input-group col-3 ml-3">
			<input type="text" class="form-control" placeholder="가격"
				aria-label="Recipient's username" aria-describedby="basic-addon1"
				name="price"> <span class="input-group-text"
				id="basic-addon1">원</span>
		</div>
	</div>
	<textarea class="form-control mt-3" rows="6" name="description"></textarea>
	<div class="input-group mt-3">
		<span class="input-group-text" id="basic-addon2">이미지url</span> <input
			type="text" class="form-control" id="basic-url"
			aria-describedby="basic-addon2" name="picture">
	</div>
	<button class="btn mt-3 col-12" type="submit">저장</button>
</div>
</form>