package com.ezenb1.recipe.controller.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenb1.recipe.controller.action.Action;
import com.ezenb1.recipe.dao.MemberDao;
import com.ezenb1.recipe.dto.MembersVO;

public class WithDrawalAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MembersVO mvo = (MembersVO) session.getAttribute("loginUser");
		
		String url="shop.do?command=loginForm";
		
		if(mvo==null) {
			url="shop.do?command=loginForm";
			request.setAttribute("message", "");
		}else {
			
			MemberDao mdao = MemberDao.getInstance();
			mdao.withDrawalMember(mvo.getId() );
			request.setAttribute("message", "");
			session.removeAttribute("loginUser");
		}
		
		request.getRequestDispatcher(url).forward(request, response);
		
		

	}

}
