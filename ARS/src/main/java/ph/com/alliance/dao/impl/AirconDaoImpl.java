package ph.com.alliance.dao.impl;

import java.util.List;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TransactionRequiredException;

import org.springframework.stereotype.Repository;

import ph.com.alliance.dao.AirconDao;
import ph.com.alliance.entity.Aircon;

/**
 * Sample data access object implementation using Java Persistence API.
 *
 */
@Repository("airconDao")
public class AirconDaoImpl implements AirconDao {

	@Override
	public List<Aircon> getAirconList(EntityManager entityManager) {
		Query query = entityManager.createQuery("FROM Aircon"); // Select * From
																// Aircon
		List<Aircon> airconList = query.getResultList();
		return airconList;
	}

	@Override
	public void insert(EntityManager entityManager, Aircon airconObject) {

		EntityTransaction transaction = entityManager.getTransaction();
		try {
			transaction.begin();
			System.out.println("BEFORE PERSIST: " + airconObject.toString());
			entityManager.persist(airconObject);
			transaction.commit();
		} catch (Exception e) {

			transaction.rollback();

		}
	}

}
