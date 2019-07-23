package ssh.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ssh.dao.WelfareDao;
import ssh.entity.Welfare;
public class WelfareServiceImpl implements WelfareService{
	private WelfareDao welfareDao;
	public void setWelfareDao(WelfareDao welfareDao) {
		this.welfareDao = welfareDao;
	}

	@Override
	public List<Welfare> WelfareList(int id) {
		// TODO Auto-generated method stub
		return welfareDao.Welfare(id);
	}

	@Override
	public List<Welfare> WelfareList2(int id) {
		// TODO Auto-generated method stub
		return welfareDao.Welfare2(id);
	}

	@Override
	public List<Welfare> WelfareList3(int id) {
		// TODO Auto-generated method stub
		return welfareDao.Welfare3(id);
	}

	@Override
	public List<Welfare> WelfareList4(int id) {
		// TODO Auto-generated method stub
		return welfareDao.Welfare4(id);
	}

	@Override
	public void addWelfare(Welfare welfare) {
		// TODO Auto-generated method stub
		System.out.println(welfare);
		welfareDao.addWelfare(welfare);
	}
	
	
}
