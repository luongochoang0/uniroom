<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/components/taglib.jsp"%>
<div class="row">
	<div class="panel-heading">
		<div class="panel-title ">Quản lý liên hệ</div>
	</div>
</div>
<hr>
<div class="row">
	<div class="col-md-8">
		<c:if test="${not empty msg}">
			<div class="alert alert-success" role="alert">${msg}</div>
		</c:if>
	</div>
	<div class="col-md-4">
		<form class="input-group form" action="${pageContext.request.contextPath}/admin/feedback/search" method="post">
				<input type="text" class="form-control" name="search" value="${search}" placeholder="Search...">
			<span class="input-group-btn">
				<button  class="btn btn-primary" type="submit">Search</button>
			</span>
		</form>
	</div>
</div>

<div class="row">
	<div class="panel-body">
		<table class="table table-striped table-bordered" id="example">
			<thead>
				<tr>
					<th width="5%">ID</th>
					<th width="20%">Tên đầy đủ</th>
					<th width="20%">Email</th>
					<th width="20%">Chủ đề</th>
					<th width="20%">Nội dung</th>
					<th width="15%">Chức năng</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${not empty feedBackList}">
						<c:forEach items="${feedBackList}" var="feedBack">
							<tr class="odd gradeX">
								<td>${feedBack.fid}</td>
								<td>${feedBack.fullname}</td>
								<td>${feedBack.email}</td>
								<td>${feedBack.subject}</td>
								<td>${feedBack.content}</td>
								<td class="center text-center">
									<a href="${pageContext.request.contextPath}/admin/feedback/del/${feedBack.fid}" title="" 
									class="btn btn-danger" onclick="return confirm('Bạn có muốn xóa ${feedBack.subject} không?')">
												<span class="glyphicon glyphicon-trash"></span> Xóa</a></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:when test="${not empty feedBackListSearch}">
						<c:forEach items="${feedBackListSearch}" var="feedBack">
							<tr class="odd gradeX">
								<td>${feedBack.fid}</td>
								<td>${feedBack.fullname}</td>
								<td>${feedBack.email}</td>
								<td>${feedBack.subject}</td>
								<td>${feedBack.content}</td>
								<td class="center text-center">
									<a href="${pageContext.request.contextPath}/admin/feedback/del/${feedBack.fid}" 
										onclick="return confirm('Bạn có muốn xóa ${feedBack.subject} không?')" title="" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash"></span> Xóa</a></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr><td colspan="6">Không có liên hệ nào!</td></tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
			<!-- Pagination -->
				<c:if test="${not empty totalPage}">
					<nav class="text-center" aria-label="...">
					   <ul class="pagination">
					      <li class='<c:if test="${currentPage == 1}">disabled</c:if>' ><a href="${pageContext.request.contextPath}/admin/feedback/index/${currentPage-1}" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
					      <c:forEach begin="1" end="${totalPage}" var="i">
						  	<li class='<c:if test="${currentPage == i}">active</c:if>'><a href="${pageContext.request.contextPath}/admin/feedback/index/${i}">${i} <span class="sr-only">(current)</span></a></li>
						  </c:forEach>
					      <li class='<c:if test="${currentPage == totalPage}">disabled</c:if>'><a href="${pageContext.request.contextPath}/admin/feedback/index/${currentPage+1}" aria-label="Next"><span aria-hidden="true">»</span></a></li>
					   </ul>
					</nav>
				</c:if>
			<!-- /.pagination -->
	</div>
</div>
<!-- /.row -->
