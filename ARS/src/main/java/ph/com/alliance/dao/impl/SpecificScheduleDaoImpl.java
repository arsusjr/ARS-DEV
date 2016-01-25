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
@Repository("specificScheduleDao")
public class SpecificScheduleDaoImpl implements SpecificScheduleDao {

	@Override
	public List<String> getSpecificScheduleList(EntityManager entityManager) {
		
		Query query = entityManager.createQuery(
				"SELECT aircon.name, specific_schedule.date, specific_schedule.time_start, specific_schedule.time_end, specific_schedule.modified_by, specific_schedule.modified_date  FROM specific_schedule, aircon WHERE specific_schedule.id = aircon.id");

		// SpecificSchedule

		List<String> specific_schedule_list = query.getResultList();
	
		System.out.print("SIZE: " + specific_schedule_list);

		return specific_schedule_list;
	}


}
