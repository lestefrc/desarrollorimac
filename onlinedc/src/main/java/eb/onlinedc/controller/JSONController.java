package eb.onlinedc.controller;

import java.util.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestBody;

import eb.dcbackend.dao.SecondEntityDAO;
import eb.dcbackend.model.SecondEntity;
import eb.dcbackend.service.SecondEntityService;

@Controller
@RequestMapping(value = "/json/data")
public class JSONController {
	
	@Autowired
	private SecondEntityDAO secondEntityDAO;
	
	@RequestMapping(value = "/admin/entities", method = RequestMethod.GET)
	@ResponseBody
	public List<SecondEntity> getEntities(){
		return secondEntityDAO.list();
	}
	
	@RequestMapping(value = "/{id}/entities", method = RequestMethod.GET)
	@ResponseBody
	public SecondEntity getEntities(@PathVariable int id){
		return secondEntityDAO.findById(id);
	}

	@Autowired
	private SecondEntityService secondEntityService;

	@RequestMapping(value = "/admin/SaveData", method = RequestMethod.POST,consumes="application/json",produces="application/json")
	@ResponseBody
	public  List<String> SaveData(@RequestBody SecondEntity[] secondEntityArray){
        List<String> response = new ArrayList<String>();
        for (SecondEntity secondEntity: secondEntityArray){
        	secondEntityService.saveSecondEntity(secondEntity);
        	response.add("Saved person: " + secondEntity.toString());
        }
        return response;
	}
	
	@RequestMapping(value = "/admin/activate/{id}", method = RequestMethod.PUT)
	@ResponseBody
	public SecondEntity changeActivate(@PathVariable int id, @RequestBody SecondEntity secondEntity){
		if(secondEntityService.findById(id) != null) {
			System.out.println(secondEntity);
			secondEntityService.updateSecondEntity(secondEntity);
		}
		return secondEntity;
	}
	
}
