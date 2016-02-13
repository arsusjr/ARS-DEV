package ph.com.alliance.service;

import java.util.Collection;
import java.util.List;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.Aircon;
import ph.com.alliance.entity.SpecificSchedule;
import ph.com.alliance.entity.User;

/**
 * 
 * 
 */
public interface ARSService {

	public List<Aircon> getAirconList();

	public void insert(Aircon airconObject);

	/**----------------- MODULE 1 -----------------**/
	
	public User findUser(String email, String password);
	
	/**----------------- MODULE 2 -----------------**/
	
	public List<User> getUserList();
	public void insertUser(User userObject);
	public User getUser(int id);
	public void updateUser(User userObject);
	public void deleteUser(User userObject);

	/**----------------- MODULE 4 -----------------**/
	
	public List<SpecificSchedule> getSpecificScheduleList();
	public SpecificSchedule getSchedule(int id);
	public void updateSpecificSchedule(SpecificSchedule specificScheduleObject);
	
	
}
