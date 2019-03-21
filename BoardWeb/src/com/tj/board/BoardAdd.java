package com.tj.board;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tg.member.MemberDto;

@WebServlet(value = "/board/add")
public class BoardAdd extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.sendRedirect("./boardForm.jsp");

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp";
		String password = "jsp";

//		req.setCharacterEncoding("UTF-8");

//		String mnoStr = req.getParameter("mno");
		HttpSession session = req.getSession();
		MemberDto memberDto = (MemberDto) session.getAttribute("member");
		System.out.println(memberDto.getNo());

		int mnoInt = memberDto.getNo();
		String titleStr = req.getParameter("title");
		String bodyStr = req.getParameter("body");

		String sql = "";
		System.out.println(mnoInt);
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);

			sql = "INSERT INTO BOARD";
			sql += " (BOARD_NO, MNO, TITLE, BODY, CRE_DATE, MOD_DATE)";
			sql += " VALUES(BOARD_MNO_SEQ.NEXTVAL, ?, ?, ?, SYSDATE, SYSDATE)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, mnoInt);
			pstmt.setString(2, titleStr);
			pstmt.setString(3, bodyStr);

			pstmt.executeUpdate();

			res.sendRedirect("./list");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			// 예외처리 페이지로 위임
			req.setAttribute("error", e);
			RequestDispatcher dispatcher = req.getRequestDispatcher("/error.jsp");

			dispatcher.forward(req, res);
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} // finally end

	}

}
