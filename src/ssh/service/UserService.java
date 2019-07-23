package ssh.service;

import java.util.List;

import ssh.entity.User;

public interface UserService {
	public List<User> getUser();
	public User findById(Long id);
	public void add(User user);
	public void update(User user);
	public void delete(Long uid);
	public List<User> findUserByName(String username);
}
