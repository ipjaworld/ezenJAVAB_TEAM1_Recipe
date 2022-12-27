package com.ezenb1.recipe.controller;

import com.ezenb1.recipe.controller.action.Action;
import com.ezenb1.recipe.controller.action.IndexAction;
import com.ezenb1.recipe.controller.action.admin.AdminAction;
import com.ezenb1.recipe.controller.action.admin.AdminMemListAction;
import com.ezenb1.recipe.controller.action.admin.AdminQnaListAction;
import com.ezenb1.recipe.controller.action.admin.AdminRecipeListAction;
import com.ezenb1.recipe.controller.action.admin.AdminReplyListAction;

public class RecipeFactory {

	private RecipeFactory() {}
	private static RecipeFactory rf = new RecipeFactory();
	public static RecipeFactory getInstance() { return rf; }
	
	public Action getAction(String command) {
		Action ac = null;
		
		if( command.equals("index") ) ac = new IndexAction();
		else if( command.equals("admin") ) ac = new AdminAction();
		else if( command.equals("adminRecipeList") ) ac = new AdminRecipeListAction();
		else if( command.equals("adminMemList") ) ac = new AdminMemListAction();
		else if( command.equals("adminReplyList") ) ac = new AdminReplyListAction();
		else if( command.equals("adminQnaList") ) ac = new AdminQnaListAction();
		
		
		return ac;
	}
	
	
}