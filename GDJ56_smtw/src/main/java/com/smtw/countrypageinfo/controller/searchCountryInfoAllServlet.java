package com.smtw.countrypageinfo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smtw.country.model.vo.CountryPage;
import com.smtw.country.model.vo.CountryPageInfo;
import com.smtw.countrypageinfo.model.service.CountryPageInfoService;

/**
 * Servlet implementation class searchCountryInfoAllServlet
 */
@WebServlet("/countryinfo/searchAll.do")
public class searchCountryInfoAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchCountryInfoAllServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name=request.getParameter("nName");
		
		//countrypageinfo 출력 구문
		List<CountryPageInfo> c=new CountryPageInfoService().searchAll();
		//해당 국가의 내용을 출력
		List<CountryPageInfo> cc=new CountryPageInfoService().selectjoinpage(name);
		
		request.setAttribute("copageinfo", c);
		request.setAttribute("name", name);
		request.setAttribute("joinpage", cc);
		request.getRequestDispatcher("/views/countryInfo/countryInfoMain.jsp").forward(request, response);
	
	
	
	
	
	
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
