package com.constant01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.constant01.mapper.CouponMapper;
import com.constant01.model.Coupon;

@Service
public class CouponServiceImpl implements CouponService{
	@Autowired
	private CouponMapper cpd;

	@Override
	public int insert(Coupon coupon) {
		// TODO Auto-generated method stub
		return cpd.insert(coupon);
	}

	@Override
	public List<Coupon> cpList(String m_email) {
		// TODO Auto-generated method stub
		return cpd.cpList(m_email);
	}

	@Override
	public int selectSP(int coupon_no) {
		// TODO Auto-generated method stub
		return cpd.selectSP(coupon_no);
	}

	@Override
	public int insertME(Coupon coupon) {
		// TODO Auto-generated method stub
		return cpd.insertME(coupon);
	}

	@Override
	public int totalCP(String m_email) {
		// TODO Auto-generated method stub
		return cpd.totalCP(m_email);
	}

	@Override
	public Coupon select(int coupon_no) {
		// TODO Auto-generated method stub
		return cpd.select(coupon_no);
	}

	@Override
	public List<Coupon> cpList2(String m_email) {
		// TODO Auto-generated method stub
		return cpd.cpList2(m_email);
	}

	@Override
	public int update(Coupon coupon) {
		// TODO Auto-generated method stub
		return cpd.update(coupon);
	}


}
