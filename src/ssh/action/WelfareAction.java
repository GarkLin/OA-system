package ssh.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import ssh.service.AssessmentService;
import ssh.service.WelfareService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import ssh.entity.Welfare;
/**
 * 福利和关怀
 * @author Lin
 *
 */
@SuppressWarnings("serial")
public class WelfareAction extends ActionSupport{

	/**
	 * 福利Service
	 */
	private WelfareService welfareService;
	private Welfare welfare;
	public Welfare getWelfare() {
		return welfare;
	}
	public void setWelfare(Welfare welfare) {
		this.welfare = welfare;
	}
	public void setWelfareService(WelfareService welfareService) {
		this.welfareService = welfareService;
	}
	public String Welfare(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List alist = welfareService.WelfareList(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("alist", alist);
		System.out.println("福利action");
		return "success";
	}
	public String Welfare2(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List alist = welfareService.WelfareList2(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("alist", alist);
		System.out.println("福利action");
		return "success";
	}
	public String Welfare3(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List alist = welfareService.WelfareList3(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("alist", alist);
		System.out.println("福利action");
		return "success";
	}
	public String Welfare4(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List alist = welfareService.WelfareList4(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("alist", alist);
		System.out.println("福利action");
		return "success";
	}
	public String Table_welfare(){
		System.out.println("劳动合同表");
		return "success";
	}
	public String addWelfare(){
		System.out.println("提交test");
		welfareService.addWelfare(welfare);
		return "success";
	}
}
