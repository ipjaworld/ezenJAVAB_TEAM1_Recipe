package com.ezenb1.recipe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezenb1.recipe.dto.RecipeVO;
import com.ezenb1.recipe.util.Dbman;
import com.ezenb1.recipe.util.Paging;

public class RecipeDao {
	private RecipeDao() {}
	private static RecipeDao itc = new RecipeDao();
	public static RecipeDao getInstance() { return itc; }
	
	Connection con =null;
	PreparedStatement pstmt =null;
	ResultSet rs=null;
	
	public ArrayList<RecipeVO> selectMyRecipe(String id, Paging paging) {

	      ArrayList<RecipeVO> rlist = new ArrayList<RecipeVO>();
	      
	      String sql=" select * from ( "
	            + " select * from ( "
	            + " select rownum as rn, r.*from ((select*from recipe where id=? order by rnum desc) r)"
	            + " ) where rn >=? "
	            + " ) where rn <=? ";
	      con= Dbman.getConnection();
	      
	      try {
	         pstmt=con.prepareStatement(sql);
	         pstmt.setString(1, id);
	         pstmt.setInt(2, paging.getStartNum());
	         pstmt.setInt(3, paging.getEndNum());
	         
	         rs=pstmt.executeQuery();
	         while(rs.next()) {
	            RecipeVO rvo = new RecipeVO();
	            rvo.setRnum(rs.getInt("rnum"));
	            rvo.setSubject(rs.getString("subject"));
	            rvo.setContent(rs.getString("content"));
	            rvo.setThumbnail(rs.getString("thumbnail"));
	            rvo.setId(rs.getString("id"));
	            rvo.setIndate(rs.getTimestamp("indate"));
	            rvo.setLikes(rs.getInt("likes"));
	            rvo.setTheme(rs.getInt("theme"));
	            rvo.setTime(rs.getInt("time"));
	            rvo.setType(rs.getInt("type"));
	            rvo.setViews(rs.getInt("views"));
	            rlist.add(rvo);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         Dbman.close(con, pstmt, rs);
	      }
	      
	      return rlist;
	   }


	   public int insertInterestRecipe(String rnum, String id) {
	      int result=0;
	      String sql="insert into interest (interestnum,rnum , id) values( interestnum.nextVal,?,?)";
	      con = Dbman.getConnection();
	      
	      try {
	         pstmt=con.prepareStatement(sql);
	         pstmt.setInt(1,Integer.parseInt(rnum));
	         pstmt.setString(2, id);
	         result=pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         Dbman.close(con, pstmt, rs);
	      }
	      
	      return result;
	   }


	   public int insertfavoriteRecipe(String rnum, String id) {
	      int result=0;
	      String sql="insert into favorite (fnum, rnum, id) values( fnum.nextVal,?,?)";
	      con = Dbman.getConnection();
	      
	      try {
	         pstmt=con.prepareStatement(sql);
	         pstmt.setInt(1,Integer.parseInt(rnum));
	         pstmt.setString(2, id);
	         result=pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         Dbman.close(con, pstmt, rs);
	      }
	      
	      return result;
	   }
	
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


	public ArrayList<RecipeVO> selectKindAll() {
		ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
		con = Dbman.getConnection();
		String sql = "select * from recipe_page_view";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				RecipeVO rvo = new RecipeVO();
				rvo.setRnum( rs.getInt("rnum") );
				rvo.setId( rs.getString("id") );
				rvo.setNick( rs.getString("nick") );
				rvo.setSubject( rs.getString("subject") );
				rvo.setContent( rs.getString("content") );
				rvo.setIndate( rs.getTimestamp("indate") );
				rvo.setTime( rs.getInt("time") );
				rvo.setThumbnail( rs.getString("thumbnail") );
				rvo.setViews( rs.getInt("views") );
				rvo.setLikes( rs.getInt("likes") );
				rvo.setType( rs.getInt("type") );
				rvo.setIng( rs.getInt("ing") );
				rvo.setTheme( rs.getInt("theme") );
				rvo.setRec( rs.getInt("rec") );
				rvo.setReport( rs.getInt("report") );

				list.add(rvo);  
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);   }
		
		return list;
	}


	public int countAll() {
		int count = 0;
		con = Dbman.getConnection();
		String sql = "SELECT COUNT(*) as count FROM recipe_page_view;";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				count = rs.getInt("count");
				System.out.println("countAll에서 실행한 토탈넘버값은"+count);
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);   }
		
		return count;
	}
	
}
