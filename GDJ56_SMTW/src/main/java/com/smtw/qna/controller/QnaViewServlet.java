package com.smtw.qna.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smtw.qna.model.service.QnaCommentsService;
import com.smtw.qna.model.service.QnaService;
import com.smtw.qna.model.vo.Qna;
import com.smtw.qna.model.vo.QnaComments;

/**
 * Servlet implementation class QnaViewServlet
 */
@WebServlet("/qna/qnaView.do")
public class QnaViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int qnaNo=Integer.parseInt(request.getParameter("qnaNo"));
		
		Qna q=new QnaService().selectQnaNo(qnaNo);//게시물 클릭시 해당번호 게시글
		List<Qna> list=new QnaService().selectPreNextQnaNo(qnaNo);//이전글,다음글 번호 담겨있는 리스트
		List<QnaComments> qcList=new QnaCommentsService().selectQnaComments(qnaNo);//누른 게시글의 댓글들
//		int qcCount=new QnaCommentsService().qcCount(qnaNo);//답글 개수->댓글 레벨과 댓글번호 필요
		
		
		request.setAttribute("qna", q);
		request.setAttribute("qnaList", list);
		request.setAttribute("qcList", qcList);
//		request.setAttribute("qcCount", qcCount);
		
		request.getRequestDispatcher("/views/qna/qnaView.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
