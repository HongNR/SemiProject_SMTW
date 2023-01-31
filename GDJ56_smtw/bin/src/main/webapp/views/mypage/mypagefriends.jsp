<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@include file="/views/common/header.jsp" %>
<%@ page import="com.smtw.mypage.model.vo.Applyfriends" %>
<%@ page import="com.smtw.mypage.model.vo.MemberInfo" %>
<%@ page import="java.util.List" %>

<%
List<Applyfriends> list =  (List<Applyfriends>)request.getAttribute("list");
%>
<%
List<MemberInfo> infolist =  (List<MemberInfo>)request.getAttribute("infolist");
%>
<%
List<MemberInfo> friendslist =  (List<MemberInfo>)request.getAttribute("friendslist");
%>

    <section>
        <div class="sidemenu">
            <div><h4 style="text-align: center;">���� ������</h4></div>
            <div><p>��Ȧ ������</p></div>
            <div><p>���� ����</p></div>
            <div><p>������</p></div>
            <div><p>���� �� ��</p></div>
            <div><p>���� ����</p></div>
           
        </div>
        <div class="menuDiv"></div>
        <div class="contentList">
            <div id="menutitle"><h2 style="background-color: cornflowerblue;">��Ȧ ������</h2></div>
            <div id="mypsc">
                <p><%=logInMember.getMemberName()%>�� � ������!</p>
                <img src="<%=request.getContextPath()%>/images/mypage/tomcat.png" alt="" width="200" height="200">
            </div>
            <div id="flist">
                <p>ģ�� ���</p>
                <!-- ũ���� �˾�â �ִ�ȭ ������ �ȵ� -->
                <%if(friendslist.isEmpty()){ %>
                	���� ������ ģ���� �����ϴ� :(
                <%} else{
                	for(int i=0;i<friendslist.size();i++){
                %>
                <form name="form" action="" method="post">
                <input type="hidden" name="friendName" value="<%=friendslist.get(i).getMemberName()%>"> 
                <input type="hidden" name="friendAge" value="<%=friendslist.get(i).getAge()%>"> 
                <input type="hidden" name="friendGender" value="<%=friendslist.get(i).getGender()%>"> 
                </form>
                <input type="image" name="submit" id="ficon" src="<%=request.getContextPath()%>/images/mypage/prfile_pics.png" style="cursor:pointer"
                onclick="goPopup(event)">
                <%}
                }%>
            </div>
            
            
                <script>
            	function goPopup(e){
            		var gsWin=window.open("","winName","width=380,height=380"); //open("�ּ�",���¹��,ũ��)
            		var frm=$(e.target).prev()[0];
            		frm.action="<%=request.getContextPath()%>/mapage/mapagePopUp.do";
            		frm.target="winName";
            		frm.submit();
            	}
            	</script>
            
        
         

            <div id="recievelist">

                <p>ģ����û ���� ���<p>


                <%if(list.isEmpty()){ %>
                	���� ģ�� ��û�� ���� ȸ���� �����ϴ� :(
                <%} else{
                	for(int i=0;i<list.size();i++){
                %>
                <div style="width:800; height:100;border: 1px solid;">
                    <p style="color: gray; float: right;">ģ����û�� : <%=list.get(i).getFEnroll()%></p>
                    <p style="text-align: center; float: left;">
                    <%=infolist.get(i).getMemberName()%>(<%=infolist.get(i).getAge()%>/<%=infolist.get(i).getGender()%>)</p>
                    
                    
                    <p style="text-align: center;"><%=list.get(i).getPropose()%>
                        <button name="����" value="����" type="submit" onclick="window.open('<%=request.getContextPath()%>/mypage/acceptFriends.do?id=<%=logInMember.getMemberId()%>&&memberfrom=<%=list.get(i).getMemberId()%>','_blank','scrollbars=yes,width=417,height=385,top=100,left=100');">����</button>
                        <button name="����" value="����" type="submit" onclick="window.open('<%=request.getContextPath()%>/mypage/rejectFriends.do?id=<%=logInMember.getMemberId()%>&&memberfrom=<%=list.get(i).getMemberId()%>','_blank','scrollbars=yes,width=417,height=385,top=100,left=100');">����</button>
                    </p>
                </div>
                <br>
                <%}
                }%>
                 
            </div>
          
        </div>
        

    </section>
    
      <script>
        $(document).ready(function() {
            var floatPosition = parseInt($(".sidemenu").css('top')); //���̵�޴����� top��ġ ������

            $(window).scroll(function() {
                var scrollTop = $(window).scrollTop(); // ���� ��ũ�� ��ġ�� �����´�.
                console.log(scrollTop); //��ũ����ġ �ܼ�â�� ����غ��鼭 ���� �������� Ǫ������ 
                                        //���̵�޴��ٰ� �� �����ϴ� ��ġ�� Ȯ���Ұ�

                var newPosition=scrollTop +floatPosition + "px"; //���̵�޴����� ó����ġ+ ���罺ũ����ġ

                if(scrollTop<=300){ //�ش� �������� Ǫ���� ��ũ�Ѱ��� 620�̿��� scrollTop�� 620������ �̵��ϰ� ��������
                    $(".sidemenu").stop().animate({
                        "top" : newPosition
                    }, 50);}
            }).scroll();
        });
    </script> 
      <style>

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
        #ficon{
            float: left;
            margin: 5px;
            height:100px;
            width:100px;
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
        section{
            display: flex;
        }
        .contentList{
       		height: 1000px;
            width: 85%;  
            margin-left: 0 auto;
            margin-right: 0 auto;
            text-align: center;
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
        .sidemenu{
            padding: 10px;
            /* margin-top: 1000px; */
            /* margin: 0 auto; */
            /* border: 1px solid; */
            font-size: 18px;
            font-weight: bold;
            position: fixed;
        }
        
        .menuDiv{
            width: 15%;
        }

        .sidemenu p:hover{
            transform: scale(1.1);
            transition-property: transform;
            transition-duration: 1s;
        }
        .sidemenu>*:not(div:nth-child(1)){
            width: 200px;
            height: 50px;
            background-color: lavender;
            border-radius: 50px;
            box-shadow: 5px 2px 8px lavender;
        }
        .sidemenu p{
            text-align: center;
            padding: 13px;
            cursor:pointer
        }
        .sidemenu>div:nth-child(2){
            color: purple;
            
        }
        section{
            border: 1px solid tomato;
            
            margin-left: 50px;
            margin-right: 50px;
            /* �ڼ����� �κ� */
            /* padding-left: 100px;
            padding-right: 100px; */
            /* �ڼ����Ѻκ� */
            /* 
                ���� ���� �ȿ� div�� ����ٸ� ���� padding-left,padding-right����
                �¿� ������ �����ϼ���
                ���� �����ʵ� �����ϸ� �ٰ��� ���߸� ���� �� �ϴ� ���� ������ �ǰ��ּ���
             */
            margin-top: 100px;
            height: 900px; 
            /*
                ->���� ����ϴ� �߰� ���Ǻκ��� ũ�⸦ �����Ϸ��� �� height�� �����ϼ���ڡ�
                ������ �����ص� footerħ������ �ʵ��� �����س����� ������ �÷��� �˴ϴ�.
            */
            
        }
        section>div{
            border: 1px solid blue;
            /* ���� ���� div�׵θ� */
            
        }
    </style>
<%@include file="/views/common/footer.jsp" %>