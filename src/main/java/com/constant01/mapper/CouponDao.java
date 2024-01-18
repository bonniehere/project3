package com.constant01.mapper;

import java.util.List;

import com.constant01.model.Coupon;

public interface CouponDao {

	int insert(Coupon coupon);

	List<Coupon> cpList(String m_email);

	int selectSP(int coupon_no);

	int insertME(Coupon coupon);

	int totalCP(String m_email);

	Coupon select(int coupon_no);

	List<Coupon> cpList2(String m_email);

	int update(Coupon coupon);

}
