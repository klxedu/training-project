package org.gtiles.training.workbench;

import java.util.ArrayList;
import java.util.List;

import org.gtiles.components.securityworkbench.service.IUIBootstrapState;
import org.gtiles.components.securityworkbench.service.UIModule;
import org.gtiles.components.securityworkbench.service.UIState;
import org.gtiles.core.module.LocalModule;
import org.gtiles.training.ComponentPlugin;
import org.springframework.stereotype.Component;

/**
 * 菜单UIState<br>
 * 定义了要打开菜单的界面及所依赖的文件，通过文件依赖的方式进行加载
 * @author SHQ
 *
 */
@Component("org.gtiles.training.workbench.ExampleMenuUIState")
public class ExampleMenuUIState implements IUIBootstrapState{

	/**
	 * 当前组件对象
	 */
	@Override
	public LocalModule getLocalModule() {
		return new ComponentPlugin();
	}

	/**
	 * 初始化菜单的配置信息<br>
	 * 1、数据库中仅定义菜单编码及菜单和菜单分组的管理<br>
	 * 2、菜单加载界面依赖的文件及路由配置，均通过该方法设置
	 */
	@Override
	public List<UIState> initModuleStateList() {
		List<UIState> list = new ArrayList<UIState>();
		UIState uiState = new UIState();
		uiState.setCtrlname("exampleCtrl");//controller名称
		uiState.setMenucode("example");//菜单编码
		uiState.setMenupage("example/index.html");//功能界面，当前类的相对路径
		uiState.setUserdata("pageTitle:''");// 传递参数，可以传到到界面state
		
		List<UIModule> moduleList = new ArrayList<UIModule>();
		UIModule module = new UIModule();
		module.setCtrlname("Module.example");//angularjs 模块名称
		module.setFilelist("example/exampleService.js,example/exampleCtrl.js");//异步加载文件列表，包含html对应的controller.js service.js 及依赖的其他文件,当前类的相对路径
		moduleList.add(module);
		uiState.setModulelist(moduleList);
		list.add(uiState);
		return list;
	}
}
