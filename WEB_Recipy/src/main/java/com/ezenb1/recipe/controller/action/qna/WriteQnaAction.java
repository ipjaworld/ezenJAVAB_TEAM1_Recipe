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

public class WriteQnaAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 목적지는 qnaList?
		String url ="recipe.do?command=qnaList"; 
		
		HttpSession session = request.getSession();
		MembersVO mvo = (MembersVO)session.getAttribute("loginUser");
		
		// 나중에 수정해줄것!
		if(mvo == null) { 
			url = "recipe.do?command=loginForm";
		}else {
			QnaVO qvo = new QnaVO();
			qvo.setQsubject(request.getParameter("qsubject"));
			qvo.setQcontent(request.getParameter("qcontent"));
			qvo.setSecret(request.getParameter("secret"));
			qvo.setId(mvo.getId() );
		

			QnaDao qdao = QnaDao.getInstance();
			qdao.insertQna(qvo);

	}
			// url로 바로 이동 
			response.sendRedirect(url);
	}
}
