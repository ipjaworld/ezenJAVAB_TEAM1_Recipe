package com.ezenb1.recipe.controller.action.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenb1.recipe.controller.action.Action;
import com.ezenb1.recipe.dao.AdminDao;

public class AdminDeleteMemAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] delId = request.getParameterValues("delId");
		
		AdminDao mdao = AdminDao.getInstance();
		for( String id : delId) {
		mdao.deleteMember(id);
		}
		
		response.sendRedirect("recipe.do?command=adminMemList");

	}

}
