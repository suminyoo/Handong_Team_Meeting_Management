<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- jsp directives, tag library 사용됨. -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/header.jsp" />
<div class="header">
		<div class="header-left">
			<div class="menu-icon dw dw-menu"></div>
			<div class="search-toggle-icon dw dw-search2" data-toggle="header_search"></div>
			<div class="header-search">
				<h1 class="add-header">출석</h1>
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
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>Attendance</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Attendance</li>
								</ol>
							</nav>
						</div>
						<div class="col-md-6 col-sm-12 text-right">
							<div class="dropdown">
								<a class="btn btn-primary dropdown-toggle" href="#" role="button" data-toggle="dropdown">
									January 2018
								</a>
								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="#">Export List</a>
									<a class="dropdown-item" href="#">Policies</a>
									<a class="dropdown-item" href="#">View Assets</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="pd-20 card-box mb-30">
					<div class="clearfix mb-20">
						<div class="pull-left">
							<h4 class="text-blue h4">팀모임 출석</h4>
						</div>
					</div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col">Name \ Week</th>
								<th scope="col">1</th>
								<th scope="col">2</th>
								<th scope="col">3</th>
								<th scope="col">4</th>
								<th scope="col">5</th>
								<th scope="col">6</th>
								<th scope="col">7</th>
								<th scope="col">8</th>
								<th scope="col">9</th>
								<th scope="col">10</th>
								<th scope="col">11</th>
								<th scope="col">12</th>
								<th scope="col">13</th>
								<th scope="col">14</th>
								<th scope="col">15</th>
								<th scope="col">16</th>
								
							</tr>
						</thead>
						<tbody>
								
									<c:forEach items="${attendance}" var="rows" varStatus="status">
										
											<c:if test = "${status.index%16 == 0 }">
												<tr>
													<th scope="row">${rows.name}</th>
											</c:if>
												<c:choose> 
													<c:when test="${rows.attend == false }">
														<td>X</td>
													</c:when>
													<c:when test="${rows.attend == true }">
														<td>O</td>
													</c:when>
												</c:choose>
											<c:if test = "${status.index%16 == 15 }">
												</tr>
											</c:if>
									</c:forEach> 
								
						</tbody>
					</table>
				</div>

				<div class="pd-20 card-box mb-30">
					<div class="clearfix mb-20">
						<div class="pull-left">
							<h4 class="text-blue h4">채플 출석</h4>
						</div>
					</div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col">Name\Week</th>
								<th scope="col">1</th>
								<th scope="col">2</th>
								<th scope="col">3</th>
								<th scope="col">4</th>
								<th scope="col">5</th>
								<th scope="col">6</th>
								<th scope="col">7</th>
								<th scope="col">8</th>
								<th scope="col">9</th>
								<th scope="col">10</th>
								<th scope="col">11</th>
								<th scope="col">12</th>
								<th scope="col">13</th>
								<th scope="col">14</th>
								<th scope="col">15</th>
								<th scope="col">16</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${attendance}" var="rows" varStatus="status">
										
											<c:if test = "${status.index%16 == 0 }">
												<tr>
													<th scope="row">${rows.name}</th>
											</c:if>
												<c:choose> 
													<c:when test="${rows.chapel_attend == false }">
														<td>X</td>
													</c:when>
													<c:when test="${rows.chapel_attend == true }">
														<td>O</td>
													</c:when>
												</c:choose>
											<c:if test = "${status.index%16 == 15 }">
												</tr>
											</c:if>
									</c:forEach> 
						</tbody>
					</table>
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
</body>
</html>
