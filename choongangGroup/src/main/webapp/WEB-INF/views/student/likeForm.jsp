<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bottSTrap CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">		
<!-- bootStrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<!-- jQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- CSS -->
<link rel="stylesheet" href="/css/styles.css">

    <title>SideBar sub menus</title>
</head>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	function submit(lecId, userid){
		$.ajax({
			url:"/student/like",
			data:{lecId : lecId , userid : userid},
			dataType:'text',
			success:function(data){
				const result = $.trim(data);

				if(result == 1){
				alert("성공")
				location.reload();
				}else if(result == 0){
					alert("중복된 강의입니다.")
				}else if(result == 2){
					alert("시간이 중복되었습니다.")
				}else{
					alert("최대학점을 초과했습니다 [신청가능 최대학점 : 21학점]")
				}
			}		
		});	
	}
</script>

<body class="" id="body-pd">
    <!-- header -->
    <!-- <nav class="navbar navbar-expand-lg navbar-dark bd-navbar bg-light sticky-top position-fixed fixed-top w-100" style="position : absolute">
        <a class="navbar-brand">
            <button class="btn ms-2" type="button">
                <img class="img-fluid" src="/images/logo2.png" alt="logo2" style="height: 40px;">
            </button>
        </a>
    </nav> -->
    <nav class="navbar navbar-expand-lg navbar-dark bd-navbar bg-light sticky-top position-fixed fixed-top w-100" style="position : absolute">
        <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between">
          <a href="/" class="navbar-brand">
            <img class="img-fluid" src="/images/logo2.png" alt="logo2" style="height: 40px;"><use xlink:href="#bootstrap"></use></svg>
          </a>
    
          <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="#" class="nav-link px-2 link-secondary">Home</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">Features</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">Pricing</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">About</a></li>
          </ul>
        </header>
    </nav>
    <!-- /header -->
    <!-- side nav bar -->
    <div class="l-navbar" id="navbar">
        <nav class="navv">
            <div>
                <div class="nav__brand">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <a href="#" class="nav__logo">Bedimcode</a>
                </div>
                <div class="nav__list">
                    <a href="#" class="nav__link active">
                        <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">Dashboard</span>
                    </a>
                    <a href="#" class="nav__link">
                        <ion-icon name="chatbubbles-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">Messenger</span>
                    </a>

                    <div href="#" class="nav__link collapses">
                        <ion-icon name="folder-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">Projects</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">Data</a>
                            <a href="#" class="collapse__sublink">Group</a>
                            <a href="#" class="collapse__sublink">Members</a>
                        </ul>
                    </div>

                    <a href="#" class="nav__link">
                        <ion-icon name="pie-chart-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">Analytics</span>
                    </a>

                    <div href="#" class="nav__link collapses">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">Team</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">Data</a>
                            <a href="#" class="collapse__sublink">Group</a>
                            <a href="#" class="collapse__sublink">Members</a>
                        </ul>
                    </div>

                    <a href="#" class="nav__link">
                        <ion-icon name="settings-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">Settings</span>
                    </a>
                </div>
                <a href="#" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">Log out</span>
                </a>
            </div>
        </nav>
    </div>
    <!-- /side nav bar -->
    <!-- main content -->
    <div class="container-fluid w-100" style=" background-color: rgb(214, 225, 237)">
        <div class="row">
            
            
            <!-- content header -->
            <div class="col-12 pt-4" style="height: 150px; background-color: rgb(95, 142, 241)">
                <div class="d-flex flex-row mb-3">
                    <div>
                        <span class="text-white h4">안녕하세요. <span class="fw-bold">김중앙</span>님!</span>
                    </div>
                    <div class="border border-1 border-white border-bottom rounded-pill text-white px-2 pt-1 ms-2 h6">교수</div>
                    <div>
                        <i class="text-white bi-gear-fill mx-2"></i>
                    </div>
                </div>
                <div class="row">
                    <div>
                        <span class="text-white h6">이공대학 컴퓨터공학과 | 정교수</span>
                    </div>
                </div>
                <div class="d-flex flex-low">
                    <div>
                        <i class="bi bi-envelope-fill text-white"></i>
                    </div>
                    <div>
                        <span class="text-white ms-3">test123@naver.com</span>
                    </div>
                </div>
                
            </div>
            <main class="col-9 h-100 w-100">
                <div class="row m-5">
                    <!-- card header -->
                    <div class="col-12 rounded-top text-white overflow-auto pt-2 fw-bold" style="background-color: rgb(39, 40, 70); height: 40px;"> 
                        <i class="bi bi-bookmark-fill me-2"></i>교수서비스 <i class="bi bi-chevron-right"></i>학사관리 <i class="bi bi-chevron-right"></i>강의 시간표 조회
                    </div>
                    
                    <!------------------- 장바구니 신청 ------------------------------>  
                    <div class="col-12 rounded-bottom overflow-auto bg-light p-3" style="min-height: 550px;"> 
                    	<div class="d-flex flex-row">                    		
                    	 	<div class="col-6 mx-2 ">
                    	 	<!-----------------장바구니 전체 ------------------------>
		                    <!--메인 제목-->
	                        <div class="mt-3 mb-3">                    
	                       	  <span class="fs-2 fw-bold">장바구니 </span>                         
	                        </div> 
	                       	
	                       	<!--  검색상단바 -->
	                        <!-- class="fw-bold border rounded-top " style="background-color:#EAEAEA; height: 45px;" -->	                       	
	                       	<div class="fw-bold fs-6 " style="background-color:#EAEAEA; height: 45px;">
	                       		<span style="line-height: 45px; margin-left: 10px;">${year }학년도 ${semester }학기 개설강좌</span>
	                       		
	                    		<!-- 강의명으로 검색 -->
	                       		<form action="${pageContext.request.contextPath}/student/likeForm" method="get" class="row row-cols-lg-auto g-3 float-end me-5 fs-6 ">
		                       		  <span style="line-height: 45px;">강의명 :</span>
		                       		  
									  <div class="col-12">							    
									  	<div class="input-group">				     
									      <input type="text" name="lecName" class="form-control form-control-sm mt-2" placeholder="강의명으로 검색">
									    </div>
									  </div>
									  <!-- 강의목록 정렬 Select -->
									 <div class="col-12" >
									 	<div class="input-group mt-2 ">	
				                       		<input type="hidden" name="userid" value="${userid }">
				                       		<button type="button" class="btn btn-primary btn-sm fs-6" name="lecName" onclick="submit()">전체목록</button>
				                       						                    		
				                       	</div>
									</div>	
								</form>
								
								
								
	                       	</div>
	
								<!-- 리스트 -->
								<table class="table table-striped">
									<thead>
										<th>강의코드</th><th>강의명</th><th>학년</th><th>강의시간</th><th>교수명</th>
										<th>이수구분</th><th>전공</th><th>학점</th><th>&nbsp;&nbsp;</th>
									</thead>
									<c:forEach var="lec" items="${lectureList.content }">
										<tr>
											<td>${lec.id }</td><td>${lec.name }</td><td>${lec.grade }</td>
											<td>${lec.day1}${lec.time1}, ${lec.day2}${lec.time2}</td><td>${lec.prof }</td><td>${lec.type }</td>
											<td>${lec.major }</td><td>${lec.unitScore }</td>
											<td><input type="button" value="신청" onclick="submit('${lec.id}','${userid}')"></td>		
										</tr>	
									</c:forEach>	
								</table>
								
								<!------------------------------------- 페이징 영역 시작 ------------------------------------------>
								<div class="text-xs-center">
									<ul class="pagination justify-content-center">
									
										<!-- 이전 -->
										<c:choose>
											<c:when test="${lectureList.first}"></c:when>
											<c:otherwise>
												<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/student/likeForm/?userid=${userid }&lecName=">처음</a></li>
												<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/student/likeForm/?page=${lectureList.number-1}&userid=${userid }&lecName=">&larr;</a></li>
											</c:otherwise>
										</c:choose>
							
										<!-- 페이지 그룹 -->
										<c:forEach begin="${startBlockPage}" end="${endBlockPage}" var="i">
											<c:choose>
												<c:when test="${lectureList.pageable.pageNumber+1 == i}">
													<li class="page-item disabled"><a class="page-link" href="${pageContext.request.contextPath}/student/likeForm/?userid=${userid }&page=${i-1}&lecName=">${i}</a></li>
												</c:when>
												<c:otherwise>
													<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/student/likeForm/?userid=${userid }&page=${i-1}&lecName=">${i}</a></li>
												</c:otherwise>
											</c:choose>
										</c:forEach>
										
										<!-- 다음 -->
										<c:choose>
											<c:when test="${lectureList.last}"></c:when>
											<c:otherwise>
												<li class="page-item "><a class="page-link" href="${pageContext.request.contextPath}/student/likeForm/?page=${lectureList.number+1}&userid=${userid }&lecName=">&rarr;</a></li>
												<li class="page-item "><a class="page-link" href="${pageContext.request.contextPath}/student/likeForm/?page=${lectureList.totalPages-1}&userid=${userid }&lecName=">마지막</a></li>
											</c:otherwise>
										</c:choose>
									</ul>
								</div>
								<!-- 페이징 영역 끝 -->
							</div>
							
							
							
							<div class="col-5 ms-5"> <!-----------------장바구니  신청된 강의------------------------>
								<!-- 신청강의 목록 제목-->
		                        <div class="mt-3 mb-3">                    
		                       	  <span class="fs-2 fw-bold">장바구니 담긴 목록</span> 
		                        </div>
							
							
								<table class="table table-striped">
										<thead>
										<tr>
											<th>강의코드</th><th>강의명</th><th>학년</th><th>강의시간</th><th>교수명</th>
											<th>이수구분</th><th>전공</th><th>학점</th><th>&nbsp;&nbsp;</th>
										</tr>
										</thead>
										<c:forEach var="lec" items="${likeList }">
											<tr>
												<td>${lec.lecture.id }</td><td>${lec.lecture.name }</td><td>${lec.lecture.grade }</td>
												<td>${lec.lecture.day1}${lec.lecture.time1}, ${lec.lecture.day2}${lec.lecture.time2}</td><td>${lec.lecture.prof }</td><td>${lec.lecture.type }</td>
												<td>${lec.lecture.major }</td><td>${lec.lecture.unitScore }</td>
													
											</tr>	
										</c:forEach>	
									</table>
							
							
							
							
							
							</div>
						</div>
                    </div>
                    <!-- footer -->
                    <footer class="col-12" style="height: 60px;">
                        footer
                    </footer>    
                </div>
            </main>
        </div>
    </div>
    <!-- IONICONS -->
    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
    <!-- JS -->
    <script src="/js/main.js"></script>
</body>
</html>