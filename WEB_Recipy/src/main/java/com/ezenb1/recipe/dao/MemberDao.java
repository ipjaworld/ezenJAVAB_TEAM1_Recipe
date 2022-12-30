package com.ezenb1.recipe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezenb1.recipe.dto.AddressVO;
import com.ezenb1.recipe.dto.MembersVO;
import com.ezenb1.recipe.util.Dbman;

public class MemberDao {

	private MemberDao () {}
	private static MemberDao itc = new MemberDao();
	public static MemberDao getInstance() { return itc; }
	
	Connection con =null;
	PreparedStatement pstmt =null;
	ResultSet rs=null;
	
	
	public ArrayList<AddressVO> selectAddress(String dong) {
		ArrayList<AddressVO> list = new ArrayList<AddressVO>();
		
		con = Dbman.getConnection();
		
		String sql = "select * from address where dong like '%'||?||'%' ";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dong);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				AddressVO avo = new AddressVO();
				
				avo.setZip_num(rs.getString("zip_num"));
		    	avo.setSido(rs.getString("sido"));
		    	avo.setGugun(rs.getString("gugun"));
		    	avo.setDong(rs.getString("dong"));
		    	avo.setZip_code(rs.getString("zip_code"));
		    	avo.setBunji(rs.getString("bunji"));
				
				list.add(avo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}
		
		return list;
	}


	public MembersVO getMember(String id) {
		MembersVO mvo = new MembersVO();
		
		String sql = "select * from member where id=?";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,  id);
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				mvo = new MembersVO();
				mvo.setId( rs.getString("id") );
				mvo.setPwd(rs.getString("pwd"));
		        mvo.setName(rs.getString("name"));
		        mvo.setNick(rs.getString("nick"));
		        mvo.setEmail(rs.getString("email"));
		        mvo.setZip_num(rs.getString("zip_num"));
		        mvo.setAddress1(rs.getString("address1"));
		        mvo.setAddress2(rs.getString("address2"));
		        mvo.setPhone(rs.getString("phone"));
		        mvo.setUseyn(rs.getString("useyn"));
		        mvo.setIndate(rs.getTimestamp("indate"));
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);   }		
		
		return mvo;
		
	}


	public void insertMember(MembersVO mvo) {
		
		String url="insert into member(id, pwd, name, phone, email, nick, address1, address2, zip_num, img, useyn) "
				+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		con= Dbman.getConnection();
		
		try {
			pstmt=con.prepareStatement(url);
			pstmt.setString(1, mvo.getId());      
			pstmt.setString(2, mvo.getPwd());
			pstmt.setString(3, mvo.getName());
			pstmt.setString(4, mvo.getPhone());
			pstmt.setString(5, mvo.getEmail());
			pstmt.setString(6, mvo.getNick());
			pstmt.setString(7, mvo.getAddress1());
			pstmt.setString(8, mvo.getAddress2());
			pstmt.setString(9, mvo.getZip_num());
			pstmt.setString(10, mvo.getImg());
			pstmt.setString(11, mvo.getUseyn());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}
		
	}


	public void updateMember(MembersVO mvo) {
		
		String sql="update member set pwd=?, name=?, phone=?, email=?, nick=?, address1=?, address2=?, zip_num=?, img=? where id=?";
		con = Dbman.getConnection();
		
		try {
			pstmt= con.prepareStatement(sql);

			pstmt.setString(1,mvo.getPwd());
			pstmt.setString(2,mvo.getName());
			pstmt.setString(3,mvo.getPhone());
			pstmt.setString(4,mvo.getEmail());
			pstmt.setString(5,mvo.getNick());
			pstmt.setString(6,mvo.getAddress1());
			pstmt.setString(7,mvo.getAddress2());
			pstmt.setString(8,mvo.getZip_num());
			pstmt.setString(9,mvo.getImg());
			pstmt.setString(10,mvo.getId() );
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Dbman.close(con, pstmt, rs);
		}
		
	}


	public void withDrawalMember(String id) {
		String sql="delete from member where id=?";
		con=Dbman.getConnection();
		
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,id);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}
		
	}
	

	public MembersVO findId(String name, String phone) {
		MembersVO mvo = null;
		con = Dbman.getConnection();
		String sql = "select * from members where name=?, phone=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				mvo = new MembersVO();
				mvo.setId(rs.getString("id"));
				mvo.setPwd(rs.getString("pwd"));
				mvo.setName(rs.getString("name"));
				mvo.setPhone(rs.getString("phone"));
				mvo.setEmail(rs.getString("email"));
				mvo.setNick(rs.getString("nick"));
				mvo.setZip_num(rs.getString("zip_num"));
				mvo.setAddress1(rs.getString("address1"));
				mvo.setAddress2(rs.getString("address2"));
				mvo.setUseyn(rs.getString("useyn"));
				mvo.setIndate(rs.getTimestamp("indate"));
				mvo.setImg(rs.getString("img"));
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
		}
		
		return mvo;
	}


	public MembersVO findPwd(String name, String phone, String id) {
		MembersVO mvo = null;
		con = Dbman.getConnection();
		String sql = "select * from members where name=?, phone=?, id=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			pstmt.setString(3, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				mvo = new MembersVO();
				mvo.setId(rs.getString("id"));
				mvo.setPwd(rs.getString("pwd"));
				mvo.setName(rs.getString("name"));
				mvo.setPhone(rs.getString("phone"));
				mvo.setEmail(rs.getString("email"));
				mvo.setNick(rs.getString("nick"));
				mvo.setZip_num(rs.getString("zip_num"));
				mvo.setAddress1(rs.getString("address1"));
				mvo.setAddress2(rs.getString("address2"));
				mvo.setUseyn(rs.getString("useyn"));
				mvo.setIndate(rs.getTimestamp("indate"));
				mvo.setImg(rs.getString("img"));
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
		}
		return mvo;
	}
	
	
	
	
}
