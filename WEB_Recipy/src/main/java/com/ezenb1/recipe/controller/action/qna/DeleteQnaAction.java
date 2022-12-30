package com.ezenb1.recipe.controller.action.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenb1.recipe.controller.action.Action;
import com.ezenb1.recipe.dao.QnaDao;

public class DeleteQnaAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 삭제
		
		String qseq = request.getParameter("qseq");

		QnaDao qdao = QnaDao.getInstance();
		qdao.deleteQna( qseq );
		
		String url = "resipe.do?command=index";
		RequestDispatcher dp= request.getRequestDispatcher(url);
		dp.forward(request, response);

	}
}
