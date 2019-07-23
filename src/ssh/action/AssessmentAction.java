package ssh.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import ssh.entity.Assessment;
import ssh.service.AssessmentService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 考勤管理
 * @author Lin
 *
 */
@SuppressWarnings("serial")
public class AssessmentAction extends ActionSupport{

	/**
	 * 
	 */
	private AssessmentService assessmentService;
	private Assessment assessment;
	public Assessment getAssessment() {
		return assessment;
	}

	public void setAssessmentService(AssessmentService assessmentService) {
		this.assessmentService = assessmentService;
	}

	public void setAssessment(Assessment assessment) {
		this.assessment = assessment;
	}
	public String Assessment(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List alist = assessmentService.AssessmentList(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("alist", alist);
		System.out.println("考勤action");
		return "success";
	}
	public String Assessment2(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List alist = assessmentService.AssessmentList2(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("alist", alist);
		return "success";
	}
	public String Assessment3(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List alist = assessmentService.AssessmentList3(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("alist", alist);
		return "success";
	}
	public String Assessment4(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List alist = assessmentService.AssessmentList4(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("alist", alist);
		return "success";
	}
	public String Assessment5(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List alist = assessmentService.AssessmentList5(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("alist", alist);
		return "success";
	}
	public String Assessment6(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List alist = assessmentService.AssessmentList6(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("alist", alist);
		return "success";
	}
	public String Table_assessment(){
		System.out.println("出差申请表");
		return "success";
	}
	//出差表单
	public String addAssessment(){
		System.out.println("addAction");
		//添加申请
		assessmentService.add(assessment);
		//读取当前处于申请状态的表单
		List list = assessmentService.findId();
		ActionContext ac = ActionContext.getContext();
		ac.put("list", list);
		return "success";
	}
	//修改信息
	public String assessmentChange(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int aid = Integer.parseInt(id);
		Assessment alist = assessmentService.findById(aid);
		setAssessment(alist);
		return "success";
	}
	//删除
	public String assessmentdelete(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int aid = Integer.parseInt(id);
		assessmentService.delete(aid);
		return "success";
	}
	//更新
	public String update(){
		System.out.println("更新");
		assessmentService.update(assessment);
		return "success";
	}
}
