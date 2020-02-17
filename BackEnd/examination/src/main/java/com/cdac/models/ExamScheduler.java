package com.cdac.models;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="exam_scheduler")
public class ExamScheduler {

	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "escheduler_generator")
	@SequenceGenerator(name="escheduler_generator",initialValue=1,allocationSize=1)
	@Column(name="escheduler_id")
	private int escheduler_id;
	
	@Column(name="start_date")
	private LocalDate start_date;
	
	@Column(name="end_date")
	private LocalDate end_date;
	
	@Column(name="start_time")
	private LocalTime start_time;
	
	@Column(name="end_time")
	private LocalTime end_time;
	
	@Column(name="exam_status")
	private String exam_status;
	
	@ManyToOne
	@JoinColumn(name="test_id",insertable=false,updatable=false)
	Test testObj;
	
	private int test_id;
	
	@ManyToOne
	@JoinColumn(name="email",insertable=false,updatable=false)
	Admin adminObj;
	
	private String email;


	public ExamScheduler() {
		super();
	}

	
	public ExamScheduler(int escheduler_id, LocalDate start_date, LocalDate end_date, LocalTime start_time,
			LocalTime end_time, String exam_status, Test testObj, int test_id, Admin adminObj, String email) {
		super();
		this.escheduler_id = escheduler_id;
		this.start_date = start_date;
		this.end_date = end_date;
		this.start_time = start_time;
		this.end_time = end_time;
		this.exam_status = exam_status;
		this.testObj = testObj;
		this.test_id = test_id;
		this.adminObj = adminObj;
		this.email = email;
	}

	public int getEscheduler_id() {
		return escheduler_id;
	}

	public void setEscheduler_id(int escheduler_id) {
		this.escheduler_id = escheduler_id;
	}

	public LocalDate getStart_date() {
		return start_date;
	}

	public void setStart_date(LocalDate start_date) {
		this.start_date = start_date;
	}

	public LocalDate getEnd_date() {
		return end_date;
	}

	public void setEnd_date(LocalDate end_date) {
		this.end_date = end_date;
	}

	public LocalTime getStart_time() {
		return start_time;
	}

	public void setStart_time(LocalTime start_time) {
		this.start_time = start_time;
	}

	public LocalTime getEnd_time() {
		return end_time;
	}

	public void setEnd_time(LocalTime end_time) {
		this.end_time = end_time;
	}

	public String getExam_status() {
		return exam_status;
	}

	public void setExam_status(String exam_status) {
		this.exam_status = exam_status;
	}
	
	
	public Test getTestObj() {
		return testObj;
	}


	public void setTestObj(Test testObj) {
		this.testObj = testObj;
	}


	public int getTest_id() {
		return test_id;
	}


	public void setTest_id(int test_id) {
		this.test_id = test_id;
	}


	public Admin getAdminObj() {
		return adminObj;
	}


	public void setAdminObj(Admin adminObj) {
		this.adminObj = adminObj;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	@Override
	public String toString() {
		return "ExamScheduler [escheduler_id=" + escheduler_id + ", start_date=" + start_date + ", end_date=" + end_date
				+ ", start_time=" + start_time + ", end_time=" + end_time + ", exam_status=" + exam_status + "]";
	}
	
	
	
	
}
