package com.ezenb1.recipe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezenb1.recipe.dto.RecipeVO;
import com.ezenb1.recipe.util.Dbman;

public class RecipeDao {
	private RecipeDao() {}
	private static RecipeDao itc = new RecipeDao();
	public static RecipeDao getInstance() { return itc; }
	
	Connection con =null;
	PreparedStatement pstmt =null;
	ResultSet rs=null;
	
	public ArrayList<RecipeVO> getTypeList() {
		ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
		String sql = "";
		con = Dbman.getConnection();
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				/**
				RecipeVO rvo = new RecipeVO();
				rvo.setId(sql);
				rvo.setContent(sql);
				rvo.setIndate(null);
				rvo.setIng(null);
				rvo.setLikes(null);
				rvo.setRec(null);
				rvo.setReport(null);
				rvo.setRnum(null);
				rvo.setSubject(sql);
				rvo.setTheme(null);
				rvo.setThumbnail(sql);
				rvo.setTime(null);
				//rvo.setType(null);
				rvo.setViews(null);
				list.add(rvo);  
				*/
			}
			
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
		}
		return list;
	}

	
	public ArrayList<RecipeVO> getThemeList() {
		ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
		String sql = "";
		con = Dbman.getConnection();
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				/**
				RecipeVO rvo = new RecipeVO();
				rvo.setId(sql);
				rvo.setContent(sql);
				rvo.setIndate(null);
				rvo.setIng(null);
				rvo.setLikes(null);
				rvo.setRec(null);
				rvo.setReport(null);
				rvo.setRnum(null);
				rvo.setSubject(sql);
				rvo.setTheme(null);
				rvo.setThumbnail(sql);
				rvo.setTime(null);
				//rvo.setType(null);
				rvo.setViews(null);
				list.add(rvo);  
				*/
			}
			
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
		}
		return list;
	}

	
	public ArrayList<RecipeVO> getIngList() {
		ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
		String sql = "";
		con = Dbman.getConnection();
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				/**
				RecipeVO rvo = new RecipeVO();
				rvo.setId(sql);
				rvo.setContent(sql);
				rvo.setIndate(null);
				rvo.setIng(null);
				rvo.setLikes(null);
				rvo.setRec(null);
				rvo.setReport(null);
				rvo.setRnum(null);
				rvo.setSubject(sql);
				rvo.setTheme(null);
				rvo.setThumbnail(sql);
				rvo.setTime(null);
				//rvo.setType(null);
				rvo.setViews(null);
				list.add(rvo);  
				*/
			}
			
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
		}
		return list;
	}
	
}
