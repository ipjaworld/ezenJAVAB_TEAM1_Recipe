package com.ezenb1.recipe.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenb1.recipe.dao.RecipeDao;
import com.ezenb1.recipe.dto.RecipeVO;

public class IndexAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 베스트 상품과 신상품을 데이터베이스에서 조회해서  리스트로 리턴받고, 이를 리퀘스트에 넣어서 main.jsp로 이동합니다
		
		RecipeDao rdao = RecipeDao.getInstance();
		
		ArrayList<RecipeVO> typeList =  rdao.getTypeList();		
		ArrayList<RecipeVO> themeList =  rdao.getThemeList();
		ArrayList<RecipeVO> ingList =  rdao.getIngList();
		
		request.setAttribute("sList", typeList);
		request.setAttribute("typeList", themeList);
		request.setAttribute("ingList", ingList);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
		dispatcher.forward(request, response);

	}

}
