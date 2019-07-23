package ssh.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ssh.dao.AssessmentDao;
import ssh.entity.Assessment;
public class AssessmentServiceImpl implements AssessmentService{
	private AssessmentDao assessmentDao;
	
	public void setAssessmentDao(AssessmentDao assessmentDao) {
		this.assessmentDao = assessmentDao;
	}
	@Override
	public List<Assessment> AssessmentList(int id) {
		// TODO Auto-generated method stub
		System.out.println("考勤管理");
		return assessmentDao.Assessment(id);
	}
	@Override
	public List<Assessment> AssessmentList2(int id) {
		// TODO Auto-generated method stub
		return assessmentDao.Assessment2(id);
	}
	@Override
	public List<Assessment> AssessmentList3(int id) {
		// TODO Auto-generated method stub
		return assessmentDao.Assessment3(id);
	}
	@Override
	public List<Assessment> AssessmentList4(int id) {
		// TODO Auto-generated method stub
		return assessmentDao.Assessment4(id);
	}
	@Override
	public List<Assessment> AssessmentList5(int id) {
		// TODO Auto-generated method stub
		return assessmentDao.Assessment5(id);
	}
	@Override
	public List<Assessment> AssessmentList6(int id) {
		// TODO Auto-generated method stub
		return assessmentDao.Assessment6(id);
	}
	@Override
	public void add(Assessment assessment) {
		// TODO Auto-generated method stub
		assessmentDao.add(assessment);
	}
	@Override
	public List<Assessment> findId() {
		// TODO Auto-generated method stub
		return assessmentDao.findId();
	}
	//修改
	@Override
	public Assessment findById(int id) {
		// TODO Auto-generated method stub
		return assessmentDao.findById(id);
	}
	//删除
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		if(assessmentDao.findById(id)!=null){
			assessmentDao.delete(id);
			System.out.println("删除成功："+id);
		}
	}
	@Override
	public void update(Assessment assessment) {
		// TODO Auto-generated method stub
		System.out.println("1");
		assessmentDao.update(assessment);
	}
	
}
