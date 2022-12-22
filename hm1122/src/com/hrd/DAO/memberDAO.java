package com.hrd.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.hrd.VO.memberVO;

public class memberDAO {
	private Connection conn = null;
	private ResultSet rs = null;
	
	public static memberDAO mdao;
	public static memberDAO getInstance() {
		if(mdao==null) {
			mdao = new memberDAO();
		}
		return mdao;
	}
	
	private memberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("로드성공");
		}catch (Exception e) {
			
			System.out.println("로드실패");
		}
	}
	
	public boolean connect() {
		try {
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","11111111");
			System.out.println("연결성공");
			return true;
			
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("연결실패");
			return false;
		}
	}
	
	public void insert(memberVO mvo) {
		if(connect()) {
			String sql = "insert into member_hm values(no_cnt.nextval,?,?,?,?,?)";
			try {
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, mvo.getName());
				ps.setString(2, mvo.getTel());
				ps.setString(3, mvo.getAddress());
				ps.setString(4, mvo.getJoindate());
				ps.setString(5, mvo.getGrade());
				int r = ps.executeUpdate();
				System.out.println(r+"건 입력완료");
				conn.close();
			}catch (Exception e) {
				// TODO: handle exception
				System.out.println("등록실패");
			}
		}
	}
	
	public int nowNo() {
		int nowNo=-1;
		if(connect()) {
			String sql = "select no_cnt.nextval as num from dual";
			try {
				Statement st = conn.createStatement();
				rs = st.executeQuery(sql);
				if(rs.next()) {
					nowNo=rs.getInt("num");
					System.out.println("가져옴");
					conn.close();
				}
			}catch (Exception e) {
				// TODO: handle exception
				System.out.println("못가져옴");
			}
		}
		return nowNo;
	}
	
	public ArrayList<memberVO> selectAll(){
		
		ArrayList<memberVO> mlist = new ArrayList<>();
		if(connect()) {
			String sql = "select * from member_hm";
			try{
				Statement st = conn.createStatement();
				rs = st.executeQuery(sql);
				while(rs.next()) {
					memberVO mvo = new memberVO();
					mvo.setNo(rs.getInt("no"));
					mvo.setName(rs.getString("name"));
					mvo.setTel(rs.getString("Tel"));
					mvo.setAddress(rs.getString("Address"));
					mvo.setJoindate(rs.getString("Joindate"));
					mvo.setGrade(rs.getString("Grade"));
					mlist.add(mvo);
				}
				System.out.println(mlist.size()+"건 들어옴");
				conn.close();

			}catch (Exception e) {
				
			}
		}
		return mlist;
		
	}
	
	public ArrayList<Object> choiceList(){
		ArrayList<Object> clist = new ArrayList<>();
		
		
		
		
		return null;
	}
	

}
