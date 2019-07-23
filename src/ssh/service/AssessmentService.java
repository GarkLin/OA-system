package ssh.service;

import java.util.List;

import ssh.entity.Assessment;

public interface AssessmentService{
	public List<Assessment> AssessmentList(int id);
	public List<Assessment> AssessmentList2(int id);
	public List<Assessment> AssessmentList3(int id);
	public List<Assessment> AssessmentList4(int id);
	public List<Assessment> AssessmentList5(int id);
	public List<Assessment> AssessmentList6(int id);
	public void add(Assessment assessment);
	public List<Assessment> findId();
	public Assessment findById(int id);
	public void delete(int id);
	public void update(Assessment assessment);
}
