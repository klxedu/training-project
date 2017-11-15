package org.gtiles.training.example.web;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gtiles.core.web.OperatingType;
import org.gtiles.core.web.annotation.ModuleOperating;
import org.gtiles.core.web.annotation.ModuleResource;
import org.gtiles.core.web.validator.Valid;
import org.gtiles.training.example.bean.TrainingUser;
import org.gtiles.training.example.bean.TrainingUserQuery;
import org.gtiles.training.example.service.ITrainingUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 培训用户对象controller<br>
 * 在controller的方法中通过注解的方式会实现Token验证、服务端校验、权限点控制、审计日志功能<br>
 * {@code @ModuleResource} 定义模块名称，{@code @ModuleOperating} 定义操作名称，通过注解来自动实现以上服务<br>
 * <strong>Token验证实现</strong> <br>
 * 见{@link #findById(String, HttpServletRequest, HttpServletResponse, Model)}
 * 及{@link #saveOrUpdate(TrainingUser, HttpServletRequest, HttpServletResponse, Model)}注释部分说明 <br>
 * <strong>服务端校验</strong> <br>
 * 1、见{@link #saveOrUpdate(TrainingUser, HttpServletRequest, HttpServletResponse, Model)}注释部分说明 <br>
 * 2、在对应的校验对象的get方法上增加校验注解，例如：{@link TrainingUser#getName()} <br>
 * <strong>权限点控制</strong> <br>
 * 1、需要初始化权限点SQL<br>
 * 2、指定的权限点编码要与controller操作方法的{@code @ModuleOperating}的code保持一致。<br>
 * 3、在界面上对权限点进行是否显示控制。<br>
 * <strong>审计日志功能</strong> <br>
 * 1、需要初始化权限点SQL，并开启审计日志功能。 <br>
 * 2、指定的权限点编码要与controller操作方法的{@code @ModuleOperating}的code保持一致。<br>
 * @author SHQ
 *
 */
@Controller("org.gtiles.training.example.web.TrainingUserController")
@RequestMapping("/trainingUser")
@ModuleResource(code="example",name="培训对象")
public class TrainingUserController {

	@Autowired
	private ITrainingUserService trainingUserService;
	
	/**
	 * 列表查询
	 * @param query 查询对象
	 * @return
	 */
	@RequestMapping("/findList")
	@ModuleOperating(code="example-find",type=OperatingType.FindList,name="培训用户列表查询")
	public String findList(TrainingUserQuery query,HttpServletRequest request,HttpServletResponse response,Model model) {
		query.setResultList(trainingUserService.findListByPage(query));
		return "";
	}
	
	/**
	 * 单个对象查询
	 * @WebToken(handle=TokenHandleType.GENERATE,verifymethod="/saveOrUpdate") 生成token并在 saveOrUpdate方法执行时校验token
	 * @param id
	 * @return
	 */
	@RequestMapping("/findById")
//	@WebToken(handle=TokenHandleType.GENERATE,verifymethod="/saveOrUpdate")
	@ModuleOperating(code="example-find",type=OperatingType.FindList,name="培训对象查询")
	public String findById(String id,HttpServletRequest request,HttpServletResponse response,Model model) {
		TrainingUser trainingUser = trainingUserService.findById(id);
		trainingUser.setCreateTime(null);
		model.addAttribute(trainingUser);
		return "";
	}
	
	/**
	 * 新增或修改 <br>
	 * @Valid 服务端校验注解，包含该注解的对象会进行服务端校验 <br>
	 * @WebToken token校验，包含此注解的对象会进行token校验，包含校验必须在校验前先生成Token<br>
	 * @param trainingUser
	 * @return
	 */
	@RequestMapping("/saveOrUpdate")
//	@WebToken(handle=TokenHandleType.VERIFY)
	@ModuleOperating(code="example-manage",type=OperatingType.Save,name="培训对象新增或更新")
	public String saveOrUpdate(@Valid TrainingUser trainingUser,HttpServletRequest request,HttpServletResponse response,Model model) {
		if(trainingUser.getTrainingUserId()!=null && !"".equals(trainingUser.getTrainingUserId())) {
			trainingUserService.updateTrainingUser(trainingUser);
		}else {
			trainingUser.setCreateTime(new Date());
			trainingUserService.addTrainingUser(trainingUser);
		}
		model.addAttribute(trainingUser);
		return "";
	}
}
