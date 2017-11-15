package org.gtiles.training.example.service.impl;

import java.util.List;

import org.gtiles.training.example.bean.TrainingUser;
import org.gtiles.training.example.bean.TrainingUserQuery;
import org.gtiles.training.example.dao.ITrainingUserDao;
import org.gtiles.training.example.service.ITrainingUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("org.gtiles.training.example.service.impl.TrainingUserServiceImpl")
public class TrainingUserServiceImpl implements ITrainingUserService {

	@Autowired
	private ITrainingUserDao trainingUserDao;
	
	@Override
	public List<TrainingUser> findListByPage(TrainingUserQuery query) {
		return trainingUserDao.findListByPage(query);
	}

	@Override
	public void addTrainingUser(TrainingUser trainingUser) {
		trainingUserDao.addTrainingUser(trainingUser);
	}

	@Override
	public int updateTrainingUser(TrainingUser trainingUser) {
		return trainingUserDao.updateTrainingUser(trainingUser);
	}

	@Override
	public int deleteByIds(String[] ids) {
		return trainingUserDao.deleteByIds(ids);
	}

	@Override
	public TrainingUser findById(String id) {
		return trainingUserDao.findById(id);
	}

}
