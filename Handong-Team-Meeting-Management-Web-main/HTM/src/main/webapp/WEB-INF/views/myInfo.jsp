<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jsp directives, tag library 사용됨. -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/header.jsp" />
<div class="header">
		<div class="header-left">
			<div class="menu-icon dw dw-menu"></div>
			<div class="search-toggle-icon dw dw-search2" data-toggle="header_search"></div>
			<div class="header-search">
				<h1 class="add-header">마이페이지</h1>
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
				<div class="page-header">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="title">
								<h4>마이페이지</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="../htm/">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">내 정보</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="add-profile-width col-xl-4 col-lg-4 col-md-4 col-sm-12 mb-30">
						<div class="pd-20 card-box height-100-p">
							<div class="profile-photo">
								<a href="modal" data-toggle="modal" data-target="#modal" class="edit-avatar"><i class="fa fa-pencil"></i></a>
								<img src="<%=request.getContextPath()%>/resources/vendors/images/basic_profile.jpg" alt="" class="avatar-photo">
								<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-body pd-5">
												<div class="img-container">
													<img id="image" src="<%=request.getContextPath()%>/resources/vendors/images/photo2.jpg" alt="Picture">
												</div>
											</div>
											<div class="modal-footer">
												<input type="submit" value="Update" class="btn btn-primary">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<h5 class="text-center h5 mb-0">${user.name}</h5>
						</div>
					</div>
					<!-- basic table  Start -->
					<div class="add-profile-width ">
					<div class="card-box height-100-p overflow-hidden">
						<div class="clearfix mb-20  add-align-center">
							<div class = "add-margin-15">
								<h4 class="text-blue h4">출석 확인</h4>
							</div>
						</div>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">주차</th>
									<th scope="col">채플</th>
									<th scope="col">팀모임</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${attendance}" var="u">
									<tr>
										<td>${u.week}</td>
										<c:choose> 
													
													<c:when test="${u.chapel_attend == 0 }">
														<td>X</td>
													</c:when>
													<c:when test="${u.chapel_attend == 1 }">
														<td>O</td>
													</c:when>
												</c:choose>
												<c:choose> 
													<c:when test="${u.attend == 0 }">
														<td>X</td>
													</c:when>
													<c:when test="${u.attend == 1 }">
														<td>O</td>
													</c:when>
													
												</c:choose>
										<td><button class="btn btn-primary" id="${u.id}" }>수정</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="collapse collapse-box" id="basic-table">
							<div class="code-box">
								<div class="clearfix">
									<a href="javascript:;"
										class="btn btn-primary btn-sm code-copy pull-left"
										data-clipboard-target="#basic-table-code"><i
										class="fa fa-clipboard"></i> Copy Code</a> <a href="#basic-table"
										class="btn btn-primary btn-sm pull-right" rel="content-y"
										data-toggle="collapse" role="button"><i
										class="fa fa-eye-slash"></i> Hide Code</a>
								</div>
								<pre>
									<code class="xml copy-pre" id="basic-table-code">
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
    </tr>
  </tbody>
</table>
							</code>
								</pre>
							</div>
						</div>
						</div>
					</div>
					<!-- basic table  End -->
					<div class="add-info-width">
						<div class="card-box height-100-p overflow-hidden">
							<div class="profile-tab height-100-p">
								<div class="tab height-100-p">
									<div class="profile-info">
										<ul>
											<li><span>Student ID : </span>
												${user.student_id}</li>
											<li><span>Email : </span> ${user.email}</li>
											<li><span>Phone : </span> ${user.phone_number}</li>
											<li><span>Birth :</span> ${user.birth}</li>
											<li><span>Position :</span> ${position.job_title}</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
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
	<script src="<%=request.getContextPath()%>/resources/src/plugins/cropperjs/dist/cropper.js"></script>
	<script>
		window.addEventListener('DOMContentLoaded', function () {
			var image = document.getElementById('image');
			var cropBoxData;
			var canvasData;
			var cropper;

			$('#modal').on('shown.bs.modal', function () {
				cropper = new Cropper(image, {
					autoCropArea: 0.5,
					dragMode: 'move',
					aspectRatio: 3 / 3,
					restore: false,
					guides: false,
					center: false,
					highlight: false,
					cropBoxMovable: false,
					cropBoxResizable: false,
					toggleDragModeOnDblclick: false,
					ready: function () {
						cropper.setCropBoxData(cropBoxData).setCanvasData(canvasData);
					}
				});
			}).on('hidden.bs.modal', function () {
				cropBoxData = cropper.getCropBoxData();
				canvasData = cropper.getCanvasData();
				cropper.destroy();
			});
		});
	</script>
</body>
</html>
