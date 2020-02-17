package com.cdac.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="questions")
public class Questions {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="question_id")
	private int questionId;
	
	@Column(name="question")
	private String QuestionDesc;
	
	@Column(name="optionA")
	private String optionA;
	
	@Column(name="optionB")
	private String optionB;
	
	@Column(name="optionC")
	private String optionC;
	
	@Column(name="optionD")
	private String optionD;
	
	@Column(name="correctAns")
	private String correctAns;
	
	@ManyToOne
	@JoinColumn(name="subject_id",insertable=false,updatable=false)
	Subject subjectObj;

	private String subject_id;
	
	
	public Questions() {
		super();
	}

	public Questions(int questionId, String questionDesc, String optionA, String optionB, String optionC,
			String optionD, String correctAns, Subject subjectObj, String subject_id) {
		super();
		this.questionId = questionId;
		QuestionDesc = questionDesc;
		this.optionA = optionA;
		this.optionB = optionB;
		this.optionC = optionC;
		this.optionD = optionD;
		this.correctAns = correctAns;
		this.subjectObj = subjectObj;
		this.subject_id = subject_id;
	}
	
	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	public String getQuestionDesc() {
		return QuestionDesc;
	}
	public void setQuestionDesc(String questionDesc) {
		QuestionDesc = questionDesc;
	}
	public String getOptionA() {
		return optionA;
	}
	public void setOptionA(String optionA) {
		this.optionA = optionA;
	}
	public String getOptionB() {
		return optionB;
	}
	public void setOptionB(String optionB) {
		this.optionB = optionB;
	}
	public String getOptionC() {
		return optionC;
	}
	public void setOptionC(String optionC) {
		this.optionC = optionC;
	}
	public String getOptionD() {
		return optionD;
	}
	public void setOptionD(String optionD) {
		this.optionD = optionD;
	}
	public String getCorrectAns() {
		return correctAns;
	}
	public void setCorrectAns(String correctAns) {
		this.correctAns = correctAns;
	}
	public Subject getSubjectObj() {
		return subjectObj;
	}
	public void setSubjectObj(Subject subjectObj) {
		this.subjectObj = subjectObj;
	}
	
	public String getSubject_id() {
		return subject_id;
	}

	public void setSubject_id(String subject_id) {
		this.subject_id = subject_id;
	}

	@Override
	public String toString() {
		return "Questions [questionId=" + questionId + ", QuestionDesc=" + QuestionDesc + ", optionA=" + optionA
				+ ", optionB=" + optionB + ", optionC=" + optionC + ", optionD=" + optionD + ", correctAns="
				+ correctAns + ", subjectObj=" + subjectObj + ", subject_id=" + subject_id + "]";
	}
	
}
