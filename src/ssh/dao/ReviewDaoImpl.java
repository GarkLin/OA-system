package ssh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import ssh.entity.Review;
import ssh.entity.User;

public class ReviewDaoImpl implements ReviewDao{
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	//添加批注审批

	@Override
	public void addReview(Review review) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(review);
	}
	//查询历史审批记录
	@Override
	public List<Review> allReviewList() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hsql = "from Review";
		Query query = session.createQuery(hsql);
		List<Review> review = query.getResultList();
		return review;
	}
	//根据taskid查询出分类索引的type_id
	@Override
	public Review findById(String id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hsql = "from Review r where r.ids=:id";
		Query query = session.createQuery(hsql);
		query.setParameter("id", id);
		Review result = (Review) query.uniqueResult();
		return result;
	}
	
	
}
