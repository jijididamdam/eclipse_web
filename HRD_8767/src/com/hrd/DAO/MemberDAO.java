package com.hrd.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hrd.VO.MemberVO;
import com.hrd.VO.ViewMoneyVO;

public class MemberDAO {
	private Connection conn = null;

	//싱글톤은 객체는 하나, 필요하다면 주소만 공유 ~ 사용하는 이유는 ? 불필요한 객체를 생성하지 않아서 성능이나 안정성면에 좋음(GC동작할 필요가 없음)
	//싱글톤에서 객체는 본인이 만들고 공용변수 하나를 선언하여 공용번수로 필요한 객체에게 알려준다.	
	public static MemberDAO mdao;
	public static MemberDAO getInstance() {
		if(mdao==null) {
			mdao = new MemberDAO();
		}
		return mdao;
	}
	//외부에서는 getInstance 메서드로 접근해서 객체의 주소를 요청한다.
	// 변수와 메서드는 클래스 외부에서 접근 간으해야 하기에 static 지정합니다.  ~static은 공용변수이기 때문에 어디서나 접근 가능
	
	private MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("로드성공");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("로드 실패");
		}
	}

	public boolean connect() {
		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "11111111");
			System.out.println("연결성공");
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("연결 실패");
			return false;
		}
	}

	public void insert(MemberVO memberVO) {
		if (connect()) {
			String sql = "insert into member_tbl_02 values(?,?,?,?,?,?,?)";
			try {
				PreparedStatement psmt = conn.prepareStatement(sql);
				psmt.setInt(1, memberVO.getCustno());
				psmt.setString(2, memberVO.getCustname());
				psmt.setString(3, memberVO.getPhone());
				psmt.setString(4, memberVO.getAddress());
				psmt.setString(5, memberVO.getJoindate());
				psmt.setString(6, memberVO.getGrade());
				psmt.setString(7, memberVO.getCity());
				psmt.executeUpdate();
				System.out.println("등록 완료");
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			System.out.println("연결을 할 수 없어서 입력을 하지 못합니다.");
		}
	}

	public int nowCnt() {
		int nowNumber = -1;

		if (connect()) {
			String sql = "select member_seq.nextval as num from dual";
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				if (rs.next()) {
					nowNumber = rs.getInt("num");
					System.out.println("입력완료");
					conn.close();
				}

			} catch (Exception e) {
				System.out.println("입력실패");
			}
		}
		return nowNumber;
	}
	
	public ArrayList<MemberVO> selectAll(){
		//1. 드라이버로드 2. 컨넥션가져오기  3. 쿼리값  4. 리턴
	      ResultSet rs = null; // 쿼리의 결과를 리턴받기 위한 객체
	      ArrayList<MemberVO> allList = new ArrayList<>();
	      if(connect()) {
	         try {
	            String sql="select * from member_tbl_02";  // 완성된쿼리
	            Statement stmt = conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            // 단일 객체 또는 숫자를 리턴 or 리스트를 리턴 해야 하기에  while문사용
	            while(rs.next()) {  // rs는 튜플을 통채로 가져온다.
	               MemberVO b = new MemberVO(); //튜플하나당 객체 한개 
	               b.setAddress(rs.getString("address"));
	               b.setCity(rs.getString("city"));
	               b.setCustname(rs.getString("custname"));
	               b.setCustno(rs.getInt("custno"));
	               b.setGrade(rs.getString("grade"));
	               b.setJoindate(rs.getString("joindate"));   //b.setJoindate(rs.getString("joindate").substring(0,10)); 도 가능하지만 권하지는 않음 
	               b.setPhone(rs.getString("phone"));
	               allList.add(b);
	            }
	         } catch (Exception e) {
	            // TODO: handle exception
	         }         
	      }
	      return allList;      
	   }
	
	public ArrayList<ViewMoneyVO> selectTotalAll(){
	      // 1. 드라이버로드 2. 커넥션 가져오기  3. 쿼리값    4. 리턴..
	      ResultSet rs = null; // 쿼리의 결과를 리턴받기 위한 객체
	      ArrayList<ViewMoneyVO> allList = new ArrayList<>();
	      if(connect()) {
	         try {
	            String sql="select m1.custno, m1.custname, m1.grade, sum(m2.price) p from member_tbl_02 m1, money_tbl_02 m2";
	            sql +=" where m1.custno = m2.custno";
	            sql +=" group by (m1.custno, m1.custname, m1.grade)";
	            sql +=" order by m1.custno asc";
	            
	   
	            Statement stmt = conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            // 단일 객체또는 숫자를 리턴 or 리스트를 리턴 해야 하기에  while문사용
	            while(rs.next()) {  // rs는 튜플을 통채로 가져온다.
	               ViewMoneyVO b = new ViewMoneyVO(); //튜플하나당 객체 한개 
	               b.setCustgrade(rs.getString("grade"));
	               b.setCustname(rs.getString("custname"));
	               b.setCustno(rs.getInt("custno"));
	               b.setTotalprice(rs.getInt("p"));
	               allList.add(b);
	            }
	         } catch (Exception e) {
	            // TODO: handle exception
	        	 e.printStackTrace(); // 예외의 메시지를 출력  디버깅용
	         }         
	      }
	      return allList;      
	   }

}