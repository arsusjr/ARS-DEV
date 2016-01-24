package ph.com.alliance.dao.impl;

import java.util.List;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TransactionRequiredException;

import org.springframework.stereotype.Repository;

import ph.com.alliance.dao.AirconDao;
import ph.com.alliance.dao.SpecificScheduleDao;
import ph.com.alliance.entity.Aircon;
import ph.com.alliance.entity.SpecificSchedule;

/**
 * Sample data access object implementation using Java Persistence API.
 *
 */
@Repository("airconDao")
public class SpecificScheduleDaoImpl implements SpecificScheduleDao {

	@Override
	public List<SpecificSchedule> getSpecificScheduleList(EntityManager entityManager) {
		Query query = entityManager.createQuery("FROM SpecificSchedule"); // Select * From
																// SpecificSchedule
		List<SpecificSchedule> specific_schedule_list = query.getResultList();
		return specific_schedule_list;
	}


}
