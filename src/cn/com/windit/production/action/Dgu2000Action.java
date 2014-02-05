package cn.com.windit.production.action;

import java.util.List;

import cn.com.windit.production.pojo.Dgu2000;
import cn.com.windit.production.service.IDgu2000Service;

import com.opensymphony.xwork2.ActionSupport;

public class Dgu2000Action extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7919451973963429612L;
	
	private Dgu2000 dgu2000 = new Dgu2000();
	private List<Dgu2000> dgu2000List;
	private IDgu2000Service dgu2000Service;
	
	
	public String getAllDgu2000() {
		dgu2000List = dgu2000Service.getAllDgu2000();
		return "dgu2000List";
	}
	
	public String add(){
		return "add";
	}
	
	public String updateUI(){
		dgu2000 = dgu2000Service.getDgu2000ById(dgu2000.getId());
		return "update";
	}
	
	public String update(){
		dgu2000Service.updateDgu2000(dgu2000);
		return "success";
	}
	
	public String delete(){
		return "delete";
	}

	public Dgu2000 getDgu2000() {
		return dgu2000;
	}

	public void setDgu2000(Dgu2000 dgu2000) {
		this.dgu2000 = dgu2000;
	}

	public List<Dgu2000> getDgu2000List() {
		return dgu2000List;
	}

	public void setDgu2000List(List<Dgu2000> dgu2000List) {
		this.dgu2000List = dgu2000List;
	}


	public IDgu2000Service getDgu2000Service() {
		return dgu2000Service;
	}


	public void setDgu2000Service(IDgu2000Service dgu2000Service) {
		this.dgu2000Service = dgu2000Service;
	}
	
	
}
