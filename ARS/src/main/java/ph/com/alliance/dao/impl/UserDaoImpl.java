package ph.com.alliance.dao.impl;

import java.util.List;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TransactionRequiredException;

import org.mockito.internal.matchers.Find;
import org.springframework.stereotype.Repository;

import ph.com.alliance.dao.UserDao;
import ph.com.alliance.entity.SpecificSchedule;
import ph.com.alliance.entity.User;

/**
 * Sample data access object implementation using Java Persistence API.
 *
 */
@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Override
	public List<User> getUserList(EntityManager entityManager) {
		Query query = entityManager.createQuery("FROM User WHERE deleted_flag = 0"); // Select
																						// *
																						// From
		// User
		List<User> userList = query.getResultList();
		return userList;
	}

	@Override
	public User findUser(EntityManager entityManager, String email, String password) {
		StringBuilder sb = new StringBuilder("FROM User u");

		sb.append(" WHERE u.email = :email");
		Query query = entityManager.createQuery(sb.toString());
		query.setParameter("email", email);

		User user = (User) query.setMaxResults(1).getSingleResult();

		return user;
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

	@Override
	public User getUser(EntityManager entityManager, int id) {

		Query query = entityManager.createQuery("FROM User u WHERE u.id = :id");
		query.setParameter("id", id);

		return (User) query.getSingleResult();
	}

	@Override
	public void updateUser(EntityManager entityManager, User userObject) {

		EntityTransaction transaction = entityManager.getTransaction();

		try {
			transaction.begin();
			entityManager.merge(userObject);
			transaction.commit();
		} catch (Exception e) {

			transaction.rollback();

		}

	}

	@Override
	public void delete(EntityManager entityManager, User userObject) {

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
