package com.constant01.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.constant01.model.Affi;

@Repository
public class AffiDaoImpl implements AffiDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(Affi affi) {
		// TODO Auto-generated method stub
		return sst.insert("affins.insert", affi);
	}

	@Override
	public int getAFTotal(Affi affi) { // 제휴/광고 총갯수구하기
		// TODO Auto-generated method stub
		return sst.selectOne("affins.getAFTotal", affi);
	}

	@Override
	public List<Affi> afList(Affi affi) { // 제휴광고 목록
		// TODO Auto-generated method stub
		return sst.selectList("affins.afList", affi);
	}

	@Override
	public Affi selectAF(int AF_no) {
		// TODO Auto-generated method stub
		return sst.selectOne("affins.selectAF", AF_no);
	}
	
}
