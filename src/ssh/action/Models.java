package ssh.action;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.repository.Deployment;
import org.junit.Test;

public class Models {
	ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
	/**
	 部署流程引擎
	 * */
	@Test
	public void deploymentProcessDefinition(){
		System.out.println("null");
		Deployment deployment = processEngine.getRepositoryService()
						.createDeployment()//创建一个部署对象
						.name("招聘申请")
						.addClasspathResource("bpmn/MyProcess.bpmn")//一次只能加载有一个文件
						.addClasspathResource("bpmn/MyProcess.png")
						.deploy();//完成部署
		System.out.println(deployment.getId());
		System.out.println(deployment.getName());
	}
}
