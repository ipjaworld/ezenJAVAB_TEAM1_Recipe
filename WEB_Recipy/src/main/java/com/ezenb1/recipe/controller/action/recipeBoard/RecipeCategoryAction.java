package com.ezenb1.recipe.controller.action.recipeBoard;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenb1.recipe.controller.action.Action;
import com.ezenb1.recipe.dao.RecipeDao;
import com.ezenb1.recipe.dto.RecipeVO;

public class RecipeCategoryAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String kind = request.getParameter("kind");
		//String totalNumber = "0";
		
		RecipeDao rdao = RecipeDao.getInstance();
		//ArrayList<RecipeVO> list = rdao.selectKindRecipeList(kind);
		ArrayList<RecipeVO> list = rdao.selectKindAll();
		//totalNumber = String.valueOf(rdao.countAll());
		
		//request.setAttribute("RecipeKindList", list);
		//System.out.println("RecipeCategoryAction에서 실행한 토탈넘버값은"+totalNumber);
		//request.setAttribute("totalNumber", totalNumber);
		request.setAttribute("RecipeAllList", list);
		
		String src = "recipe/recipeCategory.jsp";

		request.getRequestDispatcher(src).forward(request, response);
	}

}
