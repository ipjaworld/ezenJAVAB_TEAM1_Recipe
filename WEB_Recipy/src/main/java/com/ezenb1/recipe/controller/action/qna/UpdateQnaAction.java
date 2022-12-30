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
		// TODO Auto-generated method stub
		
		QnaDao qdao = QnaDao.getInstance();
		QnaVO qvo = new QnaVO();
		
		HttpSession session = request.getSession();
		ServletContext context = session.getServletContext();
		String path = context.getRealPath("upload");
		MultipartRequest multi = new MultipartRequest(
		request, path, 20*1024*1024, "UTF-8", new DefaultFileRenamePolicy()
		);
		
		qvo.setId( multi.getParameter("id") );
		qvo.setQsubject( multi.getParameter("qsubject") );
		qvo.setQcontent( multi.getParameter("qcontent") );
		qvo.setSecret( multi.getParameter("secret") );
		
		qdao.updateQna( qvo );
		
		RequestDispatcher dp = request.getRequestDispatcher("qnaDetail.jsp");
		dp.forward(request, response);
	}
}
