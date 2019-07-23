package ssh.service;

import java.io.File;
import java.io.InputStream;
import java.util.List;

import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.task.Task;

public interface TransactionService{
	public void saveDeployment(String filename, File file);
	public List<Deployment> findDeploymentList();
	public List<ProcessDefinition> findProcessDefinitionList();
	public InputStream findInputStreamByImageNameAndDeploymentId(String imageName,String deploymentId);
	public void deleteDeploymentByID(String deploymentId);
	public void saveStartProcessInstance(Long id,String type);
	public List<Task> findTasklistByUser(String name);
	public String getVariables(String taskId);
	public void finishtask(String taskId);
	public void saveStartProcessAssessment(int id);
}
