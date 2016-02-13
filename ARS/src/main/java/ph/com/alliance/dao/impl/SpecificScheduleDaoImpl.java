package ph.com.alliance.dao.impl;

import java.util.Date;
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
import ph.com.alliance.entity.User;

/**
 * Sample data access object implementation using Java Persistence API.
 *
 */
@Repository("specificScheduleDao")
public class SpecificScheduleDaoImpl implements SpecificScheduleDao {

	@Override
	public List<SpecificSchedule> getSpecificScheduleList(EntityManager entityManager) {

		String search=null;
		
		StringBuilder sb = new StringBuilder("FROM SpecificSchedule ss");
		Query query = entityManager.createQuery(sb.toString());

		sb.append(" WHERE deleted_flag = 0");
		if (search != null && !search.equals("") && !search.trim().equals("")) {

			sb.append(" AND u.unit = :search");

			query.setParameter("search", search);

		}

		List<SpecificSchedule> specific_schedule_list = query.getResultList();
		return specific_schedule_list;
	}

	@Override
	public SpecificSchedule getSchedule(EntityManager entityManager, int id) {

		Query query = entityManager.createQuery("FROM SpecificSchedule ss WHERE ss.id = :id");
		query.setParameter("id", id);

		return (SpecificSchedule) query.getSingleResult();
	}

	@Override
	public void updateSpecificSchedule(EntityManager entitymanager, SpecificSchedule specificScheduleObject) {

	}

}
