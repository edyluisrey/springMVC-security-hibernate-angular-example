package org.taller.dao;

import java.util.List;

import org.taller.model.Employee;

public interface  EmployeeDAO {
	 public boolean addEntity(Employee employee) throws Exception;  
	 public Employee getEntityById(long id) throws Exception;  
	 public List<Employee> getEntityList() throws Exception;  
	 public boolean deleteEntity(long id) throws Exception;  
	 public boolean updateEntity(Employee employee) throws Exception;  
}
