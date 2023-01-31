package com.smtw.mypage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smtw.member.model.vo.Member;
import com.smtw.mypage.model.service.MypageService;

/**
 * Servlet implementation class mapagePwdCkEndServlet
 */
@WebServlet(name="mypagePwdCkEnd", urlPatterns="/mypage/mypagePwdCkEnd.do")
public class mapagePwdCkEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mapagePwdCkEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userId=request.getParameter("id");
		String pwd=request.getParameter("Pwd");
		System.out.println("비밀번호확인"+pwd);
		
		System.out.println(userId+" : "+pwd);
		Member m = new MypageService().pwdCk(userId,pwd);
		
		//request.setAttribute("userId", userId);
		
		String msg="",loc="";
		if(m==null) {
			msg="비밀번호를 잘못입력하셨습니다. 다시입력해주세요";
			loc="/mypage/mypagePwdCk.do?id="+userId;
			request.setAttribute("msg", msg);
			request.setAttribute("loc", loc);
			request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
		}else {
			request.setAttribute("id", userId);
			request.setAttribute("msg", msg);
			loc="/mypage/mypageAccountUpdate.do?id="+userId;
			request.setAttribute("loc", loc);
			request.getRequestDispatcher("/mypage/mypageAccountUpdate.do?id="+userId).forward(request, response);
		}

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
