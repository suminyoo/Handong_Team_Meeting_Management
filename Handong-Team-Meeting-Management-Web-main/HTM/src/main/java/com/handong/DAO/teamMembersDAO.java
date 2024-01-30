package com.handong.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.handong.DTO.rc;
import com.handong.DTO.user;

@Repository
public class teamMembersDAO {
	@Autowired
	SqlSession sqlSession;
	
	private static String namespace = "com.handong.htm.mappers.home-mapper";
	
	public user userName(int id){
		System.out.print("get user name");
		return sqlSession.selectOne( namespace + ".userName", id);
	}
	
	public List<user> teamMember(int id){
		System.out.println("get team member list");
		return sqlSession.selectList(namespace + ".teamMember", id);
	}
	
}


