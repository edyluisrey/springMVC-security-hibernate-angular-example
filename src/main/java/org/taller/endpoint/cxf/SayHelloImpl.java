package org.taller.endpoint.cxf;

import javax.jws.WebService;

@WebService(endpointInterface="org.taller.endpoint.cxf.SayHello")
public class SayHelloImpl implements SayHello {

	public String sayHello(String name) {
		return "Hello " + name + "!";
	}

}

