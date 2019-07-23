package ssh.service;

import java.util.List;

import ssh.entity.Review;
import ssh.entity.User;

public interface ReviewService {
	public void addReview(Review review);
	public List<Review> allReviewList();
	public Review findById(String id);
}
