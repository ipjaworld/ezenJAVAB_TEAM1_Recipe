package com.ezenb1.recipe.controller.action.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenb1.recipe.controller.action.Action;
import com.ezenb1.recipe.dao.QnaDao;
import com.ezenb1.recipe.dto.MembersVO;
import com.ezenb1.recipe.dto.QnaVO;

public class QnaDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// QnaDetail
		
		String url = "qna/qnaDetail.jsp";
		int qseq = Integer.parseInt( request.getParameter("qseq") );
		
		// 로그인 체크
		HttpSession session = request.getSession();
		//MembersVO mvo = (MembersVO)session.getAttribute("loginUser");
		String mvo="ddd";
		if(mvo == "") {
			url = "recipe.do?command=loginForm";
		}else { 
			QnaDao qdao = QnaDao.getInstance();
			QnaVO qvo = qdao.getQna( qseq );
			request.setAttribute("qnaVO", qvo);
	}
		request.getRequestDispatcher(url).forward(request, response);
}
}