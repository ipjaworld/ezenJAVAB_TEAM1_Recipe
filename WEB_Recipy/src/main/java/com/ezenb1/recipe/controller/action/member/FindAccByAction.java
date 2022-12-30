package com.ezenb1.recipe.controller.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenb1.recipe.controller.action.Action;
import com.ezenb1.recipe.dao.MemberDao;
import com.ezenb1.recipe.dto.MembersVO;

public class FindAccByAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String param = request.getParameter("param");
		String name = "";
		String phone = "";
		MemberDao mdao = MemberDao.getInstance();
		MembersVO mvo = null;
		if(param.equals("id")){
			name = request.getParameter("name");
			phone = request.getParameter("phone");
			mvo = mdao.findId(name, phone);
		}else if(param.equals("pwd")) {
			name = request.getParameter("name");
			phone = request.getParameter("phone");
			String id = request.getParameter("id");
			mvo = mdao.findPwd(name, phone, id);
		}
		
		request.setAttribute("Account", mvo);
		// mvo가 없을 경우 jsp로 이동해서 jsp 내 조건문으로 처리 가능?

	}

}
