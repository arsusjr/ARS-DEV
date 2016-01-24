package ph.com.alliance.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Time;
import java.util.Date;


/**
 * The persistent class for the weekly_schedule database table.
 * 
 */
@Entity
@Table(name="weekly_schedule")
public class WeeklySchedule implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	@Column(name="aircon_id")
	private int airconId;

	private int day;

	@Column(name="deleted_flag")
	private byte deletedFlag;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="modfied_date")
	private Date modfiedDate;

	@Column(name="modified_by")
	private int modifiedBy;

	@Column(name="time_end")
	private Time timeEnd;

	@Column(name="time_start")
	private Time timeStart;

	public WeeklySchedule() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAirconId() {
		return this.airconId;
	}

	public void setAirconId(int airconId) {
		this.airconId = airconId;
	}

	public int getDay() {
		return this.day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public byte getDeletedFlag() {
		return this.deletedFlag;
	}

	public void setDeletedFlag(byte deletedFlag) {
		this.deletedFlag = deletedFlag;
	}

	public Date getModfiedDate() {
		return this.modfiedDate;
	}

	public void setModfiedDate(Date modfiedDate) {
		this.modfiedDate = modfiedDate;
	}

	public int getModifiedBy() {
		return this.modifiedBy;
	}

	public void setModifiedBy(int modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public Time getTimeEnd() {
		return this.timeEnd;
	}

	public void setTimeEnd(Time timeEnd) {
		this.timeEnd = timeEnd;
	}

	public Time getTimeStart() {
		return this.timeStart;
	}

	public void setTimeStart(Time timeStart) {
		this.timeStart = timeStart;
	}

}