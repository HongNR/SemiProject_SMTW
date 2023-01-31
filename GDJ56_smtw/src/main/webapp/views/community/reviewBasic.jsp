<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/review.css"/>


 <!-- 부트스트랩 CSS -->
   
<!--      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"> -->
     <!-- 부트스트랩 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- 부트스트랩 CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<!-- 부트스트랩 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    
<%@ page import="java.util.List" %>   
<%@ page import="com.smtw.review.model.vo.Review" %>   
 
 <%
	List<Review> review=(List<Review>)request.getAttribute("review");
	String state=(String)request.getAttribute("state");
%>



<%@include file="/views/common/header.jsp" %>
    
  



    <!-- 가운데 섹션 부분!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
    <section>
        <div id="friendTitle" style="text-align: center;">
            <h1 style="font-size:24px;font-weight:bold;">생생후기</h1>
        </div>

        <div style="height:50px;">
            <div style="display:flex;float: right;">
                	
	                <select  id="stateSort" class="form-select" aria-label="Default select example" style="box-shadow: 0 4px 2px -2px rgba(221, 160, 221, 0.304) !important;"> 
	                    <option value="ORDER BY enroll_date DESC">등록일순</option>
	                    <option value="ORDER BY REVIEW_SAT DESC">별점높은순</option>
	                    <option value="ORDER BY REVIEW_SAT ASC">별점낮은순</option>
	                </select>
                
               
            </div>
        </div>
        <div style="height:700px">
            <div style="display:flex">
                <div style="border:0px solid yellow;width:400px;height:700px">
				<div class="sidemenu">
			        <div><a href="<%=request.getContextPath()%>/community/reviewBasic.do"><p>커뮤니티</p></a></div>
			        <div><a href="<%=request.getContextPath()%>/friends/friendsList.do"><p>워홀 프렌즈 구하기</p></a></div>
			        <div><a href="<%=request.getContextPath()%>/community/reviewBasic.do"><p>생생후기</p></a></div>
			    </div>
<!--                     <header class="header" role="banner"> -->
<!--                         <div id="sideMenu"> -->
<!--                             <h1 class="sidelogo"> -->
<!--                                 <a href="LeavingDiary.html"><span>커뮤니티</span></a> -->
<!--                             </h1> -->
<!--                             <div class="nav-wrap"> -->
<!--                                 <nav class="main-nav" role="navigation"> -->
<!--                                     <ul class="unstyled list-hover-slide"> -->
<!--                                         <li><a href="LeavingDiary.html">워홀프렌즈 구하기</a></li> -->
<%--                                         <li><a href="<%=request.getContextPath()%>/community/reviewBasic.do">생생후기</a></li> --%>
<!--                                     </ul> -->
<!--                                 </nav> -->
<!--                           </div> -->
<!--                         </div> -->
<!--                     </header> -->
           	 	</div>
           
           
	  			<div style="border:0px solid red;width:1100px;height:850px;margin-left:80px;">
				<div style="display:flex">
		 	<%if(review==null||review.isEmpty()){ %>	 
				<div style="border:0px solid green;width:270px;height:300px;text-align: center; ">
                           <P>조회된 후기가 없습니다.</P>
                </div>
			<!--데이터 출력  -->
               <%}else{ 
            	  
            	   int count=0;
            	   for(Review r :review)  { %> 
              	
                   
                   
                        <div style="border:0px solid green;width:270px;height:300px;text-align: center; ">
                            <div style="border:0px solid magenta;width:180px;height:230px; margin-left :50px; margin-top :5px; " >
                                <img src="<%=request.getContextPath() %>/upload/review/<%=r.getReviewFileName() %>" alt="" style="width:100%;height:100%;margin:auto;border-radius:20px;">
                            </div>
                            <div><a href="<%=request.getContextPath()%>/community/readReview.do?ReviewNo=<%=r.getReviewNo()%>" style="color: black !important;font-size:20px !important;" ><%=r.getReviewTitle() %></a></div>
                            <div><%=r.getEnrollDate()%></div>
                        </div>
                       
                        
                        <%count++;
                        if(count==4){
                       		count=0;%>
                       	</div>
                       	<div style="display:flex">
                      <%} %>
                        
                        
                        
                     <% }    
                    
              		}%>    <!--else  -->
                    
                    <!--반복문에서 뺴야함  -->
                    </div> 
                    
                    
                
                   
                   
                   
                   
                    <!-- 페이지 바 -->
	                <div style="border:0px solid blue;width:100%;height:80px;text-align: center;">
	                    <!-- 페이지 바 -->
	                    <nav aria-label="Page navigation example" style="margin-top:30px;color:rgba(221, 160, 221, 0.508) !important;">
	                        <ul class="pagination justify-content-center" style="color:rgba(221, 160, 221, 0.508) !important;">
								<%=request.getAttribute("pageBar") %>
	                        </ul>
	                    </nav>
	                </div>
                </div>
            </div>
        </div>
        <div style="display:flex; border:0px solid rgb(15, 231, 231);width:100%;height:75px;margin-left: 0px;">
            <div style="border:0px solid yellow;width:400px;height:70px;"></div>
           
            <div style="border:0px solid yellow;width:600px;height:70px;margin-right:300px">
                <!-- 검색창 위치 -->
                <!-- <input type="text" style="margin-top:25px;margin-left:120px;margin-bottom:100px !important;" value="검색창 API 부트스트랩위치 " >  -->
                
                <nav class="navbar navbar-expand-sm " style="background-color: white;" >
                    <div class="container-fluid position-absolute top-0 end-0" >
                       <div class=" navbar-collapse" id="navbarSupportedContent" >
                        
                         <div id="search-container" style="margin-left:50%;">
                        
                        	<div style="display:flex;">
		                        <select id="searchType"  class="form-select form-select-sm" aria-label=".form-select-sm  example" style="width:100px;">
		                          <!--   <option selected>선택</option> -->
		                            <option value="nation">나라</option>
		                            <option value="city">도시</option>
		                            <option value="title">제목</option>
		                           	<option value="content">내용</option>
		                            <option value="userId">작성자(아이디)</option>
		                        </select>
		                        <div id=search-nation>
			                        <form action="<%=request.getContextPath()%>/community/searchReview.do"    class="d-flex" role="search">
			                      	<input type="hidden" name="searchType" value="N_NAME">
			                         <input name="searchKeyword" class="form-control me-2" type="text" placeholder="나라검색" aria-label="Search">
			                         <button class="customBtn btnStyle" type="submit">Search</button>
			                        </form>
		                      	</div>
		                      	<div id=search-city style="display:none;">
			                        <form action="<%=request.getContextPath()%>/community/searchReview.do" class="d-flex" role="search">
			                      	<input type="hidden" name="searchType" value="REVIEW_CITY">
			                         <input name="searchKeyword" class="form-control me-2" type="text" placeholder="도시검색" aria-label="Search">
			                         <button class="customBtn btnStyle" type="submit">Search</button>
			                        </form>
		                      	</div>
	                      		<div id=search-title  style="display:none;">
			                        <form action="<%=request.getContextPath()%>/community/searchReview.do" class="d-flex" role="search">
			                      	<input type="hidden" name="searchType" value="REVIEW_TITLE">
			                         <input name="searchKeyword" class="form-control me-2" type="text" placeholder="제목검색" aria-label="Search">
			                         <button class="customBtn btnStyle" type="submit">Search</button>
			                        </form>
		                      	</div>
		                      	<div id=search-content  style="display:none;">
			                        <form action="<%=request.getContextPath()%>/community/searchReview.do" class="d-flex" role="search">
			                      	<input type="hidden" name="searchType" value="REVIEW_CONTENTS">
			                         <input name="searchKeyword" class="form-control me-2" type="text" placeholder="내용검색" aria-label="Search">
			                         <button class="customBtn btnStyle" type="submit">Search</button>
			                        </form>
		                      	</div>
		                      	<div id=search-userId  style="display:none;">
			                        <form action="<%=request.getContextPath()%>/community/searchReview.do" class="d-flex" role="search">
			                      	<input type="hidden" name="searchType" value="MEMBER_ID">
			                         <input name="searchKeyword" class="form-control me-2" type="text" placeholder="작성자(아이디)검색" aria-label="Search">
			                         <button class="customBtn btnStyle" type="submit">Search</button>
			                        </form>
		                      	</div>
                      		</div>
                      
                     
                      	</div>
                      
                      </div>
                    </div>
                  </nav>
            </div>
           
            <div style="border:0px solid yellow;width:400px;height:60px">
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                  <%if(logInMember!=null) {%>  
                    <button onclick="location.assign('<%=request.getContextPath()%>/community/enrollReview.do');"
                    class="btn btn-primary customBtn btnStyle" type="button" style=" margin-left :300px; margin-top :15px;border:0px;padding-top:3px; !important;" value="작성">
                    작성하기</button>
               <% }	%>
                </div>
            </div>
        </div>       
    </section>
    
    <style>
    #search-container>*{
    	margin:0 auto;
		text-align:center;
    }
    .sidemenu>div{
      	margin-top:20px;
    }
    </style>
    
    <script>
    
    
    

   	 <% String stateSort = request.getParameter("stateSort"); %>
   	 <%if(stateSort == null){%>
   	 	$("#stateSort").val("ORDER BY enroll_date DESC");
   	 <%} else{%>
   	 	$("#stateSort").val("<%=stateSort%>");
   	 <%}%>

    
    
    
    
    $('#searchType').change(e=>{
        	$(e.target).val();
        const type=$(e.target).val();
        	console.log($("search-"+type));
        	$("#search-container>div>div").hide();
        	$("#search-"+type).css("display","inline-block");
        
        });
    
     
     $("#stateSort").change(e=>{
     	
    	
    	console.log($(e.target).val()); 
    	
     	
     	const stateSort=$(e.target).val()
     	
     	let url;
     	<%if(state.equals("search")) {%>
     	url = '<%=request.getContextPath()%>/community/searchReview.do?stateSort='+$(e.target).val()+'&searchType='+'<%=request.getParameter("searchType")%>'+'&searchKeyword='+'<%=request.getParameter("searchKeyword")%>';
     	location.replace(url);
     	
     	<% }else{ %>
     	
     		location.replace('<%=request.getContextPath()%>/community/reviewBasic.do?stateSort='+$(e.target).val()) ; 
     	<%}  %>
    	 
     	
     	
   
     });
     
     
     
     $("#stateSort").change(e=>{
      	
    	 console.log($(e.target).val()); 
    	
      	
      	const stateSort=$(e.target).val();
      	
     	<%-- location.replace('<%=request.getContextPath()%>/community/searchReview.do?stateSort='+$(e.target).val()); --%>
      	
      	
      });
     
     
     
     <!-- ##### 사이드바 스크롤 위치 따라 움직이는 스크립트문 ##### -->
     <!-- ##### 개별적으로 설정해줘야 하는 부분 있음 (각자 페이지 푸터위까지만 움직이게) ##### -->
     <!-- ##### 크롬 비율 80프로기준으로 설정했음 ##### -->
     $(document).ready(function() {
         var floatPosition = parseInt($(".sidemenu").css('top')); //사이드메뉴바의 top위치 가져옴

         $(window).scroll(function() {
             var scrollTop = $(window).scrollTop(); // 현재 스크롤 위치를 가져온다.
             console.log(scrollTop); //스크롤위치 콘솔창에 출력해보면서 본인 페이지의 푸터위에 
                                     //사이드메뉴바가 딱 정지하는 위치값 확인할것

             var newPosition=scrollTop +floatPosition + "px"; //사이드메뉴바의 처음위치+ 현재스크롤위치

             if(scrollTop<=860){ //해당 페이지의 푸터위 스크롤값이 620이여서 scrollTop이 620까지만 이동하게 설정했음
                 $(".sidemenu").stop().animate({
                     "top" : newPosition
                 }, 500);}
         }).scroll();
     });
     </script>

    <!-- 여기까지!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

<%@include file="/views/common/footer.jsp" %>