package ph.com.alliance.entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the aircon database table.
 * 
 */
@Entity
@Table(name="aircon")
public class Aircon implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private int id;

	@Lob
	private String description;

	private String name;

	public Aircon() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
    public String toString(){
        return "\nName: " + getName() + "\nDescription: " + getDescription();
      }

}