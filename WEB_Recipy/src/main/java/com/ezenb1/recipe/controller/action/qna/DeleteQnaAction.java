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
		// 파라미터로 qseq 값을 전달 받음
		String qseq = request.getParameter("qseq");

		// qdao 만들어줌
		QnaDao qdao = QnaDao.getInstance();
		// 
		qdao.deleteQna( qseq );
		
		String url = "resipe.do?command=index";
		// 값을 가지고 이동
		RequestDispatcher dp= request.getRequestDispatcher(url);
		dp.forward(request, response);

	}
}
