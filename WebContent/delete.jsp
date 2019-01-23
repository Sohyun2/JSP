<%@page import="java.io.PrintWriter"%>
<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    List<GuestbookVO> list = new GuestbookDao().getList();
	
	String id = request.getParameter("id");
	System.out.println(id);
	String password = request.getParameter("password");
	System.out.println(password);
	
	for(GuestbookVO vo : list) {
		String no = ""+vo.getNo(); // 리스트에 있는 회원
		System.out.println(no);
		
		if(id.equals(no) && password.equals(vo.getPassword())) { // 리스트에 있는 회원과 삭제할 회원이 맞는가? && 입력한 비밀번호와 회원의 비밀번호가 일치한가?
			boolean result = new GuestbookDao().delete(vo);
			break;
		}
	}
	response.sendRedirect("./index.jsp");
%>