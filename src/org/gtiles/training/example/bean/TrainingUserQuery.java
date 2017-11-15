package org.gtiles.training.example.bean;

import org.gtiles.core.service.Query;

/**
 * 查询对象对象<br>
 * 需要继承{@link org.gtiles.core.service.Query}
 * @author SHQ
 *
 */
public class TrainingUserQuery extends Query<TrainingUser>{

	private String queryName;//姓名

	/**
	 * @return the queryName
	 */
	public String getQueryName() {
		return queryName;
	}

	/**
	 * @param queryName the queryName to set
	 */
	public void setQueryName(String queryName) {
		this.queryName = queryName;
	}
	
	
}
