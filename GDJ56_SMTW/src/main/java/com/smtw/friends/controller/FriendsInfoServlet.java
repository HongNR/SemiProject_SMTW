package com.smtw.friends.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smtw.admin.model.service.MemberService;
import com.smtw.friends.model.service.FriendsService;
import com.smtw.friends.model.vo.Friends;
import com.smtw.member.model.vo.Member;
import com.smtw.mypage.model.service.MypageService;

/**
 * Servlet implementation class MemberInfoServlet
 */
@WebServlet("/friends/friendsInfo.do")
public class FriendsInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FriendsInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no=Integer.parseInt(request.getParameter("friendsNo"));
		
		Friends f=new FriendsService().selectFriendsNo(no);
		request.setAttribute("friends", f);
		
		Member m=new MemberService().selectMemberId(f.getMemberId());
		request.setAttribute("member", m);
		
		String myImg=new MypageService().getImg(m.getMemberId());
		request.setAttribute("myImg", myImg);
		
		RequestDispatcher rd=request.getRequestDispatcher("/views/friends/friendsInfo.jsp");
		rd.forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
