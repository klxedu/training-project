package org.gtiles.training.example.bean;

import java.io.Serializable;
import java.util.Date;

import org.gtiles.core.web.validator.annotation.Email;
import org.gtiles.core.web.validator.annotation.NotNull;

/**
 * 培训用户 <br>
 * 在对象get方法上会进行服务端校验规则定义，如下：{@link #getName()} {@link #getDept()} {@link #getEmail()}<br>
 * @author SHQ
 *
 */
public class TrainingUser implements Serializable{

	private static final long serialVersionUID = -5102071398301211898L;
	private String trainingUserId;//主键
	private String name;//姓名
	private String dept;//部门
	private String mobilePhone;//手机号
	private String email;//邮箱
	private Date createTime;//创建时间
	
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
	/**
	 * @NotNull 服务端非空校验注解，其他服务端校验注解请见组件开发文档
	 * @return the name
	 */
	@NotNull(fieldName="name",fieldDesc="姓名",message="姓名不能为空")
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the dept
	 */
	@NotNull(fieldName="dept",fieldDesc="部门",message="部门不能为空")
	public String getDept() {
		return dept;
	}
	/**
	 * @param dept the dept to set
	 */
	public void setDept(String dept) {
		this.dept = dept;
	}
	/**
	 * @return the mobilePhone
	 */
	public String getMobilePhone() {
		return mobilePhone;
	}
	/**
	 * @param mobilePhone the mobilePhone to set
	 */
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	/**
	 * @return the email
	 */
	@Email(fieldName="email",fieldDesc="邮件",message="邮件格式不正确")
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the createTime
	 */
	public Date getCreateTime() {
		return createTime;
	}
	/**
	 * @param createTime the createTime to set
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	
}
