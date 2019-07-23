package ssh.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import ssh.entity.Water;
import ssh.service.WaterService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 水费管理
 * @author Lin
 *
 */
@SuppressWarnings("serial")
public class WaterAction extends ActionSupport{
	/**
	 * 
	 */
	private WaterService waterService;
	private Water water;
	public Water getWater() {
		return water;
	}

	public void setWater(Water water) {
		this.water = water;
	}

	public void setWaterService(WaterService waterService) {
		this.waterService = waterService;
	}

	public String waterManage(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		System.out.println(id);
		int sid = Integer.parseInt(id);
		List wlist = waterService.WaterList(sid);
		int sList = waterService.sumWater();
		request.setAttribute("sList", sList);
		System.out.println("返回长度："+sList);
		ActionContext ac = ActionContext.getContext();
		ac.put("wlist", wlist);
		System.out.println("水费action");
		return "success";
	}
	
	public String waterManage_p2(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		int sid = Integer.parseInt(id);
		List wlist = waterService.WaterList2(sid);
		int sList = waterService.sumWaters();
		request.setAttribute("sList", sList);
		ActionContext ac = ActionContext.getContext();
		ac.put("wlist", wlist);
		System.out.println("电费action");
		return "success";
	}
	public String waterManage_p3(){
		System.out.println("缴费查询");
		return "success";
	}
	public String waterManage_p4(){
		System.out.println("帮助");
		return "success";
	}
	public String waterManage_table(){
		System.out.println("水费登记");
		return "success";
	}
	public String waterManage_P2table(){
		System.out.println("电费登记");
		return "success";
	}
	public String addElectricity(){
		System.out.println("电费提交");
		waterService.addElectricity(water);
		return "success";
	}
	public String addWater(){
		System.out.println("水费提交");
		waterService.addWater(water);
		return "success";
	}
	public String findWater(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String wname = request.getParameter("wname");
		String wtype = request.getParameter("wtype");
		String waddress = request.getParameter("waddress");
		String water = "水费";
		Water wlist = null;
		System.out.println(wname);
		System.out.println(wtype);
		System.out.println(waddress);
		if(wtype.equals(water)){
			System.out.println("水费");
			wlist = waterService.findWater(wname, waddress);
		}else{
			System.out.println("电费");
			wlist = waterService.findWater(wname, waddress);
		}
		ActionContext ac = ActionContext.getContext();
		ac.put("wlist", wlist);
		return "success";
	}
	
}
