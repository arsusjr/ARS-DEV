package ph.com.alliance.dao;

import java.util.List;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.User;


/**
 * 
 * 
 */
public interface UserDao {
	
	public List<User> getUserList(EntityManager entitymanager);

	public void insert(EntityManager entityManager, User userObject);

}
