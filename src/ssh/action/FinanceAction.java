package ssh.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import ssh.entity.Finance;
import ssh.service.FinanceService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 水费管理
 * @author Lin
 *
 */
@SuppressWarnings("serial")
public class FinanceAction extends ActionSupport{
	/**
	 * 
	 */
	private FinanceService financeService;
	private Finance finance;
	public Finance getFinance() {
		return finance;
	}
	public void setFinance(Finance finance) {
		this.finance = finance;
	}
	public void setFinanceService(FinanceService financeService) {
		this.financeService = financeService;
	}
	public String Finance1(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List flist = financeService.FinanceList(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("flist", flist);
		System.out.println("差旅费报销");
		return "success";
	}
	public String Finance2(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List flist = financeService.FinanceList2(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("flist", flist);
		System.out.println("费用报销");
		return "success";
	}
	public String Finance3(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List flist = financeService.FinanceList3(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("flist", flist);
		System.out.println("支出申请");
		return "success";
	}
	public String Finance4(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List flist = financeService.FinanceList4(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("flist", flist);
		System.out.println("付款申请");
		return "success";
	}
	public String Finance_P2(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		System.out.println("资金action1");
		int sid = Integer.parseInt(id);
		List flist = financeService.FinanceList5(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("flist", flist);
		System.out.println("资金管理");
		return "success";
	}
	public String Finance_P21(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List flist = financeService.FinanceList6(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("flist", flist);
		System.out.println("资金管理");
		return "success";
	}
	public String Finance_P3(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List flist = financeService.FinanceList7(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("flist", flist);
		System.out.println("收入管理");
		return "success";
	}
	public String Finance_P4(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List flist = financeService.FinanceList8(sid);
		ActionContext ac = ActionContext.getContext();
		ac.put("flist", flist);
		System.out.println("支出管理");
		return "success";
	}
	//提交添加报销
	public String addf(){
			System.out.println("添加报销");
			financeService.addFinancepage(finance);
			return "success";
		}
	public String Finance_table2(){
		System.out.println("预借款申请");
		return "success";
	}
	public String Finance_table3(){
		System.out.println("收入登记");
		return "success";
	}
	public String Finance_table4(){
		System.out.println("支出登记");
		return "success";
	}
	//页面
	public String addFinance(){
		System.out.println("报销页面");
		return "success";
	}
	public String finance_page3(){
		System.out.println("资金查询");
		return "success";
	}
	public String findFinance(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String fname = request.getParameter("fname");
		String ftype = request.getParameter("ftype");
		Finance flist = financeService.findFinance(fname, ftype);
		ActionContext ac = ActionContext.getContext();
		ac.put("flist", flist);
		return "success";
	}
}
