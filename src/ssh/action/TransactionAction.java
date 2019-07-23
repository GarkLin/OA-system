package ssh.action;


import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.task.Task;
import org.apache.struts2.ServletActionContext;

import ssh.entity.Assessment;
import ssh.entity.Recritment;
import ssh.entity.Review;
import ssh.entity.User;
import ssh.service.AssessmentService;
import ssh.service.RecritmentService;
import ssh.service.ReviewService;
import ssh.service.TransactionService;
import ssh.test.SessionContext;










import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class TransactionAction extends ActionSupport implements ModelDriven<WorkflowBean>{
	private TransactionService transactionService;
	private RecritmentService recritmentService;
	private ReviewService reviewService;
	private AssessmentService assessmentService;
	public void setAssessmentService(AssessmentService assessmentService) {
		this.assessmentService = assessmentService;
	}
	private Review review;
 	public Review getReview() {
		return review;
	}
	public void setReview(Review review) {
		this.review = review;
	}
	public void setReviewService(ReviewService reviewService) {
		this.reviewService = reviewService;
	}
	public void setRecritmentService(RecritmentService recritmentService) {
		this.recritmentService = recritmentService;
	}
	private WorkflowBean workflowBean = new WorkflowBean();
	
	public void setTransactionService(TransactionService transactionService) {
		this.transactionService = transactionService;
	}
	@Override
	public WorkflowBean getModel() {
		return workflowBean;
	}
	public String Transaction(){
		System.out.println("我的事务");
		return "success";
	}
	public String myList(){
		System.out.println("部署管理");
		//获取dList数据
		List<Deployment> dList = transactionService.findDeploymentList();
		//获取pList数据
		List<ProcessDefinition> pList = transactionService.findProcessDefinitionList();
		ActionContext ac = ActionContext.getContext();
		ac.put("dList", dList);
		ac.put("pList", pList);
		return "success";
	}
	public String newdeploy(){
		//1：获取页面传递的流程名称和流程文件（File类型）
		//流程名称
		String filename = workflowBean.getFilename();
		System.out.println(filename);
		//流程文件（File类型）
		File file = workflowBean.getFile();
		System.out.println(file);
		//完成部署
		transactionService.saveDeployment(filename,file);
		return "success";
	}
	/*
	 * 查看bpmn.png
	 * **/
	public String viewImage() throws Exception{
		String imageName = workflowBean.getImageName();
		String deploymentId = workflowBean.getDeploymentId();
		InputStream in = transactionService.findInputStreamByImageNameAndDeploymentId(imageName,deploymentId);
		HttpServletResponse response = ServletActionContext.getResponse();
		OutputStream out =response.getOutputStream();
		for(int b=-1;(b=in.read())!=-1;){
			out.write(b);
		}
		out.close();
		in.close();
		return null;
	}
	/*
	 * 删除部署任务
	 * **/
	public String delDeployment(){
		String deploymentId = workflowBean.getDeploymentId();
		//使用部署对象ID，删除流程定义（级联删除）
		transactionService.deleteDeploymentByID(deploymentId);
		return "success";
	}
	/**
	 * 待处理的事务
	 * */
	public String myWait(){
		System.out.println("待处理的事务");
		ActionContext ac = ActionContext.getContext();
			//招聘申请
			List sList = recritmentService.findSta();
			System.out.println("招聘申请");
			ac.put("sList", sList);
			//出差申请
			List sLists =assessmentService.findId();
			System.out.println("出差申请");
			ac.put("sList", sList);
			ac.put("sLists", sLists);
		return "success";
	}
	/**
	 * 开始事务
	 * */
	public String startProcess(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		String type = request.getParameter("way");
		Long ids = Long.valueOf(id);
		transactionService.saveStartProcessInstance(ids,type);
		return "success";
	}
	/**
	 * 出差事务
	 * **/
	public String startProcessAssessment(){
		Long id = workflowBean.getId();
		int ids = id.intValue();
		System.out.println(id);
		transactionService.saveStartProcessAssessment(ids);
		return "success";
	}
	/**
	 * 办理任务列表
	 * **/
	public String listTask(){
		User user = SessionContext.get();
		//获取任务的办理人
		String name = user.getName();
		//2：使用任务的办理人，查询任务表，指定个人任务，返回List<Task>
		List<Task> taskList = transactionService.findTasklistByUser(name);
		ActionContext ac = ActionContext.getContext();
		ac.put("taskList", taskList);
		return "success";
	}
	/**
	 * 提交任务列表
	 * **/
	public String viewTaskForm(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("taskid");
		System.out.println(id);
		//得到业务关联的id
		String rId = transactionService.getVariables(id);
		//解析数据,\\转译.
		String[] rids = rId.split("\\.");
		String[] rString = new String[2];
		for(int i = 0;i<rids.length;i++){
			rString[i] = rids[i];
			System.out.println(rString[i]);
		}
		String rid = rString[1];
		String rname = rString[0];
		System.out.println(rid);
		System.out.println(rname);
		Recritment rtask = null;
		Assessment atask = null;
		String str1 = "Recritment";
		//查询数据显示在网页上
		System.out.println("********");
		System.out.println(rname.equals(str1));
		if(rname.equals(str1)){
			//查询数据显示在网页上
			System.out.println("RECRITMENT");
			Long r = Long.parseLong(rid);
			rtask = recritmentService.findById(r);
		}else{
			int aid = Integer.parseInt(rid);
			atask = assessmentService.findById(aid);
			System.out.println("ASSESSMENT");
		}
		//获取到历史执行审批记录
		List<Review> reviewList = reviewService.allReviewList();
		ActionContext ac = ActionContext.getContext();
		ac.put("rtask", rtask);
		ac.put("atask", atask);
		ac.put("reviewList", reviewList);
		System.out.println(rId);
		return "success";
	}
	/*
	 *出差view
	 * */
	public String viewTaskForm2(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("taskid");
		System.out.println(id);
		//得到业务关联的id
		String rId = transactionService.getVariables(id);
		//解析数据,\\转译.
		String[] rids = rId.split("\\.");
		String[] rString = new String[2];
		for(int i = 0;i<rids.length;i++){
			rString[i] = rids[i];
			System.out.println(rString[i]);
		}
		String rid = rString[1];
		String rname = rString[0];
		System.out.println(rid);
		System.out.println(rname);
		//查询数据显示在网页上
		int r = Integer.parseInt(id);
		Assessment rtask = assessmentService.findById(r);
		//获取到历史执行审批记录
		List<Review> reviewList = reviewService.allReviewList();
		ActionContext ac = ActionContext.getContext();
		ac.put("rtask", rtask);
		ac.put("reviewList", reviewList);
		System.out.println(rId);
		return "success";
	}
	/**
	 *出差viewList 
	 **/
	public String listTask2(){
		User user = SessionContext.get();
		//获取任务的办理人
		String name = user.getName();
		//2：使用任务的办理人，查询任务表，指定个人任务，返回List<Task>
		List<Task> taskList = transactionService.findTasklistByUser(name);
		ActionContext ac = ActionContext.getContext();
		ac.put("taskList", taskList);
		return "success";
	}
	//完成任务
	public String finishtask(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("taskid");
		String name = request.getParameter("name");
		System.out.println(name);
		String fname = "王五";
		String fyaoqiu = "招聘申请";
		//添加批注信息
		reviewService.addReview(review);
		//查到索引名称
		Review review = reviewService.findById(id);
		String rname = review.getYaoqiu();
		System.out.println("类型："+review.getType_id());
		String tid = review.getType_id();
		System.out.println("录入审核信息go");
		transactionService.finishtask(id);
		System.out.println("更新状态");
		if(name.equals(fname)==true){
			if(rname.equals(fyaoqiu)){
				//如果是招聘申请，更新状态
				System.out.println("更新sta");
				long ids = Long.parseLong(tid);
				Recritment recritment = recritmentService.findById(ids);
				recritment.setSta(3);
				recritmentService.update(recritment);
			}else{
				System.out.println("更新asta");
				int aid = Integer.parseInt(tid);
				Assessment assessment = assessmentService.findById(aid);
				assessment.setAsta(3);
				assessmentService.update(assessment);	
			}
		}else{
			System.out.println("不是最终审批员");
		}
		return "success";
	}
}
