package ssh.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ssh.dao.FinanceDao;
import ssh.entity.Finance;
import ssh.entity.Water;
public class FinanceServiceImpl implements FinanceService{
	private FinanceDao financeDao;

	@Override
	public List<Finance> FinanceList(int id) {
		// TODO Auto-generated method stub
		return financeDao.Finance(id);
	}

	public void setFinanceDao(FinanceDao financeDao) {
		this.financeDao = financeDao;
	}

	@Override
	public List<Finance> FinanceList2(int id) {
		// TODO Auto-generated method stub
		return financeDao.Finance2(id);
	}

	@Override
	public List<Finance> FinanceList3(int id) {
		// TODO Auto-generated method stub
		return financeDao.Finance3(id);
	}

	@Override
	public List<Finance> FinanceList4(int id) {
		// TODO Auto-generated method stub
		return financeDao.Finance4(id);
	}

	@Override
	public List<Finance> FinanceList5(int id) {
		// TODO Auto-generated method stub
		return financeDao.Finance5(id);
	}

	@Override
	public List<Finance> FinanceList6(int id) {
		// TODO Auto-generated method stub
		return financeDao.Finance6(id);
	}

	@Override
	public List<Water> FinanceList7(int id) {
		// TODO Auto-generated method stub
		return financeDao.Finance7(id);
	}

	@Override
	public List<Finance> FinanceList8(int id) {
		// TODO Auto-generated method stub
		return financeDao.Finance8(id);
	}

	@Override
	public void addFinancepage(Finance finance) {
		// TODO Auto-generated method stub
		financeDao.addFinancepage(finance);
	}

	@Override
	public Finance findFinance(String name, String type) {
		// TODO Auto-generated method stub
		return financeDao.findFinance(name, type);
	}
}
