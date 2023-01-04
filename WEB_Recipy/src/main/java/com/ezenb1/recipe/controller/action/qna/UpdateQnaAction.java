package com.ezenb1.recipe.controller.action.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenb1.recipe.controller.action.Action;
import com.ezenb1.recipe.dao.QnaDao;
import com.ezenb1.recipe.dto.QnaVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UpdateQnaAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 업뎃

		//qdao, qvo 생성 
		QnaDao qdao = QnaDao.getInstance();
		QnaVO qvo = new QnaVO();
		
		// 
		HttpSession session = request.getSession();
		ServletContext context = session.getServletContext();
		
		qvo.setId( request.getParameter("id") );
		qvo.setQsubject( request.getParameter("qsubject") );
		qvo.setQcontent( request.getParameter("qcontent") );
		qvo.setSecret( request.getParameter("secret") );
		
		qdao.updateQna( qvo );
		
		RequestDispatcher dp = request.getRequestDispatcher("qnaDetail.jsp");
		dp.forward(request, response);
	}
}
