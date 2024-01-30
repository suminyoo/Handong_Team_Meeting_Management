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
            <h1 class="add-header">메인 페이지</h1>
         </div>
      </div>
      <div class="header-right">
         <div class="user-info-dropdown">
            <div class="dropdown">
               <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown">
                  <span class="user-icon">
                     <img src="<%=request.getContextPath()%>/resources/vendors/images/basic_profile.jpg" alt="">
                  </span>
                  <span class="user-name">${name}</span>
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
      <div class="pd-ltr-20">
         <div class="card-box pd-20 height-100-p mb-30">
            <div class="row align-items-center">
               <div class="col-md-4">
                  <img src="<%=request.getContextPath()%>/resources/vendors/images/banner-img.png" alt="">
               </div>
               <div class="col-md-8">
                  <h4 class="font-20 weight-500 mb-10 text-capitalize">
                     안녕하세요 <div class="weight-600 font-30 text-blue">${name }님</div>
                  </h4>
                  <p class="font-18 max-width-600">즐거운 한 주 보내세요 :)</p>
               </div>
            </div>
         </div>
         <div class="row clearfix">
            <div class="col-lg-6 col-md-12 col-sm-12 mb-30">
               <div class="pd-20 card-box">
                  <h5 class="h4 text-blue mb-20">알람</h5>
                  <div class="tab">
                     <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                           <a class="nav-link active text-blue" data-toggle="tab" href="#home" role="tab" aria-selected="true">공지사항</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link text-blue" data-toggle="tab" href="#profile" role="tab" aria-selected="false">일정</a>
                        </li>
                     </ul>
                     <div class="tab-content">
                        <div class="tab-pane fade show active" id="home" role="tabpanel">
                           <div class="row">
                           
                           	<c:forEach items="${announce }" var="rows">
	                           	<div class="col-sm-12 col-md-4 mb-30">
	                                 <div class="card card-box">
	                                    <div class="card-header">
	                                       ${status.index + 1 }
	                                    </div>
	                                    <div class="card-body">
	                                       <h5 class="card-title">${rows.title }</h5>
	                                       <p class="card-text">${rows.description}</p>
	                                    </div>
	                                 </div>
	                              </div>
                           	</c:forEach>
                              
                           </div>
                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel">
                        <div class="row">
                           <c:forEach items="${cal }" var="rows">
	                           	<div class="col-sm-12 col-md-4 mb-30">
	                                 <div class="card card-box">
	                                    <div class="card-header">
	                                       ${status.index + 1 }
	                                    </div>
	                                    <div class="card-body">
	                                       <h5 class="card-title">${rows.title }</h5>
	                                       <p class="card-text">${rows.description}</p>
	                                    </div>
	                                 </div>
	                              </div>
                           	</c:forEach>
                           	</div>
                        </div>
                        
                     </div>
                  </div>
               </div>
            </div>
            <div class="pd-20 card-box mb-30">
               <div class="clearfix mb-20">
                  <div class="pull-left">
                     <h4 class="text-blue h4">팀원 정보</h4>
                  </div>
               </div>
               <table class="table">
                  <thead>
                     <tr>
                        <th scope="col">#</th>
                        <th scope="col">직책</th>
                        <th scope="col">이름</th>
                        <th scope="col">학기 수</th>
                        <th scope="col">생일</th>
                        <th scope="col">이메일</th>
                     </tr>
                  </thead>
                  <tbody>
                  			<c:forEach items="${teamuser}" var="rows" varStatus="status">
								<tr>
									<th scope="row">${status.index+1}</th>	
									<td>${rows.job_title }</td>
									<td>${rows.name }</td>
									<td>${rows.semester }</td>
									<td>${rows.birth }</td>
									<td>${rows.email }</td>
								</tr>
							</c:forEach>
				
                  </tbody>
               </table>
               <div class="collapse collapse-box" id="basic-table" >
                  <div class="code-box">
                     <div class="clearfix">
                        <a href="javascript:;" class="btn btn-primary btn-sm code-copy pull-left"  data-clipboard-target="#basic-table-code"><i class="fa fa-clipboard"></i> Copy Code</a>
                        <a href="#basic-table" class="btn btn-primary btn-sm pull-right" rel="content-y"  data-toggle="collapse" role="button"><i class="fa fa-eye-slash"></i> Hide Code</a>
                     </div>
                     <pre><code class="xml copy-pre" id="basic-table-code">
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
                     </code></pre>
                  </div>
               </div>
            </div>
         </div>
         
         
         <div class="footer-wrap pd-20 mb-20 card-box">
            DeskApp - Bootstrap 4 Admin Template By <a href="https://github.com/dropways" target="_blank">Ankit Hingarajiya</a>
         </div>
      </div>
   </div>
   <!-- js -->
   <script src="<%=request.getContextPath()%>/resources/vendors/scripts/core.js"></script>
   <script src="<%=request.getContextPath()%>/resources/vendors/scripts/script.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/vendors/scripts/process.js"></script>
   <script src="<%=request.getContextPath()%>/resources/vendors/scripts/layout-settings.js"></script>
   <script src="<%=request.getContextPath()%>/resources/src/plugins/apexcharts/apexcharts.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/vendors/scripts/dashboard.js"></script>
</body>
</html>
