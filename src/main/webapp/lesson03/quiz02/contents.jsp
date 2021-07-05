<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo",
		"https://w.namu.la/s/3ca92265fffe4dd38a729df3df7dd41ea3ef12b72383958c8fd0bea79ffaa0331810fb8bea8ba09156d69e5f792eef522dd8eb932389ed972ff233c2c9adb34fc92d9ebceb03cdd9ae4ff0093f88e0e7bbe21d3251555878b233fa2a5f6af14544c8dd26f4cb608d0b0101c91fc37dce");
%>
<section class="contents d-flex border border-success">
	<img class="mt-4 ml-4"
		src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et_400x400.jpg
		"
		width="170" height="200">
	<div class="mt-4 ml-4">
		<h4 class="font-weight-bold"><%= artistInfo.get("name") %></h4>
		<div><%= artistInfo.get("agency") %></div>
		<div><%= artistInfo.get("debute") %> 데뷔</div>
	</div>
</section>