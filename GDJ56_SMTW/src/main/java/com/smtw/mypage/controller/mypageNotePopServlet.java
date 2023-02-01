package com.smtw.mypage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smtw.mypage.model.service.MypageService;
import com.smtw.mypage.model.vo.Note;

/**
 * Servlet implementation class mypageNotePopServlet
 */
@WebServlet("/mypage/mypageNotePop.do")
public class mypageNotePopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mypageNotePopServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nNo = request.getParameter("noteNo");
		System.out.println("noteNo :"+nNo);
		String id = request.getParameter("id");
		System.out.println("로그인된 아이디 :"+id);
		String receiver = request.getParameter("sender");
		String receiverName = request.getParameter("friendNam");
		
		
		int noteNo = Integer.parseInt(nNo);
		
		//쪽지 db 불러오기
		Note n = new MypageService().noteList(noteNo);
		//System.out.println(n);
		
		request.setAttribute("id", id);
		request.setAttribute("n", n);
		request.getRequestDispatcher("/views/mypage/mypageNotePop.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
