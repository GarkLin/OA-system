package ssh.dao;

import java.util.List;
import ssh.entity.Welfare;

public interface WelfareDao {
	public List<Welfare> Welfare(int id);
	public List<Welfare> Welfare2(int id);
	public List<Welfare> Welfare3(int id);
	public List<Welfare> Welfare4(int id);
	public void addWelfare(Welfare welfare);
}
