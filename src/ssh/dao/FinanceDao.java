package ssh.dao;

import java.util.List;

import ssh.entity.Finance;
import ssh.entity.Water;
public interface FinanceDao {
	public List<Finance> Finance(int id);
	public List<Finance> Finance2(int id);
	public List<Finance> Finance3(int id);
	public List<Finance> Finance4(int id);
	public List<Finance> Finance5(int id);
	public List<Finance> Finance6(int id);
	public List<Water> Finance7(int id);
	public List<Finance> Finance8(int id);
	public void addFinancepage(Finance finance);
	public Finance findFinance(String name,String type);
}
