package org.gtiles.training;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.gtiles.core.module.LocalModuleAdapter;
import org.gtiles.core.module.infofield.DependencyModule;
import org.gtiles.core.module.infofield.Developer;
import org.gtiles.core.module.infofield.Version;

/**
 * 插件类<br>
 * 已Gtiles为开发平台搭建的项目，必须有唯一的插件类，以包结构为唯一标识
 * @author SHQ
 *
 */
public class ComponentPlugin extends LocalModuleAdapter implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 开发者定义
	 */
	@Override
	public Developer[] developers() {
		return new Developer[] { new Developer("Gtiles", "Gtiles@gtiles.com") };
	}

	/**
	 * 检查是否安装对应的数据表
	 */
	@Override
	public boolean checkInstall() {
		return super.tableExist("TRAINING_USER");
	}

	/**
	 * 组件名称
	 */
	@Override
	public String name() {
		return "培训项目";
	}

	/**
	 * 组件版本号
	 */
	@Override
	public Version version() {
		Version current = new Version(1, 0, 0);
		return current;
	}

	@Override
	public boolean checkStatus() {
		return true;
	}
	
	/**
	 * 组件依赖
	 */
	@Override
	public DependencyModule[] dependencyModules() {
		List<DependencyModule> dependencyModuleList = new ArrayList<DependencyModule>();
		dependencyModuleList.add(new DependencyModule("org.gtiles.components.securityworkbench"));
		return dependencyModuleList.toArray(new DependencyModule[] {});
	}
}
