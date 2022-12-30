package com.ezenb1.recipe.controller;

import com.ezenb1.recipe.controller.action.Action;
import com.ezenb1.recipe.controller.action.IndexAction;
import com.ezenb1.recipe.controller.action.admin.AdminAction;
import com.ezenb1.recipe.controller.action.admin.AdminDeleteMemAction;
import com.ezenb1.recipe.controller.action.admin.AdminDeleteQnaAction;
import com.ezenb1.recipe.controller.action.admin.AdminDeleteReplyAction;
import com.ezenb1.recipe.controller.action.admin.AdminMemDetailAction;
import com.ezenb1.recipe.controller.action.admin.AdminMemListAction;
import com.ezenb1.recipe.controller.action.admin.AdminQnaDetailAction;
import com.ezenb1.recipe.controller.action.admin.AdminQnaListAction;
import com.ezenb1.recipe.controller.action.admin.AdminRecipeListAction;
import com.ezenb1.recipe.controller.action.admin.AdminReplyListAction;
import com.ezenb1.recipe.controller.action.admin.AdminSaveReplyAction;
import com.ezenb1.recipe.controller.action.admin.AdminSleepMemAction;
import com.ezenb1.recipe.controller.action.member.FindAccountByAction;
import com.ezenb1.recipe.controller.action.member.FindAccountFormAction;
import com.ezenb1.recipe.controller.action.member.IdCheckFormAction;
import com.ezenb1.recipe.controller.action.member.JoinAction;
import com.ezenb1.recipe.controller.action.member.JoinFormAction;
import com.ezenb1.recipe.controller.action.member.UpdateMemFormAction;
import com.ezenb1.recipe.controller.action.qna.MyqnaListAction;
import com.ezenb1.recipe.controller.action.qna.QnaListAction;
import com.ezenb1.recipe.controller.action.recipeBoard.RecipeFormAction;
import com.ezenb1.recipe.controller.action.recipeBoard.WriteRecipeAction;

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
		else if( command.equals("adminDeleteMem") ) ac = new AdminDeleteMemAction();
		else if( command.equals("adminDeleteReply") ) ac = new AdminDeleteReplyAction();
		else if( command.equals("adminMemDetail") ) ac = new AdminMemDetailAction();
		
		else if( command.equals("findAccountForm") ) ac = new FindAccountFormAction();
		else if( command.equals("findAccountBy") ) ac = new FindAccountByAction();
		
		else if( command.equals("joinForm") ) ac = new JoinFormAction();
		else if( command.equals("join") ) ac = new JoinAction();
		else if( command.equals("idCheckForm") ) ac = new IdCheckFormAction();
		else if( command.equals("updateMemForm") ) ac = new UpdateMemFormAction();
		//else if( command.equals("updateMember") ) ac = new UpdateMemberAction();
		//else if( command.equals("withdrawal") ) ac = new WithdrawalAction();
		
		else if( command.equals("qnaList") ) ac = new QnaListAction();
		else if( command.equals("myqnaList") ) ac = new MyqnaListAction();
		//else if( command.equals("qnaDetail") ) ac = new QnaDetailAction();
		//else if( command.equals("qnaWriteForm") ) ac = new QnaWriteFormAction();
		//else if( command.equals("writeQna") ) ac = new WriteQnaAction();
		//else if( command.equals("qnaUpdateForm") ) ac = new QnaUpdateFormAction();
		//else if( command.equals("updateQna") ) ac = new UpdateQnaAction();
		//else if( command.equals("deleteQna") ) ac = new DeleteQnaAction();
		else if( command.equals("adminSleepMem") ) ac = new AdminSleepMemAction();
		
		else if( command.equals("recipeForm") ) ac = new RecipeFormAction();
		else if( command.equals("writeRecipe") ) ac = new WriteRecipeAction();
		else if( command.equals("adminDeleteQna") ) ac = new AdminDeleteQnaAction();
		else if( command.equals("adminQnaDetail") ) ac = new AdminQnaDetailAction();
		else if( command.equals("adminSaveReply") ) ac = new AdminSaveReplyAction();
		
		/**
		 * 여기 밑에서부터 붙여넣기 해주시면 됩니다.
		 
		
		else if( command.equals("loginForm") ) ac = new LoginFormAction();
		else if( command.equals("login") ) ac = new LoginAction();
		else if( command.equals("logout") ) ac = new LogoutAction();
		
		else if( command.equals("recipeUpdateForm") ) ac = new RecipeUpdateFormAction();
		else if( command.equals("updateRecipe") ) ac = new UpdateRecipeAction();
		else if( command.equals("deleteRecipe") ) ac = new DeleteRecipeAction();
		else if( command.equals("recipeList") ) ac = new RecipeListAction();
		else if( command.equals("recipeCategory") ) ac = new RecipeCategoryAction();
		else if( command.equals("recipeDetailWithoutView") ) ac = new RecipeDetailWithoutViewAction();
		
		else if( command.equals("addReply") ) ac = new AddReplyAction();
		else if( command.equals("updateReply") ) ac = new UpdateReplyAction();
		else if( command.equals("deleteReply") ) ac = new DeleteReplyAction();
		else if( command.equals("likeRecipe") ) ac = new LikeRecipeAction();
		
		else if( command.equals("myPageView") ) ac = new MyPageViewAction();
		else if( command.equals("interestView") ) ac = new InterestViewAction();
		else if( command.equals("myRecipeList") ) ac = new MyRecipeListAction();
		else if( command.equals("recentView") ) ac = new RecentViewAction();
		else if( command.equals("favoriteView") ) ac = new FavoriteViewAction();

		*/
		
		return ac;
	}
	
	
}