package ssh.service;

import java.util.List;

import ssh.entity.Welfare;

public interface WelfareService{
	public List<Welfare> WelfareList(int id);
	public List<Welfare> WelfareList2(int id);
	public List<Welfare> WelfareList3(int id);
	public List<Welfare> WelfareList4(int id);
	public void addWelfare(Welfare welfare);
}
