package ssh.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import ssh.entity.Assessment;
import ssh.entity.Recritment;
import ssh.service.RecritmentService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class RecritmentAction extends ActionSupport{
	
	/**
	 * 
	 */
	private RecritmentService recritmentService;
	public void setRecritmentService(RecritmentService recritmentService) {
		this.recritmentService = recritmentService;
	}
	private Recritment recritment;
	private int id;
	
	public Recritment getRecritment() {
		return recritment;
	}
	public void setRecritment(Recritment recritment) {
		this.recritment = recritment;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	//招聘和配置
	public String Recritment(){
			HttpServletRequest request = ServletActionContext.getRequest();
			String id = request.getParameter("id");
			System.out.println(id);
			int rid = Integer.parseInt(id);
			List rbyid = recritmentService.RecritmentList(rid);
			ActionContext ac = ActionContext.getContext();
			ac.put("rbyid", rbyid);
			System.out.println("Recruitment");
			return "success";
		}
	public String Recritment1(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		System.out.println(id);
		int rid = Integer.parseInt(id);
		List rbyid = recritmentService.RecritmentList1(rid);
		ActionContext ac = ActionContext.getContext();
		ac.put("rbyid", rbyid);
		System.out.println("Recruitment");
		return "success";
	}
	public String Recritment2(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		System.out.println(id);
		int rid = Integer.parseInt(id);
		List rbyid = recritmentService.RecritmentList2(rid);
		ActionContext ac = ActionContext.getContext();
		ac.put("rbyid", rbyid);
		System.out.println("Recruitment");
		return "success";
	}
	public String Recritment3(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		System.out.println(id);
		int rid = Integer.parseInt(id);
		List rbyid = recritmentService.RecritmentList3(rid);
		ActionContext ac = ActionContext.getContext();
		ac.put("rbyid", rbyid);
		System.out.println("Recruitment");
		return "success";
	}
	public String Recritment4(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		System.out.println(id);
		int rid = Integer.parseInt(id);
		List rbyid = recritmentService.RecritmentList4(rid);
		ActionContext ac = ActionContext.getContext();
		ac.put("rbyid", rbyid);
		System.out.println("Recruitment");
		return "success";
	}
	public String Test_01(){
		System.out.println("招聘表格");
		return "success";
	}
	public String Assessment(){
		System.out.println("考勤");
		return "success";
	}
	//招聘表单
	public Recritment addRecritment(){
		recritmentService.add(recritment);
		return null;
	}
	//修改信息
	public String recritmentChange(){
			HttpServletRequest request = ServletActionContext.getRequest();
			String id = request.getParameter("id");
			Long r = Long.parseLong(id);
			Recritment alist = recritmentService.findById(r);
			setRecritment(alist);
			return "success";
		}
	//更新
	public String update(){
			System.out.println("更新");
			recritmentService.update(recritment);
			return "success";
	}
	//删除
	public String recritmentdelete(){
			HttpServletRequest request = ServletActionContext.getRequest();
			String id = request.getParameter("id");
			int aid = Integer.parseInt(id);
			recritmentService.delete(aid);
			return "success";
		}
}
