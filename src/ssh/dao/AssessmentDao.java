package ssh.dao;

import java.util.List;

import ssh.entity.Assessment;

public interface AssessmentDao {
	public List<Assessment> Assessment(int id);
	public List<Assessment> Assessment2(int id);
	public List<Assessment> Assessment3(int id);
	public List<Assessment> Assessment4(int id);
	public List<Assessment> Assessment5(int id);
	public List<Assessment> Assessment6(int id);
	public void add(Assessment assessment);
	public List<Assessment> findId();
	public Assessment findById(int id);
	public void delete(int id);
	public void update(Assessment assessment);
}
