<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/views/common/header.jsp" %>
<%@ page import="java.util.List" %>
<%@ page import="com.smtw.mypage.model.vo.Note" %>
<%
	List<Note> list = (List<Note>)request.getAttribute("list");
	String id = (String)request.getParameter("id");
%>
<!-- 부트스트랩 CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<!-- 부트스트랩 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

  <section>
  <div class="sector">
        <div class="sidemenu">
            <div><h4 style="text-align:center;font-size:20px;font-weight:bold;">마이 페이지</h4></div>
            <div><p onclick="location.assign('<%=request.getContextPath()%>/mypage/mypageFriends.do?id=<%=logInMember.getMemberId()%>');">워홀 프렌즈</p></div>
            <div><p onclick="location.assign('<%=request.getContextPath()%>/mypage/mypageAccountView.do?id=<%=logInMember.getMemberId()%>');">계정 관리</p></div>
            <div><p onclick="location.assign('<%=request.getContextPath()%>/mypage/mypageNoteReceive.do?id=<%=logInMember.getMemberId()%>');">쪽지함</p></div>
            <div><p onclick="location.assign('<%=request.getContextPath()%>/mypage/mypageWriting.do?id=<%=logInMember.getMemberId()%>');">내가 쓴 글</p></div>
            <div><p onclick="location.assign('<%=request.getContextPath()%>/mypage/mypageNation.do?id=<%=logInMember.getMemberId()%>');">찜한 나라</p></div>
        </div>
        <div class="menuDiv"></div>
        <div class="contentList"><br>
            <center><h1 style="font-size:24px;font-weight:bold;">쪽지함</h1></center>
            <div id="postmenu">
            	<div id="postrecieve"><center><h2 style="background-color: rgb(239, 239, 239);font-size:24px;" onclick="location.replace('<%=request.getContextPath()%>/mypage/mypageNoteReceive.do?id=<%=logInMember.getMemberId()%>');">수신함</h2></center></div><br>
            	<div id="postsend"><center><h2 style="background-color: mediumpurple;font-size:24px;" onclick="location.replace('<%=request.getContextPath()%>/mypage/mypageNoteSend.do?id=<%=logInMember.getMemberId()%>');">발신함</h2></center></div><br>
            </div>
            <button onclick="noteDeleteClick();">삭제하기</button>
           
             <table id="postbox" style="width: 95%; margin-left:2%; text-align: center;" >
                <tr>
                    <td style="width: 5%;"><input type="checkbox" name="전체선택" id="" onclick='selectAll(this)'></td>
                    <td style="width: 10%;"><p>TO</p></td>
                    <td style="width: 40%; ">내용</td>
                    <td style="width: 15%;;">보낸날짜</td>
                </tr>
                
                <%if(list.isEmpty()){ %>
                <tr>
                	<td colspan="4" height="100">아직 보낸 쪽지가 없습니다 :(</td>
                </tr>
                <%}else{
                	for(int i=0;i<list.size();i++){
                %>
               		<tr>
                    	<td><input type="checkbox" name="check" id="" value="<%=list.get(i).getNtNo() %>"></td>
                    	<td>
                    		<p><%=list.get(i).getSenderName() %></p>
	                    	<form name="form" action="" method="post">
			                    <input type="hidden" name="noteNo" value="<%=list.get(i).getNtNo() %>">
			                    <input type="hidden" name="id" value=<%=id %>>
			                </form>	
		                </td>
                    	<td onclick="goPopup(event)" style="text-overflow:ellipsis; overflow:hidden; white-space:nowrap;"><%=list.get(i).getContent() %></td>
                    	<td><%=list.get(i).getDate()%></td>
                	</tr>
                <%}
                } %>

            </table>
            
            <div style="border:0px solid blue;width:100%;height:80px;text-align: center;">
                <!-- 페이지 바 -->
                <nav aria-label="Page navigation example" style="margin-top:30px;color:rgba(221, 160, 221, 0.508) !important;">
                    <ul class="pagination justify-content-center" style="color:rgba(221, 160, 221, 0.508) !important;">
						<%=request.getAttribute("pageBar") %>
                    </ul>
                </nav>
            </div>

			<script>
            	function goPopup(e){
            		var gsWin=window.open("","winName","width=520,height=630"); //open("주소",띄우는방식,크기)
            		var frm=$(e.target).prev().find("form")[0];
            		frm.action="<%=request.getContextPath()%>/mypage/mypageNotePop.do";
            		frm.target="winName";
            		frm.submit();
            	}
            </script>
        </div>
        </div>
   </section>
           

     <script>
      $(document).ready(function() {
          var floatPosition = parseInt($(".sidemenu").css('top')); //사이드메뉴바의 top위치 가져옴

          $(window).scroll(function() {
              var scrollTop = $(window).scrollTop(); // 현재 스크롤 위치를 가져온다.
              console.log(scrollTop); //스크롤위치 콘솔창에 출력해보면서 본인 페이지의 푸터위에 
                                      //사이드메뉴바가 딱 정지하는 위치값 확인할것

              var newPosition=scrollTop +floatPosition + "px"; //사이드메뉴바의 처음위치+ 현재스크롤위치

              if(scrollTop<=460){ //해당 페이지의 푸터위 스크롤값이 620이여서 scrollTop이 620까지만 이동하게 설정했음
                  $(".sidemenu").stop().animate({
                      "top" : newPosition
                  }, 500);}
          }).scroll();
      });
    </script> 
    
    <script>
    function noteDeleteClick(){
		var checkBoxArr=[];
		$("input:checkbox[name='check']:checked").each(function(){
			checkBoxArr.push($(this).val());
			console.log(checkBoxArr);
		});
		$.ajax({
			type:"POST",
			url : "<%=request.getContextPath()%>/mypage/mypageNoteDelete.do",
			data : {
				checkBoxArr : checkBoxArr
			},
			success : function(result){
				alert("삭제 완료");
				history.go(0);
			},
			error:function(xhr, status, error){
				alert("실패");
			}
		});
	}
    </script>
 <style>
       table,th,td{
            border: 1px solid rgb(112, 112, 112);
            border-collapse: collapse;
            padding: 2px;
                      
        }
        table{
            border-bottom: hidden;
            border-left: hidden;
            border-right: hidden;
            border-top: hidden;
        }
        
        #pageBar{
        display:flex;
        	justify-content: center;
        }

		#postmenu{
			display:flex;
      		justify-content: center;
		}
        #postrecieve{
            width: 150px;
            height: 100px;
            cursor: pointer;
        }

        #postsend{
            width: 150px;
            height: 100px;
            cursor: pointer;
        }

        #menutitle{
            /* border: 1px solid;
            border-bottom: 3px solid; */

            position: absolute;
            top: 350px;
            left: 800px;
            width: 300px;
            height: 100px;
        }

        #mypsc{
            border: 1px solid;
            border-bottom: 3px solid;

            position: absolute;
            top: 500px;
            left: 500px;
         
            width: 300px;
            height: 300px;
        }
        
        #flist{
            border: 1px solid;
            border-bottom: 3px solid;

            position: absolute;
            top: 500px;
            left: 900px;
            
            width: 600px;
            height: 300px;
        }
        #flist>img{
            float: left;
            margin: 5px;
        }
        #recievelist{
            border: 1px solid;
            border-bottom: 3px solid;

            position: absolute;
            top: 850px;
            left: 500px;
            
            width: 1000px;
            height: 300px;
        }
       
      	.contentList{
            width:50%;
            height:700px;
       		margin-left:0 auto;
       		margin-left: 0 auto;
       		text-alian : center;
       		border : 2px solid;
       		border-radius : 10px;
       		padding 20px;
       		margin-right : 150px;
        }
        #list{
            margin: 0 auto;
            width: 700px;
            border-collapse: collapse;
        }
        #list th{
            border: 1px solid;
            border-bottom: 3px solid;
        }
        #list td{
            border: 1px solid;
        }
         /* ##### 여기부터 사이드메뉴 스타일 #####  */
        .sector{
            display: flex;
        }
        .sidemenu{
            width: 15%;
            height: 100px;
            font-size: 20px;
            font-weight: bold;
            position: absolute;
            margin-left:50px;
        }
        
        .menuDiv{
            width: 25%;
        }

        .sidemenu>*:hover{
            transform: scale(1.1);
            transition-property: transform;
            transition-duration: 1s;
        }
        .sidemenu>*:not(div:nth-child(1)){
            background-color: lavender;
            border-radius: 50px;
            box-shadow: 5px 2px 8px lavender;
        }
        .sidemenu p{
            text-align: center;
            padding-top: 6%;
             color: black;
        }
        .sidemenu p:hover{
            text-align: center;
            padding-top: 6%;
             color: purple;
        }
        .sidemenu>div:first-child{
            color: purple;
        }

        .sidemenu>div{
            height: 70px;
            margin-top:20px;
        }
        a{
            text-decoration: none;
        }
        /* ##### 여기까지 사이드메뉴 스타일 #####  */
        section{
<<<<<<< HEAD
=======
            border: 0px solid tomato;
>>>>>>> branch 'dev' of https://github.com/thereisri/GDJ56_SMTW_semi
            
            margin-left: 50px;
            margin-right: 50px;
            /* ★수정한 부분 */
            /* padding-left: 100px;
            padding-right: 100px; */
            /* ★수정한부분 */
            /* 
                만약 섹션 안에 div를 만든다면 여기 padding-left,padding-right에서
                좌우 간격을 조정하세요
                왼쪽 오른쪽도 웬만하면 다같이 맞추면 좋을 듯 하니 각자 만들어보고 의견주세요
             */
            margin-top: 100px;
            height: 900px; 
            /*
                ->내가 사용하는 중간 섹션부분의 크기를 조절하려면 이 height를 조정하세요★★
                높낮이 조절해도 footer침범하지 않도록 설정해놨으니 마음껏 늘려도 됩니다.
            */
            
        }
        section>div{
<<<<<<< HEAD
=======
            border: 0px solid blue;
>>>>>>> branch 'dev' of https://github.com/thereisri/GDJ56_SMTW_semi
            /* 섹션 안의 div테두리 */
        }
        *{
        	font-family: "Hahmlet";
    	}
    </style>
<%@include file="/views/common/footer.jsp" %>