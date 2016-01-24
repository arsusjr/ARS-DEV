package ph.com.alliance.service.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.validation.ConstraintViolationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.stereotype.Service;

import ph.com.alliance.dao.AirconDao;
import ph.com.alliance.dao.SpecificScheduleDao;
import ph.com.alliance.entity.Aircon;
import ph.com.alliance.entity.SpecificSchedule;
import ph.com.alliance.entity.User;
import ph.com.alliance.service.ARSService;

/**
 * Example service implementation that hadles database transaction. Database
 * transaction starts in this layer of the application, and it also ends here.
 *
 */
@Service("aRSService")
public class ARSServiceImpl implements ARSService {

	@Autowired
	private JpaTransactionManager transactionManager;

	/**----------------- DAO's -----------------**/
	@Autowired
	private AirconDao airconDao;
	
	@Autowired
	private SpecificScheduleDao specificScheduleDao;
	
	
	
	
	/**----------------- GET SPECIFIC SCHEDULE LIST -----------------**/
	@Override
	public List<SpecificSchedule> getSpecificScheduleList() {

		// get data from DB

		List<SpecificSchedule> specific_schedule_list = specificScheduleDao.getSpecificScheduleList(transactionManager.getEntityManagerFactory().createEntityManager());

		// logic
		return specific_schedule_list;
	}
	

	/**----------------- GET AIRCON LIST -----------------**/
	
	@Override
	public List<Aircon> getAirconList() {

		// get data from DB

		List<Aircon> list = airconDao.getAirconList(transactionManager.getEntityManagerFactory().createEntityManager());

		// logic
		return list;
	}

	/**----------------- INSERT AIRCON INFO -----------------**/
	@Override
	public void insert(Aircon airconObject) {
		airconDao.insert(transactionManager.getEntityManagerFactory().createEntityManager(), airconObject);

	}

}
