package com.constant01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.constant01.mapper.AffiMapper;
import com.constant01.model.Affi;

@Service
public class AffiServiceImpl implements AffiService {
	@Autowired
	private AffiMapper ad;

	@Override
	public int insert(Affi affi) {
		// TODO Auto-generated method stub
		return ad.insert(affi);
	}

	@Override
	public int getAFTotal(Affi affi) {
		// TODO Auto-generated method stub
		return ad.getAFTotal(affi);
	}

	@Override
	public List<Affi> asList(Affi affi) {
		// TODO Auto-generated method stub
		return ad.afList(affi);
	}

	@Override
	public Affi selectAF(int AF_no) {
		// TODO Auto-generated method stub
		return ad.selectAF(AF_no);
	}

	@Override
	public int updateAF(int AF_no) {
		// TODO Auto-generated method stub
		return ad.updateAF(AF_no);
	}
	
	
}
