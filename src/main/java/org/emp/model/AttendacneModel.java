package org.emp.model;

import java.sql.Date;
import java.sql.Time;

public class AttendacneModel {

	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public Date getAttendace_date() {
		return Attendace_date;
	}
	public void setAttendace_date(Date attendace_date) {
		Attendace_date = attendace_date;
	}
	public String getInTime() {
		return inTime;
	}
	public void setInTime(String inTime) {
		this.inTime = inTime;
	}
	public String getOutTime() {
		return outTime;
	}
	public void setOutTime(String outTime) {
		this.outTime = outTime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	private int empid;
	private Date Attendace_date;
	private String inTime;
	private String outTime;
	private String status;

}
