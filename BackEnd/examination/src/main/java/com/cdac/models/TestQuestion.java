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
@Table(name="test_question")
public class TestQuestion {


	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "tquestion_generator")
	@SequenceGenerator(name="tquestion_generator",initialValue=1,allocationSize=1)
	@Column(name="test_qid")
	private int testQId;
	
	@Column(name="question_desc")
	private String question_desc;
	
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
	private int assigned_marks;
	
	
	@ManyToOne
	@JoinColumn(name="test_id",insertable=false,updatable=false)
	Test testObj;
	
	private int test_id;
	
	@ManyToOne
	@JoinColumn(name="email",insertable=false,updatable=false)
	Admin adminObj;
	
	private String email;

	
	public TestQuestion() {
		super();
	}

	public TestQuestion(int testQId, String question_desc, String optionA, String optionB, String optionC,
			String optionD, String correct_ans, int assigned_marks, int test_id,
			 String email) {
		super();
		this.testQId = testQId;
		this.question_desc = question_desc;
		this.optionA = optionA;
		this.optionB = optionB;
		this.optionC = optionC;
		this.optionD = optionD;
		this.correct_ans = correct_ans;
		this.assigned_marks = assigned_marks;
		//this.testObj = testObj;
		this.test_id = test_id;
		//this.adminObj = adminObj;
		this.email = email;
	}

	public int getTestQId() {
		return testQId;
	}

	public void setTestQId(int testQId) {
		this.testQId = testQId;
	}

	public String getQuestion_desc() {
		return question_desc;
	}

	public void setQuestion_desc(String question_desc) {
		this.question_desc = question_desc;
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

	public int getAssigned_marks() {
		return assigned_marks;
	}

	public void setAssigned_marks(int assigned_marks) {
		this.assigned_marks = assigned_marks;
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
		return "TestQuestion [testQId=" + testQId + ", question_desc=" + question_desc + ", optionA=" + optionA
				+ ", optionB=" + optionB + ", optionC=" + optionC + ", optionD=" + optionD + ", correct_ans="
				+ correct_ans + ", assigned_marks=" + assigned_marks + ", testObj=" + testObj + ", test_id=" + test_id
				+ ", adminObj=" + adminObj + ", email=" + email + "]";
	}

	
}
