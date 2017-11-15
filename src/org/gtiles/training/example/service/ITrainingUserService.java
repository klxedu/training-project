package org.gtiles.training.example.service;

import java.util.List;

import org.gtiles.training.example.bean.TrainingUser;
import org.gtiles.training.example.bean.TrainingUserQuery;

/**
 * 培训用户对象接口
 * @author SHQ
 *
 */
public interface ITrainingUserService {
	
	/**
	 * 培训用户翻页列表查询<br>
	 * 以ByPage结尾的查询方法，系统默认会处理翻页
	 * @param query 查询对象
	 * @return
	 */
	List<TrainingUser> findListByPage(TrainingUserQuery query);
	
	/**
	 * 添加培训用户
	 * @param trainingUser 培训用户对象
	 */
	void addTrainingUser(TrainingUser trainingUser);
	
	/**
	 * 更新培训用户
	 * @param trainingUser 培训用户对象
	 * @return 操作条数
	 */
	int updateTrainingUser(TrainingUser trainingUser);
	
	/**
	 * 删除培训用户数据
	 * @param ids 培训用户ID数组
	 * @return 操作条数
	 */
	int deleteByIds(String[] ids);
	
	/**
	 * 查询培训用户
	 * @param id 培训用户id
	 * @return 返回培训用户
	 */
	TrainingUser findById(String id);
}
