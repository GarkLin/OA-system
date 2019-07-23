package ssh.dao;

import java.util.List;

import ssh.entity.Review;

public interface ReviewDao {
	public void addReview(Review review);
	public List<Review> allReviewList();
	public Review findById(String id);
}
