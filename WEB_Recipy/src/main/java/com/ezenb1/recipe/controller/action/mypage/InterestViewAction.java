package com.ezenb1.recipe.controller.action.mypage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenb1.recipe.controller.action.Action;
import com.ezenb1.recipe.dao.RecipeDao;
import com.ezenb1.recipe.dto.MembersVO;
import com.ezenb1.recipe.dto.RecipeVO;

public class InterestViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String url="mypage/interestView.jsp";
		HttpSession session = request.getSession();
		MembersVO mvo = (MembersVO)session.getAttribute("loginUser");
		
		if(mvo==null) {
			url="recipe.do?command=loginForm";
		}else {
			
			// 주문자 아이디로 검색한 카트 목록(지금 주문 처리할) 목록을 먼저 조회합니다.(cdao 생성 필요)
			RecipeDao rdao =RecipeDao.getInstance();
		//	ArrayList<RecipeVO> interestList = rdao.selectInterestRecipe(mvo.getId());
						
			// 조회한 list 와 주문자의 아이디를 이용하여 OrderDao 의 insertOrder 메서드로 orders와 order_detail테이블에 데이터를 추가합니다.
		//	InterestDao idao = InterestDao.getInstance();
			int interestnum = rdao.insertInterestRecipe(request.getParameter("rnum"), mvo.getId() );  // 주문 내역와 아이디를 보냄(odao~)
						
						
			// 방금 주문에 성공한 주문 번호를 갖고 오더 리스트로 이동하여 주문번호로 주문 내역을 다시 조횐하고 jsp로 이동합니다.
			url ="recipe.do?command=interestView&interestnum="+interestnum;
			//orderList 에서 오더 디테일 내용 , 오더뷰 내용 상세내용을 보는 페이지?
			
		}
		response.sendRedirect(url);
	}

}
