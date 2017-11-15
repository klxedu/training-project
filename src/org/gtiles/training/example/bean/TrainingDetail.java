package org.gtiles.training.example.bean;

import java.io.Serializable;

public class TrainingDetail implements Serializable{

	private static final long serialVersionUID = 7393387708178846205L;
	private String trainingDetailId;
	private String signLocation;
	private String courseName;
	private String teacher;
	private String trainingUserId;
	/**
	 * @return the trainingDetailId
	 */
	public String getTrainingDetailId() {
		return trainingDetailId;
	}
	/**
	 * @param trainingDetailId the trainingDetailId to set
	 */
	public void setTrainingDetailId(String trainingDetailId) {
		this.trainingDetailId = trainingDetailId;
	}
	/**
	 * @return the signLocation
	 */
	public String getSignLocation() {
		return signLocation;
	}
	/**
	 * @param signLocation the signLocation to set
	 */
	public void setSignLocation(String signLocation) {
		this.signLocation = signLocation;
	}
	/**
	 * @return the courseName
	 */
	public String getCourseName() {
		return courseName;
	}
	/**
	 * @param courseName the courseName to set
	 */
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	/**
	 * @return the teacher
	 */
	public String getTeacher() {
		return teacher;
	}
	/**
	 * @param teacher the teacher to set
	 */
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	/**
	 * @return the trainingUserId
	 */
	public String getTrainingUserId() {
		return trainingUserId;
	}
	/**
	 * @param trainingUserId the trainingUserId to set
	 */
	public void setTrainingUserId(String trainingUserId) {
		this.trainingUserId = trainingUserId;
	}
	
	
}
