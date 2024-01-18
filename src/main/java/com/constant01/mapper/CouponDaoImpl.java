package com.constant01.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.constant01.model.Coupon;

@Repository
public class CouponDaoImpl implements CouponDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(Coupon coupon) {
		// TODO Auto-generated method stub
		return sst.insert("couponns.insert", coupon);
	}

	@Override
	public List<Coupon> cpList(String m_email) {
		// TODO Auto-generated method stub
		return sst.selectList("couponns.cpList", m_email);
	}

	@Override
	public int selectSP(int coupon_no) {
		// TODO Auto-generated method stub
		return sst.selectOne("couponns.selectSP", coupon_no);
	}

	@Override
	public int insertME(Coupon coupon) {
		// TODO Auto-generated method stub
		return sst.insert("couponns.insertME", coupon);
	}

	@Override
	public int totalCP(String m_email) {
		// TODO Auto-generated method stub
		return sst.selectOne("couponns.totalCP", m_email);
	}

	@Override
	public Coupon select(int coupon_no) {
		// TODO Auto-generated method stub
		return sst.selectOne("couponns.select", coupon_no);
	}

	@Override
	public List<Coupon> cpList2(String m_email) {
		// TODO Auto-generated method stub
		return sst.selectList("couponns.cpList2", m_email);
	}

	@Override
	public int update(Coupon coupon) {
		// TODO Auto-generated method stub
		return sst.update("couponns.update", coupon);
	}

}
