package ph.com.alliance.service.impl;

import java.util.Collection;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.validation.ConstraintViolationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.stereotype.Service;

import ph.com.alliance.dao.AirconDao;
import ph.com.alliance.dao.SpecificScheduleDao;
import ph.com.alliance.dao.UserDao;
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

	/** ----------------- DAO's ----------------- **/
	@Autowired
	private AirconDao airconDao;

	@Autowired
	private SpecificScheduleDao specificScheduleDao;

	@Autowired
	private UserDao userDao;

	/**
	 * ----------------- UPDATE USER -----------------
	 * 
	 * @return
	 **/

	@Override
	public void updateUser(User userObject) {

		// get data from DB

		// logic
		userDao.updateUser(transactionManager.getEntityManagerFactory().createEntityManager(), userObject);
	}

	/** ----------------- UPDATE SCHEDULE ----------------- **/

	public void updateSpecificSchedule(SpecificSchedule specificScheduleObject) {

		// get data from DB

		// logic
		specificScheduleDao.updateSpecificSchedule(transactionManager.getEntityManagerFactory().createEntityManager(),
				specificScheduleObject);
	}

	/** ----------------- GET SCHEDULE ----------------- **/

	@Override
	public SpecificSchedule getSchedule(int id) {

		// get data from DB

		// logic
		return specificScheduleDao.getSchedule(transactionManager.getEntityManagerFactory().createEntityManager(), id);

	}

	/** ----------------- GET USER ----------------- **/

	@Override
	public User getUser(int id) {

		// get data from DB

		// logic
		return userDao.getUser(transactionManager.getEntityManagerFactory().createEntityManager(), id);

	}

	/** ----------------- GET USER LIST ----------------- **/

	@Override
	public List<User> getUserList() {

		// get data from DB

		List<User> user_list = userDao.getUserList(transactionManager.getEntityManagerFactory().createEntityManager());

		// logic
		return user_list;
	}

	/** ----------------- GET USER INFO ----------------- **/

	public User findUser(String email, String password) {

		return userDao.findUser(transactionManager.getEntityManagerFactory().createEntityManager(), email, password);

	}

	/** ----------------- INSERT USER INFO ----------------- **/
	@Override
	public void insertUser(User userObject) {
		userDao.insert(transactionManager.getEntityManagerFactory().createEntityManager(), userObject);

	}

	/** ----------------- DELETE USER ----------------- **/
	@Override
	public void deleteUser(User userObject) {
		userDao.delete(transactionManager.getEntityManagerFactory().createEntityManager(), userObject);

	}

	/** ----------------- GET SPECIFIC SCHEDULE LIST ----------------- **/
	@Override
	public List<SpecificSchedule> getSpecificScheduleList() {
		List<SpecificSchedule> specific_schedule_list = specificScheduleDao
				.getSpecificScheduleList(transactionManager.getEntityManagerFactory().createEntityManager());
		return specific_schedule_list;
	}

	/** ----------------- GET AIRCON LIST ----------------- **/

	@Override
	public List<Aircon> getAirconList() {

		// get data from DB

		List<Aircon> aircon_list = airconDao
				.getAirconList(transactionManager.getEntityManagerFactory().createEntityManager());

		// logic
		return aircon_list;
	}

	/** ----------------- INSERT AIRCON INFO ----------------- **/
	@Override
	public void insert(Aircon airconObject) {
		airconDao.insert(transactionManager.getEntityManagerFactory().createEntityManager(), airconObject);

	}

}
