package cn.com.windit.production.action;

import java.text.SimpleDateFormat;
import java.util.Date;
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
		for (Dgu2000 tmpDgu2000 : dgu2000List) {
			if(tmpDgu2000.getUpdateTime() != null)
				tmpDgu2000.setUpdateTimeString((new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format( new Date(tmpDgu2000.getUpdateTime())));
		}
		return "dgu2000List";
	}
	
	public String addUI(){
		if(dgu2000.getId() != null)
			dgu2000 = dgu2000Service.getDgu2000ById(dgu2000.getId());
		dgu2000.setId(0);
		return "add";
	}
	
	public String add(){
		Date date = new Date();
		dgu2000.setDateTime((new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(date));
		dgu2000.setAddTime(date.getTime());
		dgu2000.setUpdateTime(date.getTime());
		dgu2000Service.insertDgu2000(dgu2000);
		return "success";
	}
	
	public String updateUI(){
		dgu2000 = dgu2000Service.getDgu2000ById(dgu2000.getId());
		return "update";
	}
	
	public String update(){
		dgu2000.setUpdateTime(new Date().getTime());
		dgu2000Service.updateDgu2000(dgu2000);
		return "success";
	}
	
	public String delete(){
		dgu2000Service.deleteDgu2000ById(dgu2000.getId());
		return "success";
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
