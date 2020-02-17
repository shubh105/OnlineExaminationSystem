package com.cdac.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="subject")
public class Subject {

	@Column(name="subject_name")
	private String subjectName;
	@Id
	@Column(name="subject_id")
	private String subjectId;
	
	public Subject() {
		super();
	}

	public Subject(String subjectName, String subjectId) {
		super();
		this.subjectName = subjectName;
		this.subjectId = subjectId;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}

	@Override
	public String toString() {
		return "Subject [subjectName=" + subjectName + ", subjectId=" + subjectId + "]";
	}
	
}
