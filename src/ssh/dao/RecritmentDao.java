package ssh.dao;

import java.util.List;


import ssh.entity.Recritment;

public interface RecritmentDao {
	public List<Recritment> RecritmentList(int id);
	public List<Recritment> RecritmentList1(int id);
	public List<Recritment> RecritmentList2(int id);
	public List<Recritment> RecritmentList3(int id);
	public List<Recritment> RecritmentList4(int id);
	public void add(Recritment recritment);
	public List<Recritment> findSta();
	public Recritment findById(Long id);
	public void updateSta(Recritment recritment);
	public void update(Recritment recritment);
	public void delete(int id);
}
