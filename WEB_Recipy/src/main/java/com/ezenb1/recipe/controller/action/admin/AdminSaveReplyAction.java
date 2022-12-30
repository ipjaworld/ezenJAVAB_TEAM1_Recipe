package com.ezenb1.recipe.controller.action.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenb1.recipe.controller.action.Action;
import com.ezenb1.recipe.dao.AdminDao;

public class AdminSaveReplyAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url="recipe.do?command=adminQnaDetail";
		HttpSession session = request.getSession();
		//String avo = (String)session.getAttribute("loginAdmin");
		String avo="loginAdmin"; //임의 값
		if( avo == null) url="recipe.do?command=login";
		else {
			AdminDao adao = AdminDao.getInstance();			
			int qseq = Integer.parseInt( request.getParameter("qseq") );
			String replyQna = request.getParameter("replyQna");
			System.out.println(qseq);
			System.out.println(replyQna);
			adao.updateReplyQna( qseq, replyQna);
			url = url + "&qseq=" + qseq;
		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}
