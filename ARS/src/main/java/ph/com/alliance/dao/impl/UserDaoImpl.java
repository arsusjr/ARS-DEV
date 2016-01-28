package ph.com.alliance.dao.impl;

import java.util.List;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TransactionRequiredException;

import org.springframework.stereotype.Repository;

import ph.com.alliance.dao.UserDao;

import ph.com.alliance.entity.User;

/**
 * Sample data access object implementation using Java Persistence API.
 *
 */
@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Override
	public List<User> getUserList(EntityManager entityManager) {
		Query query = entityManager.createQuery("FROM User WHERE deleted_flag = 0"); // Select * From
																// User
		List<User> userList = query.getResultList();
		return userList;
	}

	@Override
	public void insert(EntityManager entityManager, User userObject) {

		EntityTransaction transaction = entityManager.getTransaction();
		try {
			transaction.begin();
			entityManager.persist(userObject);
			transaction.commit();
		} catch (Exception e) {

			transaction.rollback();

		}
	}

}
