package ssh.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ssh.dao.RecritmentDao;
import ssh.entity.Recritment;
public class RecritmentServiceImpl implements RecritmentService{
	private RecritmentDao recritmentDao;

	//获取招聘
	@Override
	public List<Recritment> RecritmentList(int id) {
		// TODO Auto-generated method stub
		List<Recritment> Rlist = recritmentDao.RecritmentList(id);
		return Rlist;
	}
	public void setRecritmentDao(RecritmentDao recritmentDao) {
		this.recritmentDao = recritmentDao;
	}
		//获取招聘
		@Override
		public List<Recritment> RecritmentList1(int id) {
			// TODO Auto-generated method stub
			List<Recritment> Rlist = recritmentDao.RecritmentList1(id);
			return Rlist;
		}
		//获取招聘
		@Override
		public List<Recritment> RecritmentList2(int id) {
			// TODO Auto-generated method stub
			List<Recritment> Rlist = recritmentDao.RecritmentList2(id);
			return Rlist;
		}
		//获取招聘
		@Override
		public List<Recritment> RecritmentList3(int id) {
			// TODO Auto-generated method stub
			List<Recritment> Rlist = recritmentDao.RecritmentList3(id);
			return Rlist;
		}
		//获取招聘
		@Override
		public List<Recritment> RecritmentList4(int id) {
			// TODO Auto-generated method stub
			List<Recritment> Rlist = recritmentDao.RecritmentList4(id);
			return Rlist;
		}


		@Override
		public void add(Recritment recritment) {
			// TODO Auto-generated method stub
			recritmentDao.add(recritment);
		}
		@Override
		public List<Recritment> findSta() {
			// TODO Auto-generated method stub
			List<Recritment> sList = recritmentDao.findSta();
			System.out.println("得到待处理状态0的招聘数据");
			return sList;
		}
		@Override
		public Recritment findById(Long id) {
			// TODO Auto-generated method stub
			return recritmentDao.findById(id);
		}
		@Override
		public void delete(int id) {
			// TODO Auto-generated method stub
			Long a = (long) id;
			if(recritmentDao.findById(a)!=null){
				recritmentDao.delete(id);
				System.out.println("删除成功："+id);
			}
		}
		@Override
		public void update(Recritment recritment) {
			// TODO Auto-generated method stub
			recritmentDao.update(recritment);
		}
}
