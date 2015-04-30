package org.taller.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.taller.model.Employee;
import org.taller.model.Person;
import org.taller.service.PersonService;

@Controller
@RequestMapping("/restperson") 
public class RestPersonController {
	 
	    private PersonService personService;
     
	    @Autowired(required=true)
	    @Qualifier(value="personService")
	    public void setPersonService(PersonService ps){
	        this.personService = ps;
	    }
	    
	    
	    @RequestMapping(value = "/list",method = RequestMethod.GET, produces="application/json")
	    public  @ResponseBody  List<Person> listPerson() {
	    	List<Person> personList = new ArrayList<Person>();  
	    	personList = this.personService.listPersons();
	    	return personList;
	    }
	    
	    @RequestMapping(value = "/{id}", method = RequestMethod.GET, produces="application/json")  
		public @ResponseBody  Person getEmployee(@PathVariable("id") int id) {  
	    	  Person person = null;  
			  try {  
			   person = personService.getPersonById(id);  
			  
			  } catch (Exception e) {  
			   e.printStackTrace();  
			  }  
			  return person;  
		 }
}
