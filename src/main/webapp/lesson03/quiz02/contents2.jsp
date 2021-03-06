<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://ww.namu.la/s/5ea8ba97baf8af3cc13f2972d9d23bcd17e19b8b8a96ce86d50c4bd03ad4df30321fc7e012738ad4b00c50642195ef7a68ff484ad760b15ff46bb1dc45ffb3fcc4fbf70295d873d7f5e201609f918473ed8c8bb142e9c9ccad42fe4ccf4419ee8e84a4f9e3efa50b8f04f12442226439");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://img.sbs.co.kr/newimg/news/20151023/200880315_1280.jpg");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

String title = request.getParameter("title");
%>


<%
if (title != null) {
%>
<h4 class="font-weight-bold mt-2">곡 정보</h4>
<section class="contents d-flex border border-success">
	<%
	for (Map<String, Object> item : musicList) {

		if (title.equals((String) item.get("title"))) {
			int time = (Integer) item.get("time");
			int m = time / 60;
			int s = time % 60;
	%>
	<img class="mt-4 ml-4" src="<%=item.get("thumbnail")%>" width="190"
		height="220">
	<div class="mt-4 ml-4">
		<div class="display-4"><%=item.get("title")%></div>
		<div class="text-success font-weight-bold mt-2"><%=item.get("singer")%></div>
		<table class="mt-3">
			<tbody>
				<tr>
					<td width="100">앨범</td>
					<td><%=item.get("album")%>
				</tr>
				<tr>
					<td width="100">재생시간</td>
					<td><%=m%> : <%=s%></td>
				</tr>
				<tr>
					<td width="100">작곡가</td>
					<td><%=item.get("composer")%>
				</tr>
				<tr>
					<td width="100">작사가</td>
					<td><%=item.get("lyricist")%>
				</tr>
			</tbody>
		</table>
	</div>
	<%
	}
	}
	%>
</section>
<%
}
%>