package ph.com.alliance.dao;

import java.util.List;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.SpecificSchedule;
import ph.com.alliance.entity.User;


/**
 * 
 * 
 */
public interface UserDao {
	
	public List<User> getUserList(EntityManager entitymanager);
	
	public User findUser(EntityManager entityManager, String email, String password);

	public void insert(EntityManager entityManager, User userObject);
	
	public User getUser(EntityManager entityManager, int id);
	
	public void updateUser(EntityManager entityManager, User userObject);
	
	public void delete(EntityManager entityManager, User userObject);

}
