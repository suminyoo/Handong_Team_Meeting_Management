<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- jsp directives, tag library 사용됨. -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/header.jsp" />
<div class="header">
		<div class="header-left">
			<div class="menu-icon dw dw-menu"></div>
			<div class="search-toggle-icon dw dw-search2" data-toggle="header_search"></div>
			<div class="header-search">
				<h1 class="add-header">팀원 정보</h1>
			</div>
		</div>
		<div class="header-right">
			<div class="user-info-dropdown">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown">
						<span class="user-icon">
							<img src="<%=request.getContextPath()%>/resources/vendors/images/basic_profile.jpg" alt="">
						</span>
						<span class="user-name">${user.name}</span>
					</a>
					<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
						<a class="dropdown-item" href="profile.html"><i class="dw dw-user1"></i> Profile</a>
						<a class="dropdown-item" href="profile.html"><i class="dw dw-settings2"></i> Setting</a>
						<a class="dropdown-item" href="faq.html"><i class="dw dw-help"></i> Help</a>
						<a class="dropdown-item" href="login.html"><i class="dw dw-logout"></i> Log Out</a>
					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="/WEB-INF/views/header2.jsp" />
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				<!-- Simple Datatable start -->
				<div class="card-box mb-30">
					<div class="pb-20">
						<table class="data-table table stripe hover nowrap">
							<thead>
								<tr>
									<th class="table-plus datatable-nosort">No.</th>
									<th>이름</th>
									<th>학번</th>
									<th>이메일</th>
									<th class="datatable-nosort">생일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${member}" var="u">
									<tr>
										<td>${u.id}</td>
										<td>${u.name}</td>
										<td>${u.student_id}</td>
										<td>${u.email}</td>
										<td>${u.birth}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<jsp:include page="/WEB-INF/views/footer.jsp" />
		</div>
	</div>
	<!-- js -->
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/core.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/script.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/process.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/layout-settings.js"></script>
	<script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<!-- buttons for Export datatable -->
	<script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/dataTables.buttons.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/buttons.bootstrap4.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/buttons.print.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/buttons.html5.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/buttons.flash.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/pdfmake.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/vfs_fonts.js"></script>
	<!-- Datatable Setting js -->
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/datatable-setting.js"></script></body>
</html>