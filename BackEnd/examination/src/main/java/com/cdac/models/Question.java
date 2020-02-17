package com.cdac.models;

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
@Table(name="question")
public class Question {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "question_generator")
	@SequenceGenerator(name="question_generator",initialValue=1,allocationSize=1)
	@Column(name="question_id")
	private int qId;
	
	@Column(name="quest_desc")
	private String question;
	
	@Column(name="optionA")
	private String optionA;
	
	@Column(name="optionB")
	private String optionB;
	
	@Column(name="optionC")
	private String optionC;
	
	@Column(name="optionD")
	private String optionD;
	
	@Column(name="correct_ans")
	private String correct_ans;
	
	@Column(name="marks")
	public int marks;
	
	@ManyToOne
	@JoinColumn(name="subject_id",insertable=false,updatable=false)
	private Subject subjectObj;
	
	private int subject_id;
	
	@ManyToOne
	@JoinColumn(name="email",insertable=false,updatable=false)
	Admin adminObj;
	
	private String email;

	public Question() {
		super();
	}

	public Question(int qId, String question, String optionA, String optionB, String optionC, String optionD,
			String correct_ans, int marks, Subject subjectObj, int subject_id, Admin adminObj, String email) {
		super();
		this.qId = qId;
		this.question = question;
		this.optionA = optionA;
		this.optionB = optionB;
		this.optionC = optionC;
		this.optionD = optionD;
		this.correct_ans = correct_ans;
		this.marks = marks;
		this.subjectObj = subjectObj;
		this.subject_id = subject_id;
		this.adminObj = adminObj;
		this.email = email;
	}

	public int getqId() {
		return qId;
	}

	public void setqId(int qId) {
		this.qId = qId;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
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

	public String getCorrect_ans() {
		return correct_ans;
	}

	public void setCorrect_ans(String correct_ans) {
		this.correct_ans = correct_ans;
	}

	public int getMarks() {
		return marks;
	}

	public void setMarks(int marks) {
		this.marks = marks;
	}

	public Subject getSubjectObj() {
		return subjectObj;
	}

	public void setSubjectObj(Subject subjectObj) {
		this.subjectObj = subjectObj;
	}

	public int getSubject_id() {
		return subject_id;
	}

	public void setSubject_id(int subject_id) {
		this.subject_id = subject_id;
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
		return "Question [qId=" + qId + ", question=" + question + ", optionA=" + optionA + ", optionB=" + optionB
				+ ", optionC=" + optionC + ", optionD=" + optionD + ", correct_ans=" + correct_ans + ", marks=" + marks
				+ ", subjectObj=" + subjectObj + ", subject_id=" + subject_id + ", adminObj=" + adminObj + ", email="
				+ email + "]";
	}

	

}
