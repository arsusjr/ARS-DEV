package ph.com.alliance.dao;

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


}
