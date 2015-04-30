package org.taller.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.taller.dao.EmployeeDAO;
import org.taller.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    
	@Autowired  
	EmployeeDAO employeeDAO; 
	
	@Override
	public boolean addEntity(Employee employee) throws Exception {
		// TODO Auto-generated method stub
		 return employeeDAO.addEntity(employee);  
	}

	@Override
	public Employee getEntityById(long id) throws Exception {
		// TODO Auto-generated method stub
		return employeeDAO.getEntityById(id);  
	}

	@Override
	public List<Employee> getEntityList() throws Exception {
		// TODO Auto-generated method stub
		 return employeeDAO.getEntityList();  
	}

	@Override
	public boolean deleteEntity(long id) throws Exception {
		// TODO Auto-generated method stub
		return employeeDAO.deleteEntity(id);  
	}

	@Override
	public boolean updateEntity(Employee employee) throws Exception {
		// TODO Auto-generated method stub
		return employeeDAO.updateEntity(employee);
	}

}
