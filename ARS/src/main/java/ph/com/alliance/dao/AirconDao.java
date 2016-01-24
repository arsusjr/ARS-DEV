package ph.com.alliance.dao;

import java.util.List;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.Aircon;


/**
 * 
 * 
 */
public interface AirconDao {
	
	public List<Aircon> getAirconList(EntityManager entitymanager);

	public void insert(EntityManager entityManager, Aircon airconObject);

}
