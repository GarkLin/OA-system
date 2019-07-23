package ssh.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipInputStream;

import org.activiti.engine.FormService;
import org.activiti.engine.HistoryService;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.task.Task;

import ssh.dao.AssessmentDao;
import ssh.dao.RecritmentDao;
import ssh.dao.TransactionDao;
import ssh.entity.Assessment;
import ssh.entity.Recritment;
import ssh.entity.User;
import ssh.test.SessionContext;

public class TransactionServiceImpl implements TransactionService {

	private TransactionDao transactionDao;

	private RecritmentDao recritmentDao;

	private AssessmentDao assessmentDao;

	public void setAssessmentDao(AssessmentDao assessmentDao) {
		this.assessmentDao = assessmentDao;
	}

	public void setRecritmentDao(RecritmentDao recritmentDao) {
		this.recritmentDao = recritmentDao;
	}

	private RepositoryService repositoryService;

	private RuntimeService runtimeService;

	private TaskService taskService;

	private FormService formService;

	private HistoryService historyService;

	public void setRepositoryService(RepositoryService repositoryService) {
		this.repositoryService = repositoryService;
	}

	public void setRuntimeService(RuntimeService runtimeService) {
		this.runtimeService = runtimeService;
	}

	public void setTaskService(TaskService taskService) {
		this.taskService = taskService;
	}

	public void setFormService(FormService formService) {
		this.formService = formService;
	}

	public void setHistoryService(HistoryService historyService) {
		this.historyService = historyService;
	}

	public void setTransactionDao(TransactionDao transactionDao) {
		this.transactionDao = transactionDao;
	}

	/*
	 * 获取部署对象
	 */
	@Override
	public List<Deployment> findDeploymentList() {
		// TODO Auto-generated method stub
		System.out.println("find1");
		List<Deployment> dList = repositoryService.createDeploymentQuery()// 创建部署对象的查询
				.orderByDeploymenTime().asc()// 按照部署时间排列
				.list();
		return dList;
	}

	@Override
	public void saveDeployment(String filename, File file) {
		// TODO Auto-generated method stub
		try {
			// 将File类型转换成zip格式
			ZipInputStream zipInputStream = new ZipInputStream(
					new FileInputStream(file));
			// 2.部署流程定义，使用zip格式的输入流完成部署
			repositoryService.createDeployment()// 创建部署对象
					.name(filename)// 设置部署的名称
					.addZipInputStream(zipInputStream)// 使用zip输入流
					.deploy();// 完成部署
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("success");
	}

	/**
	 * 查询流程定义表
	 * */
	@Override
	public List<ProcessDefinition> findProcessDefinitionList() {
		// TODO Auto-generated method stub
		List<ProcessDefinition> pList = repositoryService
				.createProcessDefinitionQuery().list();
		return pList;
	}

	@Override
	public InputStream findInputStreamByImageNameAndDeploymentId(
			String imageName, String deploymentId) {
		// TODO Auto-generated method stub
		InputStream inputStream = repositoryService.getResourceAsStream(
				deploymentId, imageName);
		return inputStream;
	}

	/**
	 * 强制删除
	 * */
	@Override
	public void deleteDeploymentByID(String deploymentId) {
		// TODO Auto-generated method stub
		repositoryService.deleteDeployment(deploymentId, true);
	}

	/**
	 * 启动流程
	 * **/
	@Override
	public void saveStartProcessInstance(Long id, String type) {
		// TODO Auto-generated method stub
		System.out.println("sava");
		System.out.println(id);
		System.out.println(type);
		int types = Integer.parseInt(type);
		if (types == 1) {
			System.out.println("启动招聘");
			Recritment recritment = recritmentDao.findById(id);
			System.out.println("sava2");
			System.out.println(recritment.getRecritment_id());
			if (recritment.getSta() == 0) {
				// 把long强制转换
				int ids = id.intValue();
				Map<String, Object> variables = new HashMap<String, Object>();
				// 状态改变为1，表示审核中
				recritment.setSta(1);
				// update数据
				recritmentDao.updateSta(recritment);
				System.out.println(recritment.getSta());
				User user = SessionContext.get();
				variables.put("inputUser", user.getName());
				String classType = recritment.getClass().getSimpleName();
				String objId = classType + "." + id;
				variables.put("objId", objId);
				// 部署的流程key
				String processDefinitionKey = "helloworld";
				runtimeService.startProcessInstanceByKey(processDefinitionKey,
						objId, variables);
				System.out.println(processDefinitionKey);
				System.out.println(objId);
				System.out.println(variables);
			}
			}else{
				System.out.println("启动出差");
				int aid = id.intValue();
				Assessment assessment = assessmentDao.findById(aid);
					Map<String, Object> variables = new HashMap<String, Object>();
					// 状态改变为1，表示审核中
					assessment.setAsta(1);
					// update数据
					assessmentDao.update(assessment);
					System.out.println(assessment.getAsta());
					User user = SessionContext.get();
					variables.put("inputUser", user.getName());
					String classType = assessment.getClass().getSimpleName();
					String objId = classType + "." + id;
					variables.put("objId", objId);
					// 部署的流程key
					String processDefinitionKey = "helloworld";
					runtimeService.startProcessInstanceByKey(
							processDefinitionKey, objId, variables);
					System.out.println(processDefinitionKey);
					System.out.println(objId);
					System.out.println(variables);
				}
		}

	/**
	 * 出差事务
	 ***/
	@Override
	public void saveStartProcessAssessment(int id) {
		// TODO Auto-generated method stub
		System.out.println("出差事务");
		Assessment assessment = assessmentDao.findById(id);
		if (assessment.getId() == 0) {
			Map<String, Object> variables = new HashMap<String, Object>();
			assessment.setId(1);
			assessmentDao.update(assessment);
			System.out.println(assessment.getId());
			User user = SessionContext.get();
			variables.put("inputUser", user.getName());
			String classType = assessment.getClass().getSimpleName();
			String objId = classType + "." + id;
			variables.put("objId", objId);
			String processDefinitionKey = "helloworld";
			runtimeService.startProcessInstanceByKey(processDefinitionKey,
					objId, variables);
		}
	}

	/**
	 * 提交后的任务管理
	 * **/
	@Override
	public List<Task> findTasklistByUser(String name) {
		// TODO Auto-generated method stub
		// ru_task表关联
		List<Task> list = taskService.createTaskQuery()// 创建任务查询对象
				.taskAssignee(name)// 指定个人任务的办理人
				.orderByTaskCreateTime().desc()// 按照时间降序排列
				.list();
		return list;
	}

	/**
	 * 获取到正在执行任务的业务关联
	 * 
	 * @return
	 **/
	@Override
	public String getVariables(String taskId) {
		// TODO Auto-generated method stub
		// 获取到ru_variable的text值
		String objid = (String) taskService.getVariable(taskId, "objId");
		return objid;
	}

	// 完成任务
	@Override
	public void finishtask(String taskId) {
		// TODO Auto-generated method stub
		taskService.complete(taskId);
		System.out.println("任务完成id" + taskId);
	}

}
