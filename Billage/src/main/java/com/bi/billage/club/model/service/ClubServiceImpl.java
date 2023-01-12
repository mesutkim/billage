package com.bi.billage.club.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bi.billage.common.model.vo.PageInfo;
import com.bi.billage.club.model.dao.ClubDao;
import com.bi.billage.club.model.vo.Club;

@Service
public class ClubServiceImpl implements ClubService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ClubDao clubDao;
	
	@Override
	public int selectListCount() {
		return clubDao.selectListCount(sqlSession);
	}
	
	@Override
	public ArrayList<Club> selectList(PageInfo pi) {
		return clubDao.selectList(sqlSession, pi);
	}
		
	@Override
	public int increaseCount(int groupNo) {
		return clubDao.increaseCount(sqlSession, groupNo);
	}
	
	@Override
	public Club selectDetailGroup(int groupNo) {
		return clubDao.selectDetailGroup(sqlSession, groupNo);
	}
	
	@Override
	public int insertGroup( Club club) {
		return clubDao.insertGroup(sqlSession, club);
	}






	
}