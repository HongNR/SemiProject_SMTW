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
 * Servlet implementation class mypageAccountUpdateServlet
 */
@WebServlet("/mypage/mypageAccountUpdate.do")
public class mypageAccountUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mypageAccountUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userId=request.getParameter("id");
		System.out.println("불러와짐??"+userId);
		Member m = new MypageService().memberInfo(userId);
		
		if(m.getAddress().length()>6) {
		String address=m.getAddress();
		String postcode=address.substring(1, 6);
		System.out.println("우편번호:"+postcode);
		String ad=address.substring(7,address.length());
		System.out.println("전체주소:"+ad);
		String[] datail=ad.split(",");
		System.out.println("주소:"+datail[0]);
		//System.out.println("상세주소:"+datail[1]);
		request.setAttribute("postcode",postcode);
		request.setAttribute("address",datail[0]);
			if(datail.length>1) {
				request.setAttribute("detialadd",datail[1]);
			}else {
				String detialadd="상세주소 미입력";
				request.setAttribute("detialadd",detialadd);
			}
		}else {
			String address="주소를 입력해주세요";
			request.setAttribute("address",address);
		}
		String[] birth = m.getBirth().split("/");
		String bYear = birth[0];
		System.out.println("생년생녕!!:"+bYear);
		String bMonth = birth[1];
		String bDay = birth[2];
		request.setAttribute("bYear", bYear);
		request.setAttribute("bMonth", bMonth);
		request.setAttribute("bDay", bDay);
		request.setAttribute("member", m);
		
		String name = m.getMemberName();
		request.setAttribute("name", name);
		if(m.getPhone()!=null) {
			String phone = m.getPhone();
			request.setAttribute("phone", phone);
		}else {
			String phone = "번호를 입력해주세요";
			request.setAttribute("phone", phone);
		}
		
		char gender=m.getGender();
		request.setAttribute("gender", gender);

		String email = m.getEmail();
		request.setAttribute("email", email);
		
		request.getRequestDispatcher("/views/mypage/mypageaccountupdate.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
