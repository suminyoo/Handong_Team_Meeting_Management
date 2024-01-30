package com.handong.DAO;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.handong.DTO.family;
import com.handong.DTO.rc;
import com.handong.DTO.user;

@Repository
public class familyMembersDAO {
	@Autowired
	SqlSession sqlSession;
	
	private static String namespace = "com.handong.htm.mappers.home-mapper";
	
	public static List<Integer> familyID = new ArrayList<Integer>();
	
	public user userName(int id){
		System.out.println("get user name");
		user username = sqlSession.selectOne( namespace + ".userName", id);
		
		familyID = sqlSession.selectList(namespace + ".familyID", id);
		System.out.println("family :" + familyID);
		return username;
	}
	
	public List<family> familyName(int id) {
		System.out.println("get family name2");
		return sqlSession.selectList(namespace + ".familyName", id);
	}
	
	public List<user> familyMembers0(){
		return sqlSession.selectList(namespace + ".familyMembers", familyID.get(0));
	}
	public List<user> familyMembers1(){
		return sqlSession.selectList(namespace + ".familyMembers", familyID.get(1));
	}
	public List<user> familyMembers2(){
		return sqlSession.selectList(namespace + ".familyMembers", familyID.get(2));
	}
	public List<user> familyMembers3(){
		return sqlSession.selectList(namespace + ".familyMembers", familyID.get(3));
	}
	public List<user> familyMembers4(){
		return sqlSession.selectList(namespace + ".familyMembers", familyID.get(4));
	}
	public List<user> familyMembers5(){
		return sqlSession.selectList(namespace + ".familyMembers", familyID.get(5));
	}
}


