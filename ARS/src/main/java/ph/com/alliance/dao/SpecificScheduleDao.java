package ph.com.alliance.dao;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.Aircon;
import ph.com.alliance.entity.SpecificSchedule;


/**
 * 
 * 
 */
public interface SpecificScheduleDao {
	
	public List<SpecificSchedule> getSpecificScheduleList(EntityManager entityManager);
	public SpecificSchedule getSchedule(EntityManager entityManager, int id);
	public void updateSpecificSchedule(EntityManager entityManager, SpecificSchedule specificScheduleObject);


}
