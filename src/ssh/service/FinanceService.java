package ssh.service;

import java.util.List;

import ssh.entity.Finance;
import ssh.entity.Water;

public interface FinanceService {
	public List<Finance> FinanceList(int id);
	public List<Finance> FinanceList2(int id);
	public List<Finance> FinanceList3(int id);
	public List<Finance> FinanceList4(int id);
	public List<Finance> FinanceList5(int id);
	public List<Finance> FinanceList6(int id);
	public List<Water> FinanceList7(int id);
	public List<Finance> FinanceList8(int id);
	public void addFinancepage(Finance finance);
	public Finance findFinance(String name,String type);
}
