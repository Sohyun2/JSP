package com.douzone.guestbook.test;

import java.util.List;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVO;

public class GuestbookDaoTest {
	public static void main(String[] args) {
		deleteTest();
	}
	
	public static void deleteTest() {
		GuestbookVO vo = new GuestbookVO();
		vo.setNo(2);
		vo.setPassword("안녕");
		
		System.out.println(new GuestbookDao().delete(vo));
	}
	
	public static void getList() {
		List<GuestbookVO> list = new GuestbookDao().getList();
		
		for(GuestbookVO vo : list) {
			System.out.println(vo);
		}
	}
	
	public static void insertTest() {
		GuestbookVO vo = new GuestbookVO();
		
		vo.setName("오아림");
		vo.setPassword("안녕");
		vo.setMessage("어쩜 변한게 하나도 없는지이");
		
		boolean result = new GuestbookDao().insert(vo);
		
		System.out.println(result);
	}
}
