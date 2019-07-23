package ssh.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ssh.dao.ReviewDao;
import ssh.entity.Review;

public class ReviewServiceImpl implements ReviewService{
	private ReviewDao reviewDao;

	public void setReviewDao(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
	}
	//添加批注审批
	@Override
	public void addReview(Review review) {
		// TODO Auto-generated method stub
		reviewDao.addReview(review);
	}
	//获取审批记录
	@Override
	public List<Review> allReviewList() {
		// TODO Auto-generated method stub
		return reviewDao.allReviewList();
	}
	//查历史表的type_id
	@Override
	public Review findById(String id) {
		// TODO Auto-generated method stub
		return reviewDao.findById(id);
	}
	
}
