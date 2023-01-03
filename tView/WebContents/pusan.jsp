<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tView.PusanItem" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.json.simple.JSONObject" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

<% PusanItem pusanItem = new PusanItem(); %>

<%
	ArrayList<JSONObject> itemList= pusanItem.getPusanItem();
%>
<!--
	String mainTitle = null;
	int i = 0;
	for(i=0; i<itemList.size();i++){
		mainTitle = (String)itemList.get(i).get("MAIN_TITLE");
		System.out.println(mainTitle);
	}
%-->


<h1>부산 맛집!</h1>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  	<table class="table table-primary">
  <thead class="table-primary">
    <tr class="table-primary">
      <th scope="col">#</th>
      <th scope="col">상호명</th>
      <th scope="col">주메뉴</th>
      <th scope="col">주소</th>
      <th scope="col">영업시간</th>
      <th scope="col">전화번호</th>
    </tr>
  </thead>
  <tbody>
  <% for(int j=0; j < itemList.size(); j++){ %>
    <tr>
      <th scope="row"><%= j+1 %>></th>
      <td><%= itemList.get(j).get("MAIN_TITLE")%></td>
      <td><%= itemList.get(j).get("PLACE")%></td>
      <td><%= itemList.get(j).get("ADDR1")%></td>
      <td><%= itemList.get(j).get("USAGE_DAY_WEEK_AND_TIME")%></td>
      <td><%= itemList.get(j).get("CNTCT_TEL")%></td>
    </tr>
    <% }%>
  </tbody>
</table>
</body>
</html>