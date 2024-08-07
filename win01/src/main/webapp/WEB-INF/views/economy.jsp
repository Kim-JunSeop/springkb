<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>경제 뉴스</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
      font-family: Arial, sans-serif;
    }
    .container {
      margin-top: 50px;
    }
    h1 {
      margin-bottom: 30px;
    }
    .table {
      margin-top: 20px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    }
    .table th, .table td {
      vertical-align: middle;
    }
  </style>
</head>
<body>
<div class="container">
  <h1 class="text-center">경제 뉴스</h1>
  <table class="table table-bordered table-hover">
    <thead class="thead-dark">
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
    </tr>
    </thead>
    <tbody>
    <!-- -------작성----------- -->
    <%
      List<String> newsList = (List<String>) request.getAttribute("newsList");
      if (newsList != null) {
        for (int i = 0; i < newsList.size(); i++) {
    %>
    <tr>
      <td><%= i + 1 %></td>
      <td><%= newsList.get(i) %></td>
    </tr>
    <%
        }
      }
    %>
    <!-- ---------------------- -->
    </tbody>
  </table>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
</body>
</html>
