<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="utf-8">
<head>
<%@ include file = "../include/head.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <%@ include file ="../include/main_header.jsp"%>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <%@ include file ="../include/left_column.jsp"%>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        
      </div>
      <!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="col-lg-12">
        	<div class="card">
        		<h3 class="card-title">게시글 목록</h3>
        	</div>
        	<div class="card-body">
        		<table class="table table-boardered">
        			<tbody>
        			<tr>
        				<th style="width: 30px">#</th>
        				<th>제목</th>
        				<th style="width: 100px">작성자</th>
        				<th style="width: 150px">작성시간</th>
        				<th style="width: 60px">조회</th>
        			</tr>
        			<c:forEach items="${articles }" var="article">
        			<tr>
        				<td>${article.article_no }</td>
        				<td><a href="${path}/article/read?article_no=${article.article_no}">${article.title}</a></td>
						<td>${article.writer}</td>
        				<td><fmt:formatDate value="${article.regDate}" pattern="yyyy-MM-dd a HH:mm"/></td>
        				<td><span class="badge bg-red">${article.viewcnt}</span></td>
        			</tr>
        			</c:forEach>
        			
        			</tbody>
        		</table>
        	</div>
        	<div class="card-footer">
        		<div class="float-right">
        		<button type="button" class="btn btn-success btn-flat" id="writeBtn">
        			<i class="fa fa-pencil"></i> 글쓰기
        		</button>
        		</div>
        		<script>
        		var result = "${msg}";
        		if (result == "regSuccess") {
        			alert("게시글 등록이 완료되었습니다.");
        		} else if (result == "modSuccess") {
        			alert("게시글 수정이 완료되었습니다.");
        		} else if (result == "delSuccess") {
        			alert("게시글 삭제가 완료되었습니다.");
        		}
        		</script>
        	</div> 	
        </div>
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div>
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
<%@ include file="../include/main_footer.jsp" %>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<%@ include file="../include/plugin_js.jsp" %>

</body>
</html>
