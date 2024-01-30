<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jsp directives, tag library 사용됨. -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/header.jsp" />
<div class="header">
		<div class="header-left">
			<div class="menu-icon dw dw-menu"></div>
			<div class="search-toggle-icon dw dw-search2" data-toggle="header_search"></div>
			<div class="header-search">
				<h1 class="add-header">공지사항</h1>
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
			<!-- 
				<div class="page-header">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="title">
								<h4>Frequently asked questions</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">FAQ</li>
								</ol>
							</nav>
						</div>
					</div>
				</div> -->
				
				<div class="faq-wrap">
					<h4 class="mb-30 h4 text-blue padding-top-30"></h4>
					<div class="padding-bottom-30">
					<a class="btn-block" data-toggle="modal" data-target="#Medium-modal">
							
								<button type="button" class="btn btn-outline-primary">추가</button>
							
						</a>
						<c:forEach items="${announcement}" var="u">
							<div class="card">
								<div class="card-header">
									<button class="btn btn-block" data-toggle="collapse" data-target="#faq1-1">
										${u.title}
									</button>
								</div>
								<div id="faq1-1" class="collapse show">
									<div class="card-body">
										${u.description}						
									</div>
								</div>
							</div>
	
						</c:forEach>
					
					</div>
				</div>
			</div>
			
			<div class="modal fade" id="Medium-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered">
									<div class="modal-content">
										<div class="modal-header">
											<h4 class="text-blue h4 mb-10" id="myLargeModalLabel">추가</h4>
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										</div>
										<form:form id="insertAnnounce" action="/announceForm" method="POST">
	
										<div class="modal-body">
											<label>제목</label>
											<input type="text" class="form-control" name="title">
										</div>
										<div class="modal-body">
											<label>내용</label>
											<input type="text" class="form-control" name="description">
										</div>
										<div class="modal-footer">
											<input type="submit" class="btn btn-primary">저장</input>
											<input type="submit" class="">저장</input>
											<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
										</div>
										</form:form>
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
	<script>
	$(function(){
        $('#insertAnnounce').on('submit', function(e){
            e.preventDefault();
            $.ajax({
                url: '/HTM/announceForm',
                type: 'POST',
                data: $('#insertAnnounce').serialize()
            });
        });
    });
	</script>


</body>
</html>
