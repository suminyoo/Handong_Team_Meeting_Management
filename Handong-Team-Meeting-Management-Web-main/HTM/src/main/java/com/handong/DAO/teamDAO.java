package com.handong.DAO;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.handong.DTO.*;

@Repository
public class teamDAO {
	@Autowired
	SqlSession sqlSession;
	
	private static String namespace = "com.handong.htm.mappers.home-mapper";
	
	public static List<Integer> teamID = new ArrayList<Integer>();
	
	public List<teamInformation> team(int id) {
		System.out.println("get team info");
		return sqlSession.selectList( namespace + ".team", id);
	}
			
}
