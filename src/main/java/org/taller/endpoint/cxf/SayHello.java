package org.taller.endpoint.cxf;

import javax.jws.WebService;

@WebService
public interface SayHello {
	
	  String sayHello(String name);
}
