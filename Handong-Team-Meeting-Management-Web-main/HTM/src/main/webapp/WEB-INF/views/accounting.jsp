
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
				<h1 class="add-header"></h1>
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
								<h4>회계사항</h4>
							</div>
						</div>
						<div class="col-md-6 col-sm-12 text-right">
						</div>
					</div>
				</div>
								
				<!-- Simple Datatable start -->
				
				<div class="card-box mb-30">
					<div class="pd-20">
						<h4 class="text-blue h4">수입</h4>
						<a class="btn-block" data-toggle="modal" data-target="#Medium-modal">
							
								<button type="button" class="btn btn-outline-primary">추가</button>
							
						</a>
					</div>
					<div class="pb-20">
						<table class="data-table table stripe hover nowrap">
							<thead>
								<tr>
									<th class="table-plus datatable-nosort">날짜</th>
									<th>세부내용</th>
									<th>금액</th>
									<th class="datatable-nosort">Action</th>
								</tr>
							</thead>
							<tbody>
								<c:choose> 
									<c:when test="${fn:length(budget) > 0}"> 
										<c:forEach items="${budget}" var="row"> 
											<c:if test = "${row.cost > 0}" >
												<tr> 
													<td class="table-plus">${row.reg_date}</td>
													<td>${row.description}</td>
													<td>${row.cost}</td>
													<td>
														<div class="dropdown">
															<a class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle" href="#" role="button" data-toggle="dropdown">
																<i class="dw dw-more"></i>
															</a>
															<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
																<a class="dropdown-item" href="#"><i class="dw dw-edit2"></i> Edit</a>
																<a class="dropdown-item" href="#"><i class="dw dw-delete-3"></i> Delete</a>
															</div>
														</div>
													</td>
												</tr> 
											</c:if>
										</c:forEach> 
									</c:when> 
									<c:otherwise> 
										<tr> 
											<td colspan="4">조회된 결과가 없습니다.</td> 
										</tr> 
									</c:otherwise> 
								</c:choose>
							</tbody>
						</table>
						<div style="text-align:center;"><h5>총 수입 : 510,000원</h5></div>
							
					   
					</div>
				</div>
				<!-- Simple Datatable End -->
				<!-- Simple Datatable start -->
				<div class="card-box mb-30">
					<div class="pd-20">
						<h4 class="text-blue h4">지출</h4>
						<a class="btn-block" data-toggle="modal" data-target="#Medium-modal">
							
								<button type="button" class="btn btn-outline-primary">추가</button>
							
						</a>
					</div>
					<div class="pb-20">
						<table class="data-table table stripe hover nowrap">
							<thead>
								<tr>
									<th class="table-plus datatable-nosort">날짜</th>
									<th>세부내용</th>
									<th>금액</th>
									<th class="datatable-nosort">Action</th>
								</tr>
							</thead>
							<tbody>
								<c:choose> 
									<c:when test="${fn:length(budget) > 0}"> 
										<c:forEach items="${budget}" var="row"> 
										<c:if test = "${row.cost < 0}" >
											<tr> 
												<td class="table-plus">${row.reg_date}</td>
												<td>${row.description}</td>
												<td>${row.cost}</td>
												<td>
													<div class="dropdown">
														<a class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle" href="#" role="button" data-toggle="dropdown">
															<i class="dw dw-more"></i>
														</a>
														<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
															<a class="dropdown-item" href="#"><i class="dw dw-edit2"></i> Edit</a>
															<a class="dropdown-item" href="#"><i class="dw dw-delete-3"></i> Delete</a>
														</div>
													</div>
												</td>
											</tr> 
											</c:if>
										</c:forEach> 
									</c:when> 
									<c:otherwise> 
										<tr> 
											<td colspan="4">조회된 결과가 없습니다.</td> 
										</tr> 
									</c:otherwise> 
								</c:choose>

								
							</tbody>
						</table>
						<div style="text-align:center;"><h5>총 지출 : 140,000원</h5></div>
						
					    <div class="modal fade" id="Medium-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered">
									<div class="modal-content">
										<div class="modal-header">
											<h4 class="text-blue h4 mb-10" id="myLargeModalLabel">추가</h4>
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										</div>
										<form:form id="insertBudget" action="/accountingForm" method="POST">
										<div class="modal-body">
											<label>날짜</label>
											<input type='text' class="datetimepicker form-control" name="reg_date">
										</div>
										<div class="modal-body">
											<label>내용</label>
											<input type="text" class="form-control" name="description">
										</div>
										<div class="modal-body">
											<label>금액</label>
											<input type="text" class="form-control" name="cost">
										</div>
										<div class="modal-body">
											<label>주차</label>
											<input type="text" class="form-control" name="week">
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
							
					</div>
				</div>
					</div>
				</div>
				<!-- Simple Datatable End -->

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
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/datatable-setting.js"></script>
	
	<script>
	$(function(){
        $('#insertBudget').on('submit', function(e){
            e.preventDefault();
            $.ajax({
                url: '/HTM/accountingForm',
                type: 'POST',
                data: $('#insertBudget').serialize()
            });
        });
    });
	</script>
	
	</body>
</html>
