package com.handong.DAO;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.handong.DTO.rc;
import com.handong.DTO.user;
import com.handong.DTO.attendance;
import com.handong.DTO.positions;

@Repository
public class myInfoDAO {
	@Autowired
	SqlSession sqlSession;
	
	private static String namespace = "com.handong.htm.mappers.home-mapper";
	
	public user userName(int id){
		System.out.print("get user name");
		return sqlSession.selectOne( namespace + ".userName", id);
	}
	
	public positions positionName(int id){
		System.out.print("get position name");
		return sqlSession.selectOne( namespace + ".positionName", id);
	}
	
	public List<attendance> attendance(int id) {
		System.out.println("get attendance info");
		return sqlSession.selectList( namespace + ".attendance", id);
	}
	
	public List<Object> multiAttendance(int id) {
		System.out.println("get attendance info");
		return sqlSession.selectList( namespace + ".multiAttendance", id);
	}
	
}


