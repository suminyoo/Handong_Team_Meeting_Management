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
            <h1 class="add-header">팀 정보</h1>
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
		<div class="pd-ltr-20 height-100-p xs-pd-20-10">
			<div class="min-height-200px">
			
				<div class="page-header">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="title">
								<h4>Team information</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Team</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>

				<div class="container pd-0">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="blog-list">
								<ul>
									<li>
										<div class="row no-gutters">
											<div class="col-lg-6 col-md-12 col-sm-12">
												<div class="blog-img">
													<img src="<%=request.getContextPath()%>/resources/vendors/images/handong.jpeg" style="boarder:black" alt="" class="bg_img">
												</div>
											</div>
											<div class="col-lg-6 col-md-12 col-sm-12">
												<div class="blog-caption">
													<div class="blog-by">
														<table class="table">
															<c:forEach items="${team}" var="u">		
																<tbody>
																	<tr>
																		<th scope="row">팀 이름</th>
																		<td>${u.teamName}</td>
																	</tr>
																	<tr>
																		<th scope="row">교수님 성함 </th>
																		<td>${u.profName}</td>
																	</tr>
																	<tr>
																		<th scope="row">RC</th>
																		<td>${u.rcName}</td>
																	</tr>
																	<tr>
																		<th scope="row">팀 예산 </th>
																		<td>${u.budget}원</td>
																	</tr>
																	<tr>
																		<th scope="row">팀모임 장소</th>
																		<td>${u.place}</td>
																	</tr>
																	<tr>
																		<th scope="row">팀모임 시간 </th>
																		<td>${u.time}교시</td>
																	</tr>
																</tbody>
															</c:forEach> 
														</table>
													</div>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>		
					</div>
				</div>
			</div>
			<div class="footer-wrap pd-20 mb-20 card-box">
				HTM - Handong TeamMeeting Management
			</div>
		</div>
	</div>

	<!-- js -->
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/core.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/script.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/process.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/layout-settings.js"></script>
</body>
</html>
